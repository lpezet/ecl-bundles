IMPORT NOAA.GHCN.FS.Datasets;
IMPORT NOAA.GHCN.FS.Tranxform;
IMPORT NOAA.GHCN.FS.Extract;
IMPORT NOAA.GHCN.FS.Layouts;
IMPORT NOAA.Util.GeometryLite as Geometry;

IMPORT LPezet.Linux.Curl;
// WARNING
// New file to look into
// https://www.ncdc.noaa.gov/snow-and-ice/


EXPORT Setup := MODULE

	// ##########################
	// Stations
	// ##########################
	EXPORT Stations() := FUNCTION
		RETURN SEQUENTIAL(
				OUTPUT(Curl.download('https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt', '/var/lib/HPCCSystems/mydropzone/ghcnd-stations.txt'), NAMED('Stations') ),
				Extract.stations(),
				Tranxform.stations()
			);
	END;
	
	// ##########################
	// Elements
	// ##########################
	EXPORT Elements() := FUNCTION
		RETURN SEQUENTIAL(
				OUTPUT(Curl.download('https://docs.google.com/spreadsheets/d/1LhFzRckqVpg2Dt7SVh38ojRPRLczRoK8v-02qowOTZo/pub?gid=1596064987&single=true&output=csv', '/var/lib/HPCCSystems/mydropzone/ghcnd-elements.txt'), NAMED('Elements') ),
				Extract.elements(),
				Tranxform.elements()
			);
	END;

	// ##########################
	// Stations Inventory
	// ##########################
	EXPORT StationsInventory() := FUNCTION
		RETURN SEQUENTIAL(
				OUTPUT(Curl.download('https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-inventory.txt', '/var/lib/HPCCSystems/mydropzone/ghcnd-inventory.txt'), NAMED('StationsInventory') ),
				Extract.stations_inventory(),
				Tranxform.stations_inventory()
			);
	END;

	// ##########################
	// Countries
	// ##########################
	EXPORT Countries() := FUNCTION
		RETURN SEQUENTIAL(
				OUTPUT(Curl.download('https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-countries.txt', '/var/lib/HPCCSystems/mydropzone/ghcnd-countries.txt'), NAMED('Countries') ),
				Extract.countries(),
				Tranxform.countries()
			);
	END;

	// ##########################
	// States
	// ##########################
	EXPORT States() := FUNCTION
		RETURN SEQUENTIAL(
				OUTPUT(Curl.download('https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-states.txt', '/var/lib/HPCCSystems/mydropzone/ghcnd-states.txt'), NAMED('States') ),
				Extract.states(),
				Tranxform.states()
			);
	END;

	// ##########################
	// Single Station
	// ##########################
	EXPORT SingleStation() := FUNCTION
		RETURN SEQUENTIAL(
				OUTPUT(Curl.download('https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/all/US1COEP0020.dly', '/var/lib/HPCCSystems/mydropzone/US1COEP0020.dly'), NAMED('US1COEP0020') ),
				Extract.daily('US1COEP0020'),
				Tranxform.daily()
		);
	END;
	
	EXPORT Basics() := FUNCTION
		RETURN PARALLEL(
			Stations(),
			Elements(),
			States(),
			Countries(),
			StationsInventory()
		);
	END;
	
	EXPORT DownloadDaily(DATASET(Layouts.station_id_layout) pStationIds) := FUNCTION
		RETURN APPLY( pStationIds, OUTPUT(Curl.download('https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/all/' + id + '.dly', '/var/lib/HPCCSystems/mydropzone/' + id + '.dly')));
	END;
	
	EXPORT LoadDaily(pStationIds) := MACRO
		Extract.dailies( pStationIds );
	ENDMACRO;
	
	EXPORT TransformDaily(DATASET(Layouts.station_id_layout) pStationIds) := FUNCTION
		RETURN Tranxform.daily();
	END;
	
	
	//DATASET(Layouts.station_id_layout) pStations
	EXPORT Daily(pStations) := MACRO
		/*
		A := APPLY( pStationIds, OUTPUT(Curl.download('http://www1.ncdc.noaa.gov/pub/data/ghcn/daily/all/' + id + '.dly', '/var/lib/HPCCSystems/mydropzone/' + id + '.dly', false)));
		B := Extract.dailies( pStationIds );
		C := Tranxform.daily.doIt();
		RETURN SEQUENTIAL( A, B, C);
		*/
		
		//NB: Must be sequential...
		APPLY( pStations, OUTPUT(Curl.download('https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/all/' + id + '.dly', '/var/lib/HPCCSystems/mydropzone/' + id + '.dly')));
		Extract.dailies( pStations );
		Tranxform.daily();
	ENDMACRO;
	
	/*
	EXPORT Monthly(DATASET(Layouts.station_id_layout) pStationIds) := FUNCTION
		RETURN SEQUENTIAL(
			APPLY( pStationIds, OUTPUT(Curl.download('https://www.ncei.noaa.gov/data/gsom/access/' + id + '.csv', '/var/lib/HPCCSystems/mydropzone/' + id + '.mly'))),
			Extract.monthlies( pStationIds ),
			Tranxform.monthly()
		);
		
		//NB: Must be sequential...
		//APPLY( pStations, OUTPUT(Curl.download('https://www.ncei.noaa.gov/data/gsom/access/' + id + '.csv', '/var/lib/HPCCSystems/mydropzone/' + id + '.mly')));
		//Extract.monthlies( pStations );
		//Tranxform.monthly();
		
	END;
	*/
	
	// ##### WARNING #####
	// There's another version here:
	// https://www.ncdc.noaa.gov/ghcnm/v3.php
	// ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/v3/README
	// "This version currently contains monthly mean temperature, monthly maximum temperature and monthly minimum temperature."
	// Dunno what's the difference yet with 
	// https://www.ncei.noaa.gov/data/gsom/access/
	EXPORT DownloadMonthly(DATASET(Layouts.station_id_layout) pStationIds) := FUNCTION
		RETURN APPLY( pStationIds, OUTPUT(Curl.download('https://www.ncei.noaa.gov/data/gsom/access/' + id + '.csv', '/var/lib/HPCCSystems/mydropzone/' + id + '.mly')));
	END;
	EXPORT DownloadAndLoadMonthly(pStationIds) := MACRO
		Extract.monthlies( pStationIds );
	ENDMACRO;
	EXPORT ETLMonthly(pStations) := MACRO
		IMPORT LPezet.Linux.Curl;
		IMPORT NOAA.GHCN.FS.Tranxform;
		IMPORT NOAA.GHCN.FS.Extract;
		IMPORT NOAA.GHCN.FS.Datasets;
		IMPORT NOAA.Util.SFile;
		LOADXML('<xml/>');
		#DECLARE (oIndex)
		#SET (oIndex, 1);
		#UNIQUENAME(TotalRecords)
		//%TotalRecords% := COUNT(pStations) : INDEPENDENT;
		SEQUENTIAL(
			//APPLY( pStations, OUTPUT(Curl.download('https://www.ncei.noaa.gov/data/gsom/access/' + id + '.csv', '/var/lib/HPCCSystems/mydropzone/' + id + '.mly')));
		#LOOP
			#IF (%oIndex% > COUNT(pStations))
				#BREAK
			#END
			// Download
			OUTPUT(Curl.download('https://www.ncei.noaa.gov/data/gsom/access/' + pStations[%oIndex%].id + '.csv', '/var/lib/HPCCSystems/mydropzone/' + pStations[%oIndex%].id + '.mly'));
			//OUTPUT('Working on: ' + TOXML(pStations[%oIndex%]));
			// EXPAND liner to help if station not-supported yet (using header from downloaded file)
			Extract.monthly_fields( pStations[%oIndex%].id );
			// Load data
			Extract.monthly( pStations[%oIndex%].id );
			// Transform data
			Tranxform.monthly( pStations[%oIndex%].id );
			#SET (oIndex, %oIndex%+1)
		#END
		);
	ENDMACRO;
	//EXPORT TransformMonthly( STRING pStationId ) := Tranxform.monthly( pStationId );
	//EXPORT TransformMonthly(DATASET(Layouts.station_id_layout) pStationIds) := Tranxform.monthly();
END;