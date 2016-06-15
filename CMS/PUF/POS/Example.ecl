IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;

IMPORT CMS.PUF.POS.Extract;
IMPORT CMS.PUF.POS.Load;

// 1. Download and extract data
//Extract.extract_other_csv();

// 2. Load demo data
//Load.load('CMS/POS/POS_OTHER_SEP15.csv', '~cms::pos::other::2015::09');

// 3. Query data (here, summary by category and overall)
oDS := DATASET('~cms::pos::other::2015::09', Load.raw_pos_layout, THOR);
A := TABLE(oDS, { STRING Category := prvdr_ctgry_cd; UNSIGNED Active := SUM(GROUP, IF(pgm_trmntn_cd = '00', 1, 0) ); UNSIGNED Total := COUNT(GROUP); }, prvdr_ctgry_cd);
B := TABLE(oDS, { STRING Category := 'Total'; UNSIGNED Active := SUM(GROUP, IF(pgm_trmntn_cd = '00', 1, 0) ); UNSIGNED Total := COUNT(GROUP); });
SORT(A + B, Category);