EXPORT Config  := INTERFACE

	EXPORT STRING local_path_ip := 'localhost';
	EXPORT STRING local_path := '/var/lib/HPCCSystems/mydropzone/';
	
	EXPORT STRING inpatient_base_filename(INTEGER pYear, INTEGER pPercent) := 'inp_claimsj_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING inpatient_condition_code_filename(INTEGER pYear, INTEGER pPercent) := 'inp_instcond_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING inpatient_occurrence_code_filename(INTEGER pYear, INTEGER pPercent) := 'inp_instoccr_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING inpatient_value_code_filename(INTEGER pYear, INTEGER pPercent) := 'inp_instval_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING inpatient_revenue_center_filename(INTEGER pYear, INTEGER pPercent) := 'inp_revenuej_lds_' + pPercent + '_' + pYear + '.csv';
	
	EXPORT STRING outpatient_base_filename(INTEGER pYear, INTEGER pPercent) := 'out_claimsj_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING outpatient_condition_code_filename(INTEGER pYear, INTEGER pPercent) := 'out_instcond_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING outpatient_occurrence_code_filename(INTEGER pYear, INTEGER pPercent) := 'out_instoccr_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING outpatient_value_code_filename(INTEGER pYear, INTEGER pPercent) := 'out_instval_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING outpatient_revenue_center_filename(INTEGER pYear, INTEGER pPercent) := 'out_revenuej_lds_' + pPercent + '_' + pYear + '.csv';
	
	EXPORT STRING snf_base_filename(INTEGER pYear, INTEGER pPercent) := 'snf_claimsj_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING snf_condition_code_filename(INTEGER pYear, INTEGER pPercent) := 'snf_instcond_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING snf_occurrence_code_filename(INTEGER pYear, INTEGER pPercent) := 'snf_instoccr_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING snf_value_code_filename(INTEGER pYear, INTEGER pPercent) := 'snf_instval_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING snf_revenue_center_filename(INTEGER pYear, INTEGER pPercent) := 'snf_revenuej_lds_' + pPercent + '_' + pYear + '.csv';

	EXPORT STRING hha_base_filename(INTEGER pYear, INTEGER pPercent) := 'snf_claimsj_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING hha_condition_code_filename(INTEGER pYear, INTEGER pPercent) := 'snf_instcond_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING hha_value_code_filename(INTEGER pYear, INTEGER pPercent) := 'snf_instval_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING hha_revenue_center_filename(INTEGER pYear, INTEGER pPercent) := 'snf_revenuej_lds_' + pPercent + '_' + pYear + '.csv';

	EXPORT STRING hospice_base_filename(INTEGER pYear, INTEGER pPercent) := 'snf_claimsj_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING hospice_condition_code_filename(INTEGER pYear, INTEGER pPercent) := 'snf_instcond_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING hospice_occurrence_code_filename(INTEGER pYear, INTEGER pPercent) := 'snf_instoccr_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING hospice_value_code_filename(INTEGER pYear, INTEGER pPercent) := 'snf_instval_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING hospice_revenue_center_filename(INTEGER pYear, INTEGER pPercent) := 'snf_revenuej_lds_' + pPercent + '_' + pYear + '.csv';

	// Usually only 5%
	EXPORT STRING dme_base_filename(INTEGER pYear, INTEGER pPercent) := 'dme_claimsj_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING dme_line_filename(INTEGER pYear, INTEGER pPercent) := 'dme_linej_lds_' + pPercent + '_' + pYear + '.csv';

	// Usually only 5%
	EXPORT STRING carrier_base_filename(INTEGER pYear, INTEGER pPercent) := 'car_claimsj_lds_' + pPercent + '_' + pYear + '.csv';
	EXPORT STRING carrier_line_filename(INTEGER pYear, INTEGER pPercent) := 'car_linej_lds_' + pPercent + '_' + pYear + '.csv';

	EXPORT STRING denominator_filename(INTEGER pYear, INTEGER pPercent) := 'den_saf_lds_' + pPercent + '_' + pYear + '.csv';
	
END;