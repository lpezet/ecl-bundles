IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;

IMPORT Std;

EXPORT Extract := MODULE

	SHARED mLocalPath := '/var/lib/HPCCSystems/mydropzone/CMS/PUF/MSDRG/';
	
	EXPORT extract_msdrgs() := FUNCTION
		oLocalFile := mLocalPath + 'ICD-10-MS-DRG-v32-Definitions-Manual-Text.zip';
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( mLocalPath, true ), NAMED('CreatePath')),
			OUTPUT( Curl.download('https://www.cms.gov/Medicare/Coding/ICD10/Downloads/ICD-10-MS-DRG-v32-Definitions-Manual-Text.zip', oLocalFile, false), NAMED('Download')),
			OUTPUT( BinUtils.checksum( oLocalFile ), NAMED('Checksum')),
			OUTPUT( Zip.unzip(oLocalFile, mLocalPath, true), NAMED('Unzipping')),
		);
		
	END;

END;