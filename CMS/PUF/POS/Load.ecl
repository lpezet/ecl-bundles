// https://www.cms.gov/Regulations-and-Guidance/HIPAA-Administrative-Simplification/NationalProvIdentStand/DataDissemination.html
// https://www.cms.gov/Regulations-and-Guidance/HIPAA-Administrative-Simplification/NationalProvIdentStand/Downloads/Data_Dissemination_File-Readme.pdf
// https://www.cms.gov/Regulations-and-Guidance/HIPAA-Administrative-Simplification/NationalProvIdentStand/Downloads/Data_Dissemination_File-Code_Values.pdf
IMPORT Std;
IMPORT $.Layouts;


EXPORT Load := MODULE

	SHARED LandingZone_IP := 'localhost';
	// Set the folder containing the data files on the Landing Zone here:  (Should end in / )
	SHARED BaseDataDirectory := '/var/lib/HPCCSystems/mydropzone/';
	
	EXPORT load(STRING pInFile, STRING pLogicalFile) := FUNCTION
		File_In := BaseDataDirectory + pInFile;
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_pos_layout, CSV(HEADING(1), SEPARATOR([',']), QUOTE(['"']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(prvdr_num));
		RETURN OUTPUT(DS_Dist,, pLogicalFile, OVERWRITE);
	END;
	
	// TODO: query to check against POS_Counts_Other_XX_YY.csf file:
	// oDS := DATASET('~cms::pos::other::2015::09', Load.raw_pos_layout, THOR);
	// A := TABLE(oDS, { STRING Category := prvdr_ctgry_cd; UNSIGNED Active := SUM(GROUP, IF(pgm_trmntn_cd = '00', 1, 0) ); UNSIGNED Total := COUNT(GROUP); }, prvdr_ctgry_cd);
	// B := TABLE(oDS, { STRING Category := 'Total'; UNSIGNED Active := SUM(GROUP, IF(pgm_trmntn_cd = '00', 1, 0) ); UNSIGNED Total := COUNT(GROUP); });
	// SORT(A + B, Category);

END;