// https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DESample01.html
IMPORT Std;

IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;


IMPORT CMS.PUF.DESynPUF.Config;

EXPORT Extract := MODULE
	
	EXPORT extract_all(Config pConfig) := FUNCTION
		oBene2008Local := pConfig.local_path + pConfig.bene_2008_file;
		oBene2009Local := pConfig.local_path + pConfig.bene_2009_file;
		oBene2010Local := pConfig.local_path + pConfig.bene_2010_file;
		oCarrier2008to2010_1ALocal := pConfig.local_path + pConfig.carrier_2008_2010_1a_file;
		oCarrier2008to2010_1BLocal := pConfig.local_path + pConfig.carrier_2008_2010_1b_file;
		oIP2008to2010Local := pConfig.local_path + pConfig.ip_2008_2010_file;
		oOP2008to2010Local := pConfig.local_path + pConfig.op_2008_2010_file;
		oPDE2008to2010Local := pConfig.local_path + pConfig.pde_2008_2010_file;
		
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( pConfig.local_path, true ), NAMED('CreatePath')),
			OUTPUT( Curl.download( pConfig.bene_2008_url, oBene2008Local, false), NAMED('DownloadBene2008')),
			OUTPUT( Curl.download( pConfig.bene_2009_url, oBene2009Local, false), NAMED('DownloadBene2009')),
			OUTPUT( Curl.download( pConfig.bene_2010_url, oBene2010Local, false), NAMED('DownloadBene2010')),
			OUTPUT( Curl.download( pConfig.carrier_2008_2010_1a_url, oCarrier2008to2010_1ALocal, false), NAMED('DownloadCarrier1A')),
			OUTPUT( Curl.download( pConfig.carrier_2008_2010_1b_url, oCarrier2008to2010_1BLocal, false), NAMED('DownloadCarrier1B')),
			OUTPUT( Curl.download( pConfig.ip_2008_2010_url, oIP2008to2010Local, false), NAMED('DownloadIP')),
			OUTPUT( Curl.download( pConfig.op_2008_2010_url, oOP2008to2010Local, false), NAMED('DownloadOP')),
			OUTPUT( Curl.download( pConfig.pde_2008_2010_url, oPDE2008to2010Local, false), NAMED('DownloadPDE')),
			//OUTPUT( BinUtils.checksum( oLocalFile ), NAMED('Checksum')),
			OUTPUT( Zip.unzip(oBene2008Local, pConfig.local_path, true), NAMED('UnzipBene2008')),
			OUTPUT( Zip.unzip(oBene2009Local, pConfig.local_path, true), NAMED('UnzipBene2009')),
			OUTPUT( Zip.unzip(oBene2010Local, pConfig.local_path, true), NAMED('UnzipBene2010')),
			OUTPUT( Zip.unzip(oCarrier2008to2010_1ALocal, pConfig.local_path, true), NAMED('UnzipCarrier1A')),
			OUTPUT( Zip.unzip(oCarrier2008to2010_1BLocal, pConfig.local_path, true), NAMED('UnzipCarrier1B')),
			OUTPUT( Zip.unzip(oIP2008to2010Local, pConfig.local_path, true), NAMED('UnzipIP')),
			OUTPUT( Zip.unzip(oOP2008to2010Local, pConfig.local_path, true), NAMED('UnzipOP')),
			OUTPUT( Zip.unzip(oPDE2008to2010Local, pConfig.local_path, true), NAMED('UnzipPDE'))
		);
		
	END;
	

END;