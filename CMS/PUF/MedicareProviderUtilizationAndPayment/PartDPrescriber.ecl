IMPORT Std;

IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.Zip;
IMPORT LPezet.Linux.BinUtils;


EXPORT PartDPrescriber := MODULE

	SHARED mLandingZoneIP := 'localhost';
	SHARED mLocalPath := '/var/lib/HPCCSystems/mydropzone/CMS/PUF/MPUP/';
	
	SHARED remoteArchive(UNSIGNED pYear) := 'http://download.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Downloads/PartD_Prescriber_PUF_NPI_DRUG_' + (pYear - 2000) + '.zip';
	SHARED localArchive(UNSIGNED pYear) := mLocalPath + 'PartD_Prescriber_PUF_NPI_DRUG_' + pYear + '.zip';
	SHARED localDataFile(UNSIGNED pYear) := mLocalPath + 'PartD_Prescriber_PUF_NPI_DRUG_' + pYear + '.csv';
	EXPORT logicalFilename(UNSIGNED pYear) := '~cms::puf::mpup::partd_prescriber::' + pYear;
	
	// pYear > 2000. Right now only 2013 available.
	EXPORT extract(UNSIGNED pYear) := FUNCTION
		oLocalFile := localArchive( pYear );
		RETURN SEQUENTIAL(
			#OPTION('targetClusterType','hthor'),
			OUTPUT( BinUtils.mkdir( mLocalPath, true ), NAMED('CreatePath')),
			OUTPUT( Curl.download( remoteArchive( pYear), oLocalFile, false), NAMED('Download')),
			OUTPUT( BinUtils.checksum( oLocalFile ), NAMED('Checksum')),
			OUTPUT( Zip.unzip(oLocalFile, mLocalPath, true), NAMED('Unzipping')),
		);
	END;
	
	EXPORT raw_detail_layout := RECORD
		STRING npi;
		STRING nppes_provider_last_org_name;
		STRING nppes_provider_first_name;
		STRING nppes_provider_city;
		STRING nppes_provider_state;
		STRING specialty_description;
		STRING description_flag;
		STRING drug_name;
		STRING generic_name;
		STRING bene_count;
		STRING total_claim_count;
		STRING total_day_supply;
		STRING total_drug_cost;
		STRING bene_count_ge65;
		STRING bene_count_ge65_redact_flag;
		STRING total_claim_count_ge65;
		STRING ge65_redact_flag;
		STRING total_day_supply_ge65;
		STRING total_drug_cost_ge65;
	END;
	
	EXPORT raw_npi_summary_layout := RECORD
		STRING npi;
		STRING nppes_provider_last_org_name;
		STRING nppes_provider_first_name;
		STRING nppes_provider_city;
		STRING nppes_provider_state;
		STRING specialty_description;
		STRING description_flag;
		STRING drug_name;
		STRING generic_name;
		STRING bene_count;
		STRING total_claim_count;
		STRING total_day_supply;
		STRING total_drug_cost;
		STRING bene_count_ge65;
		STRING bene_count_ge65_redact_flag;
		STRING total_claim_count_ge65;
		STRING ge65_redact_flag;
		STRING total_day_supply_ge65;
		STRING total_drug_cost_ge65;
		STRING brand_claim_count;
		STRING brand_claim_cost;
		STRING brand_redact_flag;
		STRING generic_claim_count;
		STRING generic_claim_cost;
		STRING generic_redact_flag;
		STRING other_claim_count;
		STRING other_claim_cost;
		STRING other_redact_flag;
		STRING mapd_claim_count;
		STRING mapd_claim_cost;
		STRING mapd_redact_flag;
		STRING pdp_claim_count;
		STRING pdp_claim_cost;
		STRING pdp_redact_flag;
		STRING lis_claim_count;
		STRING lis_claim_cost;
		STRING lis_redact_flag;
		STRING nonlis_claim_count;
		STRING nonlis_claim_cost;
		STRING nonlis_redact_flag;
	END;
	
	EXPORT raw_summary_layout := RECORD
		STRING nppes_provider_state;
		STRING drug_name;
		STRING generic_name;
		STRING bene_count;
		STRING prescriber_count;
		STRING total_claim_count;
		STRING total_drug_cost;
	END;
	
	EXPORT load(UNSIGNED pYear) := FUNCTION
		File_In := localDataFile( pYear );
		File_Out := logicalFilename( pYear );
		DS_In := DATASET(std.File.ExternalLogicalFilename(mLandingZoneIP, File_In), raw_layout, CSV(HEADING(1), SEPARATOR([',']), QUOTE(['"']), TERMINATOR(['\n','\r\n','\n\r'])));
		DS_Dist := DISTRIBUTE(DS_In, HASH(unitid));
		RETURN OUTPUT(DS_Dist,, File_Out, OVERWRITE);
	END;

	EXPORT dsRaw(UNSIGNED pYear) := DATASET( logicalFilename( pYear ), raw_layout, THOR, OPT );
	
END;