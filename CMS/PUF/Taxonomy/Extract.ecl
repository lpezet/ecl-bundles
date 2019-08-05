IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;

IMPORT Std;


EXPORT Extract := MODULE

	SHARED mLocalPath := '/var/lib/HPCCSystems/mydropzone/CMS/Taxonomy/';
	
	EXPORT extract_full() := FUNCTION
		oLocalFile := mLocalPath + 'nucc_taxonomy_190.csv';

		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( mLocalPath, true ), NAMED('CreatePath')),
			OUTPUT( Curl.download('http://nucc.org/images/stories/CSV/nucc_taxonomy_190.csv', oLocalFile), NAMED('Download')),
			OUTPUT( BinUtils.checksum( oLocalFile ), NAMED('Checksum')),
		);
	END;


END;