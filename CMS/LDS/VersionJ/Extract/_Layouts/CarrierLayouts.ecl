EXPORT CarrierLayouts := INTERFACE

	EXPORT base_layout := RECORD
		//1	dsysrtky	desy_sort_key	LDS Beneficiary ID	NUM	9
		STRING desy_sort_key;
		//2	claimno	claim_no	Claim number	NUM	12
		STRING claim_no;
		//3	thru_dt	clm_thru_dt	Claim Through Date (Determines Year of Claim)	DATE	8
		STRING clm_thru_dt;
		//4	ric_cd	nch_near_line_rec_ident_cd	NCH Near Line Record Identification Code	CHAR	1
		STRING nch_near_line_rec_ident_cd;
		//5	clm_type	nch_clm_type_cd	NCH Claim Type Code	CHAR	2
		STRING nch_clm_type_cd;
		//6	disp_cd	clm_disp_cd	Claim Disposition Code	CHAR	2
		STRING clm_disp_cd;
		//7	carr_num	carr_num	Carrier Number	CHAR	5
		STRING carr_num;
		//8	pmtdnlcd	carr_clm_pmt_dnl_cd	Carrier Claim Payment Denial Code	CHAR	2
		STRING carr_clm_pmt_dnl_cd;
		//9	pmt_amt	clm_pmt_amt	Claim Payment Amount	NUM	12
		STRING clm_pmt_amt;
		//10	prpayamt	carr_clm_prmry_pyr_pd_amt	Carrier Claim Primary Payer Paid Amount	NUM	12
		STRING carr_clm_prmry_pyr_pd_amt;
		//11	rfr_upin	rfr_physn_upin	Carrier Claim Refering Physician UPIN Number	CHAR	12
		STRING rfr_physn_upin;
		//12	rfr_npi	rfr_physn_npi	Carrier Claim Refering Physician NPI Number	CHAR	12
		STRING rfr_physn_npi;
		//13	asgmntcd	carr_clm_prvdr_asgnmt_ind_sw	Carrier Claim Provider Assignment Indicator Switch	CHAR	1
		STRING carr_clm_prvdr_asgnmt_ind_sw;
		//14	prov_pmt	prov_pmt	NCH Claim Provider Payment Amount	NUM	12
		STRING prov_pmt;
		//15	bene_pmt	bene_pmt	NCH Claim Beneficiary Payment Amount	NUM	12
		STRING bene_pmt;
		//16	sbmtchrg	sbmtchrg	NCH Carrier Claim Submitted Charge Amount	NUM	12
		STRING sbmtchrg;
		//17	alowchrg	alowchrg	NCH Carrier Claim Allowed Charge Amount	NUM	12
		STRING alowchrg;
		//18	dedapply	dedapply	Carrier Claim Cash Deductible Applied Amount	NUM	12
		STRING dedapply;
		//19	hcpcs_yr	hcpcs_yr	Carrier Claim HCPCS Year Code	CHAR	1
		STRING hcpcs_yr;
		//20	rfr_prfl	carr_clm_rfrng_pin_num	Carrier Claim Referring PIN Number	CHAR	14
		STRING carr_clm_rfrng_pin_num;
		//21	prncpal_dgns_cd	prncpal_dgns_cd	Primary Claim Diagnosis Code	CHAR	7
		STRING prncpal_dgns_cd;
		//22	prncpal_dgns_vrsn_cd	prncpal_dgns_vrsn_cd	Primary Claim Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING prncpal_dgns_vrsn_cd;
		//23	icd dgns cd1	icd_dgns_cd1	Claim Diagnosis Code I	CHAR	7
		STRING icd_dgns_cd1;
		//24	icd dgns vrsn cd1	icd_dgns_vrsn_cd1	Claim Diagnosis Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd1;
		//25	icd dgns cd2	icd_dgns_cd2	Claim Diagnosis Code II	CHAR	7
		STRING icd_dgns_cd2;
		//26	icd dgns vrsn cd2	icd_dgns_vrsn_cd2	Claim Diagnosis Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd2;
		//27	icd dgns cd3	icd_dgns_cd3	Claim Diagnosis Code III	CHAR	7
		STRING icd_dgns_cd3;
		//28	icd dgns vrsn cd3	icd_dgns_vrsn_cd3	Claim Diagnosis Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd3;
		//29	icd dgns cd4	icd_dgns_cd4	Claim Diagnosis Code IV	CHAR	7
		STRING icd_dgns_cd4;
		//30	icd dgns vrsn cd4	icd_dgns_vrsn_cd4	Claim Diagnosis Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd4;
		//31	icd dgns cd5	icd_dgns_cd5	Claim Diagnosis Code V	CHAR	7
		STRING icd_dgns_cd5;
		//32	icd dgns vrsn cd5	icd_dgns_vrsn_cd5	Claim Diagnosis Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd5;
		//33	icd dgns cd6	icd_dgns_cd6	Claim Diagnosis Code VI	CHAR	7
		STRING icd_dgns_cd6;
		//34	icd dgns vrsn cd6	icd_dgns_vrsn_cd6	Claim Diagnosis Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd6;
		//35	icd dgns cd7	icd_dgns_cd7	Claim Diagnosis Code VII	CHAR	7
		STRING icd_dgns_cd7;
		//36	icd dgns vrsn cd7	icd_dgns_vrsn_cd7	Claim Diagnosis Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd7;
		//37	icd dgns cd8	icd_dgns_cd8	Claim Diagnosis Code VIII	CHAR	7
		STRING icd_dgns_cd8;
		//38	icd dgns vrsn cd8	icd_dgns_vrsn_cd8	Claim Diagnosis Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd8;
		//39	icd dgns cd9	icd_dgns_cd9	Claim Diagnosis Code IX	CHAR	7
		STRING icd_dgns_cd9;
		//40	icd dgns vrsn cd9	icd_dgns_vrsn_cd9	Claim Diagnosis Code IX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd9;
		//41	icd dgns cd10	icd_dgns_cd10	Claim Diagnosis Code X	CHAR	7
		STRING icd_dgns_cd10;
		//42	icd dgns vrsn cd10	icd_dgns_vrsn_cd10	Claim Diagnosis Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd10;
		//43	icd dgns cd11	icd_dgns_cd11	Claim Diagnosis Code XI	CHAR	7
		STRING icd_dgns_cd11;
		//44	icd dgns vrsn cd11	icd_dgns_vrsn_cd11	Claim Diagnosis Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd11;
		//45	icd dgns cd12	icd_dgns_cd12	Claim Diagnosis Code XII	CHAR	7
		STRING icd_dgns_cd12;
		//46	icd dgns vrsn cd12	icd_dgns_vrsn_cd12	Claim Diagnosis Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd12;
		//47	dob_dt	dob_dt	LDS Age Category	NUM	1
		STRING dob_dt;
		//48	gndr_cd	gndr_cd	Gender Code from Claim	CHAR	1
		STRING gndr_cd;
		//49	race_cd	bene_race_cd	Race Code from Claim	CHAR	1
		STRING bene_race_cd;
		//50	cnty_cd	bene_cnty_cd	County Code from Claim (SSA)	CHAR	3
		STRING bene_cnty_cd;
		//51	state_cd	bene_state_cd	State Code from Claim (SSA)	CHAR	2
		STRING bene_state_cd;
		//52	cwf_bene_mdcr_stus_cd	cwf_bene_mdcr_stus_cd	CWF Beneficiary Medicare Status Code	CHAR	2
		STRING cwf_bene_mdcr_stus_cd;
	
	END;
	
	EXPORT line_layout := RECORD
		//1	dsysrtky	desy_sort_key		NUM	9
		STRING desy_sort_key;
		//2	claimno	claim_no		NUM	12
		STRING claim_no;
		//3	clm_ln	clm_line_num		NUM	3
		STRING clm_line_num;
		//4	thru_dt	clm_thru_dt		DATE	8
		STRING clm_thru_dt;
		//5	clm_type	nch_clm_type_cd		CHAR	2
		STRING nch_clm_type_cd;
		//6	prf_prfl	carr_prfrng_pin_num		CHAR	15
		STRING carr_prfrng_pin_num;
		//7	prf_upin	prf_physn_upin		CHAR	12
		STRING prf_physn_upin;
		//8	prf_npi	prf_physn_npi		CHAR	12
		STRING prf_physn_npi;
		//9	prgrpnpi	org_npi_num		CHAR	10
		STRING org_npi_num;
		//10	prv_type	carr_line_prvdr_type_cd		CHAR	1
		STRING carr_line_prvdr_type_cd;
		//11	prvstate	prvdr_state_cd		CHAR	2
		STRING prvdr_state_cd;
		//12	hcfaspcl	prvdr_spclty		CHAR	3
		STRING prvdr_spclty;
		//13	prtcptg	prtcpatg_ind_cd		CHAR	1
		STRING prtcpatg_ind_cd;
		//14	astnt_cd	carr_line_rdcd_pmt_phys_astn_c		CHAR	1
		STRING carr_line_rdcd_pmt_phys_astn_c;
		//15	srvc_cnt	line_srvc_cnt		NUM	4
		STRING line_srvc_cnt;
		//16	typsrvcb	line_cms_type_srvc_cd		CHAR	1
		STRING line_cms_type_srvc_cd;
		//17	plcsrvc	line_place_of_srvc_cd		CHAR	2
		STRING line_place_of_srvc_cd;
		//18	lclty_cd	carr_line_prcng_lclty_cd		CHAR	2
		STRING carr_line_prcng_lclty_cd;
		//19	expnsdt2	line_last_expns_dt		DATE	8
		STRING line_last_expns_dt;
		//20	hcpcs_cd	hcpcs_cd		CHAR	5
		STRING hcpcs_cd;
		//21	mdfr_cd1	hcpcs_1st_mdfr_cd		CHAR	5
		STRING hcpcs_1st_mdfr_cd;
		//22	mdfr_cd2	hcpcs_2nd_mdfr_cd		CHAR	5
		STRING hcpcs_2nd_mdfr_cd;
		//23	betos	betos_cd		CHAR	3
		STRING betos_cd;
		//24	linepmt	line_nch_pmt_amt		NUM	12
		STRING line_nch_pmt_amt;
		//25	lbenpmt	line_bene_pmt_amt		NUM	12
		STRING line_bene_pmt_amt;
		//26	lprvpmt	line_prvdr_pmt_amt	Line Provider Payment Amount	NUM	12
		STRING line_prvdr_pmt_amt;
		//27	ldedamt	line_bene_ptb_ddctbl_amt	Line Beneficiary Part B Deductible Amount	NUM	12
		STRING line_bene_ptb_ddctbl_amt;
		//28	lprpaycd	line_bene_prmry_pyr_cd	Line Beneficiary Primary Payer Code	CHAR	1
		STRING line_bene_prmry_pyr_cd;
		//29	lprpdamt	line_bene_prmry_pyr_pd_amt	Line Beneficiary Primary Payer Paid Amount	NUM	12
		STRING line_bene_prmry_pyr_pd_amt;
		//30	coinamt	line_coinsrnc_amt	Line Coinsurance Amount	NUM	12
		STRING line_coinsrnc_amt;
		//31	lsbmtchg	line_sbmtd_chrg_amt	Line Submitted Charge Amount	NUM	12
		STRING line_sbmtd_chrg_amt;
		//32	lalowchg	line_alowd_chrg_amt	Line Allowed Charge Amount	NUM	12
		STRING line_alowd_chrg_amt;
		//33	prcngind	line_prcsg_ind_cd	Line Processing Indicator Code	CHAR	2
		STRING line_prcsg_ind_cd;
		//34	pmtindsw	line_pmt_80_100_cd	Line Payment 80%/100% Code	CHAR	1
		STRING line_pmt_80_100_cd;
		//35	ded_sw	line_service_deductible	Line Service Deductible Indicator Switch	CHAR	1
		STRING line_service_deductible;
		//36	mtus_cnt	carr_line_mtus_cnt	Carrier Line Miles/Time/Units/Services Count	NUM	5
		STRING carr_line_mtus_cnt;
		//37	mtus_ind	carr_line_mtus_cd	Carrier Line Miles/Time/Units/Services Indicator Code	CHAR	1
		STRING carr_line_mtus_cd;
		//38	line_icd_dgns_cd	line_icd_dgns_cd	Line Diagnosis Code Code	CHAR	7
		STRING line_icd_dgns_cd;
		//39	line_icd_dgns_vrsn_cd	line_icd_dgns_vrsn_cd	Line Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING line_icd_dgns_vrsn_cd;
		//40	hcthgbrs	line_hct_hgb_rslt_num	Hematocrit/Hemoglobin Test Results	NUM	4
		STRING line_hct_hgb_rslt_num;
		//41	hcthgbtp	line_hct_hgb_type_cd	Hematocrit/Hemoglobin Test Type code	CHAR	2
		STRING line_hct_hgb_type_cd;
		//42	lnndccd	line_ndc_cd	Line National Drug Code	CHAR	11
		STRING line_ndc_cd;
		//43	carr_line_clia_lab_num	carr_line_clia_lab_num	Clinical Laboratory Improvement Amendments monitored laboratory number	CHAR	10
		STRING carr_line_clia_lab_num;
		//44	carr_line_ansthsa_unit_cnt	carr_line_ansthsa_unit_cnt	Carrier Line Anesthesia Unit Count	NUM	2
		STRING carr_line_ansthsa_unit_cnt;
	END;

END;