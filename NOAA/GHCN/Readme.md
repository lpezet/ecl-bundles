# Global Historical Climatology Network (GHCN)

This bundle provides helper code to extract and load NOAA GHCN data.
There are two ways to consume GHCN data: using files (FS) and using web services (WS).


## File Service (FS)


### Tutorial

#### Getting Started

First, setup the basics if you haven't done so yet:

	IMPORT NOAA.GHCN.FS.Setup;
	Setup.Basics();
	
This already gives us all the data on weather stations, information elements we can use from stations as well as other basic informations (states, countries, etc).
Here's how to see all elements tracked by weather stations:

	IMPORT NOAA.GHCN.FS.Datasets;

	Datasets.dsElements;
	
Now we need to download the daily summary data for a couple weather stations:

	IMPORT NOAA.GHCN.FS.Setup;
	IMPORT NOAA.GHCN.FS.Layouts;
	IMPORT NOAA.GHCN.FS.Tranxform;
	IMPORT NOAA.GHCN.FS.Extract;

	IMPORT LPezet.Linux.Curl;

	oStations := DATASET([ 
		{'USW00014838' }, { 'USC00144559' } , { 'USC00043157' } , { 'USC00117391' } , { 'USW00093820' } , { 'US1COEP0020' }
		], Layouts.station_id_layout);
	Setup.Daily( oStations );


Now let's get some details about station *US1COEP0020*:
	
	IMPORT NOAA.GHCN.FS.Datasets;
	
	A := Datasets.dsStations(id = 'US1COEP0020');
	B := Datasets.dsStationsInventory(id = 'US1COEP0020');
	oDailyDS := Datasets.dsDaily(id = 'US1COEP0020');
	C := TABLE( oDailyDS, { id; year; element; INTEGER total_records := COUNT(GROUP); }, id, year, element );

	OUTPUT(A, NAMED('BasicStationInfo') );
	OUTPUT(B, NAMED('StationMetadata') );
	OUTPUT(C, NAMED('StationStats') );
	
In *BasicStationInfo* we see very basic station information, like longitude, latitude, elevation, state, etc.
The *StationMetadata* output gives us information about pieces of information available from that weather station. You can see the elements we listed above referenced in the results.
Finally, *StationStats* provides some information on how many records this station gathered over the years for each element available from it.

For fun, here's a report on the years of service of weather stations:

	IMPORT NOAA.GHCN.FS.Datasets;

	A := Datasets.dsStationsInventory;
	B := TABLE(A, { INTEGER4 years := last_year - first_year; A; } );
	C := B( years > 10 );
	D := SORT(C, -years);
	OUTPUT(D, NAMED('LongestInServiceStations'));
	OUTPUT(D( last_year >= 2015 ), NAMED('LongestStillInService'));
	
The following snippet uses some GeoSpatial code provided by Andrew from LexisNexis Risk. With this we can figure out weather stations around a geo point.
For this code to run, you'll have to install a few things in your cluster. See [this blog post](https://hpccsystems.com/resources/blog/afarrell/pursuit-perils-geo-spatial-risk-analysis-through-hpcc-systems) for more details.

	IMPORT NOAA.GHCN.FS.Datasets;
	IMPORT NOAA.Util.GeometryLite as Geometry;
	
	// SRID = Spatial Reference System Identifier, and in this case correlates to the matching EPSG id (http://www.epsg.org/)
	// Universal Transverse Mercator (UTM) Zone 16 North... X,Y in meters, good for showing local distances
	UTMZ16N_SRID := 32616; 

	// World Geodetic System (WGS) ... Longitude,Latitude good for using as the base coordinate system
	WGS84_SRID := 4326; 

	// Add geo point to station dataset and filter already on only Colorado stations
	oStations := Datasets.dsStations;
	oStationsGeo := TABLE(oStations, { STRING point := 'POINT(' + longitude + ' ' + latitude + ')'; STRING srid := Geometry.toSRID('POINT(' + longitude + ' ' + latitude + ')', WGS84_SRID,UTMZ16N_SRID); oStations; } );
	oColoradoStations := oStationsGeo(state = 'CO');

	// Define reference point to search from
	oCenterSRID := Geometry.toSRID('POINT(-104.8005 39.0276)', WGS84_SRID,UTMZ16N_SRID);

	// Calcuate distance from reference point in Colorado Stations dataset
	oStationsWithDistance := TABLE(oColoradoStations, { INTEGER4 distance := Geometry.distanceBetween(srid, oCenterSRID,UTMZ16N_SRID); oColoradoStations; } );

	// Grab station inventory for all Colorado stations with distance from reference point
	oStationsWithDistanceWithInventory := JOIN(oStationsWithDistance, Datasets.dsStationsInventory, LEFT.id = RIGHT.id);

	// Filter results on stations still having data in 2015
	X := oStationsWithDistanceWithInventory(last_year >= 2015);
	SORT(X, distance);


## Web Service (WS)

