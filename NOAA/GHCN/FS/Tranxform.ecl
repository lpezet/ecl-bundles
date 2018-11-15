IMPORT NOAA.GHCN.FS.Datasets;
IMPORT NOAA.GHCN.FS.Layouts;

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
	
	EXPORT MONTHLY_EXPANDS(STRING pStationId) := CASE(pStationId,
		'US1COCF0015' => 'SELF.dp01 := LEFT.field1; SELF.dp01_attributes := LEFT.field2; SELF.dp1x := LEFT.field3; SELF.dp1x_attributes := LEFT.field4; SELF.dp10 := LEFT.field5; SELF.dp10_attributes := LEFT.field6;	SELF.dsnd := LEFT.field7;	SELF.dsnd_attributes := LEFT.field8; SELF.dsnw := LEFT.field9;	SELF.dsnw_attributes := LEFT.field10;	SELF.emsd := LEFT.field11;	SELF.emsd_attributes := LEFT.field12;	SELF.emsn := LEFT.field13;	SELF.emsn_attributes := LEFT.field14;	SELF.emxp := LEFT.field15;	SELF.emxp_attributes := LEFT.field16;	SELF.prcp := LEFT.field17;	SELF.prcp_attributes := LEFT.field18;	SELF.snow := LEFT.field19;	SELF.snow_attributes := LEFT.field20;',
		'US1COCF0020' => 'SELF.dp01 := LEFT.field1; SELF.dp01_attributes := LEFT.field2; SELF.dp1x := LEFT.field3; SELF.dp1x_attributes := LEFT.field4; SELF.dp10 := LEFT.field5; SELF.dp10_attributes := LEFT.field6;	SELF.dsnd := LEFT.field7;	SELF.dsnd_attributes := LEFT.field8; SELF.dsnw := LEFT.field9;	SELF.dsnw_attributes := LEFT.field10;	SELF.emsd := LEFT.field11;	SELF.emsd_attributes := LEFT.field12;	SELF.emsn := LEFT.field13;	SELF.emsn_attributes := LEFT.field14;	SELF.emxp := LEFT.field15;	SELF.emxp_attributes := LEFT.field16;	SELF.prcp := LEFT.field17;	SELF.prcp_attributes := LEFT.field18;	SELF.snow := LEFT.field19;	SELF.snow_attributes := LEFT.field20;',
		'US1COCF0041' => 'SELF.dp01 := LEFT.field1; SELF.dp01_attributes := LEFT.field2; SELF.dp1x := LEFT.field3; SELF.dp1x_attributes := LEFT.field4; SELF.dp10 := LEFT.field5; SELF.dp10_attributes := LEFT.field6;	SELF.dsnd := LEFT.field7;	SELF.dsnd_attributes := LEFT.field8; SELF.dsnw := LEFT.field9;	SELF.dsnw_attributes := LEFT.field10;	SELF.emsd := LEFT.field11;	SELF.emsd_attributes := LEFT.field12;	SELF.emsn := LEFT.field13;	SELF.emsn_attributes := LEFT.field14;	SELF.emxp := LEFT.field15;	SELF.emxp_attributes := LEFT.field16;	SELF.prcp := LEFT.field17;	SELF.prcp_attributes := LEFT.field18;	SELF.snow := LEFT.field19;	SELF.snow_attributes := LEFT.field20;',
		'USS0006L03S' => 'SELF.awnd := LEFT.field1; SELF.awnd_attributes := LEFT.field2; SELF.cdsd := LEFT.field3; SELF.cdsd_attributes := LEFT.field4; SELF.cldd := LEFT.field5; SELF.cldd_attributes := LEFT.field6; SELF.dp01 := LEFT.field7; SELF.dp01_attributes := LEFT.field8; SELF.dp1x := LEFT.field9; SELF.dp1x_attributes := LEFT.field10; SELF.dp10 := LEFT.field11; SELF.dp10_attributes := LEFT.field12; SELF.dsnd := LEFT.field13; SELF.dsnd_attributes := LEFT.field14; SELF.dt00 := LEFT.field15; SELF.dt00_attributes := LEFT.field16; SELF.dt32 := LEFT.field17; SELF.dt32_attributes := LEFT.field18; SELF.dx32 := LEFT.field19; SELF.dx32_attributes := LEFT.field20; SELF.dx70 := LEFT.field21; SELF.dx70_attributes := LEFT.field22; SELF.dx90 := LEFT.field23; SELF.dx90_attributes := LEFT.field24; SELF.emnt := LEFT.field25; SELF.emnt_attributes := LEFT.field26; SELF.emsd := LEFT.field27; SELF.emsd_attributes := LEFT.field28; SELF.emxp := LEFT.field29; SELF.emxp_attributes := LEFT.field30; SELF.emxt := LEFT.field31; SELF.emxt_attributes := LEFT.field32; SELF.hdsd := LEFT.field33; SELF.hdsd_attributes := LEFT.field34; SELF.htdd := LEFT.field35; SELF.htdd_attributes := LEFT.field36; SELF.prcp := LEFT.field37; SELF.prcp_attributes := LEFT.field38; SELF.tavg := LEFT.field39; SELF.tavg_attributes := LEFT.field40; SELF.tmax := LEFT.field41; SELF.tmax_attributes := LEFT.field42; SELF.tmin := LEFT.field43; SELF.tmin_attributes := LEFT.field44;',
		'USS0006L05S' => 'SELF.cdsd := LEFT.field1; SELF.cdsd_attributes := LEFT.field2; SELF.cldd := LEFT.field3; SELF.cldd_attributes := LEFT.field4; SELF.dp01 := LEFT.field5; SELF.dp01_attributes := LEFT.field6; SELF.dp1x := LEFT.field7; SELF.dp1x_attributes := LEFT.field8; SELF.dp10 := LEFT.field9; SELF.dp10_attributes := LEFT.field10; SELF.dsnd := LEFT.field11; SELF.dsnd_attributes := LEFT.field12; SELF.dt00 := LEFT.field13; SELF.dt00_attributes := LEFT.field14; SELF.dt32 := LEFT.field15; SELF.dt32_attributes := LEFT.field16; SELF.dx32 := LEFT.field17; SELF.dx32_attributes := LEFT.field18; SELF.dx70 := LEFT.field19; SELF.dx70_attributes := LEFT.field20; SELF.dx90 := LEFT.field21; SELF.dx90_attributes := LEFT.field22; SELF.emnt := LEFT.field23; SELF.emnt_attributes := LEFT.field24; SELF.emsd := LEFT.field25; SELF.emsd_attributes := LEFT.field26; SELF.emxp := LEFT.field27; SELF.emxp_attributes := LEFT.field28; SELF.emxt := LEFT.field29; SELF.emxt_attributes := LEFT.field30; SELF.hdsd := LEFT.field31; SELF.hdsd_attributes := LEFT.field32; SELF.htdd := LEFT.field33; SELF.htdd_attributes := LEFT.field34; SELF.prcp := LEFT.field35; SELF.prcp_attributes := LEFT.field36; SELF.tavg := LEFT.field37; SELF.tavg_attributes := LEFT.field38; SELF.tmax := LEFT.field39; SELF.tmax_attributes := LEFT.field40; SELF.tmin := LEFT.field41; SELF.tmin_attributes := LEFT.field42;',
		''
	);
	
	
	EXPORT monthly( pStationId ) := FUNCTIONMACRO
		LOCAL Final_1 := Datasets.dsSingleRawMonthly( pStationId );
		LOCAL ExpandRule := Tranxform.MONTHLY_EXPANDS( pStationId );
		//Final_2 := TABLE(Final_1, { INTEGER2 year := (INTEGER2) year; INTEGER1 month := (INTEGER1) month; Final_1 });
		LOCAL Final_2 := Final_1;
		LOCAL Final_3 := PROJECT(Final_2, TRANSFORM(Layouts.monthly_layout,
			#EXPAND(ExpandRule);
			SELF := LEFT;
		));
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
	ENDMACRO;
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
