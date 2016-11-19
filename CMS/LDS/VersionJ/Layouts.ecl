IMPORT CMS.LDS.VersionJ._Layouts.InpatientLayouts AS IPLayouts;
IMPORT CMS.LDS.VersionJ._Layouts.OutpatientLayouts AS OPLayouts;
IMPORT CMS.LDS.VersionJ._Layouts.HospiceLayouts AS HospiceLayouts;
IMPORT CMS.LDS.VersionJ._Layouts.SNFLayouts AS SNFLayouts;
IMPORT CMS.LDS.VersionJ._Layouts.HHALayouts AS HHALayouts;
IMPORT CMS.LDS.VersionJ._Layouts.CarrierLayouts AS CarrierLayouts;
IMPORT CMS.LDS.VersionJ._Layouts.DMELayouts AS DMELayouts;
IMPORT CMS.LDS.VersionJ._Layouts.DenominatorLayouts AS DenomLayouts;

EXPORT Layouts := INTERFACE

	EXPORT ip_base_layout := IPLayouts.base_layout;
	EXPORT ip_condition_code_layout := IPLayouts.condition_code_layout;
	EXPORT ip_occurrence_code_layout := IPLayouts.occurrence_code_layout;
	EXPORT ip_value_code_layout := IPLayouts.value_code_layout;
	EXPORT ip_revenue_center_layout := IPLayouts.revenue_center_layout;

	EXPORT op_base_layout := OPLayouts.base_layout;
	EXPORT op_condition_code_layout := OPLayouts.condition_code_layout;
	EXPORT op_occurrence_code_layout := OPLayouts.occurrence_code_layout;
	EXPORT op_value_code_layout := OPLayouts.value_code_layout;
	EXPORT op_revenue_center_layout := OPLayouts.revenue_center_layout;

	EXPORT hospice_base_layout := HospiceLayouts.base_layout;
	EXPORT hospice_condition_code_layout := HospiceLayouts.condition_code_layout;
	EXPORT hospice_occurrence_code_layout := HospiceLayouts.occurrence_code_layout;
	EXPORT hospice_value_code_layout := HospiceLayouts.value_code_layout;
	EXPORT hospice_revenue_center_layout := HospiceLayouts.revenue_center_layout;

	EXPORT snf_base_layout := SNFLayouts.base_layout;
	EXPORT snf_condition_code_layout := SNFLayouts.condition_code_layout;
	EXPORT snf_occurrence_code_layout := SNFLayouts.occurrence_code_layout;
	EXPORT snf_value_code_layout := SNFLayouts.value_code_layout;
	EXPORT snf_revenue_center_layout := SNFLayouts.revenue_center_layout;

	EXPORT hha_base_layout := HHALayouts.base_layout;
	EXPORT hha_condition_code_layout := HHALayouts.condition_code_layout;
	EXPORT hha_occurrence_code_layout := HHALayouts.occurrence_code_layout;
	EXPORT hha_value_code_layout := HHALayouts.value_code_layout;
	EXPORT hha_revenue_center_layout := HHALayouts.revenue_center_layout;

	EXPORT carrier_base_layout := CarrierLayouts.base_layout;
	EXPORT carrier_line_layout := CarrierLayouts.line_layout;
	
	EXPORT dme_base_layout := DMELayouts.base_layout;
	EXPORT dme_line_layout := DMELayouts.line_layout;

	EXPORT denominator_layout := DenomLayouts.summary_layout;
	
END;