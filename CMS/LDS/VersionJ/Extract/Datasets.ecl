IMPORT CMS.LDS.VersionJ.Extract.Layouts;

EXPORT Datasets := MODULE

	EXPORT STRING File_Raw_IP_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::ip::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_IP_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::ip::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_IP_Occurrence_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::ip::occ::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_IP_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::ip::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_IP_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::ip::rev::' + pYear + '::' + pPercent;

	EXPORT STRING File_Raw_OP_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::op::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_OP_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::op::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_OP_Occurrence_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::op::occ::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_OP_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::op::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_OP_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::op::rev::' + pYear + '::' + pPercent;
	
	EXPORT STRING File_Raw_SNF_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::snf::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_SNF_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::snf::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_SNF_Occurrence_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::snf::occ::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_SNF_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::snf::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_SNF_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::snf::rev::' + pYear + '::' + pPercent;

	EXPORT STRING File_Raw_Hospice_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hospice::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_Hospice_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hospice::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_Hospice_Occurrence_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hospice::occ::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_Hospice_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hospice::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_Hospice_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hospice::rev::' + pYear + '::' + pPercent;

	EXPORT STRING File_Raw_HHA_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hha::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_HHA_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hha::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_HHA_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hha::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_HHA_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::hha::rev::' + pYear + '::' + pPercent;

	EXPORT STRING File_Raw_DME_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::dme::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_DME_Line( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::dme::line::' + pYear + '::' + pPercent;

	EXPORT STRING File_Raw_Carrier_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::carrier::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Raw_Carrier_Line( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::carrier::line::' + pYear + '::' + pPercent;

	EXPORT STRING File_Raw_Denominator( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::raw::den::' + pYear + '::' + pPercent;




	EXPORT dsRawIPBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_IP_Base( pYear, pPercent), Layouts.raw_ip_base_layout, THOR );
	EXPORT dsRawIPCond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_IP_Condition_Code( pYear, pPercent), Layouts.raw_ip_condition_code_layout, THOR );
	EXPORT dsRawIPOcc( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_IP_Occurrence_Code( pYear, pPercent), Layouts.raw_ip_occurrence_code_layout, THOR );
	EXPORT dsRawIPVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_IP_Value_Code( pYear, pPercent), Layouts.raw_ip_value_code_layout, THOR );
	EXPORT dsRawIPRev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_IP_Revenue_Center( pYear, pPercent), Layouts.raw_ip_revenue_center_layout, THOR );

	EXPORT dsRawOPBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_OP_Base( pYear, pPercent), Layouts.raw_op_base_layout, THOR );
	EXPORT dsRawOPCond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_OP_Condition_Code( pYear, pPercent), Layouts.raw_op_condition_code_layout, THOR );
	EXPORT dsRawOPOcc( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_OP_Occurrence_Code( pYear, pPercent), Layouts.raw_op_occurrence_code_layout, THOR );
	EXPORT dsRawOPVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_OP_Value_Code( pYear, pPercent), Layouts.raw_op_value_code_layout, THOR );
	EXPORT dsRawOPRev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_OP_Revenue_Center( pYear, pPercent), Layouts.raw_op_revenue_center_layout, THOR );

	EXPORT dsRawHospiceBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_Hospice_Base( pYear, pPercent), Layouts.raw_hospice_base_layout, THOR );
	EXPORT dsRawHospiceCond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_Hospice_Condition_Code( pYear, pPercent), Layouts.raw_hospice_condition_code_layout, THOR );
	EXPORT dsRawHospiceOcc( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_Hospice_Occurrence_Code( pYear, pPercent), Layouts.raw_hospice_occurrence_code_layout, THOR );
	EXPORT dsRawHospiceVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_Hospice_Value_Code( pYear, pPercent), Layouts.raw_hospice_value_code_layout, THOR );
	EXPORT dsRawHospiceRev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_Hospice_Revenue_Center( pYear, pPercent), Layouts.raw_hospice_revenue_center_layout, THOR );

	EXPORT dsRawSNFBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_SNF_Base( pYear, pPercent), Layouts.raw_snf_base_layout, THOR );
	EXPORT dsRawSNFCond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_SNF_Condition_Code( pYear, pPercent), Layouts.raw_snf_condition_code_layout, THOR );
	EXPORT dsRawSNFOcc( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_SNF_Occurrence_Code( pYear, pPercent), Layouts.raw_snf_occurrence_code_layout, THOR );
	EXPORT dsRawSNFVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_SNF_Value_Code( pYear, pPercent), Layouts.raw_snf_value_code_layout, THOR );
	EXPORT dsRawSNFRev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_SNF_Revenue_Center( pYear, pPercent), Layouts.raw_snf_revenue_center_layout, THOR );

	EXPORT dsRawHHABase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_HHA_Base( pYear, pPercent), Layouts.raw_hha_base_layout, THOR );
	EXPORT dsRawHHACond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_HHA_Condition_Code( pYear, pPercent), Layouts.raw_hha_condition_code_layout, THOR );
	EXPORT dsRawHHAVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_HHA_Value_Code( pYear, pPercent), Layouts.raw_hha_value_code_layout, THOR );
	EXPORT dsRawHHARev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_HHA_Revenue_Center( pYear, pPercent), Layouts.raw_hha_revenue_center_layout, THOR );

	EXPORT dsRawDMEBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_DME_Base( pYear, pPercent), Layouts.raw_dme_base_layout, THOR );
	EXPORT dsRawDMELine( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_DME_Line( pYear, pPercent), Layouts.raw_dme_line_layout, THOR );

	EXPORT dsRawCarrierBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_Carrier_Base( pYear, pPercent), Layouts.raw_carrier_base_layout, THOR );
	EXPORT dsRawCarrierLine( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_Carrier_Line( pYear, pPercent), Layouts.raw_carrier_line_layout, THOR );

	EXPORT dsRawDenom( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Raw_Denominator( pYear, pPercent), Layouts.raw_denominator_layout, THOR );
	
END;