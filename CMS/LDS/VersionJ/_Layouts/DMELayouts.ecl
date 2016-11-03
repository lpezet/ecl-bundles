EXPORT DMELayouts := INTERFACE

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
		//7	carr_num	clm_srvc_clsfctn_type_cd	Claim Service classification Type Code	CHAR	5
		STRING clm_srvc_clsfctn_type_cd;
		//8	pmtdnlcd	clm_freq_cd	Claim Frequency Code	CHAR	2
		STRING clm_freq_cd;
		//9	pmt_amt	clm_pmt_amt	Claim Payment Amount	NUM	12
		STRING clm_pmt_amt;
		//10	prpayamt	carr_clm_prmry_pyr_pd_amt	Carrier Claim Primary Payer Paid Amount	NUM	12
		STRING carr_clm_prmry_pyr_pd_amt;
		//11	asgmntcd	carr_clm_prvdr_asgnmt_ind_sw	Carrier Claim Provider Assignment Indicator Switch	CHAR	1
		STRING carr_clm_prvdr_asgnmt_ind_sw;
		//12	prov_pmt	prov_pmt	NCH Claim Provider Payment Amount	NUM	12
		STRING prov_pmt;
		//13	bene_pmt	bene_pmt	NCH Claim Beneficiary Payment Amount	NUM	12
		STRING bene_pmt;
		//14	sbmtchrg	sbmtchrg	NCH Carrier Claim Submitted Charge Amount	NUM	12
		STRING sbmtchrg;
		//15	alowchrg	alowchrg	NCH Carrier Claim Allowed Charge Amount	NUM	12
		STRING alowchrg;
		//16	dedapply	dedapply	Carrier Claim Cash Deductible Applied Amount	NUM	12
		STRING dedapply;
		//17	hcpcs_yr	hcpcs_yr	Carrier Claim HCPCS Year Code	CHAR	1
		STRING hcpcs_yr;
		//18	prncpal_dgns_cd	prncpal_dgns_cd	Primary Claim Diagnosis Code	CHAR	7
		STRING prncpal_dgns_cd;
		//19	prncpal_dgns_vrsn_cd	prncpal_dgns_vrsn_cd	Primary Claim Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING prncpal_dgns_vrsn_cd;
		//20	icd dgns cd1	icd_dgns_cd1	Claim Diagnosis Code I	CHAR	7
		STRING icd_dgns_cd1;
		//21	icd dgns vrsn cd1	icd_dgns_vrsn_cd1	Claim Diagnosis Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd1;
		//22	icd dgns cd2	icd_dgns_cd2	Claim Diagnosis Code II	CHAR	7
		STRING icd_dgns_cd2;
		//23	icd dgns vrsn cd2	icd_dgns_vrsn_cd2	Claim Diagnosis Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd2;
		//24	icd dgns cd3	icd_dgns_cd3	Claim Diagnosis Code III	CHAR	7
		STRING icd_dgns_cd3;
		//25	icd dgns vrsn cd3	icd_dgns_vrsn_cd3	Claim Diagnosis Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd3;
		//26	icd dgns cd4	icd_dgns_cd4	Claim Diagnosis Code IV	CHAR	7
		STRING icd_dgns_cd4;
		//27	icd dgns vrsn cd4	icd_dgns_vrsn_cd4	Claim Diagnosis Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd4;
		//28	icd dgns cd5	icd_dgns_cd5	Claim Diagnosis Code V	CHAR	7
		STRING icd_dgns_cd5;
		//29	icd dgns vrsn cd5	icd_dgns_vrsn_cd5	Claim Diagnosis Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd5;
		//30	icd dgns cd6	icd_dgns_cd6	Claim Diagnosis Code VI	CHAR	7
		STRING icd_dgns_cd6;
		//31	icd dgns vrsn cd6	icd_dgns_vrsn_cd6	Claim Diagnosis Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd6;
		//32	icd dgns cd7	icd_dgns_cd7	Claim Diagnosis Code VII	CHAR	7
		STRING icd_dgns_cd7;
		//33	icd dgns vrsn cd7	icd_dgns_vrsn_cd7	Claim Diagnosis Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd7;
		//34	icd dgns cd8	icd_dgns_cd8	Claim Diagnosis Code VIII	CHAR	7
		STRING icd_dgns_cd8;
		//35	icd dgns vrsn cd8	icd_dgns_vrsn_cd8	Claim Diagnosis Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd8;
		//36	icd dgns cd9	icd_dgns_cd9	Claim Diagnosis Code IX	CHAR	7
		STRING icd_dgns_cd9;
		//37	icd dgns vrsn cd9	icd_dgns_vrsn_cd9	Claim Diagnosis Code IX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd9;
		//38	icd dgns cd10	icd_dgns_cd10	Claim Diagnosis Code X	CHAR	7
		STRING icd_dgns_cd10;
		//39	icd dgns vrsn cd10	icd_dgns_vrsn_cd10	Claim Diagnosis Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd10;
		//40	icd dgns cd11	icd_dgns_cd11	Claim Diagnosis Code XI	CHAR	7
		STRING icd_dgns_cd11;
		//41	icd dgns vrsn cd11	icd_dgns_vrsn_cd11	Claim Diagnosis Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd11;
		//42	icd dgns cd12	icd_dgns_cd12	Claim Diagnosis Code XII	CHAR	7
		STRING icd_dgns_cd12;
		//43	icd dgns vrsn cd12	icd_dgns_vrsn_cd12	Claim Diagnosis Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd12;
		//44	rfr_upin	rfr_physn_upin	DMERC Claim Ordering Physician UPIN Number	CHAR	12
		STRING rfr_physn_upin;
		//45	rfr_npi	rfr_physn_npi	DMERC Claim Refering Physician NPI Number	CHAR	12
		STRING rfr_physn_npi;
		//46	dob_dt	dob_dt	LDS Age Category	NUM	1
		STRING dob_dt;
		//47	gndr_cd	gndr_cd	Gender Code from Claim	CHAR	1
		STRING gndr_cd;
		//48	race_cd	bene_race_cd	Race Code from Claim	CHAR	1
		STRING bene_race_cd;
		//49	cnty_cd	bene_cnty_cd	County Code from Claim (SSA)	CHAR	3
		STRING bene_cnty_cd;
		//50	state_cd	bene_state_cd	State Code from Claim (SSA)	CHAR	2
		STRING bene_state_cd;
		//51	cwf_bene_mdcr_stus_cd	cwf_bene_mdcr_stus_cd	CWF Beneficiary Medicare Status Code	CHAR	2
		STRING cwf_bene_mdcr_stus_cd;
	
	END;
	
	EXPORT line_layout := RECORD
		//1	dsysrtky	desy_sort_key	LDS Beneficiary ID	NUM	9
		STRING desy_sort_key;
		//2	claimno	claim_no	LDS Claim Number	NUM	12
		STRING claim_no;
		//3	clm_ln	clm_line_num	Claim Line Number	NUM	3
		STRING clm_line_num;
		//4	thru_dt	clm_thru_dt	Claim Through Date (Determines Year of Claim)	DATE	8
		STRING clm_thru_dt;
		//5	clm_type	nch_clm_type_cd	NCH Claim Type Code	CHAR	2
		STRING nch_clm_type_cd;
		//6	hcfaspcl	prvdr_spclty	Line HCFA Provider Specialty Code	CHAR	3
		STRING prvdr_spclty;
		//7	prtcptg	prtcptng_ind_cd	Line Provider Participating Indicator Code	CHAR	1
		STRING prtcptng_ind_cd;
		//8	srvc_cnt	line_srvc_cnt	Line Service Count	NUM	4
		STRING line_srvc_cnt;
		//9	typsrvcb	line_cms_type_srvc_cd	Line HCFA Type Service Code	CHAR	1
		STRING line_cms_type_srvc_cd;
		//10	plcsrvc	line_place_of_srvc_cd	Line Place Of Service Code	CHAR	2
		STRING line_place_of_srvc_cd;
		//11	expnsdt2	line_last_expns_dt	Line Last Expense Date	DATE	8
		STRING line_last_expns_dt;
		//12	hcpcs_cd	hcpcs_cd	Line HCFA Common Procedure Coding System	CHAR	5
		STRING hcpcs_cd;
		//13	mdfr_cd1	hcpcs_1st_mdfr_cd	Line HCPCS Initial Modifier Code	CHAR	5
		STRING hcpcs_1st_mdfr_cd;
		//14	mdfr_cd2	hcpcs_2nd_mdfr_cd	Line HCPCS Second Modifier Code	CHAR	5
		STRING hcpcs_2nd_mdfr_cd;
		//15	betos	betos_cd	Line NCH BETOS Code	CHAR	3
		STRING betos_cd;
		//16	linepmt	line_nch_pmt_amt	Line NCH Payment Amount	NUM	12
		STRING line_nch_pmt_amt;
		//17	lbenpmt	line_bene_pmt_amt	Line Beneficiary Payment Amount	NUM	12
		STRING line_bene_pmt_amt;
		//18	lprvpmt	line_prvdr_pmt_amt	Line Provider Payment Amount	NUM	12
		STRING line_prvdr_pmt_amt;
		//19	ldedamt	line_bene_ptb_ddctbl_amt	Line Beneficiary Part B Deductible Amount	NUM	12
		STRING line_bene_ptb_ddctbl_amt;
		//20	lprpaycd	line_bene_prmry_pyr_cd	Line Beneficiary Primary Payer Code	CHAR	1
		STRING line_bene_prmry_pyr_cd;
		//21	lprpdamt	line_bene_prmry_pyr_pd_amt	Line Beneficiary Primary Payer Paid Amount	NUM	12
		STRING line_bene_prmry_pyr_pd_amt;
		//22	coinamt	line_coinsrnc_amt	Line Coinsurance Amount	NUM	12
		STRING line_coinsrnc_amt;
		//23	prpyalow	line_prmry_alowd_chrg_amt	Line Primary Payer Allowed Charge Amount	NUM	12
		STRING line_prmry_alowd_chrg_amt;
		//24	lsbmtchg	line_sbmtd_chrg_amt	Line Submitted Charge Amount	NUM	12
		STRING line_sbmtd_chrg_amt;
		//25	lalowchg	line_alowd_chrg_amt	Line Allowed Charge Amount	NUM	12
		STRING line_alowd_chrg_amt;
		//26	prcngind	line_prcsg_ind_cd	Line Processing Indicator Code	CHAR	2
		STRING line_prcsg_ind_cd;
		//27	pmtindsw	line_pmt_80_100_cd	Line Payment 80%/100% Code	CHAR	1
		STRING line_pmt_80_100_cd;
		//28	ded_sw	line_service_deductible	Line Service Deductible Indicator Switch	CHAR	1
		STRING line_service_deductible;
		//29	line_icd_dgns_cd	line_icd_dgns_cd	Line Diagnosis Code Code	CHAR	7
		STRING line_icd_dgns_cd;
		//30	line_icd_dgns_vrsn_cd	line_icd_dgns_vrsn_cd	Line Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING line_icd_dgns_vrsn_cd;
		//31	dme_purc	line_dme_prchs_price_amt	Line DME Purchase Price Amount	NUM	12
		STRING line_dme_prchs_price_amt;
		//32	suplrnum	prvdr_num	DMERC Line Supplier Provider Number	CHAR	10
		STRING prvdr_num;
		//33	sup_npi	prvdr_npi	DMERC Line Item Supplier NPI Number	CHAR	12
		STRING prvdr_npi;
		//34	prcng_st	dmerc_line_prcng_state_cd	DMERC Line Pricing State Code	CHAR	2
		STRING dmerc_line_prcng_state_cd;
		//35	prvstate	prvdr_state_cd	DMERC Line Provider State Code	CHAR	2
		STRING prvdr_state_cd;
		//36	mdfr_cd3	hcpcs_3rd_mdfr_cd	DMERC Line HCPCS Third Modifier Code	CHAR	5
		STRING hcpcs_3rd_mdfr_cd;
		//37	mdfr_cd4	hcpcs_4th_mdfr_cd	DMERC Line HCPCS Fourth Modifier Code	CHAR	5
		STRING hcpcs_4th_mdfr_cd;
		//38	scrnsvgs	dmerc_line_scrn_svgs_amt	DMERC Line Screen Savings Amount	NUM	12
		STRING dmerc_line_scrn_svgs_amt;
		//39	dme_unit	dmerc_line_mtus_cnt	DMERC Line Miles/Time/Units/Services Count	NUM	7
		STRING dmerc_line_mtus_cnt;
		//40	unit_ind	dmerc_line_mtus_cd	DMERC Line Miles/Time/ Units/Services Indicator Code	CHAR	1
		STRING dmerc_line_mtus_cd;
		//41	hcthgbrs	line_hct_hgb_rslt_num	Hematocrit/Hemoglobin Test Results	NUM	4
		STRING line_hct_hgb_rslt_num;
		//42	hcthgbtp	line_hct_hgb_type_cd	Hematocrit/Hemoglobin Test Type code	CHAR	2
		STRING line_hct_hgb_type_cd;
		//43	lnndccd	line_ndc_cd	Line National Drug Code	CHAR	11
		STRING line_ndc_cd;
	
	END;


END;