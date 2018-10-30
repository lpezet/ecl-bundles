﻿IMPORT NOAA.GHCN.FS.Layouts;
IMPORT NOAA.GHCN.FS.Datasets;
IMPORT NOAA.Util.SFile;
IMPORT Std;

EXPORT Extract := MODULE
	SHARED LandingZone_IP := 'localhost';
	// Set the folder containing the data files on the Landing Zone here:  (Should end in / )
	SHARED BaseDataDirectory := '/var/lib/HPCCSystems/mydropzone/';
	
	EXPORT stations() := FUNCTION
		File_In := BaseDataDirectory + 'ghcnd-stations.txt';
		// With this approach, any lines of more than X characters as defined in the layout will break the query
		//DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_station_layout,THOR,UNSORTED);//CSV(HEADING(0), SEPARATOR(['']), TERMINATOR(['\n','\r\n','\n\r'])));
		// The solution is to use PIPE to "clean" the file, by either creating a new file or doing it on the fly like here:
		Cmd_Line := 'bash -c "cat ' + File_In + ' | cut -c 1-85"';
		DS_In := PIPE( Cmd_Line, Layouts.raw_station_layout);
		DS_Dist := DISTRIBUTE(DS_In, HASH(id));
		RETURN OUTPUT(DS_Dist,, Datasets.File_Raw_Stations, OVERWRITE);
	END;
	
	EXPORT elements() := FUNCTION
		File_In := BaseDataDirectory + 'ghcnd-elements.txt';
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_element_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(name));
		RETURN OUTPUT(DS_Dist,, Datasets.File_Raw_Elements, OVERWRITE);
	END;
	
	EXPORT stations_inventory() := FUNCTION
		File_In := BaseDataDirectory + 'ghcnd-inventory.txt';
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_station_inventory_layout,THOR,UNSORTED);//CSV(HEADING(0), SEPARATOR(['']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(id));
		RETURN OUTPUT(DS_Dist,, Datasets.File_Raw_Stations_Inventory, OVERWRITE);
	END;
	
	EXPORT countries() := FUNCTION
		File_In := BaseDataDirectory + 'ghcnd-countries.txt';
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_country_layout, CSV(HEADING(0), SEPARATOR(['']), TERMINATOR(['\n','\r\n','\n\r'])),UNSORTED);//);
		DS_Dist := DISTRIBUTE(DS_In, HASH(code_and_name[1..2]));
		RETURN OUTPUT(DS_Dist,, Datasets.File_Raw_Countries, OVERWRITE);
	END;
	
	EXPORT states() := FUNCTION
		File_In := BaseDataDirectory + 'ghcnd-states.txt';
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_state_layout, CSV(HEADING(0), SEPARATOR(['']), TERMINATOR(['\n','\r\n','\n\r'])),UNSORTED);//);
		DS_Dist := DISTRIBUTE(DS_In, HASH(code_and_name[1..2]));
		RETURN OUTPUT(DS_Dist,, Datasets.File_Raw_States, OVERWRITE);
	END;
	
	// DATASET(Layouts.station_id_layout) pStations
	EXPORT dailies(pStations) := MACRO
		LOADXML('<xml/>');
		#DECLARE (oIndex)
		#SET (oIndex, 1);
		#LOOP
			#IF (%oIndex% > COUNT(pStations))
				#BREAK
			#END
			//OUTPUT('Working on: ' + TOXML(pStations[%oIndex%]));
			Extract.daily( pStations[%oIndex%].id );
			#SET (oIndex, %oIndex%+1)
		#END
	ENDMACRO;
	
	EXPORT daily(STRING pId) := FUNCTION
		File_In := BaseDataDirectory + pId + '.dly';
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_daily_layout,THOR,UNSORTED);//CSV(HEADING(0), SEPARATOR(['']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(id));
		RETURN SEQUENTIAL(
			SFile.Create(Datasets.File_Raw_Daily),
			SFile.RemoveSub(Datasets.File_Raw_Daily, Datasets.File_Single_Raw_Daily(pId)),
			OUTPUT(DS_Dist,, Datasets.File_Single_Raw_Daily(pId), OVERWRITE),
			SFile.AddSub(Datasets.File_Raw_Daily, Datasets.File_Single_Raw_Daily(pId))
		);
		
	END;	
	
	// Monthly
	// https://www.ncei.noaa.gov/data/gsom/doc/GSOMReadme.txt
	// https://www.ncei.noaa.gov/data/gsom/access/XXY########.csv
	EXPORT gen_monthly(STRING pId) := FUNCTION
		File_In := BaseDataDirectory + pId + '.mly';
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_monthly_layout,CSV(HEADING(1)),UNSORTED);//CSV(HEADING(0), SEPARATOR(['']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(id));
		RETURN OUTPUT(DS_Dist,, Datasets.File_Single_Raw_Monthly(pId), OVERWRITE);
	END;
	/*
	SHARED gen_monthlies(pStations) := MACRO
		#DECLARE (Ndx)
		#SET (Ndx, 1);           
		#LOOP
			#IF (%Ndx% > COUNT(pStations))  
				 #BREAK         // break out of the loop
			#ELSE             //otherwise
				 //OUTPUT('Hello ' + oDS[%Ndx%].id );
				 Extract.gen_monthly( pStations[%Ndx%].id );
		#SET (Ndx, %Ndx% + 1)
											 //and increment the value of Ndx
			 #END
		#END
	END;
	*/
	
 EXPORT monthly(STRING pId) := FUNCTION
		File_In := BaseDataDirectory + pId + '.mly';
		DS_In := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), Layouts.raw_monthly_layout,CSV(HEADING(1)),UNSORTED);//CSV(HEADING(0), SEPARATOR(['']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(id));
		RETURN SEQUENTIAL(
			SFile.Create(Datasets.File_Raw_Monthly),
			SFile.RemoveSub(Datasets.File_Raw_Monthly, Datasets.File_Single_Raw_Monthly(pId)),
			OUTPUT(DS_Dist,, Datasets.File_Single_Raw_Monthly(pId), OVERWRITE),
			SFile.AddSub(Datasets.File_Raw_Monthly, Datasets.File_Single_Raw_Monthly(pId))
		);
	END;
	
	// DATASET(Layouts.station_id_layout) pStations
	EXPORT monthlies(DATASET(Layouts.station_id_layout) pStations) := FUNCTION
		RETURN SEQUENTIAL(
			SFile.Create(Datasets.File_Raw_Monthly),
			//Std.File.StartSuperFileTransaction(),
			NOTHOR(APPLY( pStations, 	SFile.RemoveSub(Datasets.File_Raw_Monthly, Datasets.File_Single_Raw_Monthly( id )) )),
			APPLY( GLOBAL(pStations), gen_monthly( id ) ),
			NOTHOR(APPLY( pStations, 	SFile.AddSub(Datasets.File_Raw_Monthly, Datasets.File_Single_Raw_Monthly( id )) ))
			//Std.File.FinishSuperFileTransaction()
		);
		/*
		RETURN //SEQUENTIAL(
			//Std.File.StartSuperFileTransaction(),
			APPLY( GLOBAL(pStations, FEW), monthly( id ) );
			//Std.File.FinishSuperFileTransaction()
		//);
	*/
	END;
	
	EXPORT monthliesOld(pStations) := FUNCTIONMACRO
		RETURN SEQUENTIAL(
		LOADXML('<xml/>');
		#DECLARE (oIndex)
		#SET (oIndex, 1);
		#LOOP
			#IF (%oIndex% > COUNT(pStations))
				#BREAK
			#END
			//OUTPUT('Working on: ' + TOXML(pStations[%oIndex%]));
			Extract.monthly( pStations[%oIndex%].id ),
			#SET (oIndex, %oIndex%+1)
		#END
		);
	ENDMACRO;
	
	

END;
