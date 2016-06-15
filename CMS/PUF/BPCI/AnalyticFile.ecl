IMPORT Std;

IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;

EXPORT AnalyticFile := MODULE

	SHARED mLandingZoneIP := 'localhost';
	SHARED mLocalPath := '/var/lib/HPCCSystems/mydropzone/CMS/PUF/BPCI/';
	
	EXPORT logicalFilename := '~cms::puf::bpci::analytic_file';
	
	SHARED downloadUrl := 'https://downloads.cms.gov/files/cmmi/';
	SHARED downloadFile := 'bpci_analytic_file_20160114_508.zip';
	
	SHARED localDataFile := mLocalPath + 'BPCI_Analytic_File_20160114_508.xlsx';
	
	EXPORT raw_layout := RECORD
		STRING bpid;
	END;
	
	EXPORT extract() := FUNCTION
		oFile := downloadFile;
		oLocalFile := mLocalPath + oFile;
		oDownloadUrl := downloadUrl + oFile;
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( mLocalPath, true ), NAMED('CreatePath')),
			OUTPUT( Curl.download( oDownloadUrl, oLocalFile, true ), NAMED('Download')),
			OUTPUT( BinUtils.checksum( oLocalFile ), NAMED('Checksum')),
			OUTPUT( Zip.unzip(oLocalFile, mLocalPath, true), NAMED('Unzipping'))
			// TODO: Convert XLSX to CSV!!!
		);
	END;
	
	EXPORT load() := FUNCTION
		File_In := localDataFile;
		File_Out := logicalFilename;//( pYear );
		DS_In := DATASET(std.File.ExternalLogicalFilename(mLandingZoneIP, File_In), raw_layout, CSV(HEADING(1), SEPARATOR(['\t']), QUOTE(['"']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(bpid));
		RETURN OUTPUT(DS_Dist,, File_Out, OVERWRITE);
	END;

END;