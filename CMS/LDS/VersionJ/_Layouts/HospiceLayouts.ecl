EXPORT HospiceLayouts := INTERFACE

	EXPORT base_layout := RECORD
		//1	dsysrtky	desy_sort_key	LDS Beneficiary ID	NUM	9
		STRING desy_sort_key;
		//2	claimno	claim_no	Claim number	NUM	12
		STRING claim_no;
		//3	provider	prvdr_num	Provider Number	CHAR	10
		STRING prvdr_num;
		//4	thru_dt	clm_thru_dt	Claim Through Date (Determines Year of Claim)	DATE	8
		STRING clm_thru_dt;
		//5	ric_cd	nch_near_line_rec_ident_cd	NCH Near Line Record Identification Code	CHAR	1
		STRING nch_near_line_rec_ident_cd;
		//6	clm_type	nch_clm_type_cd	NCH Claim Type Code	CHAR	2
		STRING nch_clm_type_cd;
		//7	fac_type	clm_fac_type_cd	Claim Facility Type Code	CHAR	1
		STRING clm_fac_type_cd;
		//8	typesrvc	clm_srvc_clsfctn_type_cd	Claim Service classification Type Code	CHAR	1
		STRING clm_srvc_clsfctn_type_cd;
		//9	freq_cd	clm_freq_cd	Claim Frequency Code	CHAR	1
		STRING clm_freq_cd;
		//10	fi_num	fi_num	FI Number	CHAR	5
		STRING fi_num;
		//11	nopay_cd	clm_mdcr_non_pmt_rsn_cd	Claim Medicare Non Payment Reason Code	CHAR	2
		STRING clm_mdcr_non_pmt_rsn_cd;
		//12	pmt_amt	clm_pmt_amt	Claim Payment Amount	NUM	12
		STRING clm_pmt_amt;
		//13	prpayamt	nch_prmry_pyr_clm_pd_amt	NCH Primary Payer Claim Paid Amount	NUM	12
		STRING nch_prmry_pyr_clm_pd_amt;
		//14	prpay_cd	nch_prmry_pyr_cd	NCH Primary Payer Code	CHAR	1
		STRING nch_prmry_pyr_cd;
		//15	prstate	prvdr_state_cd	NCH Provider State Code	CHAR	2
		STRING prvdr_state_cd;
		//16	orgnpinm	org_npi_num	Organization NPI Number	CHAR	10
		STRING org_npi_num;
		//17	at_upin	at_physn_upin	Claim Attending Physician UPIN Number	CHAR	12
		STRING at_physn_upin;
		//18	at_npi	at_physn_npi	Claim Attending Physician NPI Number	CHAR	12
		STRING at_physn_npi;
		//19	stus_cd	ptnt_dschrg_stus_cd	Patient Discharge Status Code	CHAR	2
		STRING ptnt_dschrg_stus_cd;
		//20	tot_chrg	clm_tot_chrg_amt	Claim Total Charge Amount	NUM	12
		STRING clm_tot_chrg_amt;
		//21	ptntstus	nch_ptnt_status_ind_cd	NCH Patient Status Indicator Code	CHAR	1
		STRING nch_ptnt_status_ind_cd;
		//22	util_day	clm_utlztn_day_cnt	Claim Utilization Day Count	NUM	3
		STRING clm_utlztn_day_cnt;
		//23	dschrgdt	nch_bene_dschrg_dt	NCH Beneficiary Discharge Date	DATE	8
		STRING nch_bene_dschrg_dt;
		//24	prncpal_dgns_cd	prncpal_dgns_cd	Primary Claim Diagnosis Code	CHAR	7
		STRING prncpal_dgns_cd;
		//25	prncpal_dgns_vrsn_cd	prncpal_dgns_vrsn_cd	Primary Claim Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING prncpal_dgns_vrsn_cd;
		//26	icd dgns cd1	icd_dgns_cd1	Claim Diagnosis Code I	CHAR	7
		STRING icd_dgns_cd1;
		//27	icd dgns vrsn cd1	icd_dgns_vrsn_cd1	Claim Diagnosis Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd1;
		//28	icd dgns cd2	icd_dgns_cd2	Claim Diagnosis Code II	CHAR	7
		STRING icd_dgns_cd2;
		//29	icd dgns vrsn cd2	icd_dgns_vrsn_cd2	Claim Diagnosis Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd2;
		//30	icd dgns cd3	icd_dgns_cd3	Claim Diagnosis Code III	CHAR	7
		STRING icd_dgns_cd3;
		//31	icd dgns vrsn cd3	icd_dgns_vrsn_cd3	Claim Diagnosis Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd3;
		//32	icd dgns cd4	icd_dgns_cd4	Claim Diagnosis Code IV	CHAR	7
		STRING icd_dgns_cd4;
		//33	icd dgns vrsn cd4	icd_dgns_vrsn_cd4	Claim Diagnosis Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd4;
		//34	icd dgns cd5	icd_dgns_cd5	Claim Diagnosis Code V	CHAR	7
		STRING icd_dgns_cd5;
		//35	icd dgns vrsn cd5	icd_dgns_vrsn_cd5	Claim Diagnosis Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd5;
		//36	icd dgns cd6	icd_dgns_cd6	Claim Diagnosis Code VI	CHAR	7
		STRING icd_dgns_cd6;
		//37	icd dgns vrsn cd6	icd_dgns_vrsn_cd6	Claim Diagnosis Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd6;
		//38	icd dgns cd7	icd_dgns_cd7	Claim Diagnosis Code VII	CHAR	7
		STRING icd_dgns_cd7;
		//39	icd dgns vrsn cd7	icd_dgns_vrsn_cd7	Claim Diagnosis Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd7;
		//40	icd dgns cd8	icd_dgns_cd8	Claim Diagnosis Code VIII	CHAR	7
		STRING icd_dgns_cd8;
		//41	icd dgns vrsn cd8	icd_dgns_vrsn_cd8	Claim Diagnosis Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd8;
		//42	icd dgns cd9	icd_dgns_cd9	Claim Diagnosis Code IX	CHAR	7
		STRING icd_dgns_cd9;
		//43	icd dgns vrsn cd9	icd_dgns_vrsn_cd9	Claim Diagnosis Code IX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd9;
		//44	icd dgns cd10	icd_dgns_cd10	Claim Diagnosis Code X	CHAR	7
		STRING icd_dgns_cd10;
		//45	icd dgns vrsn cd10	icd_dgns_vrsn_cd10	Claim Diagnosis Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd10;
		//46	icd dgns cd11	icd_dgns_cd11	Claim Diagnosis Code XI	CHAR	7
		STRING icd_dgns_cd11;
		//47	icd dgns vrsn cd11	icd_dgns_vrsn_cd11	Claim Diagnosis Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd11;
		//48	icd dgns cd12	icd_dgns_cd12	Claim Diagnosis Code XII	CHAR	7
		STRING icd_dgns_cd12;
		//49	icd dgns vrsn cd12	icd_dgns_vrsn_cd12	Claim Diagnosis Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd12;
		//50	icd dgns cd13	icd_dgns_cd13	Claim Diagnosis Code XIII	CHAR	7
		STRING icd_dgns_cd13;
		//51	icd dgns vrsn cd13	icd_dgns_vrsn_cd13	Claim Diagnosis Code XIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd13;
		//52	icd dgns cd14	icd_dgns_cd14	Claim Diagnosis Code XIV	CHAR	7
		STRING icd_dgns_cd14;
		//53	icd dgns vrsn cd14	icd_dgns_vrsn_cd14	Claim Diagnosis Code XIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd14;
		//54	icd dgns cd15	icd_dgns_cd15	Claim Diagnosis Code XV	CHAR	7
		STRING icd_dgns_cd15;
		//55	icd dgns vrsn cd15	icd_dgns_vrsn_cd15	Claim Diagnosis Code XV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd15;
		//56	icd dgns cd16	icd_dgns_cd16	Claim Diagnosis Code XVI	CHAR	7
		STRING icd_dgns_cd16;
		//57	icd dgns vrsn cd16	icd_dgns_vrsn_cd16	Claim Diagnosis Code XVI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd16;
		//58	icd dgns cd17	icd_dgns_cd17	Claim Diagnosis Code XVII	CHAR	7
		STRING icd_dgns_cd17;
		//59	icd dgns vrsn cd17	icd_dgns_vrsn_cd17	Claim Diagnosis Code XVII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd17;
		//60	icd dgns cd18	icd_dgns_cd18	Claim Diagnosis Code XVIII	CHAR	7
		STRING icd_dgns_cd18;
		//61	icd dgns vrsn cd18	icd_dgns_vrsn_cd18	Claim Diagnosis Code XVIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd18;
		//62	icd dgns cd19	icd_dgns_cd19	Claim Diagnosis Code XIV	CHAR	7
		STRING icd_dgns_cd19;
		//63	icd dgns vrsn cd19	icd_dgns_vrsn_cd19	Claim Diagnosis Code XIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd19;
		//64	icd dgns cd20	icd_dgns_cd20	Claim Diagnosis Code XX	CHAR	7
		STRING icd_dgns_cd20;
		//65	icd dgns vrsn cd20	icd_dgns_vrsn_cd20	Claim Diagnosis Code XX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd20;
		//66	icd dgns cd21	icd_dgns_cd21	Claim Diagnosis Code XXI	CHAR	7
		STRING icd_dgns_cd21;
		//67	icd dgns vrsn cd21	icd_dgns_vrsn_cd21	Claim Diagnosis Code XXI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd21;
		//68	icd dgns cd22	icd_dgns_cd22	Claim Diagnosis Code XXII	CHAR	7
		STRING icd_dgns_cd22;
		//69	icd dgns vrsn cd22	icd_dgns_vrsn_cd22	Claim Diagnosis Code XXII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd22;
		//70	icd dgns cd23	icd_dgns_cd23	Claim Diagnosis Code XXIII	CHAR	7
		STRING icd_dgns_cd23;
		//71	icd dgns vrsn cd23	icd_dgns_vrsn_cd23	Claim Diagnosis Code XXIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd23;
		//72	icd dgns cd24	icd_dgns_cd24	Claim Diagnosis Code XXIV	CHAR	7
		STRING icd_dgns_cd24;
		//73	icd dgns vrsn cd24	icd_dgns_vrsn_cd24	Claim Diagnosis Code XXIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd24;
		//74	icd dgns cd25	icd_dgns_cd25	Claim Diagnosis Code XXV	CHAR	7
		STRING icd_dgns_cd25;
		//75	icd dgns vrsn cd25	icd_dgns_vrsn_cd25	Claim Diagnosis Code XXV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd25;
		//76	fst_dgns_e_cd	fst_dgns_e_cd	First Claim Diagnosis E Code	CHAR	7
		STRING fst_dgns_e_cd;
		//77	fst_dgns_e_vrsn_cd	fst_dgns_e_vrsn_cd	First Claim Diagnosis E Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING fst_dgns_e_vrsn_cd;
		//78	icd dgns e cd1	icd_dgns_e_cd1	Claim Diagnosis E Code I	CHAR	7
		STRING icd_dgns_e_cd1;
		//79	icd dgns e vrsn cd1	icd_dgns_e_vrsn_cd1	Claim Diagnosis E Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd1;
		//80	icd dgns e cd2	icd_dgns_e_cd2	Claim Diagnosis E Code II	CHAR	7
		STRING icd_dgns_e_cd2;
		//81	icd dgns e vrsn cd2	icd_dgns_e_vrsn_cd2	Claim Diagnosis E Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd2;
		//82	icd dgns e cd3	icd_dgns_e_cd3	Claim Diagnosis E Code III	CHAR	7
		STRING icd_dgns_e_cd3;
		//83	icd dgns e vrsn cd3	icd_dgns_e_vrsn_cd3	Claim Diagnosis E Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd3;
		//84	icd dgns e cd4	icd_dgns_e_cd4	Claim Diagnosis E Code IV	CHAR	7
		STRING icd_dgns_e_cd4;
		//85	icd dgns e vrsn cd4	icd_dgns_e_vrsn_cd4	Claim Diagnosis E Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd4;
		//86	icd dgns e cd5	icd_dgns_e_cd5	Claim Diagnosis E Code V	CHAR	7
		STRING icd_dgns_e_cd5;
		//87	icd dgns e vrsn cd5	icd_dgns_e_vrsn_cd5	Claim Diagnosis E Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd5;
		//88	icd dgns e cd6	icd_dgns_e_cd6	Claim Diagnosis E Code VI	CHAR	7
		STRING icd_dgns_e_cd6;
		//89	icd dgns e vrsn cd6	icd_dgns_e_vrsn_cd6	Claim Diagnosis E Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd6;
		//90	icd dgns e cd7	icd_dgns_e_cd7	Claim Diagnosis E Code VII	CHAR	7
		STRING icd_dgns_e_cd7;
		//91	icd dgns e vrsn cd7	icd_dgns_e_vrsn_cd7	Claim Diagnosis E Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd7;
		//92	icd dgns e cd8	icd_dgns_e_cd8	Claim Diagnosis E Code VIII	CHAR	7
		STRING icd_dgns_e_cd8;
		//93	icd dgns e vrsn cd8	icd_dgns_e_vrsn_cd8	Claim Diagnosis E Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd8;
		//94	icd dgns e cd9	icd_dgns_e_cd9	Claim Diagnosis E Code VIX	CHAR	7
		STRING icd_dgns_e_cd9;
		//95	icd dgns e vrsn cd9	icd_dgns_e_vrsn_cd9	Claim Diagnosis E Code VIX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd9;
		//96	icd dgns e cd10	icd_dgns_e_cd10	Claim Diagnosis E Code X	CHAR	7
		STRING icd_dgns_e_cd10;
		//97	icd dgns e vrsn cd10	icd_dgns_e_vrsn_cd10	Claim Diagnosis E Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd10;
		//98	icd dgns e cd11	icd_dgns_e_cd11	Claim Diagnosis E Code XI	CHAR	7
		STRING icd_dgns_e_cd11;
		//99	icd dgns e vrsn cd11	icd_dgns_e_vrsn_cd11	Claim Diagnosis E Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd11;
		//100	icd dgns e cd12	icd_dgns_e_cd12	Claim Diagnosis E Code XII	CHAR	7
		STRING icd_dgns_e_cd12;
		//101	icd dgns e vrsn cd12	icd_dgns_e_vrsn_cd12	Claim Diagnosis E Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd12;
		//102	hspcstrt	clm_hospc_start_dt_id	Claim Hospice Start Date	DATE	8
		STRING clm_hospc_start_dt_id;
		//103	hospcprd	bene_hospc_prd_cnt	Beneficiary's Hospice Period Count	NUM	1
		STRING bene_hospc_prd_cnt;
		//104	dob_dt	dob_dt	LDS Age Category	NUM	1
		STRING dob_dt;
		//105	gndr_cd	gndr_cd	Gender Code from Claim	CHAR	1
		STRING gndr_cd;
		//106	race_cd	bene_race_cd	Race Code from Claim	CHAR	1
		STRING bene_race_cd;
		//107	cnty_cd	bene_cnty_cd	County Code from Claim (SSA)	CHAR	3
		STRING bene_cnty_cd;
		//108	state_cd	bene_state_cd	State Code from Claim (SSA)	CHAR	2
		STRING bene_state_cd;
		//109	cwf_bene_mdcr_stus_cd	cwf_bene_mdcr_stus_cd	CWF Beneficiary Medicare Status Code	CHAR	2
		STRING cwf_bene_mdcr_stus_cd;
		//110	query_cd	clm_query_cd	Claim Query Code	CHAR	1
		STRING clm_query_cd;
		//111	actioncd	fi_clm_actn_cd	FI Claim Action Code	CHAR	1
		STRING fi_clm_actn_cd;
	
	END;
	
	EXPORT condition_code_layout := RECORD
		//1	dsysrtky	desy_sort_key	LDS Beneficiary ID	NUM	9
		STRING desy_sort_key;
		//2	claimno	claim_no	LDS Claim Number	NUM	12
		STRING claim_no;
		//3	rltcndsq	rlt_cond_cd_seq	Claim Related Condition Code Sequence	CHAR	2
		STRING rlt_cond_cd_seq;
		//4	thru_dt	clm_thru_dt	Claim Through Date (Determines Year of Claim)	DATE	8
		STRING clm_thru_dt;
		//5	clm_type	nch_clm_type_cd	NCH Claim Type Code	CHAR	2
		STRING nch_clm_type_cd;
		//6	rlt_cond	clm_rlt_cond_cd	Claim Related Condition Code	CHAR	2
		STRING clm_rlt_cond_cd;
	END;
	
	EXPORT occurrence_code_layout := RECORD
		//1	dsysrtky	desy_sort_key	LDS Beneficiary ID	NUM	9
		STRING desy_sort_key;
		//2	claimno	claim_no	LDS Claim Number	NUM	12
		STRING claim_no;
		//3	rltocrsq	rlt_ocrnc_cd_seq	Claim Related Occurrence Code Sequence	CHAR	2
		STRING rlt_ocrnc_cd_seq;
		//4	thru_dt	clm_thru_dt	Claim Through Date (Determines Year of Claim)	DATE	8
		STRING clm_thru_dt;
		//5	clm_type	nch_clm_type_cd	NCH Claim Type Code	CHAR	2
		STRING nch_clm_type_cd;
		//6	ocrnc_cd	clm_rlt_ocrnc_cd	Claim Related Occurrence Code	CHAR	2
		STRING clm_rlt_ocrnc_cd;
		//7	ocrncdt	clm_rlt_ocrnc_dt	Claim Related Occurrence Date	DATE	8
		STRING clm_rlt_ocrnc_dt;
	END;
	
	EXPORT value_code_layout := RECORD
		//1	dsysrtky	desy_sort_key	LDS Beneficiary ID	NUM	9
		STRING desy_sort_key;
		//2	claimno	claim_no	LDS Claim Number	NUM	12
		STRING claim_no;
		//3	rltvalsq	rlt_val_cd_seq	Claim Related Value Code Sequence	CHAR	2
		STRING rlt_val_cd_seq;
		//4	thru_dt	clm_thru_dt	Claim Through Date (Determines Year of Claim)	DATE	8
		STRING clm_thru_dt;
		//5	clm_type	nch_clm_type_cd	NCH Claim Type Code	CHAR	2
		STRING nch_clm_type_cd;
		//6	val_cd	clm_val_cd	Claim Value Code	CHAR	2
		STRING clm_val_cd;
		//7	val_amt	clm_val_amt	Claim Value Amount	NUM	12
		STRING clm_val_amt;
	END;
	
	EXPORT revenue_center_layout := RECORD
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
		//6	rev_cntr	rev_cntr	Revenue Center Code	CHAR	4
		STRING rev_cntr;
		//7	rev_dt	rev_cntr_dt	Revenue Center Date	DATE	8
		STRING rev_cntr_dt;
		//8	hcpcs_cd	hcpcs_cd	Revenue Center HCFA Common Procedure Coding System	CHAR	5
		STRING hcpcs_cd;
		//9	mdfr_cd1	hcpcs_1st_mdfr_cd	Revenue Center HCPCS Initial Modifier Code	CHAR	5
		STRING hcpcs_1st_mdfr_cd;
		//10	mdfr_cd2	hcpcs_2nd_mdfr_cd	Revenue Center HCPCS Second Modifier Code	CHAR	5
		STRING hcpcs_2nd_mdfr_cd;
		//11	rev_unit	rev_cntr_unit_cnt	Revenue Center Unit Count	NUM	8
		STRING rev_cntr_unit_cnt;
		//12	rev_rate	rev_cntr_rate_amt	Revenue Center Rate Amount	NUM	12
		STRING rev_cntr_rate_amt;
		//13	rprvdpmt	rev_cntr_prvdr_pmt_amt	Revenue Center Provider Payment Amount	NUM	12
		STRING rev_cntr_prvdr_pmt_amt;
		//14	rbenepmt	rev_cntr_bene_pmt_amt	Revenue Center Beneficiary Payment Amount	NUM	12
		STRING rev_cntr_bene_pmt_amt;
		//15	revpmt	rev_cntr_pmt_amt_amt	Revenue Center Payment Amount Amount	NUM	12
		STRING rev_cntr_pmt_amt_amt;
		//16	rev_chrg	rev_cntr_tot_chrg_amt	Revenue Center Total Charge Amount	NUM	12
		STRING rev_cntr_tot_chrg_amt;
		//17	rev_ncvr	rev_cntr_ncvrd_chrg_amt	Revenue Center Non-Covered Charge Amount	NUM	12
		STRING rev_cntr_ncvrd_chrg_amt;
		//18	revdedcd	rev_cntr_ddctbl_coinsrnc_cd	Revenue Center Deductible Coinsurance Code	CHAR	1
		STRING rev_cntr_ddctbl_coinsrnc_cd;
		
	END;


END;