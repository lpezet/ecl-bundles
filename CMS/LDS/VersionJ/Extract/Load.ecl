IMPORT Std;

IMPORT CMS.LDS.VersionJ.Extract.Layouts;
IMPORT CMS.LDS.VersionJ.Extract.Datasets;
IMPORT CMS.LDS.VersionJ.Extract.Config;

EXPORT Load( Config mConfig, INTEGER mYear ) := MODULE
	
	EXPORT load_inpatient( INTEGER pPercent ) := FUNCTION
		oBaseDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.inpatient_base_filename( mYear, pPercent )), Layouts.raw_ip_base_layout, CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oCondCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.inpatient_condition_code_filename( mYear, pPercent )), Layouts.raw_ip_condition_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oOccCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.inpatient_occurrence_code_filename( mYear, pPercent )), Layouts.raw_ip_occurrence_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oValCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.inpatient_value_code_filename( mYear, pPercent )), Layouts.raw_ip_value_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oRevenueCenterDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.inpatient_revenue_center_filename( mYear, pPercent )), Layouts.raw_ip_revenue_center_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_IP_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_IP_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oOccCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_IP_Occurrence_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_IP_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_IP_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT load_outpatient( INTEGER pPercent ) := FUNCTION
		oBaseDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.outpatient_base_filename( mYear, pPercent )), Layouts.raw_op_base_layout, CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oCondCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.outpatient_condition_code_filename( mYear, pPercent )), Layouts.raw_op_condition_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oOccCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.outpatient_occurrence_code_filename( mYear, pPercent )), Layouts.raw_op_occurrence_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oValCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.outpatient_value_code_filename( mYear, pPercent )), Layouts.raw_op_value_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oRevenueCenterDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.outpatient_revenue_center_filename( mYear, pPercent )), Layouts.raw_op_revenue_center_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_OP_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_OP_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oOccCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_OP_Occurrence_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_OP_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_OP_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT load_hospice( INTEGER pPercent ) := FUNCTION
		oBaseDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hospice_base_filename( mYear, pPercent )), Layouts.raw_hospice_base_layout, CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oCondCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hospice_condition_code_filename( mYear, pPercent )), Layouts.raw_hospice_condition_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oOccCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hospice_occurrence_code_filename( mYear, pPercent )), Layouts.raw_hospice_occurrence_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oValCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hospice_value_code_filename( mYear, pPercent )), Layouts.raw_hospice_value_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oRevenueCenterDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hospice_revenue_center_filename( mYear, pPercent )), Layouts.raw_hospice_revenue_center_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_Hospice_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_Hospice_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oOccCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_Hospice_Occurrence_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_Hospice_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_Hospice_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;

	EXPORT load_snf( INTEGER pPercent ) := FUNCTION
		oBaseDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.snf_base_filename( mYear, pPercent )), Layouts.raw_snf_base_layout, CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oCondCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.snf_condition_code_filename( mYear, pPercent )), Layouts.raw_snf_condition_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oOccCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.snf_occurrence_code_filename( mYear, pPercent )), Layouts.raw_snf_occurrence_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oValCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.snf_value_code_filename( mYear, pPercent )), Layouts.raw_snf_value_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oRevenueCenterDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.snf_revenue_center_filename( mYear, pPercent )), Layouts.raw_snf_revenue_center_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_SNF_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_SNF_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oOccCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_SNF_Occurrence_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_SNF_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_SNF_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT load_hha( INTEGER pPercent ) := FUNCTION
		oBaseDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hha_base_filename( mYear, pPercent )), Layouts.raw_hha_base_layout, CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oCondCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hha_condition_code_filename( mYear, pPercent )), Layouts.raw_hha_condition_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oValCodeDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hha_value_code_filename( mYear, pPercent )), Layouts.raw_hha_value_code_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oRevenueCenterDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.hha_revenue_center_filename( mYear, pPercent )), Layouts.raw_hha_revenue_center_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_HHA_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oCondCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_HHA_Condition_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oValCodeDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_HHA_Value_Code( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oRevenueCenterDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_HHA_Revenue_Center( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT load_dme( INTEGER pPercent ) := FUNCTION
		oBaseDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.dme_base_filename( mYear, pPercent )), Layouts.raw_dme_base_layout, CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oLineDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.dme_line_filename( mYear, pPercent )), Layouts.raw_dme_line_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_DME_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oLineDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_DME_Line( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT load_carrier( INTEGER pPercent ) := FUNCTION
		oBaseDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.carrier_base_filename( mYear, pPercent )), Layouts.raw_carrier_base_layout, CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oLineDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.carrier_line_filename( mYear, pPercent )), Layouts.raw_carrier_line_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		
		RETURN PARALLEL(
				OUTPUT( DISTRIBUTE( oBaseDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_Carrier_Base( mYear, pPercent ), OVERWRITE),
				OUTPUT( DISTRIBUTE( oLineDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_Carrier_Line( mYear, pPercent ), OVERWRITE)
		);
	END;
	
	EXPORT load_denominator( INTEGER pPercent ) := FUNCTION
		oDS := DATASET(Std.File.ExternalLogicalFilename( mConfig.local_path_ip, mConfig.local_path + mConfig.denominator_filename( mYear, pPercent )), Layouts.raw_denominator_layout, CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		RETURN OUTPUT( DISTRIBUTE( oDS, HASH( desy_sort_key ) ),, Datasets.File_Raw_Denominator( mYear, pPercent ), OVERWRITE);
	END;
	
END;