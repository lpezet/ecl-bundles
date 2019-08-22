// WEATHER
// Source: http://www1.ncdc.noaa.gov/pub/data/ghcn/daily/



IMPORT NOAA.GHCN.FS.Layouts;


EXPORT Datasets := MODULE

	EXPORT File_Single_Raw_Daily(STRING pId) := '~weather::raw::daily::' + pId;
	EXPORT File_Raw_Daily := '~weather::raw::daily';
	EXPORT File_Daily := '~weather::daily';
 EXPORT File_Single_Raw_Monthly(STRING pId) := '~weather::raw::monthly::' + pId;
	EXPORT File_Single_Raw_Monthly_Fields(STRING pId) := '~weather::raw::monthly::fields::' + pId;
	EXPORT File_Raw_Monthly := '~weather::raw::monthly';
	EXPORT File_Raw_Monthly_Fields := '~weather::raw::monthly::fields';
	EXPORT File_Single_Monthly(STRING pId) := '~weather::monthly::' + pId;
 EXPORT File_Monthly := '~weather::monthly';
 	
	EXPORT File_Raw_Stations := '~weather::raw::stations';
	EXPORT File_Stations := '~weather::stations';
	EXPORT File_Raw_Stations_Inventory := '~weather::raw::stations_inventory';
	EXPORT File_Stations_Inventory := '~weather::stations_inventory';
	EXPORT File_Raw_Countries := '~weather::raw::countries';
	EXPORT File_Countries := '~weather::countries';
	EXPORT File_Raw_States := '~weather::raw::states';
	EXPORT File_States := '~weather::states';
	EXPORT File_Raw_Elements := '~weather::raw::elements';
	EXPORT File_Elements := '~weather::elements';
	
	EXPORT dsSingleRawDaily(STRING pId) := DATASET(File_Single_Raw_Daily(pId), Layouts.raw_daily_layout, THOR);
	EXPORT dsRawDaily := DATASET(File_Raw_Daily, Layouts.raw_daily_layout, THOR);
	EXPORT dsDaily := DATASET(File_Daily, Layouts.daily_layout, THOR);
	EXPORT dsSingleRawMonthly(STRING pId) := DATASET(File_Single_Raw_Monthly(pId), Layouts.raw_monthly_layout, THOR);
	EXPORT dsRawMonthly := DATASET(File_Raw_Monthly, Layouts.raw_monthly_layout, THOR, OPT);
	EXPORT dsSingleMonthly(STRING pId) := DATASET(File_Single_Monthly(pId), Layouts.monthly_layout, THOR);
	EXPORT dsMonthly := DATASET(File_Monthly, Layouts.monthly_layout, THOR);
	EXPORT dsRawStations := DATASET(File_Raw_Stations, Layouts.raw_station_layout, THOR);
	EXPORT dsStations := DATASET(File_Stations, Layouts.station_layout, THOR);
	EXPORT dsRawStationsInventory := DATASET(File_Raw_Stations_Inventory, Layouts.raw_station_inventory_layout, THOR);
	EXPORT dsStationsInventory := DATASET(File_Stations_Inventory, Layouts.station_inventory_layout, THOR);
	EXPORT dsRawCountries := DATASET(File_Raw_Countries, Layouts.raw_country_layout, THOR);
	EXPORT dsCountries := DATASET(File_Countries, Layouts.country_layout, THOR);
	EXPORT dsRawStates := DATASET(File_Raw_States, Layouts.raw_state_layout, THOR);
	EXPORT dsStates := DATASET(File_States, Layouts.state_layout, THOR);
	EXPORT dsRawElements := DATASET(File_Raw_Elements, Layouts.raw_element_layout, THOR);
	EXPORT dsElements := DATASET(File_Elements, Layouts.element_layout, THOR);
END;