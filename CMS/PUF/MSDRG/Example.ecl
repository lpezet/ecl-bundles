IMPORT Std;

IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;

IMPORT CMS.PUF.MSDRG.Extract;
IMPORT CMS.PUF.MSDRG.Load;
IMPORT CMS.PUF.MSDRG.Datasets;

// 1. Download and extract data
//#OPTION('targetClusterType','hthor');
//Extract.extract_msdrgs();

// 2. Load demo data
//Load.load_msdrgs();

//Load.clear_msdrg_superfile();
Load.load_diag_code_to_msdrgs();

//Load.load('CMS/NPPES/npidata_20050523-20151213.csv', '~cms::nppes::full::20151213_20050523');
//Load.load('CMS/NPPES/npidata_20151214-20151220.csv', '~cms::nppes::weekly::20151220_20151214');
//Load.load('CMS/NPPES/npidata_20050523-20151213.csv', '~cms::nppes::deactivation::20151213_20050523');


// 3. Query
//oDS := Datasets.dsMSDRG;
//oDS;

//oDS := Datasets.dsDiagCodeToMSDRG;
//oDS;
