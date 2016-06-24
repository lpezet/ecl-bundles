# National Oceanic and Atmospheric Administration ECL Bundle

## Overview

This HPCC Systems ECL Bundle provide tools to extract and load NOAA data.

## Pre-requisites

You'll first need to install the LPezet ECL Bundle
	
	ecl-bundle install LPezet


## Installation

	ecl-bundle install NOAA
	

## Usage

Check GHCN on how to get started with Global Historical Climatology Network data.
Check NDFD on how to get starteg with National Digital Forecast Database data.


## Example

The following code will display details about a specific weather station, its metadata and a report on the number of records by station, year and metadata using daily feed.


	IMPORT NOAA.GHCN.FS.Datasets;
	
	Datasets.dsStations(id = 'US1COEP0020');
	Datasets.dsStationsInventory(id = 'US1COEP0020');
	oDailyDS := Datasets.dsDaily;
	TABLE( oDailyDS, { id; year; element; INTEGER total_records := COUNT(GROUP); }, id, year, element );
	
