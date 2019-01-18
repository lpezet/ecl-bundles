// https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/Provider-of-Services/index.html
// File changes every ???.
// Right now: http://download.cms.gov/nppes/NPPES_Data_Dissemination_Dec_2015.zip
IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;

IMPORT $.Datasets;

IMPORT Std;

EXPORT Extract( STRING pDropZoneIP, STRING pDropZonePath = '/var/lib/HPCCSystems/mydropzone' ) := MODULE
 
 SHARED STRING SUFFIX_CLIA := 'clia';
 SHARED STRING SUFFIX_OTHER := 'other';
 
 SHARED mDropZoneIP := pDropZoneIP;
	SHARED mDropZonePath := pDropZonePath;
	SHARED BaseDataDirectory := mDropZonePath + '/cms/pos';
	

	SHARED line_layout := RECORD
		STRING line;
		STRING2 nl := '\r\n';
	END;
	
	EXPORT file_layout := RECORD
		STRING version;
		STRING date;
		STRING clia_url;
		STRING clia_filename;
		STRING other_url;
		STRING other_filename;
	END;
	
	EXPORT raw_layout := RECORD
		STRING code;
		STRING description;
	END;

	SHARED mAvailable := DATASET( [ 
		{ 'dec17', '2017-12-01', 'http://download.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/Provider-of-Services/Downloads/pos_clia_csv_dec17.zip', 'POS_CLIA_DEC17.csv', 'http://download.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/Provider-of-Services/Downloads/pos_other_csv_dec17.zip', 'POS_OTHER_DEC17.csv' },
		{ 'sep18', '2018-09-01', 'http://download.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/Provider-of-Services/Downloads/pos_clia_csv_sep18.zip', 'POS_CLIA_SEP18.csv', 'http://download.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/Provider-of-Services/Downloads/pos_other_csv_sep18.zip', 'POS_OTHER_SEP18.csv' }
	], file_layout );
	 
	SHARED local_folder_path( STRING pVersion ) := BaseDataDirectory + '/' + pVersion;
	SHARED local_file_path( STRING pVersion, STRING pSuffix ) :=  local_folder_path( pVersion ) + pSuffix + '.zip';
	SHARED local_clia_file_path( STRING pVersion ) :=  local_file_path( pVersion, SUFFIX_CLIA );
	SHARED local_other_file_path( STRING pVersion ) :=  local_file_path( pVersion, SUFFIX_OTHER );
	
	SHARED local_file_path_clia_file( STRING pVersion ) := local_folder_path( pVersion ) + '/' + mAvailable( version = pVersion )[1].clia_filename;
	SHARED local_file_path_other_file( STRING pVersion ) := local_folder_path( pVersion ) + '/' + mAvailable( version = pVersion )[1].other_filename;
	
	SHARED spray( STRING pPhysicalFilename, STRING pFieldSeparator, STRING pLogicalFilename ) :=
		Std.File.SprayDelimited( 
			sourceIP := mDropZoneIP, 
			//sourcePath:='/var/lib/HPCCSystems/mydropzone/241_Archway_Bassin_MedicalClaim_Samples.csv', 
			sourcePath := pPhysicalFilename,
			//sourceCsvSeparate:='\\,',
			sourceCsvSeparate := pFieldSeparator,
			destinationGroup:='mythor',
			//destinationLogicalName:='apcd::ma::2011_2015::medical_claims_samples',
			destinationLogicalName := pLogicalFilename,
			allowOverwrite:=TRUE );
	
	EXPORT list_available() := mAvailable;
	
	EXPORT extract( STRING pVersion ) := FUNCTION
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( BaseDataDirectory, TRUE ), NAMED('Mkdir')),
			//OUTPUT( setup_tx_script, NAMED('SetupTXSript') ),
			OUTPUT( Curl.download( mAvailable( version = pVersion )[1].clia_url, local_clia_file_path( pVersion ) ), NAMED('DownloadCLIAVersion')),
			OUTPUT( Curl.download( mAvailable( version = pVersion )[1].other_url, local_other_file_path( pVersion ) ), NAMED('DownloadOTHERVersion')),
			OUTPUT( Zip.unzip( local_clia_file_path( pVersion ), local_folder_path( pVersion ), TRUE ), NAMED('UnzipCLIAVersion') ),
			OUTPUT( Zip.unzip( local_other_file_path( pVersion ), local_folder_path( pVersion ), TRUE ), NAMED('UnzipOTHERVersion') ),
			//tranxform_raw_files( pVersion )
		);
	END;
	
	EXPORT load( STRING pVersion ) := FUNCTION
		RETURN SEQUENTIAL(
			spray( local_file_path_clia_file( pVersion ), '\\,', Datasets.Logical_File_CLIA( pVersion ) ),
			spray( local_file_path_other_file( pVersion ), '\\,', Datasets.Logical_File_OTHER( pVersion ) )
		);
		//oDS := DATASET(std.File.ExternalLogicalFilename( mDropZoneIP, local_file_path_to_load( pVersion ) ), raw_layout, CSV(HEADING(1), QUOTE('"'), TERMINATOR(['\n','\r\n','\r'])));
		//RETURN OUTPUT( oDS,, logical_file_path( pVersion ), OVERWRITE );
	END;
	
	/*
	EXPORT extract_other_csv() := FUNCTION
		oLocalFile := mLocalPath + 'SEP15_OTHER_CSV.zip';
		oRemoteFile := 'https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/Provider-of-Services/Downloads/SEP15_OTHER_CSV.zip';
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( mLocalPath, true ), NAMED('CreatePath')),
			OUTPUT( Curl.download(oRemoteFile, oLocalFile, true), NAMED('Download')),
			OUTPUT( BinUtils.checksum( oLocalFile ), NAMED('Checksum')),
			OUTPUT( Zip.unzip(oLocalFile, mLocalPath, true), NAMED('Unzipping')),
		);
	END;
	
	EXPORT extract_other_flat() := FUNCTION
		oLocalFile := mLocalPath + 'SEP15_OTHER_FLAT.zip';
		oRemoteFile := 'https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/Provider-of-Services/Downloads/SEP15_OTHER_FLAT.zip';
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( mLocalPath, true ), NAMED('CreatePath')),
			OUTPUT( Curl.download(oRemoteFile, oLocalFile, true), NAMED('Download')),
			OUTPUT( BinUtils.checksum( oLocalFile ), NAMED('Checksum')),
			OUTPUT( Zip.unzip(oLocalFile, mLocalPath, true), NAMED('Unzipping')),
		);
	END;
	*/

END;