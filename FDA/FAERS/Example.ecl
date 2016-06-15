IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;

IMPORT FDA.FAERS.Extract;
IMPORT FDA.FAERS.Load;

// 1. Download and extract data
Extract.extract();

// 2. Load demo data
Load.demographic('FAERS/ascii/DEMO15Q3.txt');