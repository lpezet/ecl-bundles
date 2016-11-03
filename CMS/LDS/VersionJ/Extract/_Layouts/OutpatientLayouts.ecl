EXPORT OutpatientLayouts := INTERFACE

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
		//16	prstate	prvdr_state_cd	NCH Provider State Code	CHAR	2
		STRING prvdr_state_cd;
		//17	orgnpinm	org_npi_num	Organization NPI Number	CHAR	10
		STRING org_npi_num;
		//18	at_upin	at_physn_upin	Claim Attending Physician UPIN Number	CHAR	12
		STRING at_physn_upin;
		//19	at_npi	at_physn_npi	Claim Attending Physician NPI Number	CHAR	12
		STRING at_physn_npi;
		//20	op_upin	op_physn_upin	Claim Operating Physician UPIN Number	CHAR	12
		STRING op_physn_upin;
		//21	op_npi	op_physn_npi	Claim Operating Physician NPI Number	CHAR	12
		STRING op_physn_npi;
		//22	ot_upin	ot_physn_upin	Claim Other Physician UPIN Number	CHAR	12
		STRING ot_physn_upin;
		//23	ot_npi	ot_physn_npi	Claim Other Physician NPI Number	CHAR	12
		STRING ot_physn_npi;
		//24	mcopdsw	clm_mco_pd_sw	Claim MCO Paid Switch	CHAR	1
		STRING clm_mco_pd_sw;
		//25	stus_cd	ptnt_dschrg_stus_cd	Patient Discharge Status Code	CHAR	2
		STRING ptnt_dschrg_stus_cd;
		//26	tot_chrg	clm_tot_chrg_amt	Claim Total Charge Amount	NUM	12
		STRING clm_tot_chrg_amt;
		//27	blddedam	nch_bene_blood_ddctbl_lblty_am	NCH Beneficiary Blood Deductible Liability Amount	NUM	12
		STRING nch_bene_blood_ddctbl_lblty_am;
		//28	pcchgamt	nch_profnl_cmpnt_chrg_amt	NCH Professional Component Charge Amount	NUM	12
		STRING nch_profnl_cmpnt_chrg_amt;
		//29	prncpal_dgns_cd	prncpal_dgns_cd	Primary Claim Diagnosis Code	CHAR	7
		STRING prncpal_dgns_cd;
		//30	prncpal_dgns_vrsn_cd	prncpal_dgns_vrsn_cd	Primary Claim Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING prncpal_dgns_vrsn_cd;
		//31	icd dgns cd1	icd_dgns_cd1	Claim Diagnosis Code I	CHAR	7
		STRING icd_dgns_cd1;
		//32	icd dgns vrsn cd1	icd_dgns_vrsn_cd1	Claim Diagnosis Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd1;
		//33	icd dgns cd2	icd_dgns_cd2	Claim Diagnosis Code II	CHAR	7
		STRING icd_dgns_cd2;
		//34	icd dgns vrsn cd2	icd_dgns_vrsn_cd2	Claim Diagnosis Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd2;
		//35	icd dgns cd3	icd_dgns_cd3	Claim Diagnosis Code III	CHAR	7
		STRING icd_dgns_cd3;
		//36	icd dgns vrsn cd3	icd_dgns_vrsn_cd3	Claim Diagnosis Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd3;
		//37	icd dgns cd4	icd_dgns_cd4	Claim Diagnosis Code IV	CHAR	7
		STRING icd_dgns_cd4;
		//38	icd dgns vrsn cd4	icd_dgns_vrsn_cd4	Claim Diagnosis Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd4;
		//39	icd dgns cd5	icd_dgns_cd5	Claim Diagnosis Code V	CHAR	7
		STRING icd_dgns_cd5;
		//40	icd dgns vrsn cd5	icd_dgns_vrsn_cd5	Claim Diagnosis Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd5;
		//41	icd dgns cd6	icd_dgns_cd6	Claim Diagnosis Code VI	CHAR	7
		STRING icd_dgns_cd6;
		//42	icd dgns vrsn cd6	icd_dgns_vrsn_cd6	Claim Diagnosis Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd6;
		//43	icd dgns cd7	icd_dgns_cd7	Claim Diagnosis Code VII	CHAR	7
		STRING icd_dgns_cd7;
		//44	icd dgns vrsn cd7	icd_dgns_vrsn_cd7	Claim Diagnosis Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd7;
		//45	icd dgns cd8	icd_dgns_cd8	Claim Diagnosis Code VIII	CHAR	7
		STRING icd_dgns_cd8;
		//46	icd dgns vrsn cd8	icd_dgns_vrsn_cd8	Claim Diagnosis Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd8;
		//47	icd dgns cd9	icd_dgns_cd9	Claim Diagnosis Code IX	CHAR	7
		STRING icd_dgns_cd9;
		//48	icd dgns vrsn cd9	icd_dgns_vrsn_cd9	Claim Diagnosis Code IX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd9;
		//49	icd dgns cd10	icd_dgns_cd10	Claim Diagnosis Code X	CHAR	7
		STRING icd_dgns_cd10;
		//50	icd dgns vrsn cd10	icd_dgns_vrsn_cd10	Claim Diagnosis Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd10;
		//51	icd dgns cd11	icd_dgns_cd11	Claim Diagnosis Code XI	CHAR	7
		STRING icd_dgns_cd11;
		//52	icd dgns vrsn cd11	icd_dgns_vrsn_cd11	Claim Diagnosis Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd11;
		//53	icd dgns cd12	icd_dgns_cd12	Claim Diagnosis Code XII	CHAR	7
		STRING icd_dgns_cd12;
		//54	icd dgns vrsn cd12	icd_dgns_vrsn_cd12	Claim Diagnosis Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd12;
		//55	icd dgns cd13	icd_dgns_cd13	Claim Diagnosis Code XIII	CHAR	7
		STRING icd_dgns_cd13;
		//56	icd dgns vrsn cd13	icd_dgns_vrsn_cd13	Claim Diagnosis Code XIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd13;
		//57	icd dgns cd14	icd_dgns_cd14	Claim Diagnosis Code XIV	CHAR	7
		STRING icd_dgns_cd14;
		//58	icd dgns vrsn cd14	icd_dgns_vrsn_cd14	Claim Diagnosis Code XIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd14;
		//59	icd dgns cd15	icd_dgns_cd15	Claim Diagnosis Code XV	CHAR	7
		STRING icd_dgns_cd15;
		//60	icd dgns vrsn cd15	icd_dgns_vrsn_cd15	Claim Diagnosis Code XV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd15;
		//61	icd dgns cd16	icd_dgns_cd16	Claim Diagnosis Code XVI	CHAR	7
		STRING icd_dgns_cd16;
		//62	icd dgns vrsn cd16	icd_dgns_vrsn_cd16	Claim Diagnosis Code XVI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd16;
		//63	icd dgns cd17	icd_dgns_cd17	Claim Diagnosis Code XVII	CHAR	7
		STRING icd_dgns_cd17;
		//64	icd dgns vrsn cd17	icd_dgns_vrsn_cd17	Claim Diagnosis Code XVII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd17;
		//65	icd dgns cd18	icd_dgns_cd18	Claim Diagnosis Code XVIII	CHAR	7
		STRING icd_dgns_cd18;
		//66	icd dgns vrsn cd18	icd_dgns_vrsn_cd18	Claim Diagnosis Code XVIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd18;
		//67	icd dgns cd19	icd_dgns_cd19	Claim Diagnosis Code XIV	CHAR	7
		STRING icd_dgns_cd19;
		//68	icd dgns vrsn cd19	icd_dgns_vrsn_cd19	Claim Diagnosis Code XIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd19;
		//69	icd dgns cd20	icd_dgns_cd20	Claim Diagnosis Code XX	CHAR	7
		STRING icd_dgns_cd20;
		//70	icd dgns vrsn cd20	icd_dgns_vrsn_cd20	Claim Diagnosis Code XX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd20;
		//71	icd dgns cd21	icd_dgns_cd21	Claim Diagnosis Code XXI	CHAR	7
		STRING icd_dgns_cd21;
		//72	icd dgns vrsn cd21	icd_dgns_vrsn_cd21	Claim Diagnosis Code XXI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd21;
		//73	icd dgns cd22	icd_dgns_cd22	Claim Diagnosis Code XXII	CHAR	7
		STRING icd_dgns_cd22;
		//74	icd dgns vrsn cd22	icd_dgns_vrsn_cd22	Claim Diagnosis Code XXII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd22;
		//75	icd dgns cd23	icd_dgns_cd23	Claim Diagnosis Code XXIII	CHAR	7
		STRING icd_dgns_cd23;
		//76	icd dgns vrsn cd23	icd_dgns_vrsn_cd23	Claim Diagnosis Code XXIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd23;
		//77	icd dgns cd24	icd_dgns_cd24	Claim Diagnosis Code XXIV	CHAR	7
		STRING icd_dgns_cd24;
		//78	icd dgns vrsn cd24	icd_dgns_vrsn_cd24	Claim Diagnosis Code XXIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd24;
		//79	icd dgns cd25	icd_dgns_cd25	Claim Diagnosis Code XXV	CHAR	7
		STRING icd_dgns_cd25;
		//80	icd dgns vrsn cd25	icd_dgns_vrsn_cd25	Claim Diagnosis Code XXV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd25;
		//81	fst_dgns_e_cd	fst_dgns_e_cd	First Claim Diagnosis E Code	CHAR	7
		STRING fst_dgns_e_cd;
		//82	fst_dgns_e_vrsn_cd	fst_dgns_e_vrsn_cd	First Claim Diagnosis E Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING fst_dgns_e_vrsn_cd;
		//83	icd dgns e cd1	icd_dgns_e_cd1	Claim Diagnosis E Code I	CHAR	7
		STRING icd_dgns_e_cd1;
		//84	icd dgns e vrsn cd1	icd_dgns_e_vrsn_cd1	Claim Diagnosis E Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd1;
		//85	icd dgns e cd2	icd_dgns_e_cd2	Claim Diagnosis E Code II	CHAR	7
		STRING icd_dgns_e_cd2;
		//86	icd dgns e vrsn cd2	icd_dgns_e_vrsn_cd2	Claim Diagnosis E Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd2;
		//87	icd dgns e cd3	icd_dgns_e_cd3	Claim Diagnosis E Code III	CHAR	7
		STRING icd_dgns_e_cd3;
		//88	icd dgns e vrsn cd3	icd_dgns_e_vrsn_cd3	Claim Diagnosis E Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd3;
		//89	icd dgns e cd4	icd_dgns_e_cd4	Claim Diagnosis E Code IV	CHAR	7
		STRING icd_dgns_e_cd4;
		//90	icd dgns e vrsn cd4	icd_dgns_e_vrsn_cd4	Claim Diagnosis E Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd4;
		//91	icd dgns e cd5	icd_dgns_e_cd5	Claim Diagnosis E Code V	CHAR	7
		STRING icd_dgns_e_cd5;
		//92	icd dgns e vrsn cd5	icd_dgns_e_vrsn_cd5	Claim Diagnosis E Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd5;
		//93	icd dgns e cd6	icd_dgns_e_cd6	Claim Diagnosis E Code VI	CHAR	7
		STRING icd_dgns_e_cd6;
		//94	icd dgns e vrsn cd6	icd_dgns_e_vrsn_cd6	Claim Diagnosis E Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd6;
		//95	icd dgns e cd7	icd_dgns_e_cd7	Claim Diagnosis E Code VII	CHAR	7
		STRING icd_dgns_e_cd7;
		//96	icd dgns e vrsn cd7	icd_dgns_e_vrsn_cd7	Claim Diagnosis E Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd7;
		//97	icd dgns e cd8	icd_dgns_e_cd8	Claim Diagnosis E Code VIII	CHAR	7
		STRING icd_dgns_e_cd8;
		//98	icd dgns e vrsn cd8	icd_dgns_e_vrsn_cd8	Claim Diagnosis E Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd8;
		//99	icd dgns e cd9	icd_dgns_e_cd9	Claim Diagnosis E Code VIX	CHAR	7
		STRING icd_dgns_e_cd9;
		//100	icd dgns e vrsn cd9	icd_dgns_e_vrsn_cd9	Claim Diagnosis E Code VIX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd9;
		//101	icd dgns e cd10	icd_dgns_e_cd10	Claim Diagnosis E Code X	CHAR	7
		STRING icd_dgns_e_cd10;
		//102	icd dgns e vrsn cd10	icd_dgns_e_vrsn_cd10	Claim Diagnosis E Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd10;
		//103	icd dgns e cd11	icd_dgns_e_cd11	Claim Diagnosis E Code XI	CHAR	7
		STRING icd_dgns_e_cd11;
		//104	icd dgns e vrsn cd11	icd_dgns_e_vrsn_cd11	Claim Diagnosis E Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd11;
		//105	icd dgns e cd12	icd_dgns_e_cd12	Claim Diagnosis E Code XII	CHAR	7
		STRING icd_dgns_e_cd12;
		//106	icd dgns e vrsn cd12	icd_dgns_e_vrsn_cd12	Claim Diagnosis E Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd12;
		//107	icd_prcdr_cd1	icd_prcdr_cd1	Claim Procedure Code I	CHAR	7
		STRING icd_prcdr_cd1;
		//108	icd_prcdr_vrsn_cd1	icd_prcdr_vrsn_cd1	Claim Procedure Code I Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd1;
		//109	prcdr_dt1	prcdr_dt1	Claim Procedure Code I Date	DATE	8
		STRING prcdr_dt1;
		//110	icd_prcdr_cd2	icd_prcdr_cd2	Claim Procedure Code II	CHAR	7
		STRING icd_prcdr_cd2;
		//111	icd_prcdr_vrsn_cd2	icd_prcdr_vrsn_cd2	Claim Procedure Code II Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd2;
		//112	prcdr_dt2	prcdr_dt2	Claim Procedure Code II Date	DATE	8
		STRING prcdr_dt2;
		//113	icd_prcdr_cd3	icd_prcdr_cd3	Claim Procedure Code III	CHAR	7
		STRING icd_prcdr_cd3;
		//114	icd_prcdr_vrsn_cd3	icd_prcdr_vrsn_cd3	Claim Procedure Code III Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd3;
		//115	prcdr_dt3	prcdr_dt3	Claim Procedure Code III Date	DATE	8
		STRING prcdr_dt3;
		//116	icd_prcdr_cd4	icd_prcdr_cd4	Claim Procedure Code IV	CHAR	7
		STRING icd_prcdr_cd4;
		//117	icd_prcdr_vrsn_cd4	icd_prcdr_vrsn_cd4	Claim Procedure Code IV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd4;
		//118	prcdr_dt4	prcdr_dt4	Claim Procedure Code IV Date	DATE	8
		STRING prcdr_dt4;
		//119	icd_prcdr_cd5	icd_prcdr_cd5	Claim Procedure Code V	CHAR	7
		STRING icd_prcdr_cd5;
		//120	icd_prcdr_vrsn_cd5	icd_prcdr_vrsn_cd5	Claim Procedure Code V Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd5;
		//121	prcdr_dt5	prcdr_dt5	Claim Procedure Code V Date	DATE	8
		STRING prcdr_dt5;
		//122	icd_prcdr_cd6	icd_prcdr_cd6	Claim Procedure Code VI	CHAR	7
		STRING icd_prcdr_cd6;
		//123	icd_prcdr_vrsn_cd6	icd_prcdr_vrsn_cd6	Claim Procedure Code VI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd6;
		//124	prcdr_dt6	prcdr_dt6	Claim Procedure Code VI Date	DATE	8
		STRING prcdr_dt6;
		//125	icd_prcdr_cd7	icd_prcdr_cd7	Claim Procedure Code VII	CHAR	7
		STRING icd_prcdr_cd7;
		//126	icd_prcdr_vrsn_cd7	icd_prcdr_vrsn_cd7	Claim Procedure Code VII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd7;
		//127	prcdr_dt7	prcdr_dt7	Claim Procedure CodeVII Date	DATE	8
		STRING prcdr_dt7;
		//128	icd_prcdr_cd8	icd_prcdr_cd8	Claim Procedure Code VIII	CHAR	7
		STRING icd_prcdr_cd8;
		//129	icd_prcdr_vrsn_cd8	icd_prcdr_vrsn_cd8	Claim Procedure Code VIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd8;
		//130	prcdr_dt8	prcdr_dt8	Claim Procedure Code VIII Date	DATE	8
		STRING prcdr_dt8;
		//131	icd_prcdr_cd9	icd_prcdr_cd9	Claim Procedure Code IX	CHAR	7
		STRING icd_prcdr_cd9;
		//132	icd_prcdr_vrsn_cd9	icd_prcdr_vrsn_cd9	Claim Procedure Code IX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd9;
		//133	prcdr_dt9	prcdr_dt9	Claim Procedure Code IX Date	DATE	8
		STRING prcdr_dt9;
		//134	icd_prcdr_cd10	icd_prcdr_cd10	Claim Procedure Code X	CHAR	7
		STRING icd_prcdr_cd10;
		//135	icd_prcdr_vrsn_cd10	icd_prcdr_vrsn_cd10	Claim Procedure Code X Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd10;
		//136	prcdr_dt10	prcdr_dt10	Claim Procedure Code X Date	DATE	8
		STRING prcdr_dt10;
		//137	icd_prcdr_cd11	icd_prcdr_cd11	Claim Procedure Code XI	CHAR	7
		STRING icd_prcdr_cd11;
		//138	icd_prcdr_vrsn_cd11	icd_prcdr_vrsn_cd11	Claim Procedure Code XI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd11;
		//139	prcdr_dt11	prcdr_dt11	Claim Procedure Code XI Date	DATE	8
		STRING prcdr_dt11;
		//140	icd_prcdr_cd12	icd_prcdr_cd12	Claim Procedure Code XII	CHAR	7
		STRING icd_prcdr_cd12;
		//141	icd_prcdr_vrsn_cd12	icd_prcdr_vrsn_cd12	Claim Procedure Code XII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd12;
		//142	prcdr_dt12	prcdr_dt12	Claim Procedure Code XII Date	DATE	8
		STRING prcdr_dt12;
		//143	icd_prcdr_cd13	icd_prcdr_cd13	Claim Procedure Code XIII	CHAR	7
		STRING icd_prcdr_cd13;
		//144	icd_prcdr_vrsn_cd13	icd_prcdr_vrsn_cd13	Claim Procedure Code XIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd13;
		//145	prcdr_dt13	prcdr_dt13	Claim Procedure Code XIII Date	DATE	8
		STRING prcdr_dt13;
		//146	icd_prcdr_cd14	icd_prcdr_cd14	Claim Procedure Code XIV	CHAR	7
		STRING icd_prcdr_cd14;
		//147	icd_prcdr_vrsn_cd14	icd_prcdr_vrsn_cd14	Claim Procedure Code XIV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd14;
		//148	prcdr_dt14	prcdr_dt14	Claim Procedure Code XIV Date	DATE	8
		STRING prcdr_dt14;
		//149	icd_prcdr_cd15	icd_prcdr_cd15	Claim Procedure Code XV	CHAR	7
		STRING icd_prcdr_cd15;
		//150	icd_prcdr_vrsn_cd15	icd_prcdr_vrsn_cd15	Claim Procedure Code XV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd15;
		//151	prcdr_dt15	prcdr_dt15	Claim Procedure Code XV Date	DATE	8
		STRING prcdr_dt15;
		//152	icd_prcdr_cd16	icd_prcdr_cd16	Claim Procedure Code XVI	CHAR	7
		STRING icd_prcdr_cd16;
		//153	icd_prcdr_vrsn_cd16	icd_prcdr_vrsn_cd16	Claim Procedure Code XVI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd16;
		//154	prcdr_dt16	prcdr_dt16	Claim Procedure Code XVI Date	DATE	8
		STRING prcdr_dt16;
		//155	icd_prcdr_cd17	icd_prcdr_cd17	Claim Procedure Code XVII	CHAR	7
		STRING icd_prcdr_cd17;
		//156	icd_prcdr_vrsn_cd17	icd_prcdr_vrsn_cd17	Claim Procedure Code XVII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd17;
		//157	prcdr_dt17	prcdr_dt17	Claim Procedure Code XVII Date	DATE	8
		STRING prcdr_dt17;
		//158	icd_prcdr_cd18	icd_prcdr_cd18	Claim Procedure Code XVIII	CHAR	7
		STRING icd_prcdr_cd18;
		//159	icd_prcdr_vrsn_cd18	icd_prcdr_vrsn_cd18	Claim Procedure Code XVIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd18;
		//160	prcdr_dt18	prcdr_dt18	Claim Procedure Code XVIII Date	DATE	8
		STRING prcdr_dt18;
		//161	icd_prcdr_cd19	icd_prcdr_cd19	Claim Procedure Code XIX	CHAR	7
		STRING icd_prcdr_cd19;
		//162	icd_prcdr_vrsn_cd19	icd_prcdr_vrsn_cd19	Claim Procedure Code XIX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd19;
		//163	prcdr_dt19	prcdr_dt19	Claim Procedure Code XIX Date	DATE	8
		STRING prcdr_dt19;
		//164	icd_prcdr_cd20	icd_prcdr_cd20	Claim Procedure Code XX	CHAR	7
		STRING icd_prcdr_cd20;
		//165	icd_prcdr_vrsn_cd20	icd_prcdr_vrsn_cd20	Claim Procedure Code XX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd20;
		//166	prcdr_dt20	prcdr_dt20	Claim Procedure Code XX Date	DATE	8
		STRING prcdr_dt20;
		//167	icd_prcdr_cd21	icd_prcdr_cd21	Claim Procedure Code XXI	CHAR	7
		STRING icd_prcdr_cd21;
		//168	icd_prcdr_vrsn_cd21	icd_prcdr_vrsn_cd21	Claim Procedure Code XXI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd21;
		//169	prcdr_dt21	prcdr_dt21	Claim Procedure Code XXI Date	DATE	8
		STRING prcdr_dt21;
		//170	icd_prcdr_cd22	icd_prcdr_cd22	Claim Procedure Code XXII	CHAR	7
		STRING icd_prcdr_cd22;
		//171	icd_prcdr_vrsn_cd22	icd_prcdr_vrsn_cd22	Claim Procedure Code XXII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd22;
		//172	prcdr_dt22	prcdr_dt22	Claim Procedure Code XXII Date	DATE	8
		STRING prcdr_dt22;
		//173	icd_prcdr_cd23	icd_prcdr_cd23	Claim Procedure Code XXIII	CHAR	7
		STRING icd_prcdr_cd23;
		//174	icd_prcdr_vrsn_cd23	icd_prcdr_vrsn_cd23	Claim Procedure Code XXIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd23;
		//175	prcdr_dt23	prcdr_dt23	Claim Procedure Code XXIII Date	DATE	8
		STRING prcdr_dt23;
		//176	icd_prcdr_cd24	icd_prcdr_cd24	Claim Procedure Code XXIV	CHAR	7
		STRING icd_prcdr_cd24;
		//177	icd_prcdr_vrsn_cd24	icd_prcdr_vrsn_cd24	Claim Procedure Code XXIV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd24;
		//178	prcdr_dt24	prcdr_dt24	Claim Procedure Code XXIV Date	DATE	8
		STRING prcdr_dt24;
		//179	icd_prcdr_cd25	icd_prcdr_cd25	Claim Procedure Code XXV	CHAR	7
		STRING icd_prcdr_cd25;
		//180	icd_prcdr_vrsn_cd25	icd_prcdr_vrsn_cd25	Claim Procedure Code XXV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd25;
		//181	prcdr_dt25	prcdr_dt25	Claim Procedure Code XXV Date	DATE	8
		STRING prcdr_dt25;
		//182	rsn_visit_cd1	rsn_visit_cd1	Reason for Visit Diagnosis Code I	CHAR	1
		STRING rsn_visit_cd1;
		//183	rsn_visit_vrsn_cd1	rsn_visit_vrsn_cd1	Reason for Visit Diagnosis Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING rsn_visit_vrsn_cd1;
		//184	rsn_visit_cd2	rsn_visit_cd2	Reason for Visit Diagnosis Code II	CHAR	1
		STRING rsn_visit_cd2;
		//185	rsn_visit_vrsn_cd2	rsn_visit_vrsn_cd2	Reason for Visit Diagnosis Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING rsn_visit_vrsn_cd2;
		//186	rsn_visit_cd3	rsn_visit_cd3	Reason for Visit Diagnosis Code III	CHAR	1
		STRING rsn_visit_cd3;
		//187	rsn_visit_vrsn_cd3	rsn_visit_vrsn_cd3	Reason for Visit Diagnosis Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	7
		STRING rsn_visit_vrsn_cd3;
		//188	ptb_ded	nch_bene_ptb_ddctbl_amt	NCH Beneficiary Part B Deductible Amount	NUM	12
		STRING nch_bene_ptb_ddctbl_amt;
		//189	ptb_coin	nch_bene_ptb_coinsrnc_amt	NCH Beneficiary Part B Coinsurance Amount	NUM	12
		STRING nch_bene_ptb_coinsrnc_amt;
		//190	prvdrpmt	clm_op_prvdr_pmt_amt	Claim Outpatient Provider Payment Amount	NUM	12
		STRING clm_op_prvdr_pmt_amt;
		//191	benepmt	clm_op_bene_pmt_amt	Claim Outpatient Beneficiary Payment Amount	NUM	12
		STRING clm_op_bene_pmt_amt;
		//192	dob_dt	dob_dt	LDS Age Category	NUM	1
		STRING dob_dt;
		//193	gndr_cd	gndr_cd	Gender Code from Claim	CHAR	1
		STRING gndr_cd;
		//194	race_cd	bene_race_cd	Race Code from Claim	CHAR	1
		STRING bene_race_cd;
		//195	cnty_cd	bene_cnty_cd	County Code from Claim (SSA)	CHAR	3
		STRING bene_cnty_cd;
		//196	state_cd	bene_state_cd	State Code from Claim (SSA)	CHAR	2
		STRING bene_state_cd;
		//197	cwf_bene_mdcr_stus_cd	cwf_bene_mdcr_stus_cd	CWF Beneficiary Medicare Status Code	CHAR	2
		STRING cwf_bene_mdcr_stus_cd;
		//198	actioncd	fi_clm_actn_cd	FI Claim Action Code	CHAR	1
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
		//8	apchipps	rev_cntr_apc_hipps_cd	Revenue Center APC/HIPPS	CHAR	5
		STRING rev_cntr_apc_hipps_cd;
		//9	hcpcs_cd	hcpcs_cd	Revenue Center HCFA Common Procedure Coding System	CHAR	5
		STRING hcpcs_cd;
		//10	mdfr_cd1	hcpcs_1st_mdfr_cd	Revenue Center HCPCS Initial Modifier Code	CHAR	5
		STRING hcpcs_1st_mdfr_cd;
		//11	mdfr_cd2	hcpcs_2nd_mdfr_cd	Revenue Center HCPCS Second Modifier Code	CHAR	5
		STRING hcpcs_2nd_mdfr_cd;
		//12	pmtmthd	rev_cntr_pmt_mthd_ind_cd	Revenue Center Payment Method Indicator Code	CHAR	2
		STRING rev_cntr_pmt_mthd_ind_cd;
		//13	dscntind	rev_cntr_dscnt_ind_cd	Revenue Center Discount Indicator Code	CHAR	1
		STRING rev_cntr_dscnt_ind_cd;
		//14	packgind	rev_cntr_packg_ind_cd	Revenue Center Packaging Indicator Code	CHAR	1
		STRING rev_cntr_packg_ind_cd;
		//15	otaf_1	rev_cntr_otaf_pmt_cd	Revenue Center Obligation to Accept As Full (OTAF) Payment Code	CHAR	1
		STRING rev_cntr_otaf_pmt_cd;
		//16	idendc	rev_cntr_ide_ndc_upc_num	Revenue Center IDE NDC UPC Number	CHAR	24
		STRING rev_cntr_ide_ndc_upc_num;
		//17	rev_unit	rev_cntr_unit_cnt	Revenue Center Unit Count	NUM	8
		STRING rev_cntr_unit_cnt;
		//18	rev_rate	rev_cntr_rate_amt	Revenue Center Rate Amount	NUM	12
		STRING rev_cntr_rate_amt;
		//19	revblood	rev_cntr_blood_ddctbl_amt	Revenue Center Blood Deductible Amount	NUM	12
		STRING rev_cntr_blood_ddctbl_amt;
		//20	revdctbl	rev_cntr_cash_ddctbl_amt	Revenue Center Cash Deductible Amount	NUM	12
		STRING rev_cntr_cash_ddctbl_amt;
		//21	w ageadj	rev_cntr_coinsrnc_wge_adjstd_c	Revenue Center Coinsurance/Wage Adjusted Coinsurance Amount	NUM	12
		STRING rev_cntr_coinsrnc_wge_adjstd_c;
		//22	rdcdcoin	rev_cntr_rdcd_coinsrnc_amt	Revenue Center Reduced Coinsurance Amount	NUM	12
		STRING rev_cntr_rdcd_coinsrnc_amt;
		//23	rev_msp1	rev_cntr_1st_msp_pd_amt	Revenue Center 1st Medicare Secondary Payer Paid Amount	NUM	12
		STRING rev_cntr_1st_msp_pd_amt;
		//24	rev_msp2	rev_cntr_2nd_msp_pd_amt	Revenue Center 2nd Medicare Secondary Payer Paid Amount	NUM	12
		STRING rev_cntr_2nd_msp_pd_amt;
		//25	rprvdpmt	rev_cntr_prvdr_pmt_amt	Revenue Center Provider Payment Amount	NUM	12
		STRING rev_cntr_prvdr_pmt_amt;
		//26	rbenepmt	rev_cntr_bene_pmt_amt	Revenue Center Beneficiary Payment Amount	NUM	12
		STRING rev_cntr_bene_pmt_amt;
		//27	ptntresp	rev_cntr_ptnt_rspnsblty_pmt	Revenue Center Patient Responsibility Payment	NUM	12
		STRING rev_cntr_ptnt_rspnsblty_pmt;
		//28	revpmt	rev_cntr_pmt_amt_amt	Revenue Center Payment Amount Amount	NUM	12
		STRING rev_cntr_pmt_amt_amt;
		//29	rev_chrg	rev_cntr_tot_chrg_amt	Revenue Center Total Charge Amount	NUM	12
		STRING rev_cntr_tot_chrg_amt;
		//30	rev_ncvr	rev_cntr_ncvrd_chrg_amt	Revenue Center Non-Covered Charge Amount	NUM	12
		STRING rev_cntr_ncvrd_chrg_amt;
		//31	revstind	rev_cntr_stus_ind_cd	Revenue Center Status Indicator Code	CHAR	2
		STRING rev_cntr_stus_ind_cd;
		//32	rev_cntr_pricng_ind_cd	rev_cntr_pricng_ind_cd	Revenue Center Pricing Indicator Code	CHAR	5
		STRING rev_cntr_pricng_ind_cd;
	END;
	
END;