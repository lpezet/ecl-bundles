// https://www.cms.gov/Regulations-and-Guidance/HIPAA-Administrative-Simplification/NationalProvIdentStand/DataDissemination.html
// https://www.cms.gov/Regulations-and-Guidance/HIPAA-Administrative-Simplification/NationalProvIdentStand/Downloads/Data_Dissemination_File-Readme.pdf
// https://www.cms.gov/Regulations-and-Guidance/HIPAA-Administrative-Simplification/NationalProvIdentStand/Downloads/Data_Dissemination_File-Code_Values.pdf
IMPORT Std;

EXPORT Load := MODULE

	// Regex:
	// ^(.+(?=( [0-9]+))) ([0-9]+) ([^ \n]+)( (.+))?$
	// STRING $1; // $4\($3\) , $5
	
	EXPORT raw_layout := RECORD
		STRING code;
		STRING grouping;
		STRING classification;
		STRING specialization;
		STRING definition;
		STRING notes;
	END;

	SHARED LandingZone_IP := 'localhost';
	// Set the folder containing the data files on the Landing Zone here:  (Should end in / )
	SHARED BaseDataDirectory := '/var/lib/HPCCSystems/mydropzone/';
	
	EXPORT load(STRING pInFile, STRING pLogicalFile) := FUNCTION
		File_In := BaseDataDirectory + pInFile;
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), raw_layout, CSV(HEADING(1), SEPARATOR([',']), QUOTE(['"']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(code));
		RETURN OUTPUT(DS_Dist,, pLogicalFile, OVERWRITE);
	END;


END;