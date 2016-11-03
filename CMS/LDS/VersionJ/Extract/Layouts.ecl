IMPORT CMS.LDS.VersionJ.Extract._Layouts.InpatientLayouts AS RawIPLayouts;
IMPORT CMS.LDS.VersionJ.Extract._Layouts.OutpatientLayouts AS RawOPLayouts;
IMPORT CMS.LDS.VersionJ.Extract._Layouts.HospiceLayouts AS RawHospiceLayouts;
IMPORT CMS.LDS.VersionJ.Extract._Layouts.SNFLayouts AS RawSNFLayouts;
IMPORT CMS.LDS.VersionJ.Extract._Layouts.HHALayouts AS RawHHALayouts;
IMPORT CMS.LDS.VersionJ.Extract._Layouts.CarrierLayouts AS RawCarrierLayouts;
IMPORT CMS.LDS.VersionJ.Extract._Layouts.DMELayouts AS RawDMELayouts;
IMPORT CMS.LDS.VersionJ.Extract._Layouts.DenominatorLayouts AS RawDenomLayouts;

EXPORT Layouts := INTERFACE

	EXPORT raw_ip_base_layout := RawIPLayouts.base_layout;
	EXPORT raw_ip_condition_code_layout := RawIPLayouts.condition_code_layout;
	EXPORT raw_ip_occurrence_code_layout := RawIPLayouts.occurrence_code_layout;
	EXPORT raw_ip_value_code_layout := RawIPLayouts.value_code_layout;
	EXPORT raw_ip_revenue_center_layout := RawIPLayouts.revenue_center_layout;

	EXPORT raw_op_base_layout := RawOPLayouts.base_layout;
	EXPORT raw_op_condition_code_layout := RawOPLayouts.condition_code_layout;
	EXPORT raw_op_occurrence_code_layout := RawOPLayouts.occurrence_code_layout;
	EXPORT raw_op_value_code_layout := RawOPLayouts.value_code_layout;
	EXPORT raw_op_revenue_center_layout := RawOPLayouts.revenue_center_layout;

	EXPORT raw_hospice_base_layout := RawHospiceLayouts.base_layout;
	EXPORT raw_hospice_condition_code_layout := RawHospiceLayouts.condition_code_layout;
	EXPORT raw_hospice_occurrence_code_layout := RawHospiceLayouts.occurrence_code_layout;
	EXPORT raw_hospice_value_code_layout := RawHospiceLayouts.value_code_layout;
	EXPORT raw_hospice_revenue_center_layout := RawHospiceLayouts.revenue_center_layout;

	EXPORT raw_snf_base_layout := RawSNFLayouts.base_layout;
	EXPORT raw_snf_condition_code_layout := RawSNFLayouts.condition_code_layout;
	EXPORT raw_snf_occurrence_code_layout := RawSNFLayouts.occurrence_code_layout;
	EXPORT raw_snf_value_code_layout := RawSNFLayouts.value_code_layout;
	EXPORT raw_snf_revenue_center_layout := RawSNFLayouts.revenue_center_layout;

	EXPORT raw_hha_base_layout := RawHHALayouts.base_layout;
	EXPORT raw_hha_condition_code_layout := RawHHALayouts.condition_code_layout;
	EXPORT raw_hha_occurrence_code_layout := RawHHALayouts.occurrence_code_layout;
	EXPORT raw_hha_value_code_layout := RawHHALayouts.value_code_layout;
	EXPORT raw_hha_revenue_center_layout := RawHHALayouts.revenue_center_layout;

	EXPORT raw_carrier_base_layout := RawCarrierLayouts.base_layout;
	EXPORT raw_carrier_line_layout := RawCarrierLayouts.line_layout;
	
	EXPORT raw_dme_base_layout := RawDMELayouts.base_layout;
	EXPORT raw_dme_line_layout := RawDMELayouts.line_layout;

	EXPORT raw_denominator_layout := RawDenomLayouts.summary_layout;
	
END;