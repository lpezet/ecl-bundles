IMPORT CMS.LDS.VersionJ.Layouts;

EXPORT Datasets := MODULE

	EXPORT STRING File_IP_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::ip::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_IP_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::ip::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_IP_Occurrence_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::ip::occ::' + pYear + '::' + pPercent;
	EXPORT STRING File_IP_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::ip::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_IP_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::ip::rev::' + pYear + '::' + pPercent;

	EXPORT STRING File_OP_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::op::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_OP_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::op::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_OP_Occurrence_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::op::occ::' + pYear + '::' + pPercent;
	EXPORT STRING File_OP_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::op::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_OP_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::op::rev::' + pYear + '::' + pPercent;
	
	EXPORT STRING File_SNF_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::snf::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_SNF_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::snf::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_SNF_Occurrence_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::snf::occ::' + pYear + '::' + pPercent;
	EXPORT STRING File_SNF_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::snf::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_SNF_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::snf::rev::' + pYear + '::' + pPercent;

	EXPORT STRING File_Hospice_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hospice::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Hospice_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hospice::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_Hospice_Occurrence_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hospice::occ::' + pYear + '::' + pPercent;
	EXPORT STRING File_Hospice_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hospice::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_Hospice_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hospice::rev::' + pYear + '::' + pPercent;

	EXPORT STRING File_HHA_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hha::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_HHA_Condition_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hha::cond::' + pYear + '::' + pPercent;
	EXPORT STRING File_HHA_Value_Code( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hha::val::' + pYear + '::' + pPercent;
	EXPORT STRING File_HHA_Revenue_Center( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::hha::rev::' + pYear + '::' + pPercent;

	EXPORT STRING File_DME_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::dme::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_DME_Line( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::dme::line::' + pYear + '::' + pPercent;

	EXPORT STRING File_Carrier_Base( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::carrier::base::' + pYear + '::' + pPercent;
	EXPORT STRING File_Carrier_Line( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::carrier::line::' + pYear + '::' + pPercent;

	EXPORT STRING File_Denominator( INTEGER pYear, INTEGER pPercent ) := 'cms::lds::versionj::den::' + pYear + '::' + pPercent;




	EXPORT dsIPBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_IP_Base( pYear, pPercent), Layouts.ip_base_layout, THOR );
	EXPORT dsIPCond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_IP_Condition_Code( pYear, pPercent), Layouts.ip_condition_code_layout, THOR );
	EXPORT dsIPOcc( INTEGER pYear, INTEGER pPercent ) := DATASET( File_IP_Occurrence_Code( pYear, pPercent), Layouts.ip_occurrence_code_layout, THOR );
	EXPORT dsIPVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_IP_Value_Code( pYear, pPercent), Layouts.ip_value_code_layout, THOR );
	EXPORT dsIPRev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_IP_Revenue_Center( pYear, pPercent), Layouts.ip_revenue_center_layout, THOR );

	EXPORT dsOPBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_OP_Base( pYear, pPercent), Layouts.op_base_layout, THOR );
	EXPORT dsOPCond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_OP_Condition_Code( pYear, pPercent), Layouts.op_condition_code_layout, THOR );
	EXPORT dsOPOcc( INTEGER pYear, INTEGER pPercent ) := DATASET( File_OP_Occurrence_Code( pYear, pPercent), Layouts.op_occurrence_code_layout, THOR );
	EXPORT dsOPVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_OP_Value_Code( pYear, pPercent), Layouts.op_value_code_layout, THOR );
	EXPORT dsOPRev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_OP_Revenue_Center( pYear, pPercent), Layouts.op_revenue_center_layout, THOR );

	EXPORT dsHospiceBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Hospice_Base( pYear, pPercent), Layouts.hospice_base_layout, THOR );
	EXPORT dsHospiceCond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Hospice_Condition_Code( pYear, pPercent), Layouts.hospice_condition_code_layout, THOR );
	EXPORT dsHospiceOcc( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Hospice_Occurrence_Code( pYear, pPercent), Layouts.hospice_occurrence_code_layout, THOR );
	EXPORT dsHospiceVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Hospice_Value_Code( pYear, pPercent), Layouts.hospice_value_code_layout, THOR );
	EXPORT dsHospiceRev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Hospice_Revenue_Center( pYear, pPercent), Layouts.hospice_revenue_center_layout, THOR );

	EXPORT dsSNFBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_SNF_Base( pYear, pPercent), Layouts.snf_base_layout, THOR );
	EXPORT dsSNFCond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_SNF_Condition_Code( pYear, pPercent), Layouts.snf_condition_code_layout, THOR );
	EXPORT dsSNFOcc( INTEGER pYear, INTEGER pPercent ) := DATASET( File_SNF_Occurrence_Code( pYear, pPercent), Layouts.snf_occurrence_code_layout, THOR );
	EXPORT dsSNFVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_SNF_Value_Code( pYear, pPercent), Layouts.snf_value_code_layout, THOR );
	EXPORT dsSNFRev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_SNF_Revenue_Center( pYear, pPercent), Layouts.snf_revenue_center_layout, THOR );

	EXPORT dsHHABase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_HHA_Base( pYear, pPercent), Layouts.hha_base_layout, THOR );
	EXPORT dsHHACond( INTEGER pYear, INTEGER pPercent ) := DATASET( File_HHA_Condition_Code( pYear, pPercent), Layouts.hha_condition_code_layout, THOR );
	EXPORT dsHHAVal( INTEGER pYear, INTEGER pPercent ) := DATASET( File_HHA_Value_Code( pYear, pPercent), Layouts.hha_value_code_layout, THOR );
	EXPORT dsHHARev( INTEGER pYear, INTEGER pPercent ) := DATASET( File_HHA_Revenue_Center( pYear, pPercent), Layouts.hha_revenue_center_layout, THOR );

	EXPORT dsDMEBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_DME_Base( pYear, pPercent), Layouts.dme_base_layout, THOR );
	EXPORT dsDMELine( INTEGER pYear, INTEGER pPercent ) := DATASET( File_DME_Line( pYear, pPercent), Layouts.dme_line_layout, THOR );

	EXPORT dsCarrierBase( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Carrier_Base( pYear, pPercent), Layouts.carrier_base_layout, THOR );
	EXPORT dsCarrierLine( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Carrier_Line( pYear, pPercent), Layouts.carrier_line_layout, THOR );

	EXPORT dsDenom( INTEGER pYear, INTEGER pPercent ) := DATASET( File_Denominator( pYear, pPercent), Layouts.denominator_layout, THOR );
	
END;