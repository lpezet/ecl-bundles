﻿EXPORT Layouts := MODULE

	EXPORT element_layout := RECORD
		STRING name;
		STRING description;
		STRING notes;
	END;
	
	EXPORT raw_element_layout := RECORD
		element_layout;
	END;
	
	EXPORT station_id_layout := RECORD
		STRING id;
	END;

	EXPORT state_layout := RECORD
		STRING2 code;
		STRING name;
	END;

	/*
	NB: even though the following layout is given, "NAME" is not fixed-length.
	------------------------------
	Variable   Columns   Type
	------------------------------
	CODE          1-2    Character
	NAME         4-50    Character
	------------------------------
	*/
	EXPORT raw_state_layout := RECORD
		STRING code_and_name;
	END;

	EXPORT country_layout := RECORD
		STRING2 code;
		STRING name;
	END;
	
	/*
	NB: even though the following layout is given, "NAME" is not fixed-length.
	------------------------------
	Variable   Columns   Type
	------------------------------
	CODE          1-2    Character
	NAME         4-50    Character
	------------------------------
	*/
	EXPORT raw_country_layout := RECORD
		STRING code_and_name;
	END;
	
	EXPORT station_inventory_layout := RECORD
		STRING11 id;
		DECIMAL9_6 latitude;
		DECIMAL9_6 longitude;
		STRING4 element;
		INTEGER4 first_year;
		INTEGER4 last_year;
	END;
	
	EXPORT station_layout := RECORD
		STRING11 id;
		DECIMAL9_6 latitude;
		DECIMAL9_6 longitude;
		DECIMAL4_1 elevation;
		STRING2 state;
		STRING name;
		STRING gsn_flag;
		STRING hcn_crn_flag;
		STRING wmo_id;
	END;
	
	EXPORT daily_layout := RECORD
		STRING id;
		INTEGER2 year;
		INTEGER1 month;
		STRING4 element;
		STRING5 value1;
		STRING1 mflag1;
		STRING1 qflag1;
		STRING1 sflag1;
		STRING5 value2;
		STRING1 mflag2;
		STRING1 qflag2;
		STRING1 sflag2;
		STRING5 value3;
		STRING1 mflag3;
		STRING1 qflag3;
		STRING1 sflag3;
		STRING5 value4;
		STRING1 mflag4;
		STRING1 qflag4;
		STRING1 sflag4;
		STRING5 value5;
		STRING1 mflag5;
		STRING1 qflag5;
		STRING1 sflag5;
		STRING5 value6;
		STRING1 mflag6;
		STRING1 qflag6;
		STRING1 sflag6;
		STRING5 value7;
		STRING1 mflag7;
		STRING1 qflag7;
		STRING1 sflag7;
		STRING5 value8;
		STRING1 mflag8;
		STRING1 qflag8;
		STRING1 sflag8;
		STRING5 value9;
		STRING1 mflag9;
		STRING1 qflag9;
		STRING1 sflag9;
		STRING5 value10;
		STRING1 mflag10;
		STRING1 qflag10;
		STRING1 sflag10;
		STRING5 value11;
		STRING1 mflag11;
		STRING1 qflag11;
		STRING1 sflag11;
		STRING5 value12;
		STRING1 mflag12;
		STRING1 qflag12;
		STRING1 sflag12;
		STRING5 value13;
		STRING1 mflag13;
		STRING1 qflag13;
		STRING1 sflag13;
		STRING5 value14;
		STRING1 mflag14;
		STRING1 qflag14;
		STRING1 sflag14;
		STRING5 value15;
		STRING1 mflag15;
		STRING1 qflag15;
		STRING1 sflag15;
		STRING5 value16;
		STRING1 mflag16;
		STRING1 qflag16;
		STRING1 sflag16;
		STRING5 value17;
		STRING1 mflag17;
		STRING1 qflag17;
		STRING1 sflag17;
		STRING5 value18;
		STRING1 mflag18;
		STRING1 qflag18;
		STRING1 sflag18;
		STRING5 value19;
		STRING1 mflag19;
		STRING1 qflag19;
		STRING1 sflag19;
		STRING5 value20;
		STRING1 mflag20;
		STRING1 qflag20;
		STRING1 sflag20;
		STRING5 value21;
		STRING1 mflag21;
		STRING1 qflag21;
		STRING1 sflag21;
		STRING5 value22;
		STRING1 mflag22;
		STRING1 qflag22;
		STRING1 sflag22;
		STRING5 value23;
		STRING1 mflag23;
		STRING1 qflag23;
		STRING1 sflag23;
		STRING5 value24;
		STRING1 mflag24;
		STRING1 qflag24;
		STRING1 sflag24;
		STRING5 value25;
		STRING1 mflag25;
		STRING1 qflag25;
		STRING1 sflag25;
		STRING5 value26;
		STRING1 mflag26;
		STRING1 qflag26;
		STRING1 sflag26;
		STRING5 value27;
		STRING1 mflag27;
		STRING1 qflag27;
		STRING1 sflag27;
		STRING5 value28;
		STRING1 mflag28;
		STRING1 qflag28;
		STRING1 sflag28;
		STRING5 value29;
		STRING1 mflag29;
		STRING1 qflag29;
		STRING1 sflag29;
		STRING5 value30;
		STRING1 mflag30;
		STRING1 qflag30;
		STRING1 sflag30;
		STRING5 value31;
		STRING1 mflag31;
		STRING1 qflag31;
		STRING1 sflag31;
	END;
	
	
	
	/*
	------------------------------
	Variable   Columns   Type
	------------------------------
	ID            1-11   Character
	LATITUDE     13-20   Real
	LONGITUDE    22-30   Real
	ELEMENT      32-35   Character
	FIRSTYEAR    37-40   Integer
	LASTYEAR     42-45   Integer
	------------------------------
	*/
	EXPORT raw_station_inventory_layout := RECORD
		STRING11 id;
		STRING9 latitude;
		STRING10 longitude;
		STRING5 element;
		STRING5 first_year;
		STRING5 last_year;
		STRING1 garbage;
	END;
	
	/*
	------------------------------
	Variable   Columns   Type
	------------------------------
	ID            1-11   Character
	LATITUDE     13-20   Real
	LONGITUDE    22-30   Real
	ELEVATION    32-37   Real
	STATE        39-40   Character
	NAME         42-71   Character
	GSN FLAG     73-75   Character
	HCN/CRN FLAG 77-79   Character
	WMO ID       81-85   Character
	------------------------------
	*/
	
	EXPORT raw_station_layout := RECORD
		STRING11 id;
		STRING10 latitude;
		STRING10 longitude;
		STRING7 elevation;
		STRING3 state;
		STRING30 name;
		STRING4 gsn_flag;
		STRING4 hcn_crn_flag;
		STRING6 wmo_id;
		STRING1 garbage;
	END;

	
	
	/*
	------------------------------
	Variable   Columns   Type
	------------------------------
	ID            1-11   Character
	YEAR         12-15   Integer
	MONTH        16-17   Integer
	ELEMENT      18-21   Character
	VALUE1       22-26   Integer
	MFLAG1       27-27   Character
	QFLAG1       28-28   Character
	SFLAG1       29-29   Character
	VALUE2       30-34   Integer
	MFLAG2       35-35   Character
	QFLAG2       36-36   Character
	SFLAG2       37-37   Character
	.           .          .
	.           .          .
	.           .          .
	VALUE31    262-266   Integer
	MFLAG31    267-267   Character
	QFLAG31    268-268   Character
	SFLAG31    269-269   Character
	------------------------------
	*/
	EXPORT raw_daily_layout := RECORD
		STRING11 id;
		STRING4 year;
		STRING2 month;
		STRING4 element;
		STRING5 value1;
		STRING1 mflag1;
		STRING1 qflag1;
		STRING1 sflag1;
		STRING5 value2;
		STRING1 mflag2;
		STRING1 qflag2;
		STRING1 sflag2;
		STRING5 value3;
		STRING1 mflag3;
		STRING1 qflag3;
		STRING1 sflag3;
		STRING5 value4;
		STRING1 mflag4;
		STRING1 qflag4;
		STRING1 sflag4;
		STRING5 value5;
		STRING1 mflag5;
		STRING1 qflag5;
		STRING1 sflag5;
		STRING5 value6;
		STRING1 mflag6;
		STRING1 qflag6;
		STRING1 sflag6;
		STRING5 value7;
		STRING1 mflag7;
		STRING1 qflag7;
		STRING1 sflag7;
		STRING5 value8;
		STRING1 mflag8;
		STRING1 qflag8;
		STRING1 sflag8;
		STRING5 value9;
		STRING1 mflag9;
		STRING1 qflag9;
		STRING1 sflag9;
		STRING5 value10;
		STRING1 mflag10;
		STRING1 qflag10;
		STRING1 sflag10;
		STRING5 value11;
		STRING1 mflag11;
		STRING1 qflag11;
		STRING1 sflag11;
		STRING5 value12;
		STRING1 mflag12;
		STRING1 qflag12;
		STRING1 sflag12;
		STRING5 value13;
		STRING1 mflag13;
		STRING1 qflag13;
		STRING1 sflag13;
		STRING5 value14;
		STRING1 mflag14;
		STRING1 qflag14;
		STRING1 sflag14;
		STRING5 value15;
		STRING1 mflag15;
		STRING1 qflag15;
		STRING1 sflag15;
		STRING5 value16;
		STRING1 mflag16;
		STRING1 qflag16;
		STRING1 sflag16;
		STRING5 value17;
		STRING1 mflag17;
		STRING1 qflag17;
		STRING1 sflag17;
		STRING5 value18;
		STRING1 mflag18;
		STRING1 qflag18;
		STRING1 sflag18;
		STRING5 value19;
		STRING1 mflag19;
		STRING1 qflag19;
		STRING1 sflag19;
		STRING5 value20;
		STRING1 mflag20;
		STRING1 qflag20;
		STRING1 sflag20;
		STRING5 value21;
		STRING1 mflag21;
		STRING1 qflag21;
		STRING1 sflag21;
		STRING5 value22;
		STRING1 mflag22;
		STRING1 qflag22;
		STRING1 sflag22;
		STRING5 value23;
		STRING1 mflag23;
		STRING1 qflag23;
		STRING1 sflag23;
		STRING5 value24;
		STRING1 mflag24;
		STRING1 qflag24;
		STRING1 sflag24;
		STRING5 value25;
		STRING1 mflag25;
		STRING1 qflag25;
		STRING1 sflag25;
		STRING5 value26;
		STRING1 mflag26;
		STRING1 qflag26;
		STRING1 sflag26;
		STRING5 value27;
		STRING1 mflag27;
		STRING1 qflag27;
		STRING1 sflag27;
		STRING5 value28;
		STRING1 mflag28;
		STRING1 qflag28;
		STRING1 sflag28;
		STRING5 value29;
		STRING1 mflag29;
		STRING1 qflag29;
		STRING1 sflag29;
		STRING5 value30;
		STRING1 mflag30;
		STRING1 qflag30;
		STRING1 sflag30;
		STRING5 value31;
		STRING1 mflag31;
		STRING1 qflag31;
		STRING1 sflag31;
		STRING1 garbage;
	END;
	
	//https://www.ncei.noaa.gov/data/gsom/doc/GSOMReadme.txt
	EXPORT monthly_layout := RECORD
		STRING id;
		STRING date;
		STRING latitude;
		STRING longitude;
		STRING elevation;
		STRING name;
		STRING awnd := '';
		STRING awnd_attributes := '';
		STRING cdsd := '';
		STRING cdsd_attributes := '';
		STRING cldd := '';
		STRING cldd_attributes := '';
		STRING dp01 := '';
		STRING dp01_attributes := '';
		STRING dp10 := '';
		STRING dp10_attributes := '';
		STRING dp1x := '';
		STRING dp1x_attributes := '';
		STRING dsnd := '';
		STRING dsnd_attributes := '';
		STRING dsnw := '';
		STRING dsnw_attributes := '';
		STRING dt00 := '';
		STRING dt00_attributes := '';
		STRING dt32 := '';
		STRING dt32_attributes := '';
		STRING dx32 := '';
		STRING dx32_attributes := '';
		STRING dx70 := '';
		STRING dx70_attributes := '';
		STRING dx90 := '';
		STRING dx90_attributes := '';
		STRING emnt := '';
		STRING emnt_attributes := '';
		STRING emsd := '';
		STRING emsd_attributes := '';
		STRING emsn := '';
		STRING emsn_attributes := '';
		STRING emxp := '';
		STRING emxp_attributes := '';
		STRING emxt := '';
		STRING emxt_attributes := '';
		STRING evap := '';
		STRING evap_attributes := '';
		STRING hdsd := '';
		STRING hdsd_attributes := '';
		STRING hnyz := '';
		STRING hnyz_attributes := '';
		STRING htdd := '';
		STRING htdd_attributes := '';
		STRING hxyz := '';
		STRING hxyz_attributes := '';
		STRING lnyz := '';
		STRING lnyz_attributes := '';
		STRING lxyz := '';
		STRING lxyz_attributes := '';
		STRING mnp := '';
		STRING mnp_attributes := '';
		STRING mnyz := '';
		STRING mnyz_attributes := '';
		STRING mxpn := '';
		STRING mxpn_attributes := '';
		STRING mxyz := '';
		STRING mxyz_attributes := '';
		STRING prcp := '';
		STRING prcp_attributes := '';
		STRING psun := '';
		STRING psun_attributes := '';
		STRING snow := '';
		STRING snow_attributes := '';
		STRING tavg := '';
		STRING tavg_attributes := '';
		STRING tmax := '';
		STRING tmax_attributes := '';
		STRING tmin := '';
		STRING tmin_attributes := '';
		STRING tsun := '';
		STRING tsun_attributes := '';
		
		STRING wdf1 := '';
		STRING wdf1_attributes := '';
		STRING wdf2 := '';
		STRING wdf2_attributes := '';
		STRING wdf5 := '';
		STRING wdf5_attributes := '';
		STRING wdfg := '';
		STRING wdfg_attributes := '';
		STRING wdfi := '';
		STRING wdfi_attributes := '';
		STRING wdfm := '';
		STRING wdfm_attributes := '';
		STRING wdmv := '';
		STRING wdmv_attributes := '';
		STRING wsf1 := '';
		STRING wsf1_attributes := '';
		STRING wsf2 := '';
		STRING wsf2_attributes := '';
		STRING wsf5 := '';
		STRING wsf5_attributes := '';
		STRING wsfg := '';
		STRING wsfg_attributes := '';
		STRING wsfi := '';
		STRING wsfi_attributes := '';
		STRING wsfm := '';
		STRING wsfm_attributes := '';
	END;
	
	EXPORT raw_monthly_layout := RECORD
		STRING id;
		STRING date;
		STRING latitude;
		STRING longitude;
		STRING elevation;
		STRING name;
		STRING field1;
		STRING field2;
		STRING field3;
		STRING field4;
		STRING field5;
		STRING field6;
		STRING field7;
		STRING field8;
		STRING field9;
		STRING field10;
		STRING field11;
		STRING field12;
		STRING field13;
		STRING field14;
		STRING field15;
		STRING field16;
		STRING field17;
		STRING field18;
		STRING field19;
		STRING field20;
		STRING field21;
		STRING field22;
		STRING field23;
		STRING field24;
		STRING field25;
		STRING field26;
		STRING field27;
		STRING field28;
		STRING field29;
		STRING field30;
		STRING field31;
		STRING field32;
		STRING field33;
		STRING field34;
		STRING field35;
		STRING field36;
		STRING field37;
		STRING field38;
		STRING field39;
		STRING field40;
		STRING field41;
		STRING field42;
		STRING field43;
		STRING field44;
		STRING field45;
		STRING field46;
		STRING field47;
		STRING field48;
		STRING field49;
		STRING field50;
		STRING field51;
		STRING field52;
		STRING field53;
		STRING field54;
		STRING field55;
		STRING field56;
		STRING field57;
		STRING field58;
		STRING field59;
		STRING field60;
		STRING field61;
		STRING field62;
		STRING field63;
		STRING field64;
		STRING field65;
		STRING field66;
		STRING field67;
		STRING field68;
		STRING field69;
		STRING field70;
		STRING field71;
		STRING field72;
		STRING field73;
		STRING field74;
		STRING field75;
		STRING field76;
		STRING field77;
		STRING field78;
		STRING field79;
		STRING field80;
		STRING field81;
		STRING field82;
		STRING field83;
		STRING field84;
		STRING field85;
		STRING field86;
		STRING field87;
		STRING field88;
		STRING field89;
		STRING field90;
		STRING field91;
		STRING field92;
		STRING field93;
		STRING field94;
		STRING field95;
		STRING field96;
		STRING field97;
		STRING field98;
		STRING field99;
		STRING field100;
	END;
	


END;