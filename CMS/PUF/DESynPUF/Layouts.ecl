EXPORT Layouts := MODULE

	EXPORT raw_bene_layout := RECORD
		STRING bene_id;										// 01 Beneficiary Code
		STRING bene_birth_dt;							// 02 Date of birth
		STRING bene_death_dt;							// 03 Date of death
		STRING bene_sex_cd;								// 04 Sex
		STRING bene_race_cd;							// 05 Beneficiary Race Code
		STRING bene_esrd_ind;							// 06 End stage renal disease Indicator
		STRING sp_state_code;							// 07 State Code
		STRING bene_county_cd;						// 08 County Code
		STRING bene_hi_cvrge_tot_mons;		// 09 Total number of months of part A coverage for the beneficiary.
		STRING bene_smi_cvrage_tot_mons;	// 10 Total number of months of part B coverage for the beneficiary.
		STRING bene_hmo_cvrage_tot_mons;	// 11 Total number of months of HMO coverage for the beneficiary.
		STRING plan_cvrg_mos_num;					// 12 Total number of months of part D plan coverage for the beneficiary.
		STRING sp_alzhdmta;								// 13 Chronic Condition: Alzheimer or related disorders or senile
		STRING sp_chf;										// 14 Chronic Condition: Heart Failure
		STRING sp_hrnkidn;								// 15 Chronic Condition: Chronic Kidney Disease
		STRING sp_cncr;										// 16 Chronic Condition: Cancer
		STRING sp_copd;										// 17 Chronic Condition: Chronic Obstructive Pulmonary Disease
		STRING sp_depressn;								// 18 SP_DEPRESSN DESYNPUF: Chronic Condition: Depression
		STRING sp_diabetes;								// 19 SP_DIABETES DESYNPUF: Chronic Condition: Diabetes
		STRING sp_ischmcht;								// 20 SP_ISCHMCHT DESYNPUF: Chronic Condition: Ischemic Heart Disease
		STRING sp_osteoprs;								// 21 SP_OSTEOPRS DESYNPUF: Chronic Condition: Osteoporosis
		STRING sp_ra_oa;									// 22 SP_RA_OA DESYNPUF: Chronic Condition: rheumatoid arthritis and osteoarthritis (RA/OA)
		STRING sp_strketia;								// 23 SP_STRKETIA DESYNPUF: Chronic Condition: Stroke/transient Ischemic Attack
		STRING medreimb_ip;								// 24 MEDREIMB_IP DESYNPUF: Inpatient annual Medicare reimbursement amount
		STRING beneres_ip;								// 25 BENRES_IP DESYNPUF: Inpatient annual beneficiary responsibility amount
		STRING pppymt_ip;									// 26 PPPYMT_IP DESYNPUF: Inpatient annual primary payer reimbursement amount
		STRING medreimb_op;								// 27 MEDREIMB_OP DESYNPUF: Outpatient Institutional annual Medicare reimbursement amount
		STRING beneres_op;								// 28 BENRES_OP DESYNPUF: Outpatient Institutional annual beneficiary responsibility amount
		STRING pppymt_op;									// 29 PPPYMT_OP DESYNPUF: Outpatient Institutional annual primary payer reimbursement amount
		STRING medreimb_car;							// 30 MEDREIMB_CAR DESYNPUF: Carrier annual Medicare reimbursement amount
		STRING beneres_car;								// 31 BENRES_CAR DESYNPUF: Carrier annual beneficiary responsibility amount
		STRING pppymt_car;								// 32 PPPYMT_CAR DESYNPUF: Carrier annual primary payer reimbursement amount
	END;
	
	EXPORT raw_carrier_layout := RECORD
		STRING bene_id;												// 01 DESYNPUF_ID DESYNPUF: Beneficiary Code
		STRING clm_id;												// 02 CLM_ID DESYNPUF: Claim ID
		STRING clm_from_dt;										// 03 CLM_FROM_DT DESYNPUF: Claims start date
		STRING clm_thu_dt;										// 04 CLM_THRU_DT DESYNPUF: Claims end date
		STRING icd9_dgns_cd_1;								// 5-12 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_8 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 8
		STRING icd9_dgns_cd_2;								// 5-12 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_8 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 8
		STRING icd9_dgns_cd_3;								// 5-12 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_8 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 8
		STRING icd9_dgns_cd_4;								// 5-12 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_8 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 8
		STRING icd9_dgns_cd_5;								// 5-12 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_8 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 8
		STRING icd9_dgns_cd_6;								// 5-12 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_8 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 8
		STRING icd9_dgns_cd_7;								// 5-12 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_8 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 8
		STRING icd9_dgns_cd_8;								// 5-12 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_8 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 8
		STRING prf_physn_npi_1;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_2;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_3;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_4;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_5;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_6;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_7;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_8;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_9;								// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_10;							// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_11;							// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_12;							// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING prf_physn_npi_13;							// 13-25 PRF_PHYSN_NPI_1 – PRF_PHYSN_NPI_13 DESYNPUF: Provider Physician – National Provider Identifier Number
		STRING tax_num_1;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_2;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_3;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_4;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_5;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_6;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_7;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_8;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_9;											// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_10;										// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_11;										// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_12;										// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING tax_num_13;										// 26-38 TAX_NUM_1 – TAX_NUM_13 DESYNPUF: Provider Institution Tax Number
		STRING hcpcs_cd_1;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_2;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_3;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_4;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_5;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_6;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_7;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_8;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_9;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_10;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_11;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_12;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING hcpcs_cd_13;										// 39-51 HCPCS_CD_1 – HCPCS_CD_13 DESYNPUF: Line HCFA Common Procedure Coding System 1 – Line HCFA Common Procedure Coding System 13
		STRING line_nch_pmt_amt_1;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_2;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_3;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_4;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_5;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_6;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_7;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_8;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_9;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_10;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_11;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_12;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_nch_pmt_amt_13;						// 52-64 LINE_NCH_PMT_AMT_1– LINE_NCH_PMT_AMT_13 DESYNPUF: Line NCH Payment Amount 1 – Line NCH Payment Amount 13
		STRING line_bene_ptb_ddctbl_amt_1;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_2;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_3;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_4;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_5;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_6;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_7;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_8;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_9;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_10;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_11;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_12;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_ptb_ddctbl_amt_13;		// 65-77 LINE_BENE_PTB_DDCTBL_AMT_1 – LINE_BENE_PTB_DDCTBL_AMT_13 DESYNPUF: Line Beneficiary Part B Deductible Amount 1 – Line Beneficiary Part B Deductible Amount 13
		STRING line_bene_prmry_pyr_pd_amt_1;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_2;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_3;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_4;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_5;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_6;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_7;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_8;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_9;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_10;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_11;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_12;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_bene_prmry_pyr_pd_amt_13;	// 78-90 LINE_BENE_PRMRY_PYR_PD_AMT_1 – LINE_BENE_PRMRY_PYR_PD_AMT_13 DESYNPUF: Line Beneficiary Primary Payer Paid Amount 1 – Line Beneficiary Primary Payer Paid Amount 13
		STRING line_coinsrnc_amt_1;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_2;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_3;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_4;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_5;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_6;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_7;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_8;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_9;						// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_10;					// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_11;					// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_12;					// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_coinsrnc_amt_13;					// 91-103 LINE_COINSRNC_AMT_1 – LINE_COINSRNC_AMT_13 DESYNPUF: Line Coinsurance Amount 1 – Line Coinsurance Amount 13
		STRING line_alowd_chrg_amt_1;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_2;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_3;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_4;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_5;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_6;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_7;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_8;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_9;					// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_10;				// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_11;				// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_12;				// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_alowd_chrg_amt_13;				// 104-116 LINE_ALOWD_CHRG_AMT_1 – LINE_ALOWD_CHRG_AMT_13 DESYNPUF: Line Allowed Charge Amount 1 – Line Allowed Charge Amount 13
		STRING line_prcsg_ind_cd_1;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_2;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_3;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_4;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_5;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_6;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_7;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_8;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_9;						// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_10;					// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_11;					// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_12;					// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_prcsg_ind_cd_13;					// 117-129 LINE_PRCSG_IND_CD_1 – LINE_PRCSG_IND_CD_13 DESYNPUF: Line Processing Indicator Code 1 – Line Processing Indicator Code13
		STRING line_icd9_dgns_cd_1;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_2;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_3;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_4;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_5;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_6;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_7;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_8;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_9;						// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_10;					// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_11;					// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_12;					// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
		STRING line_icd9_dgns_cd_13;					// 130-142 LINE_ICD9_DGNS_CD_1 – LINE_ICD9_DGNS_CD_13 DESYNPUF: Line Diagnosis Code 1 – Line Diagnosis Code 13	
	END;
	
	
	EXPORT raw_ip_layout := RECORD
		STRING bene_id;															// 01 DESYNPUF_ID DESYNPUF: Beneficiary Code
		STRING clm_id;															// 02 CLM_ID DESYNPUF: Claim ID
		STRING segment;															// 03 SEGMENT DESYNPUF: Claim Line Segment
		STRING clm_from_dt;													// 04 CLM_FROM_DT DESYNPUF: Claims start date
		STRING clm_thru_dt;													// 05 CLM_THRU_DT DESYNPUF: Claims end date
		STRING prvdr_num;														// 06 PRVDR_NUM DESYNPUF: Provider Institution
		STRING clm_pmt_amt;													// 07 CLM_PMT_AMT DESYNPUF: Claim Payment Amount
		STRING nch_prmry_pyr_clm_pd_amt;						// 08 NCH_PRMRY_PYR_CLM_PD_AMT DESYNPUF: NCH Primary Payer Claim Paid Amount
		STRING at_physn_npi;												// 09 AT_PHYSN_NPI DESYNPUF: Attending Physician – National Provider Identifier Number
		STRING op_physn_npi;												// 10 OP_PHYSN_NPI DESYNPUF: Operating Physician – National Provider Identifier Number
		STRING ot_hysn_npi;													// 11 OT_PHYSN_NPI DESYNPUF: Other Physician – National Provider Identifier Number
		STRING clm_admsn_dt;												// 12 CLM_ADMSN_DT DESYNPUF: Inpatient admission date
		STRING admtng_icd9_dgns_cd;									// 13 ADMTNG_ICD9_DGNS_CD DESYNPUF: Claim Admitting Diagnosis Code
		STRING clm_pass_thru_per_diem_amt;					// 14 CLM_PASS_THRU_PER_DIEM_AMT DESYNPUF: Claim Pass Thru Per Diem Amount
		STRING nch_bene_ip_ddctbl_amt;							// 15 NCH_BENE_IP_DDCTBL_AMT DESYNPUF: NCH Beneficiary Inpatient Deductible Amount
		STRING nch_bene_pta_coinsrnc_lblty_am;			// 16 NCH_BENE_PTA_COINSRNC_LBLTY_AM DESYNPUF: NCH Beneficiary Part A Coinsurance Liability Amount
		STRING nch_bene_blood_ddctbl_lblty_am;			// 17 NCH_BENE_BLOOD_DDCTBL_LBLTY_AM DESYNPUF: NCH Beneficiary Blood Deductible Liability Amount
		STRING clm_utlztn_day_cnt;									// 18 CLM_UTLZTN_DAY_CNT DESYNPUF: Claim Utilization Day Count
		STRING nch_bene_dschrg_dt;									// 19 NCH_BENE_DSCHRG_DT DESYNPUF: Inpatient discharged date
		STRING clm_drg_cd;													// 20 CLM_DRG_CD DESYNPUF: Claim Diagnosis Related Group Code
		STRING icd9_dgns_cd_1;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_2;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_3;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_4;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_5;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_6;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_7;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_8;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_9;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_10;											// 21-30 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_prcdr_cd_1;											// 31-36 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_2;											// 31-36 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_3;											// 31-36 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_4;											// 31-36 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_5;											// 31-36 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_6;											// 31-36 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING hcpcs_cd_1;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_2;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_3;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_4;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_5;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_6;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_7;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_8;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_9;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_10;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_11;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_12;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_13;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_14;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_15;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_16;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_17;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_18;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_19;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_20;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_21;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_22;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_23;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_24;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_25;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_26;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_27;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_28;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_29;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_30;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_31;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_32;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_33;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_34;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_35;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_36;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_37;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_38;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_39;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_40;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_41;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_42;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_43;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_44;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
		STRING hcpcs_cd_45;													// 37-81 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45	
	END;
	
	
	EXPORT raw_op_layout := RECORD
		STRING bene_id;															// 01 DESYNPUF_ID DESYNPUF: Beneficiary Code
		STRING clm_id;															// 02 CLM_ID DESYNPUF: Claim ID
		STRING segment;															// 03 SEGMENT DESYNPUF: Claim Line Segment
		STRING clm_from_dt;													// 04 CLM_FROM_DT DESYNPUF: Claims start date
		STRING clm_thru_dt;													// 05 CLM_THRU_DT DESYNPUF: Claims end date
		STRING prvdr_num;														// 06 PRVDR_NUM DESYNPUF: Provider Institution
		STRING clm_pmt_amt;													// 07 CLM_PMT_AMT DESYNPUF: Claim Payment Amount
		STRING nch_prmry_pyr_clm_pd_amt;						// 08 NCH_PRMRY_PYR_CLM_PD_AMT DESYNPUF: NCH Primary Payer Claim Paid Amount
		STRING at_physn_npi;												// 09 AT_PHYSN_NPI DESYNPUF: Attending Physician – National Provider Identifier Number
		STRING op_physn_npi;												// 10 OP_PHYSN_NPI DESYNPUF: Operating Physician – National Provider Identifier Number
		STRING ot_physn_npi;												// 11 OT_PHYSN_NPI DESYNPUF: Other Physician – National Provider Identifier Number
		STRING nch_bene_blood_ddctbl_lblty_am;			// 12 NCH_BENE_BLOOD_DDCTBL_LBLTY_AM DESYNPUF: NCH Beneficiary Blood Deductible Liability Amount
		STRING icd9_dgns_cd_1;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_2;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_3;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_4;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_5;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_6;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_7;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_8;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_9;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_dgns_cd_10;											// 13-22 ICD9_DGNS_CD_1 – ICD9_DGNS_CD_10 DESYNPUF: Claim Diagnosis Code 1 – Claim Diagnosis Code 10
		STRING icd9_prcdr_cd_1;											// 23-28 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_2;											// 23-28 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_3;											// 23-28 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_4;											// 23-28 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_5;											// 23-28 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING icd9_prcdr_cd_6;											// 23-28 ICD9_PRCDR_CD_1 – ICD9_PRCDR_CD_6 DESYNPUF: Claim Procedure Code 1 – Claim Procedure Code 6
		STRING nch_bene_ptb_ddctbl_amt;							// 29 NCH_BENE_PTB_DDCTBL_AMT DESYNPUF: NCH Beneficiary Part B Deductible Amount
		STRING nch_bene_ptb_coinsrnc_amt;						// 30 NCH_BENE_PTB_COINSRNC_AMT DESYNPUF: NCH Beneficiary Part B Coinsurance Amount
		STRING admtng_icd9_dgns_cd;									// 31 ADMTNG_ICD9_DGNS_CD DESYNPUF: Claim Admitting Diagnosis Code
		STRING hcpcs_cd_1;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_2;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_3;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_4;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_5;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_6;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_7;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_8;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_9;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_10;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_11;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_12;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_13;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_14;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_15;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_16;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_17;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_18;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_19;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_20;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_21;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_22;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_23;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_24;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_25;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_26;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_27;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_28;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_29;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_30;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_31;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_32;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_33;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_34;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_35;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_36;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_37;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_38;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_39;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_40;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_41;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_42;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_43;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_44;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
		STRING hcpcs_cd_45;													// 32-76 HCPCS_CD_1 – HCPCS_CD_45 DESYNPUF: Revenue Center HCFA Common Procedure Coding System 1 – Revenue Center HCFA Common Procedure Coding System 45
	END;
	
	EXPORT raw_pde_layout := RECORD
		STRING bene_id;						// 01 DESYNPUF_ID DESYNPUF: Beneficiary Code
		STRING pde_id;						// 02 PDE_ID DESYNPUF: CCW Part D Event Number
		STRING srvc_dt;						// 03 SRVC_DT DESYNPUF: RX Service Date
		STRING prod_srvc_id;			// 04 PROD_SRVC_ID DESYNPUF: Product Service ID
		STRING qty_dspnsd_num;		// 05 QTY_DSPNSD_NUM DESYNPUF: Quantity Dispensed
		STRING days_suply_num;		// 06 DAYS_SUPLY_NUM DESYNPUF: Days Supply
		STRING ptnt_pay_amt;			// 07 PTNT_PAY_AMT DESYNPUF: Patient Pay Amount
		STRING tot_rx_cst_amt;		// 08 TOT_RX_CST_AMT DESYNPUF: Gross Drug Cost
	END;


END;