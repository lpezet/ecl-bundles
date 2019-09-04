IMPORT NOAA.GHCN.FS.Datasets;
IMPORT NOAA.GHCN.FS.Layouts;
IMPORT NOAA.GHCN.FS.TxStations;
IMPORT NOAA.Util.SFile;


EXPORT Tranxform := MODULE

	EXPORT stations() := FUNCTION
		Final_1 := Datasets.dsRawStations;
		Final_2 := TABLE(Final_1, { DECIMAL9_6 latitude := (DECIMAL9_6) latitude; DECIMAL9_6 longitude := (DECIMAL9_6) longitude; DECIMAL4_1 elevation := (DECIMAL4_1) elevation; Final_1; });
		Final_3 := PROJECT(Final_2, Layouts.station_layout);
		Final_4 := SORT(Final_3, id);
		Final_5 := DEDUP(Final_4, id);
		Final_6 := DISTRIBUTE(Final_5, HASH(id));
		RETURN OUTPUT(Final_6,, Datasets.File_Stations, OVERWRITE);
	END;
	
	EXPORT elements() := FUNCTION
		Final_1 := Datasets.dsRawElements;
		Final_4 := SORT(Final_1, name);
		Final_5 := DEDUP(Final_4, name);
		Final_6 := DISTRIBUTE(Final_5, HASH(name));
		RETURN OUTPUT(Final_6,, Datasets.File_Elements, OVERWRITE);
	END;
	
	EXPORT countries() := FUNCTION
		Final_1 := Datasets.dsRawCountries;
		Final_2 := PROJECT(Final_1, TRANSFORM(Layouts.country_layout,
			SELF.code := TRIM(LEFT.code_and_name[1..2], LEFT, RIGHT);
			SELF.name := TRIM(LEFT.code_and_name[4..], LEFT, RIGHT);
		));
		Final_4 := SORT(Final_2, code);
		Final_5 := DEDUP(Final_4, code);
		Final_6 := DISTRIBUTE(Final_5, HASH(code));
		RETURN OUTPUT(Final_6,, Datasets.File_Countries, OVERWRITE);
	END;
	
	EXPORT states() := FUNCTION
		Final_1 := Datasets.dsRawStates;
		Final_2 := PROJECT(Final_1, TRANSFORM(Layouts.state_layout,
			SELF.code := TRIM(LEFT.code_and_name[1..2], LEFT, RIGHT);
			SELF.name := TRIM(LEFT.code_and_name[4..], LEFT, RIGHT);
		));
		
		Final_4 := SORT(Final_2, code);
		Final_5 := DEDUP(Final_4, code);
		Final_6 := DISTRIBUTE(Final_5, HASH(code));
		RETURN OUTPUT(Final_6,, Datasets.File_States, OVERWRITE);
	END;
	
	EXPORT stations_inventory() := FUNCTION
		Final_1 := Datasets.dsRawStationsInventory;
		Final_2 := TABLE(Final_1, { STRING element := TRIM(element, LEFT, RIGHT); DECIMAL9_6 latitude := (DECIMAL9_6) latitude; DECIMAL9_6 longitude := (DECIMAL9_6) longitude; INTEGER2 first_year := (INTEGER2) first_year; INTEGER2 last_year := (INTEGER2) last_year; Final_1; });
		Final_3 := PROJECT(Final_2, Layouts.station_inventory_layout);
		//SHARED Final_4 := SORT(Final_3, id, element);
		//SHARED Final_5 := DEDUP(Final_4, id, element);
		Final_6 := DISTRIBUTE(Final_3, HASH(id));
		RETURN OUTPUT(Final_6,, Datasets.File_Stations_Inventory, OVERWRITE);
	END;

	EXPORT daily() := FUNCTION
		Final_1 := Datasets.dsRawDaily;
		Final_2 := TABLE(Final_1, { INTEGER2 year := (INTEGER2) year; INTEGER1 month := (INTEGER1) month; Final_1 });
		Final_3 := PROJECT(Final_2, Layouts.daily_layout);
		Final_4 := SORT(Final_3, id, year, month, element);
		Final_5 := DEDUP(Final_4, id, year, month, element);
		Final_6 := DISTRIBUTE(Final_5, HASH(id));
		RETURN OUTPUT(Final_6,, Datasets.File_Daily, OVERWRITE);
	END;
	
	EXPORT monthly(STRING pStationId ) := FUNCTION
		LOCAL Final_1 := Datasets.dsSingleRawMonthly( pStationId );
		//LOCAL ExpandRule := Tranxform.MONTHLY_EXPANDS( pStationId );
		//Final_2 := TABLE(Final_1, { INTEGER2 year := (INTEGER2) year; INTEGER1 month := (INTEGER1) month; Final_1 });
		LOCAL Final_2 := Final_1;
		/*
		LOCAL Final_3 := PROJECT(Final_2, TRANSFORM(Layouts.monthly_layout,
			#EXPAND(ExpandRule);
			SELF := LEFT;
		));
		*/
		LOCAL Final_3 := TxStations.monthly( Final_2, pStationId );
		LOCAL Final_4 := SORT(Final_3, id, date);
		LOCAL Final_5 := DEDUP(Final_4, id, date);
		LOCAL Final_6 := DISTRIBUTE(Final_5, HASH(id));
		//RETURN OUTPUT(Final_6,, Datasets.File_Single_Monthly( pStationId ), OVERWRITE);
		RETURN SEQUENTIAL(
			SFile.Create(Datasets.File_Monthly),
			SFile.RemoveSub(Datasets.File_Monthly, Datasets.File_Single_Monthly(pStationId)),
			OUTPUT(Final_6,, Datasets.File_Single_Monthly(pStationId), OVERWRITE),
			SFile.AddSub(Datasets.File_Monthly, Datasets.File_Single_Monthly(pStationId))
		);
	END;
	/*
	EXPORT monthly() := FUNCTION
		Final_1 := Datasets.dsRawMonthly;
		//Final_2 := TABLE(Final_1, { INTEGER2 year := (INTEGER2) year; INTEGER1 month := (INTEGER1) month; Final_1 });
		Final_2 := Final_1;
		Final_3 := PROJECT(Final_2, Layouts.monthly_layout);
		Final_4 := SORT(Final_3, id, date);
		Final_5 := DEDUP(Final_4, id, date);
		Final_6 := DISTRIBUTE(Final_5, HASH(id));
		RETURN OUTPUT(Final_6,, Datasets.File_Monthly, OVERWRITE);
	END;
	*/
END;
