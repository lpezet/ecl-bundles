EXPORT SNFLayouts := INTERFACE

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
		//7	query_cd	claim_query_code	Claim Query Code	CHAR	1
		STRING claim_query_code;
		//8	fac_type	clm_fac_type_cd	Claim Facility Type Code	CHAR	1
		STRING clm_fac_type_cd;
		//9	typesrvc	clm_srvc_clsfctn_type_cd	Claim Service classification Type Code	CHAR	1
		STRING clm_srvc_clsfctn_type_cd;
		//10	freq_cd	clm_freq_cd	Claim Frequency Code	CHAR	1
		STRING clm_freq_cd;
		//11	fi_num	fi_num	FI Number	CHAR	5
		STRING fi_num;
		//12	nopay_cd	clm_mdcr_non_pmt_rsn_cd	Claim Medicare Non Payment Reason Code	CHAR	2
		STRING clm_mdcr_non_pmt_rsn_cd;
		//13	pmt_amt	clm_pmt_amt	Claim Payment Amount	NUM	12
		STRING clm_pmt_amt;
		//14	prpayamt	nch_prmry_pyr_clm_pd_amt	NCH Primary Payer Claim Paid Amount	NUM	12
		STRING nch_prmry_pyr_clm_pd_amt;
		//15	prpay_cd	nch_prmry_pyr_cd	NCH Primary Payer Code	CHAR	1
		STRING nch_prmry_pyr_cd;
		//16	actioncd	fi_clm_actn_cd	FI Claim Action Code	CHAR	1
		STRING fi_clm_actn_cd;
		//17	prstate	prvdr_state_cd	NCH Provider State Code	CHAR	2
		STRING prvdr_state_cd;
		//18	orgnpinm	org_npi_num	Organization NPI Number	CHAR	10
		STRING org_npi_num;
		//19	at_upin	at_physn_upin	Claim Attending Physician UPIN Number	CHAR	12
		STRING at_physn_upin;
		//20	at_npi	at_physn_npi	Claim Attending Physician NPI Number	CHAR	12
		STRING at_physn_npi;
		//21	op_upin	op_physn_upin	Claim Operating Physician UPIN Number	CHAR	12
		STRING op_physn_upin;
		//22	op_npi	op_physn_npi	Claim Operating Physician NPI Number	CHAR	12
		STRING op_physn_npi;
		//23	ot_upin	ot_physn_upin	Claim Other Physician UPIN Number	CHAR	12
		STRING ot_physn_upin;
		//24	ot_npi	ot_physn_npi	Claim Other Physician NPI Number	CHAR	12
		STRING ot_physn_npi;
		//25	mcopdsw	clm_mco_pd_sw	Claim MCO Paid Switch	CHAR	1
		STRING clm_mco_pd_sw;
		//26	stus_cd	ptnt_dschrg_stus_cd	Patient Discharge Status Code	CHAR	2
		STRING ptnt_dschrg_stus_cd;
		//27	pps_ind	clm_pps_ind_cd	Claim PPS Indicator Code	CHAR	1
		STRING clm_pps_ind_cd;
		//28	tot_chrg	clm_tot_chrg_amt	Claim Total Charge Amount	NUM	12
		STRING clm_tot_chrg_amt;
		//29	admsn_dt	clm_admsn_dt	Claim Admission Date	DATE	8
		STRING clm_admsn_dt;
		//30	type_adm	clm_ip_admsn_type_cd	Claim Inpatient Admission Type Code	CHAR	1
		STRING clm_ip_admsn_type_cd;
		//31	src_adms	clm_src_ip_admsn_cd	Claim Source Inpatient Admission Code	CHAR	1
		STRING clm_src_ip_admsn_cd;
		//32	ptntstus	nch_ptnt_status_ind_cd	NCH Patient Status Indicator Code	CHAR	1
		STRING nch_ptnt_status_ind_cd;
		//33	ded_amt	nch_bene_ip_ddctbl_amt	NCH Beneficiary Inpatient Deductible Amount	NUM	12
		STRING nch_bene_ip_ddctbl_amt;
		//34	coin_amt	nch_bene_pta_coinsrnc_lblty_am	NCH Beneficiary Part A Coinsurance Liability Amount	NUM	12
		STRING nch_bene_pta_coinsrnc_lblty_am;
		//35	blddedam	nch_bene_blood_ddctbl_lblty_am	NCH Beneficiary Blood Deductible Liability Amount	NUM	12
		STRING nch_bene_blood_ddctbl_lblty_am;
		//36	ncchgamt	nch_ip_ncvrd_chrg_amt	NCH Inpatient Noncovered Charge Amount	NUM	12
		STRING nch_ip_ncvrd_chrg_amt;
		//37	cptl_fsp	clm_pps_cptl_fsp_amt	Claim PPS Capital FSP Amount	NUM	12
		STRING clm_pps_cptl_fsp_amt;
		//38	cptloutl	clm_pps_cptl_outlier_amt	Claim PPS Capital Outlier Amount	NUM	12
		STRING clm_pps_cptl_outlier_amt;
		//39	disp_shr	clm_pps_cptl_dsprprtnt_shr_amt	Claim PPS Capital Disproportionate Share Amount	NUM	12
		STRING clm_pps_cptl_dsprprtnt_shr_amt;
		//40	ime_amt	clm_pps_cptl_ime_amt	Claim PPS Capital IME Amount	NUM	12
		STRING clm_pps_cptl_ime_amt;
		//41	cptl_exp	clm_pps_cptl_excptn_amt	Claim PPS Capital Exception Amount	NUM	12
		STRING clm_pps_cptl_excptn_amt;
		//42	hldhrmls	clm_pps_old_cptl_hld_hrmls_amt	Claim PPS Old Capital Hold Harmless Amount	NUM	12
		STRING clm_pps_old_cptl_hld_hrmls_amt;
		//43	util_day	clm_utlztn_day_cnt	Claim Utilization Day Count	NUM	3
		STRING clm_utlztn_day_cnt;
		//44	coin_day	bene_tot_coinsrnc_days_cnt	Beneficiary Total Coinsurance Days Count	NUM	3
		STRING bene_tot_coinsrnc_days_cnt;
		//45	nutilday	clm_non_utlztn_days_cnt	Claim Non Utilization Days Count	NUM	5
		STRING clm_non_utlztn_days_cnt;
		//46	bldfrnsh	nch_blood_pnts_frnshd_qty	NCH Blood Pints Furnished Quantity	NUM	3
		STRING nch_blood_pnts_frnshd_qty;
		//47	qlfythru	nch_qlfyd_stay_thru_dt	NCH Qualify Stay Through Date	DATE	8
		STRING nch_qlfyd_stay_thru_dt;
		//48	ncovfrom	nch_vrfd_ncvrd_stay_from_dt	NCH Verified Noncovered Stay From Date	DATE	8
		STRING nch_vrfd_ncvrd_stay_from_dt;
		//49	ncovthru	nch_vrfd_ncvrd_stay_thru_dt	NCH Verified Noncovered Stay Through Date	DATE	8
		STRING nch_vrfd_ncvrd_stay_thru_dt;
		//50	exhst_dt	nch_bene_mdcr_bnfts_exhtd_dt_i	NCH Beneficiary Medicare Benefits Exhausted Date	DATE	8
		STRING nch_bene_mdcr_bnfts_exhtd_dt_i;
		//51	dschrgdt	nch_bene_dschrg_dt	NCH Beneficiary Discharge Date	DATE	8
		STRING nch_bene_dschrg_dt;
		//52	drg_cd	clm_drg_cd	Claim Diagnosis Related Group Code	CHAR	3
		STRING clm_drg_cd;
		//53	admtg_dgns_cd	admtg_dgns_cd	Claim Admitting Diagnosis Code	CHAR	7
		STRING admtg_dgns_cd;
		//54	admtg_dgns_vrsn_cd	admtg_dgns_vrsn_cd	Claim Admitting Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING admtg_dgns_vrsn_cd;
		//55	prncpal_dgns_cd	prncpal_dgns_cd	Primary Claim Diagnosis Code	CHAR	7
		STRING prncpal_dgns_cd;
		//56	prncpal_dgns_vrsn_cd	prncpal_dgns_vrsn_cd	Primary Claim Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING prncpal_dgns_vrsn_cd;
		//57	icd dgns cd1	icd_dgns_cd1	Claim Diagnosis Code I	CHAR	7
		STRING icd_dgns_cd1;
		//58	icd dgns vrsn cd1	icd_dgns_vrsn_cd1	Claim Diagnosis Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd1;
		//59	icd dgns cd2	icd_dgns_cd2	Claim Diagnosis Code II	CHAR	7
		STRING icd_dgns_cd2;
		//60	icd dgns vrsn cd2	icd_dgns_vrsn_cd2	Claim Diagnosis Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd2;
		//61	icd dgns cd3	icd_dgns_cd3	Claim Diagnosis Code III	CHAR	1
		STRING icd_dgns_cd3;
		//62	icd dgns vrsn cd3	icd_dgns_vrsn_cd3	Claim Diagnosis Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd3;
		//63	icd dgns cd4	icd_dgns_cd4	Claim Diagnosis Code IV	CHAR	1
		STRING icd_dgns_cd4;
		//64	icd dgns vrsn cd4	icd_dgns_vrsn_cd4	Claim Diagnosis Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd4;
		//65	icd dgns cd5	icd_dgns_cd5	Claim Diagnosis Code V	CHAR	1
		STRING icd_dgns_cd5;
		//66	icd dgns vrsn cd5	icd_dgns_vrsn_cd5	Claim Diagnosis Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd5;
		//67	icd dgns cd6	icd_dgns_cd6	Claim Diagnosis Code VI	CHAR	1
		STRING icd_dgns_cd6;
		//68	icd dgns vrsn cd6	icd_dgns_vrsn_cd6	Claim Diagnosis Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd6;
		//69	icd dgns cd7	icd_dgns_cd7	Claim Diagnosis Code VII	CHAR	1
		STRING icd_dgns_cd7;
		//70	icd dgns vrsn cd7	icd_dgns_vrsn_cd7	Claim Diagnosis Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd7;
		//71	icd dgns cd8	icd_dgns_cd8	Claim Diagnosis Code VIII	CHAR	1
		STRING icd_dgns_cd8;
		//72	icd dgns vrsn cd8	icd_dgns_vrsn_cd8	Claim Diagnosis Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd8;
		//73	icd dgns cd9	icd_dgns_cd9	Claim Diagnosis Code IX	CHAR	1
		STRING icd_dgns_cd9;
		//74	icd dgns vrsn cd9	icd_dgns_vrsn_cd9	Claim Diagnosis Code IX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd9;
		//75	icd dgns cd10	icd_dgns_cd10	Claim Diagnosis Code X	CHAR	1
		STRING icd_dgns_cd10;
		//76	icd dgns vrsn cd10	icd_dgns_vrsn_cd10	Claim Diagnosis Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd10;
		//77	icd dgns cd11	icd_dgns_cd11	Claim Diagnosis Code XI	CHAR	1
		STRING icd_dgns_cd11;
		//78	icd dgns vrsn cd11	icd_dgns_vrsn_cd11	Claim Diagnosis Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd11;
		//79	icd dgns cd12	icd_dgns_cd12	Claim Diagnosis Code XII	CHAR	1
		STRING icd_dgns_cd12;
		//80	icd dgns vrsn cd12	icd_dgns_vrsn_cd12	Claim Diagnosis Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd12;
		//81	icd dgns cd13	icd_dgns_cd13	Claim Diagnosis Code XIII	CHAR	1
		STRING icd_dgns_cd13;
		//82	icd dgns vrsn cd13	icd_dgns_vrsn_cd13	Claim Diagnosis Code XIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd13;
		//83	icd dgns cd14	icd_dgns_cd14	Claim Diagnosis Code XIV	CHAR	1
		STRING icd_dgns_cd14;
		//84	icd dgns vrsn cd14	icd_dgns_vrsn_cd14	Claim Diagnosis Code XIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd14;
		//85	icd dgns cd15	icd_dgns_cd15	Claim Diagnosis Code XV	CHAR	1
		STRING icd_dgns_cd15;
		//86	icd dgns vrsn cd15	icd_dgns_vrsn_cd15	Claim Diagnosis Code XV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd15;
		//87	icd dgns cd16	icd_dgns_cd16	Claim Diagnosis Code XVI	CHAR	1
		STRING icd_dgns_cd16;
		//88	icd dgns vrsn cd16	icd_dgns_vrsn_cd16	Claim Diagnosis Code XVI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd16;
		//89	icd dgns cd17	icd_dgns_cd17	Claim Diagnosis Code XVII	CHAR	1
		STRING icd_dgns_cd17;
		//90	icd dgns vrsn cd17	icd_dgns_vrsn_cd17	Claim Diagnosis Code XVII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd17;
		//91	icd dgns cd18	icd_dgns_cd18	Claim Diagnosis Code XVIII	CHAR	1
		STRING icd_dgns_cd18;
		//92	icd dgns vrsn cd18	icd_dgns_vrsn_cd18	Claim Diagnosis Code XVIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd18;
		//93	icd dgns cd19	icd_dgns_cd19	Claim Diagnosis Code XIV	CHAR	1
		STRING icd_dgns_cd19;
		//94	icd dgns vrsn cd19	icd_dgns_vrsn_cd19	Claim Diagnosis Code XIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd19;
		//95	icd dgns cd20	icd_dgns_cd20	Claim Diagnosis Code XX	CHAR	1
		STRING icd_dgns_cd20;
		//96	icd dgns vrsn cd20	icd_dgns_vrsn_cd20	Claim Diagnosis Code XX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd20;
		//97	icd dgns cd21	icd_dgns_cd21	Claim Diagnosis Code XXI	CHAR	1
		STRING icd_dgns_cd21;
		//98	icd dgns vrsn cd21	icd_dgns_vrsn_cd21	Claim Diagnosis Code XXI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd21;
		//99	icd dgns cd22	icd_dgns_cd22	Claim Diagnosis Code XXII	CHAR	1
		STRING icd_dgns_cd22;
		//100	icd dgns vrsn cd22	icd_dgns_vrsn_cd22	Claim Diagnosis Code XXII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd22;
		//101	icd dgns cd23	icd_dgns_cd23	Claim Diagnosis Code XXIII	CHAR	1
		STRING icd_dgns_cd23;
		//102	icd dgns vrsn cd23	icd_dgns_vrsn_cd23	Claim Diagnosis Code XXIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd23;
		//103	icd dgns cd24	icd_dgns_cd24	Claim Diagnosis Code XXIV	CHAR	1
		STRING icd_dgns_cd24;
		//104	icd dgns vrsn cd24	icd_dgns_vrsn_cd24	Claim Diagnosis Code XXIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING icd_dgns_vrsn_cd24;
		//105	icd dgns cd25	icd_dgns_cd25	Claim Diagnosis Code XXV	CHAR	1
		STRING icd_dgns_cd25;
		//106	icd dgns vrsn cd25	icd_dgns_vrsn_cd25	Claim Diagnosis Code XXV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd25;
		//107	fst_dgns_e_cd	fst_dgns_e_cd	First Claim Diagnosis E Code	CHAR	7
		STRING fst_dgns_e_cd;
		//108	fst_dgns_e_vrsn_cd	fst_dgns_e_vrsn_cd	First Claim Diagnosis E Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING fst_dgns_e_vrsn_cd;
		//109	icd dgns e cd1	icd_dgns_e_cd1	Claim Diagnosis E Code I	CHAR	7
		STRING icd_dgns_e_cd1;
		//110	icd dgns e vrsn cd1	icd_dgns_e_vrsn_cd1	Claim Diagnosis E Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd1;
		//111	icd dgns e cd2	icd_dgns_e_cd2	Claim Diagnosis E Code II	CHAR	7
		STRING icd_dgns_e_cd2;
		//112	icd dgns e vrsn cd2	icd_dgns_e_vrsn_cd2	Claim Diagnosis E Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd2;
		//113	icd dgns e cd3	icd_dgns_e_cd3	Claim Diagnosis E Code III	CHAR	7
		STRING icd_dgns_e_cd3;
		//114	icd dgns e vrsn cd3	icd_dgns_e_vrsn_cd3	Claim Diagnosis E Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd3;
		//115	icd dgns e cd4	icd_dgns_e_cd4	Claim Diagnosis E Code IV	CHAR	7
		STRING icd_dgns_e_cd4;
		//116	icd dgns e vrsn cd4	icd_dgns_e_vrsn_cd4	Claim Diagnosis E Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd4;
		//117	icd dgns e cd5	icd_dgns_e_cd5	Claim Diagnosis E Code V	CHAR	7
		STRING icd_dgns_e_cd5;
		//118	icd dgns e vrsn cd5	icd_dgns_e_vrsn_cd5	Claim Diagnosis E Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd5;
		//119	icd dgns e cd6	icd_dgns_e_cd6	Claim Diagnosis E Code VI	CHAR	7
		STRING icd_dgns_e_cd6;
		//120	icd dgns e vrsn cd6	icd_dgns_e_vrsn_cd6	Claim Diagnosis E Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd6;
		//121	icd dgns e cd7	icd_dgns_e_cd7	Claim Diagnosis E Code VII	CHAR	7
		STRING icd_dgns_e_cd7;
		//122	icd dgns e vrsn cd7	icd_dgns_e_vrsn_cd7	Claim Diagnosis E Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd7;
		//123	icd dgns e cd8	icd_dgns_e_cd8	Claim Diagnosis E Code VIII	CHAR	7
		STRING icd_dgns_e_cd8;
		//124	icd dgns e vrsn cd8	icd_dgns_e_vrsn_cd8	Claim Diagnosis E Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd8;
		//125	icd dgns e cd9	icd_dgns_e_cd9	Claim Diagnosis E Code VIX	CHAR	7
		STRING icd_dgns_e_cd9;
		//126	icd dgns e vrsn cd9	icd_dgns_e_vrsn_cd9	Claim Diagnosis E Code VIX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd9;
		//127	icd dgns e cd10	icd_dgns_e_cd10	Claim Diagnosis E Code X	CHAR	7
		STRING icd_dgns_e_cd10;
		//128	icd dgns e vrsn cd10	icd_dgns_e_vrsn_cd10	Claim Diagnosis E Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd10;
		//129	icd dgns e cd11	icd_dgns_e_cd11	Claim Diagnosis E Code XI	CHAR	7
		STRING icd_dgns_e_cd11;
		//130	icd dgns e vrsn cd11	icd_dgns_e_vrsn_cd11	Claim Diagnosis E Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd11;
		//131	icd dgns e cd12	icd_dgns_e_cd12	Claim Diagnosis E Code XII	CHAR	7
		STRING icd_dgns_e_cd12;
		//132	icd dgns e vrsn cd12	icd_dgns_e_vrsn_cd12	Claim Diagnosis E Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd12;
		//133	icd_prcdr_cd1	icd_prcdr_cd1	Claim Procedure Code I	CHAR	7
		STRING icd_prcdr_cd1;
		//134	icd_prcdr_vrsn_cd1	icd_prcdr_vrsn_cd1	Claim Procedure Code I Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd1;
		//135	prcdr_dt1	prcdr_dt1	Claim Procedure Code I Date	DATE	8
		STRING prcdr_dt1;
		//136	icd_prcdr_cd2	icd_prcdr_cd2	Claim Procedure Code II	CHAR	7
		STRING icd_prcdr_cd2;
		//137	icd_prcdr_vrsn_cd2	icd_prcdr_vrsn_cd2	Claim Procedure Code II Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd2;
		//138	prcdr_dt2	prcdr_dt2	Claim Procedure Code II Date	DATE	8
		STRING prcdr_dt2;
		//139	icd_prcdr_cd3	icd_prcdr_cd3	Claim Procedure Code III	CHAR	7
		STRING icd_prcdr_cd3;
		//140	icd_prcdr_vrsn_cd3	icd_prcdr_vrsn_cd3	Claim Procedure Code III Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd3;
		//141	prcdr_dt3	prcdr_dt3	Claim Procedure Code III Date	DATE	8
		STRING prcdr_dt3;
		//142	icd_prcdr_cd4	icd_prcdr_cd4	Claim Procedure Code IV	CHAR	7
		STRING icd_prcdr_cd4;
		//143	icd_prcdr_vrsn_cd4	icd_prcdr_vrsn_cd4	Claim Procedure Code IV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd4;
		//144	prcdr_dt4	prcdr_dt4	Claim Procedure Code IV Date	DATE	8
		STRING prcdr_dt4;
		//145	icd_prcdr_cd5	icd_prcdr_cd5	Claim Procedure Code V	CHAR	7
		STRING icd_prcdr_cd5;
		//146	icd_prcdr_vrsn_cd5	icd_prcdr_vrsn_cd5	Claim Procedure Code V Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd5;
		//147	prcdr_dt5	prcdr_dt5	Claim Procedure Code V Date	DATE	8
		STRING prcdr_dt5;
		//148	icd_prcdr_cd6	icd_prcdr_cd6	Claim Procedure Code VI	CHAR	7
		STRING icd_prcdr_cd6;
		//149	icd_prcdr_vrsn_cd6	icd_prcdr_vrsn_cd6	Claim Procedure Code VI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd6;
		//150	prcdr_dt6	prcdr_dt6	Claim Procedure Code VI Date	DATE	8
		STRING prcdr_dt6;
		//151	icd_prcdr_cd7	icd_prcdr_cd7	Claim Procedure Code VII	CHAR	7
		STRING icd_prcdr_cd7;
		//152	icd_prcdr_vrsn_cd7	icd_prcdr_vrsn_cd7	Claim Procedure Code VII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd7;
		//153	prcdr_dt7	prcdr_dt7	Claim Procedure CodeVII Date	DATE	8
		STRING prcdr_dt7;
		//154	icd_prcdr_cd8	icd_prcdr_cd8	Claim Procedure Code VIII	CHAR	7
		STRING icd_prcdr_cd8;
		//155	icd_prcdr_vrsn_cd8	icd_prcdr_vrsn_cd8	Claim Procedure Code VIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd8;
		//156	prcdr_dt8	prcdr_dt8	Claim Procedure Code VIII Date	DATE	8
		STRING prcdr_dt8;
		//157	icd_prcdr_cd9	icd_prcdr_cd9	Claim Procedure Code IX	CHAR	7
		STRING icd_prcdr_cd9;
		//158	icd_prcdr_vrsn_cd9	icd_prcdr_vrsn_cd9	Claim Procedure Code IX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd9;
		//159	prcdr_dt9	prcdr_dt9	Claim Procedure Code IX Date	DATE	8
		STRING prcdr_dt9;
		//160	icd_prcdr_cd10	icd_prcdr_cd10	Claim Procedure Code X	CHAR	7
		STRING icd_prcdr_cd10;
		//161	icd_prcdr_vrsn_cd10	icd_prcdr_vrsn_cd10	Claim Procedure Code X Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd10;
		//162	prcdr_dt10	prcdr_dt10	Claim Procedure Code X Date	DATE	8
		STRING prcdr_dt10;
		//163	icd_prcdr_cd11	icd_prcdr_cd11	Claim Procedure Code XI	CHAR	7
		STRING icd_prcdr_cd11;
		//164	icd_prcdr_vrsn_cd11	icd_prcdr_vrsn_cd11	Claim Procedure Code XI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd11;
		//165	prcdr_dt11	prcdr_dt11	Claim Procedure Code XI Date	DATE	8
		STRING prcdr_dt11;
		//166	icd_prcdr_cd12	icd_prcdr_cd12	Claim Procedure Code XII	CHAR	7
		STRING icd_prcdr_cd12;
		//167	icd_prcdr_vrsn_cd12	icd_prcdr_vrsn_cd12	Claim Procedure Code XII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd12;
		//168	prcdr_dt12	prcdr_dt12	Claim Procedure Code XII Date	DATE	8
		STRING prcdr_dt12;
		//169	icd_prcdr_cd13	icd_prcdr_cd13	Claim Procedure Code XIII	CHAR	7
		STRING icd_prcdr_cd13;
		//170	icd_prcdr_vrsn_cd13	icd_prcdr_vrsn_cd13	Claim Procedure Code XIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd13;
		//171	prcdr_dt13	prcdr_dt13	Claim Procedure Code XIII Date	DATE	8
		STRING prcdr_dt13;
		//172	icd_prcdr_cd14	icd_prcdr_cd14	Claim Procedure Code XIV	CHAR	7
		STRING icd_prcdr_cd14;
		//173	icd_prcdr_vrsn_cd14	icd_prcdr_vrsn_cd14	Claim Procedure Code XIV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd14;
		//174	prcdr_dt14	prcdr_dt14	Claim Procedure Code XIV Date	DATE	8
		STRING prcdr_dt14;
		//175	icd_prcdr_cd15	icd_prcdr_cd15	Claim Procedure Code XV	CHAR	7
		STRING icd_prcdr_cd15;
		//176	icd_prcdr_vrsn_cd15	icd_prcdr_vrsn_cd15	Claim Procedure Code XV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd15;
		//177	prcdr_dt15	prcdr_dt15	Claim Procedure Code XV Date	DATE	8
		STRING prcdr_dt15;
		//178	icd_prcdr_cd16	icd_prcdr_cd16	Claim Procedure Code XVI	CHAR	7
		STRING icd_prcdr_cd16;
		//179	icd_prcdr_vrsn_cd16	icd_prcdr_vrsn_cd16	Claim Procedure Code XVI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd16;
		//180	prcdr_dt16	prcdr_dt16	Claim Procedure Code XVI Date	DATE	8
		STRING prcdr_dt16;
		//181	icd_prcdr_cd17	icd_prcdr_cd17	Claim Procedure Code XVII	CHAR	7
		STRING icd_prcdr_cd17;
		//182	icd_prcdr_vrsn_cd17	icd_prcdr_vrsn_cd17	Claim Procedure Code XVII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd17;
		//183	prcdr_dt17	prcdr_dt17	Claim Procedure Code XVII Date	DATE	8
		STRING prcdr_dt17;
		//184	icd_prcdr_cd18	icd_prcdr_cd18	Claim Procedure Code XVIII	CHAR	7
		STRING icd_prcdr_cd18;
		//185	icd_prcdr_vrsn_cd18	icd_prcdr_vrsn_cd18	Claim Procedure Code XVIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd18;
		//186	prcdr_dt18	prcdr_dt18	Claim Procedure Code XVIII Date	DATE	8
		STRING prcdr_dt18;
		//187	icd_prcdr_cd19	icd_prcdr_cd19	Claim Procedure Code XIX	CHAR	7
		STRING icd_prcdr_cd19;
		//188	icd_prcdr_vrsn_cd19	icd_prcdr_vrsn_cd19	Claim Procedure Code XIX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd19;
		//189	prcdr_dt19	prcdr_dt19	Claim Procedure Code XIX Date	DATE	8
		STRING prcdr_dt19;
		//190	icd_prcdr_cd20	icd_prcdr_cd20	Claim Procedure Code XX	CHAR	7
		STRING icd_prcdr_cd20;
		//191	icd_prcdr_vrsn_cd20	icd_prcdr_vrsn_cd20	Claim Procedure Code XX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd20;
		//192	prcdr_dt20	prcdr_dt20	Claim Procedure Code XX Date	DATE	8
		STRING prcdr_dt20;
		//193	icd_prcdr_cd21	icd_prcdr_cd21	Claim Procedure Code XXI	CHAR	7
		STRING icd_prcdr_cd21;
		//194	icd_prcdr_vrsn_cd21	icd_prcdr_vrsn_cd21	Claim Procedure Code XXI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd21;
		//195	prcdr_dt21	prcdr_dt21	Claim Procedure Code XXI Date	DATE	8
		STRING prcdr_dt21;
		//196	icd_prcdr_cd22	icd_prcdr_cd22	Claim Procedure Code XXII	CHAR	7
		STRING icd_prcdr_cd22;
		//197	icd_prcdr_vrsn_cd22	icd_prcdr_vrsn_cd22	Claim Procedure Code XXII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd22;
		//198	prcdr_dt22	prcdr_dt22	Claim Procedure Code XXII Date	DATE	8
		STRING prcdr_dt22;
		//199	icd_prcdr_cd23	icd_prcdr_cd23	Claim Procedure Code XXIII	CHAR	7
		STRING icd_prcdr_cd23;
		//200	icd_prcdr_vrsn_cd23	icd_prcdr_vrsn_cd23	Claim Procedure Code XXIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd23;
		//201	prcdr_dt23	prcdr_dt23	Claim Procedure Code XXIII Date	DATE	8
		STRING prcdr_dt23;
		//202	icd_prcdr_cd24	icd_prcdr_cd24	Claim Procedure Code XXIV	CHAR	7
		STRING icd_prcdr_cd24;
		//203	icd_prcdr_vrsn_cd24	icd_prcdr_vrsn_cd24	Claim Procedure Code XXIV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd24;
		//204	prcdr_dt24	prcdr_dt24	Claim Procedure Code XXIV Date	DATE	8
		STRING prcdr_dt24;
		//205	icd_prcdr_cd25	icd_prcdr_cd25	Claim Procedure Code XXV	CHAR	7
		STRING icd_prcdr_cd25;
		//206	icd_prcdr_vrsn_cd25	icd_prcdr_vrsn_cd25	Claim Procedure Code XXV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd25;
		//207	prcdr_dt25	prcdr_dt25	Claim Procedure Code XXV Date	DATE	8
		STRING prcdr_dt25;
		//208	dob_dt	dob_dt	LDS Age Category	NUM	1
		STRING dob_dt;
		//209	gndr_cd	gndr_cd	Gender Code from Claim	CHAR	1
		STRING gndr_cd;
		//210	race_cd	bene_race_cd	Race Code from Claim	CHAR	1
		STRING bene_race_cd;
		//211	cnty_cd	bene_cnty_cd	County Code from Claim (SSA)	CHAR	3
		STRING bene_cnty_cd;
		//212	state_cd	bene_state_cd	State Code from Claim (SSA)	CHAR	2
		STRING bene_state_cd;
		//213	cwf_bene_mdcr_stus_cd	cwf_bene_mdcr_stus_cd	CWF Beneficiary Medicare Status Code	CHAR	2
		STRING cwf_bene_mdcr_stus_cd;
	
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
		//7	hcpcs_cd	hcpcs_cd	Revenue Center HCFA Common Procedure Coding System	CHAR	5
		STRING hcpcs_cd;
		//8	rev_unit	rev_cntr_unit_cnt	Revenue Center Unit Count	NUM	8
		STRING rev_cntr_unit_cnt;
		//9	rev_rate	rev_cntr_rate_amt	Revenue Center Rate Amount	NUM	12
		STRING rev_cntr_rate_amt;
		//10	rev_chrg	rev_cntr_tot_chrg_amt	Revenue Center Total Charge Amount	NUM	12
		STRING rev_cntr_tot_chrg_amt;
		//11	rev_ncvr	rev_cntr_ncvrd_chrg_amt	Revenue Center Non-Covered Charge Amount	NUM	12
		STRING rev_cntr_ncvrd_chrg_amt;
		//12	revdedcd	rev_cntr_ddctbl_coinsrnc_cd	Revenue Center Deductible Coinsurance Code	CHAR	1
		STRING rev_cntr_ddctbl_coinsrnc_cd;
		
	END;


END;