IMPORT LPezet.Linux.BinUtils;
IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Stata;
IMPORT LPezet.HPCC.SFile;

IMPORT Std;

// 
// http://www.dartmouthatlas.org/tools/downloads.aspx?tab=39#research_files
//

EXPORT MedicareSpending( STRING pDropZoneIP, STRING pDropZonePath = '/var/lib/HPCCSystems/mydropzone' ) := MODULE
	
	SHARED mDropZoneIP := pDropZoneIP;
	SHARED mDropZonePath := pDropZonePath;
	SHARED BaseDataDirectory := mDropZonePath + '/Dartmouth/Atlas/MedicareSpending';
	
	EXPORT available_layout := RECORD
		STRING version;
		STRING date;
		STRING url;
	END;
	
	EXPORT available_file_layout := RECORD
		STRING version;
		STRING type;
		STRING url;
		STRING file;
	END;
	
	EXPORT raw_layout := RECORD
		STRING id;
		STRING geo_code;
		STRING geo_label;
		STRING population;
		STRING year;
		STRING cohort;
		STRING event_name;
		STRING event_label;
		DECIMAL20_2 adjusted_rate;
		DECIMAL10_2 oe_ratio;
		DECIMAL4_1 percentile;
	END;
	
	SHARED mAvailable := DATASET( [ 
		{ 'latest', '01/01/2018', 'http://www.dartmouthatlas.org/tools/downloads.aspx?tab=39#research_files'}
	], available_layout );
	
	SHARED mAvailableFiles := DATASET( [
		{ 'latest', 'state', 'http://www.dartmouthatlas.org/downloads/research_files/stata/state_stdprices_ffs.dta.zip', 'state_stdprices_ffs.dta' },
		{ 'latest', 'hrr', 'http://www.dartmouthatlas.org/downloads/research_files/stata/hrr_stdprices_ffs.dta.zip', 'hrr_stdprices_ffs.dta' },
		{ 'latest', 'hsa', 'http://www.dartmouthatlas.org/downloads/research_files/stata/hsa_stdprices_ffs.dta.zip', 'hsa_stdprices_ffs.dta' },
		{ 'latest', 'county', 'http://www.dartmouthatlas.org/downloads/research_files/stata/county_stdprices_ffs.dta.zip', 'county_stdprices_ffs.dta' }
	], available_file_layout );
	
	SHARED super_file( STRING pVersion ) := '~common::reference::dartmouth::atlas::medicarespending::' + pVersion;
	SHARED sub_file( STRING pVersion, STRING pType ) := super_file( pVersion ) + '::' + pType;
	SHARED local_file_path( STRING pVersion, STRING pType ) := BaseDataDirectory + '/' + pVersion + '_' + pType + '.zip';
	SHARED logical_file_path( STRING pVersion, STRING pType ) := sub_file( pVersion, pType );
	EXPORT local_file_path_extracted( STRING pVersion ) := BaseDataDirectory + '/' + pVersion;
	
	
	EXPORT list_available() := mAvailable;
	
	EXPORT extract_file( STRING pVersion, STRING pType ) := FUNCTION
		oLocalFile := local_file_path( pVersion, pType );
		oLocalExtractedFile := local_file_path_extracted( pVersion ) + '/' + mAvailableFiles( version = pVersion, type = pType )[1].file;
		oUrl := mAvailableFiles( version = pVersion, type = pType )[1].url;
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( BaseDataDirectory, true ) ),
			OUTPUT( Curl.download( oUrl, oLocalFile ) ),
			OUTPUT( BinUtils.checksum( oLocalFile ), NAMED(pType + 'Checksum')),
			OUTPUT( Zip.unzip(oLocalFile, local_file_path_extracted( pVersion ), true), NAMED(pType + 'Unzipping')),
			Stata.ToCSV.dat2csv( oLocalExtractedFile, oLocalExtractedFile + '.csv' )
		);
	END;
	
	EXPORT extract( STRING pVersion ) := FUNCTION
		RETURN SEQUENTIAL(
			extract_file( pVersion, 'state' ),
			extract_file( pVersion, 'hrr' ),
			extract_file( pVersion, 'hsa' ),
			extract_file( pVersion, 'county' )
		);
	END;
	 
	EXPORT load_file( STRING pVersion, STRING pType ) := FUNCTION
		oLocalFile := local_file_path_extracted( pVersion ) + '/' + mAvailableFiles( version = pVersion, type = pType )[1].file + '.csv';
		oDS := DATASET(std.File.ExternalLogicalFilename( mDropZoneIP, oLocalFile ), raw_layout, CSV(HEADING(1), QUOTE('"'), TERMINATOR(['\n','\r\n','\r'])));
		oTransform_0 := PROJECT( oDS, TRANSFORM( RECORDOF( oDS ),
			SELF.geo_label := Std.Str.ToLowerCase( LEFT.geo_label );
			SELF := LEFT;
		));
		oTransformed := oTransform_0;
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','mythor'),
			OUTPUT( oTransformed,, logical_file_path( pVersion, pType ), OVERWRITE )
		);
	END;
	
	EXPORT load( STRING pVersion ) := FUNCTION
		oSuperFile := super_file( pVersion );
		RETURN SEQUENTIAL(
			SFile.Reset( oSuperFile ),
			load_file( pVersion, 'state' ),
			load_file( pVersion, 'hrr' ),
			load_file( pVersion, 'hsa' ),
			load_file( pVersion, 'county' ),
			SFile.AddSub( oSuperFile,  sub_file( pVersion, 'state' ) ),
			SFile.AddSub( oSuperFile,  sub_file( pVersion, 'hrr' ) ),
			SFile.AddSub( oSuperFile,  sub_file( pVersion, 'hsa' ) ),
			SFile.AddSub( oSuperFile,  sub_file( pVersion, 'county' ) )
		);
	END;
	
	// TODO: use superfile during "load()"...
	EXPORT get_dataset( STRING pVersion ) := DATASET( super_file( pVersion ), raw_layout, THOR, OPT );
	
END;