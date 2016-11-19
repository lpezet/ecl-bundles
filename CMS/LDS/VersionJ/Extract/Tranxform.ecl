IMPORT CMS.LDS.VersionJ.Extract.Datasets AS RawDatasets;
IMPORT CMS.LDS.VersionJ.Extract.Layouts AS RawLayouts;
IMPORT CMS.LDS.VersionJ.Datasets AS Datasets;
IMPORT CMS.LDS.VersionJ.Layouts AS Layouts;


EXPORT Tranxform( INTEGER mYear ) := MODULE

	EXPORT tx_inpatient( INTEGER pPercent ) := FUNCTION
		oRawBaseDS := RawDatasets.dsRawIPBase( mYear, pPercent );
		oRawCondCodeDS := RawDatasets.dsRawIPCond( mYear, pPercent );
		oRawOccCodeDS := RawDatasets.dsRawIPOcc( mYear, pPercent );
		oRawValCodeDS := RawDatasets.dsRawIPVal( mYear, pPercent );
		oRawRevenueCenterDS := RawDatasets.dsRawIPRev( mYear, pPercent );
		
		oBaseDS := PROJECT( oRawBaseDS, TRANSFORM( Layouts.ip_base_layout, SELF := LEFT ) );
		oCondCodeDS := PROJECT( oRawCondCodeDS, TRANSFORM( Layouts.ip_condition_code_layout, SELF := LEFT ) );
		oOccCodeDS := PROJECT( oRawOccCodeDS, TRANSFORM( Layouts.ip_occurrence_code_layout, SELF := LEFT ) );
		oValCodeDS := PROJECT( oRawValCodeDS, TRANSFORM( Layouts.ip_value_code_layout, SELF := LEFT ) );
		oRevenueCenterDS := PROJECT( oRawRevenueCenterDS, TRANSFORM( Layouts.ip_revenue_center_layout, SELF := LEFT ) );
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_IP_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_IP_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oOccCodeDS, HASH( desy_sort_key ) ),, Datasets.File_IP_Occurrence_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_IP_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_IP_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT tx_outpatient( INTEGER pPercent ) := FUNCTION
		oRawBaseDS := RawDatasets.dsRawOPBase( mYear, pPercent );
		oRawCondCodeDS := RawDatasets.dsRawOPCond( mYear, pPercent );
		oRawOccCodeDS := RawDatasets.dsRawOPOcc( mYear, pPercent );
		oRawValCodeDS := RawDatasets.dsRawOPVal( mYear, pPercent );
		oRawRevenueCenterDS := RawDatasets.dsRawOPRev( mYear, pPercent );
		
		oBaseDS := PROJECT( oRawBaseDS, TRANSFORM( Layouts.op_base_layout, SELF := LEFT ) );
		oCondCodeDS := PROJECT( oRawCondCodeDS, TRANSFORM( Layouts.op_condition_code_layout, SELF := LEFT ) );
		oOccCodeDS := PROJECT( oRawOccCodeDS, TRANSFORM( Layouts.op_occurrence_code_layout, SELF := LEFT ) );
		oValCodeDS := PROJECT( oRawValCodeDS, TRANSFORM( Layouts.op_value_code_layout, SELF := LEFT ) );
		oRevenueCenterDS := PROJECT( oRawRevenueCenterDS, TRANSFORM( Layouts.op_revenue_center_layout, SELF := LEFT ) );
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_OP_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_OP_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oOccCodeDS, HASH( desy_sort_key ) ),, Datasets.File_OP_Occurrence_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_OP_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_OP_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT tx_hospice( INTEGER pPercent ) := FUNCTION
		oRawBaseDS := RawDatasets.dsRawHospiceBase( mYear, pPercent );
		oRawCondCodeDS := RawDatasets.dsRawHospiceCond( mYear, pPercent );
		oRawOccCodeDS := RawDatasets.dsRawHospiceOcc( mYear, pPercent );
		oRawValCodeDS := RawDatasets.dsRawHospiceVal( mYear, pPercent );
		oRawRevenueCenterDS := RawDatasets.dsRawHospiceRev( mYear, pPercent );
		
		oBaseDS := PROJECT( oRawBaseDS, TRANSFORM( Layouts.hospice_base_layout, SELF := LEFT ) );
		oCondCodeDS := PROJECT( oRawCondCodeDS, TRANSFORM( Layouts.hospice_condition_code_layout, SELF := LEFT ) );
		oOccCodeDS := PROJECT( oRawOccCodeDS, TRANSFORM( Layouts.hospice_occurrence_code_layout, SELF := LEFT ) );
		oValCodeDS := PROJECT( oRawValCodeDS, TRANSFORM( Layouts.hospice_value_code_layout, SELF := LEFT ) );
		oRevenueCenterDS := PROJECT( oRawRevenueCenterDS, TRANSFORM( Layouts.hospice_revenue_center_layout, SELF := LEFT ) );
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Hospice_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Hospice_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oOccCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Hospice_Occurrence_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Hospice_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_Hospice_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT tx_snf( INTEGER pPercent ) := FUNCTION
		oRawBaseDS := RawDatasets.dsRawSNFBase( mYear, pPercent );
		oRawCondCodeDS := RawDatasets.dsRawSNFCond( mYear, pPercent );
		oRawOccCodeDS := RawDatasets.dsRawSNFOcc( mYear, pPercent );
		oRawValCodeDS := RawDatasets.dsRawSNFVal( mYear, pPercent );
		oRawRevenueCenterDS := RawDatasets.dsRawSNFRev( mYear, pPercent );
		
		oBaseDS := PROJECT( oRawBaseDS, TRANSFORM( Layouts.snf_base_layout, SELF := LEFT ) );
		oCondCodeDS := PROJECT( oRawCondCodeDS, TRANSFORM( Layouts.snf_condition_code_layout, SELF := LEFT ) );
		oOccCodeDS := PROJECT( oRawOccCodeDS, TRANSFORM( Layouts.snf_occurrence_code_layout, SELF := LEFT ) );
		oValCodeDS := PROJECT( oRawValCodeDS, TRANSFORM( Layouts.snf_value_code_layout, SELF := LEFT ) );
		oRevenueCenterDS := PROJECT( oRawRevenueCenterDS, TRANSFORM( Layouts.snf_revenue_center_layout, SELF := LEFT ) );
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_SNF_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_SNF_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oOccCodeDS, HASH( desy_sort_key ) ),, Datasets.File_SNF_Occurrence_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_SNF_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_SNF_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;


	EXPORT tx_hha( INTEGER pPercent ) := FUNCTION
		oRawBaseDS := RawDatasets.dsRawHHABase( mYear, pPercent );
		oRawCondCodeDS := RawDatasets.dsRawHHACond( mYear, pPercent );
		oRawValCodeDS := RawDatasets.dsRawHHAVal( mYear, pPercent );
		oRawRevenueCenterDS := RawDatasets.dsRawHHARev( mYear, pPercent );
		
		oBaseDS := PROJECT( oRawBaseDS, TRANSFORM( Layouts.hha_base_layout, SELF := LEFT ) );
		oCondCodeDS := PROJECT( oRawCondCodeDS, TRANSFORM( Layouts.hha_condition_code_layout, SELF := LEFT ) );
		oValCodeDS := PROJECT( oRawValCodeDS, TRANSFORM( Layouts.hha_value_code_layout, SELF := LEFT ) );
		oRevenueCenterDS := PROJECT( oRawRevenueCenterDS, TRANSFORM( Layouts.hha_revenue_center_layout, SELF := LEFT ) );
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_HHA_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_HHA_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_HHA_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_HHA_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT tx_dme( INTEGER pPercent ) := FUNCTION
		oRawBaseDS := RawDatasets.dsRawDMEBase( mYear, pPercent );
		oRawLineDS := RawDatasets.dsRawDMELine( mYear, pPercent );
		
		oBaseDS := PROJECT( oRawBaseDS, TRANSFORM( Layouts.dme_base_layout, SELF := LEFT ) );
		oLineDS := PROJECT( oRawLineDS, TRANSFORM( Layouts.dme_line_layout, SELF := LEFT ) );
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_DME_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oLineDS, HASH( desy_sort_key ) ),, Datasets.File_DME_Line( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT tx_carrier( INTEGER pPercent ) := FUNCTION
		oRawBaseDS := RawDatasets.dsRawCarrierBase( mYear, pPercent );
		oRawLineDS := RawDatasets.dsRawCarrierLine( mYear, pPercent );
		
		oBaseDS := PROJECT( oRawBaseDS, TRANSFORM( Layouts.carrier_base_layout, SELF := LEFT ) );
		oLineDS := PROJECT( oRawLineDS, TRANSFORM( Layouts.carrier_line_layout, SELF := LEFT ) );
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Carrier_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oLineDS, HASH( desy_sort_key ) ),, Datasets.File_Carrier_Line( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT tx_denominator( INTEGER pPercent ) := FUNCTION
		oRawDS := RawDatasets.dsRawDenom( mYear, pPercent );
		
		oDS := PROJECT( oRawDS, TRANSFORM( Layouts.denominator_layout, SELF := LEFT ) );
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oDS, HASH( desy_sort_key ) ),, Datasets.File_Denominator( mYear, pPercent ), OVERWRITE)
		);
	END;


END;