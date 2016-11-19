EXPORT InpatientLayouts := INTERFACE

	// Source: https://www.cms.gov/Research-Statistics-Data-and-Systems/Files-for-Order/LimitedDataSets/StandardAnalyticalFiles.html
	// 1. Simply copy tables from PDF into Google Sheet
	// 2. Lower case column B and C
	// 3. Copy table into Notepad+-like editor and use following Replace... parameters:
	// 		Regex: ^([^\t]+)\t([^\t]+)\t([^\t]+)\t(.*)
	// 		Replace: \t//$1\t$2\t$3\t$4\n\tSTRING $3;
	// 4. Paste result here
	// 5. Repeat for every layout
	
	EXPORT base_icd_diag_proc_layout := RECORD
		//63	icd dgns cd1	icd_dgns_cd1	Claim Diagnosis Code I	CHAR	7
		STRING icd_dgns_cd1;
		//64	icd dgns vrsn cd1	icd_dgns_vrsn_cd1	Claim Diagnosis Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd1;
		//65	clm poa ind sw1	clm_poa_ind_sw1	Claim Diagnosis Code I Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw1;
		//66	icd dgns cd2	icd_dgns_cd2	Claim Diagnosis Code II	CHAR	7
		STRING icd_dgns_cd2;
		//67	icd dgns vrsn cd2	icd_dgns_vrsn_cd2	Claim Diagnosis Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd2;
		//68	clm poa ind sw2	clm_poa_ind_sw2	Claim Diagnosis Code II Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw2;
		//69	icd dgns cd3	icd_dgns_cd3	Claim Diagnosis Code III	CHAR	7
		STRING icd_dgns_cd3;
		//70	icd dgns vrsn cd3	icd_dgns_vrsn_cd3	Claim Diagnosis Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd3;
		//71	clm poa ind sw3	clm_poa_ind_sw3	Claim Diagnosis Code III Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw3;
		//72	icd dgns cd4	icd_dgns_cd4	Claim Diagnosis Code IV	CHAR	7
		STRING icd_dgns_cd4;
		//73	icd dgns vrsn cd4	icd_dgns_vrsn_cd4	Claim Diagnosis Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd4;
		//74	clm poa ind sw4	clm_poa_ind_sw4	Claim Diagnosis Code IV Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw4;
		//75	icd dgns cd5	icd_dgns_cd5	Claim Diagnosis Code V	CHAR	7
		STRING icd_dgns_cd5;
		//76	icd dgns vrsn cd5	icd_dgns_vrsn_cd5	Claim Diagnosis Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd5;
		//77	clm poa ind sw5	clm_poa_ind_sw5	Claim Diagnosis Code V Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw5;
		//78	icd dgns cd6	icd_dgns_cd6	Claim Diagnosis Code VI	CHAR	7
		STRING icd_dgns_cd6;
		//79	icd dgns vrsn cd6	icd_dgns_vrsn_cd6	Claim Diagnosis Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd6;
		//80	clm poa ind sw6	clm_poa_ind_sw6	Claim Diagnosis Code VI Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw6;
		//81	icd dgns cd7	icd_dgns_cd7	Claim Diagnosis Code VII	CHAR	7
		STRING icd_dgns_cd7;
		//82	icd dgns vrsn cd7	icd_dgns_vrsn_cd7	Claim Diagnosis Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd7;
		//83	clm poa ind sw7	clm_poa_ind_sw7	Claim Diagnosis Code VII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw7;
		//84	icd dgns cd8	icd_dgns_cd8	Claim Diagnosis Code VIII	CHAR	7
		STRING icd_dgns_cd8;
		//85	icd dgns vrsn cd8	icd_dgns_vrsn_cd8	Claim Diagnosis Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd8;
		//86	clm poa ind sw8	clm_poa_ind_sw8	Claim Diagnosis Code VIII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw8;
		//87	icd dgns cd9	icd_dgns_cd9	Claim Diagnosis Code IX	CHAR	7
		STRING icd_dgns_cd9;
		//88	icd dgns vrsn cd9	icd_dgns_vrsn_cd9	Claim Diagnosis Code IX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd9;
		//89	clm poa ind sw9	clm_poa_ind_sw9	Claim Diagnosis Code IX Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw9;
		//90	icd dgns cd10	icd_dgns_cd10	Claim Diagnosis Code X	CHAR	7
		STRING icd_dgns_cd10;
		//91	icd dgns vrsn cd10	icd_dgns_vrsn_cd10	Claim Diagnosis Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd10;
		//92	clm poa ind sw10	clm_poa_ind_sw10	Claim Diagnosis Code X Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw10;
		//93	icd dgns cd11	icd_dgns_cd11	Claim Diagnosis Code XI	CHAR	7
		STRING icd_dgns_cd11;
		//94	icd dgns vrsn cd11	icd_dgns_vrsn_cd11	Claim Diagnosis Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd11;
		//95	clm poa ind sw11	clm_poa_ind_sw11	Claim Diagnosis Code XI Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw11;
		//96	icd dgns cd12	icd_dgns_cd12	Claim Diagnosis Code XII	CHAR	7
		STRING icd_dgns_cd12;
		//97	icd dgns vrsn cd12	icd_dgns_vrsn_cd12	Claim Diagnosis Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd12;
		//98	clm poa ind sw12	clm_poa_ind_sw12	Claim Diagnosis Code XII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw12;
		//99	icd dgns cd13	icd_dgns_cd13	Claim Diagnosis Code XIII	CHAR	7
		STRING icd_dgns_cd13;
		//100	icd dgns vrsn cd13	icd_dgns_vrsn_cd13	Claim Diagnosis Code XIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd13;
		//101	clm poa ind sw13	clm_poa_ind_sw13	Claim Diagnosis Code XIII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw13;
		//102	icd dgns cd14	icd_dgns_cd14	Claim Diagnosis Code XIV	CHAR	7
		STRING icd_dgns_cd14;
		//103	icd dgns vrsn cd14	icd_dgns_vrsn_cd14	Claim Diagnosis Code XIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd14;
		//104	clm poa ind sw14	clm_poa_ind_sw14	Claim Diagnosis Code XIV Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw14;
		//105	icd dgns cd15	icd_dgns_cd15	Claim Diagnosis Code XV	CHAR	7
		STRING icd_dgns_cd15;
		//106	icd dgns vrsn cd15	icd_dgns_vrsn_cd15	Claim Diagnosis Code XV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd15;
		//107	clm poa ind sw15	clm_poa_ind_sw15	Claim Diagnosis Code XV Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw15;
		//108	icd dgns cd16	icd_dgns_cd16	Claim Diagnosis Code XVI	CHAR	7
		STRING icd_dgns_cd16;
		//109	icd dgns vrsn cd16	icd_dgns_vrsn_cd16	Claim Diagnosis Code XVI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd16;
		//110	clm poa ind sw16	clm_poa_ind_sw16	Claim Diagnosis Code XVI Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw16;
		//111	icd dgns cd17	icd_dgns_cd17	Claim Diagnosis Code XVII	CHAR	7
		STRING icd_dgns_cd17;
		//112	icd dgns vrsn cd17	icd_dgns_vrsn_cd17	Claim Diagnosis Code XVII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd17;
		//113	clm poa ind sw17	clm_poa_ind_sw17	Claim Diagnosis Code XVII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw17;
		//114	icd dgns cd18	icd_dgns_cd18	Claim Diagnosis Code XVIII	CHAR	7
		STRING icd_dgns_cd18;
		//115	icd dgns vrsn cd18	icd_dgns_vrsn_cd18	Claim Diagnosis Code XVIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd18;
		//116	clm poa ind sw18	clm_poa_ind_sw18	Claim Diagnosis Code XVIII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw18;
		//117	icd dgns cd19	icd_dgns_cd19	Claim Diagnosis Code XIV	CHAR	7
		STRING icd_dgns_cd19;
		//118	icd dgns vrsn cd19	icd_dgns_vrsn_cd19	Claim Diagnosis Code XIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd19;
		//119	clm poa ind sw19	clm_poa_ind_sw19	Claim Diagnosis Code XIV Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw19;
		//120	icd dgns cd20	icd_dgns_cd20	Claim Diagnosis Code XX	CHAR	7
		STRING icd_dgns_cd20;
		//121	icd dgns vrsn cd20	icd_dgns_vrsn_cd20	Claim Diagnosis Code XX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd20;
		//122	clm poa ind sw20	clm_poa_ind_sw20	Claim Diagnosis Code XX Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw20;
		//123	icd dgns cd21	icd_dgns_cd21	Claim Diagnosis Code XXI	CHAR	7
		STRING icd_dgns_cd21;
		//124	icd dgns vrsn cd21	icd_dgns_vrsn_cd21	Claim Diagnosis Code XXI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd21;
		//125	clm poa ind sw21	clm_poa_ind_sw21	Claim Diagnosis Code XXI Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw21;
		//126	icd dgns cd22	icd_dgns_cd22	Claim Diagnosis Code XXII	CHAR	7
		STRING icd_dgns_cd22;
		//127	icd dgns vrsn cd22	icd_dgns_vrsn_cd22	Claim Diagnosis Code XXII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd22;
		//128	clm poa ind sw22	clm_poa_ind_sw22	Claim Diagnosis Code XXII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw22;
		//129	icd dgns cd23	icd_dgns_cd23	Claim Diagnosis Code XXIII	CHAR	7
		STRING icd_dgns_cd23;
		//130	icd dgns vrsn cd23	icd_dgns_vrsn_cd23	Claim Diagnosis Code XXIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd23;
		//131	clm poa ind sw23	clm_poa_ind_sw23	Claim Diagnosis Code XXIII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw23;
		//132	icd dgns cd24	icd_dgns_cd24	Claim Diagnosis Code XXIV	CHAR	7
		STRING icd_dgns_cd24;
		//133	icd dgns vrsn cd24	icd_dgns_vrsn_cd24	Claim Diagnosis Code XXIV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd24;
		//134	clm poa ind sw24	clm_poa_ind_sw24	Claim Diagnosis Code XXIV Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw24;
		//135	icd dgns cd25	icd_dgns_cd25	Claim Diagnosis Code XXV	CHAR	7
		STRING icd_dgns_cd25;
		//136	icd dgns vrsn cd25	icd_dgns_vrsn_cd25	Claim Diagnosis Code XXV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_vrsn_cd25;
		//137	clm poa ind sw25	clm_poa_ind_sw25	Claim Diagnosis Code XXV Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_poa_ind_sw25;
		//138	fst_dgns_e_cd	fst_dgns_e_cd	First Claim Diagnosis E Code	CHAR	7
		STRING fst_dgns_e_cd;
		//139	fst_dgns_e_vrsn_cd	fst_dgns_e_vrsn_cd	First Claim Diagnosis E Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING fst_dgns_e_vrsn_cd;
		//140	icd dgns e cd1	icd_dgns_e_cd1	Claim Diagnosis E Code I	CHAR	7
		STRING icd_dgns_e_cd1;
		//141	icd dgns e vrsn cd1	icd_dgns_e_vrsn_cd1	Claim Diagnosis E Code I Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd1;
		//142	clm e poa ind sw1	clm_e_poa_ind_sw1	Claim Diagnosis E Code I Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw1;
		//143	icd dgns e cd2	icd_dgns_e_cd2	Claim Diagnosis E Code II	CHAR	7
		STRING icd_dgns_e_cd2;
		//144	icd dgns e vrsn cd2	icd_dgns_e_vrsn_cd2	Claim Diagnosis E Code II Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd2;
		//145	clm e poa ind sw2	clm_e_poa_ind_sw2	Claim Diagnosis E Code II Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw2;
		//146	icd dgns e cd3	icd_dgns_e_cd3	Claim Diagnosis E Code III	CHAR	7
		STRING icd_dgns_e_cd3;
		//147	icd dgns e vrsn cd3	icd_dgns_e_vrsn_cd3	Claim Diagnosis E Code III Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd3;
		//148	clm e poa ind sw3	clm_e_poa_ind_sw3	Claim Diagnosis E Code III Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw3;
		//149	icd dgns e cd4	icd_dgns_e_cd4	Claim Diagnosis E Code IV	CHAR	7
		STRING icd_dgns_e_cd4;
		//150	icd dgns e vrsn cd4	icd_dgns_e_vrsn_cd4	Claim Diagnosis E Code IV Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd4;
		//151	clm_e_poa_ind_sw4	clm_e_poa_ind_sw4	Claim Diagnosis E Code IV Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw4;
		//152	icd dgns e cd5	icd_dgns_e_cd5	Claim Diagnosis E Code V	CHAR	7
		STRING icd_dgns_e_cd5;
		//153	icd dgns e vrsn cd5	icd_dgns_e_vrsn_cd5	Claim Diagnosis E Code V Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd5;
		//154	clm_e_poa_ind_sw5	clm_e_poa_ind_sw5	Claim Diagnosis E Code V Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw5;
		//155	icd dgns e cd6	icd_dgns_e_cd6	Claim Diagnosis E Code VI	CHAR	7
		STRING icd_dgns_e_cd6;
		//156	icd dgns e vrsn cd6	icd_dgns_e_vrsn_cd6	Claim Diagnosis E Code VI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd6;
		//157	clm_e_poa_ind_sw6	clm_e_poa_ind_sw6	Claim Diagnosis E Code VI Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw6;
		//158	icd dgns e cd7	icd_dgns_e_cd7	Claim Diagnosis E Code VII	CHAR	7
		STRING icd_dgns_e_cd7;
		//159	icd dgns e vrsn cd7	icd_dgns_e_vrsn_cd7	Claim Diagnosis E Code VII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd7;
		//160	clm_e_poa_ind_sw7	clm_e_poa_ind_sw7	Claim Diagnosis E Code VII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw7;
		//161	icd dgns e cd8	icd_dgns_e_cd8	Claim Diagnosis E Code VIII	CHAR	7
		STRING icd_dgns_e_cd8;
		//162	icd dgns e vrsn cd8	icd_dgns_e_vrsn_cd8	Claim Diagnosis E Code VIII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd8;
		//163	clm_e_poa_ind_sw8	clm_e_poa_ind_sw8	Claim Diagnosis E Code VIII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw8;
		//164	icd dgns e cd9	icd_dgns_e_cd9	Claim Diagnosis E Code VIX	CHAR	7
		STRING icd_dgns_e_cd9;
		//165	icd dgns e vrsn cd9	icd_dgns_e_vrsn_cd9	Claim Diagnosis E Code VIX Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd9;
		//166	clm_e_poa_ind_sw9	clm_e_poa_ind_sw9	Claim Diagnosis E Code VIX Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw9;
		//167	icd dgns e cd10	icd_dgns_e_cd10	Claim Diagnosis E Code X	CHAR	7
		STRING icd_dgns_e_cd10;
		//168	icd dgns e vrsn cd10	icd_dgns_e_vrsn_cd10	Claim Diagnosis E Code X Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd10;
		//169	clm_e_poa_ind_sw10	clm_e_poa_ind_sw10	Claim Diagnosis E Code X Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw10;
		//170	icd dgns e cd11	icd_dgns_e_cd11	Claim Diagnosis E Code XI	CHAR	7
		STRING icd_dgns_e_cd11;
		//171	icd dgns e vrsn cd11	icd_dgns_e_vrsn_cd11	Claim Diagnosis E Code XI Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd11;
		//172	clm_e_poa_ind_sw11	clm_e_poa_ind_sw11	Claim Diagnosis E Code XI Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw11;
		//173	icd dgns e cd12	icd_dgns_e_cd12	Claim Diagnosis E Code XII	CHAR	7
		STRING icd_dgns_e_cd12;
		//174	icd dgns e vrsn cd12	icd_dgns_e_vrsn_cd12	Claim Diagnosis E Code XII Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_dgns_e_vrsn_cd12;
		//175	clm_e_poa_ind_sw12	clm_e_poa_ind_sw12	Claim Diagnosis E Code XII Diagnosis Present on Admission Indicator Code	CHAR	1
		STRING clm_e_poa_ind_sw12;
		//176	icd_prcdr_cd1	icd_prcdr_cd1	Claim Procedure Code I	CHAR	7
		STRING icd_prcdr_cd1;
		//177	icd_prcdr_vrsn_cd1	icd_prcdr_vrsn_cd1	Claim Procedure Code I Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd1;
		//178	prcdr_dt1	prcdr_dt1	Claim Procedure Code I Date	DATE	8
		STRING prcdr_dt1;
		//179	icd_prcdr_cd2	icd_prcdr_cd2	Claim Procedure Code II	CHAR	7
		STRING icd_prcdr_cd2;
		//180	icd_prcdr_vrsn_cd2	icd_prcdr_vrsn_cd2	Claim Procedure Code II Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd2;
		//181	prcdr_dt2	prcdr_dt2	Claim Procedure Code II Date	DATE	8
		STRING prcdr_dt2;
		//182	icd_prcdr_cd3	icd_prcdr_cd3	Claim Procedure Code III	CHAR	7
		STRING icd_prcdr_cd3;
		//183	icd_prcdr_vrsn_cd3	icd_prcdr_vrsn_cd3	Claim Procedure Code III Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd3;
		//184	prcdr_dt3	prcdr_dt3	Claim Procedure Code III Date	DATE	8
		STRING prcdr_dt3;
		//185	icd_prcdr_cd4	icd_prcdr_cd4	Claim Procedure Code IV	CHAR	7
		STRING icd_prcdr_cd4;
		//186	icd_prcdr_vrsn_cd4	icd_prcdr_vrsn_cd4	Claim Procedure Code IV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd4;
		//187	prcdr_dt4	prcdr_dt4	Claim Procedure Code IV Date	DATE	8
		STRING prcdr_dt4;
		//188	icd_prcdr_cd5	icd_prcdr_cd5	Claim Procedure Code V	CHAR	7
		STRING icd_prcdr_cd5;
		//189	icd_prcdr_vrsn_cd5	icd_prcdr_vrsn_cd5	Claim Procedure Code V Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd5;
		//190	prcdr_dt5	prcdr_dt5	Claim Procedure Code V Date	DATE	8
		STRING prcdr_dt5;
		//191	icd_prcdr_cd6	icd_prcdr_cd6	Claim Procedure Code VI	CHAR	7
		STRING icd_prcdr_cd6;
		//192	icd_prcdr_vrsn_cd6	icd_prcdr_vrsn_cd6	Claim Procedure Code VI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd6;
		//193	prcdr_dt6	prcdr_dt6	Claim Procedure Code VI Date	DATE	8
		STRING prcdr_dt6;
		//194	icd_prcdr_cd7	icd_prcdr_cd7	Claim Procedure Code VII	CHAR	7
		STRING icd_prcdr_cd7;
		//195	icd_prcdr_vrsn_cd7	icd_prcdr_vrsn_cd7	Claim Procedure Code VII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd7;
		//196	prcdr_dt7	prcdr_dt7	Claim Procedure CodeVII Date	DATE	8
		STRING prcdr_dt7;
		//197	icd_prcdr_cd8	icd_prcdr_cd8	Claim Procedure Code VIII	CHAR	7
		STRING icd_prcdr_cd8;
		//198	icd_prcdr_vrsn_cd8	icd_prcdr_vrsn_cd8	Claim Procedure Code VIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd8;
		//199	prcdr_dt8	prcdr_dt8	Claim Procedure Code VIII Date	DATE	8
		STRING prcdr_dt8;
		//200	icd_prcdr_cd9	icd_prcdr_cd9	Claim Procedure Code IX	CHAR	7
		STRING icd_prcdr_cd9;
		//201	icd_prcdr_vrsn_cd9	icd_prcdr_vrsn_cd9	Claim Procedure Code IX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd9;
		//202	prcdr_dt9	prcdr_dt9	Claim Procedure Code IX Date	DATE	8
		STRING prcdr_dt9;
		//203	icd_prcdr_cd10	icd_prcdr_cd10	Claim Procedure Code X	CHAR	7
		STRING icd_prcdr_cd10;
		//204	icd_prcdr_vrsn_cd10	icd_prcdr_vrsn_cd10	Claim Procedure Code X Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd10;
		//205	prcdr_dt10	prcdr_dt10	Claim Procedure Code X Date	DATE	8
		STRING prcdr_dt10;
		//206	icd_prcdr_cd11	icd_prcdr_cd11	Claim Procedure Code XI	CHAR	7
		STRING icd_prcdr_cd11;
		//207	icd_prcdr_vrsn_cd11	icd_prcdr_vrsn_cd11	Claim Procedure Code XI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd11;
		//208	prcdr_dt11	prcdr_dt11	Claim Procedure Code XI Date	DATE	8
		STRING prcdr_dt11;
		//209	icd_prcdr_cd12	icd_prcdr_cd12	Claim Procedure Code XII	CHAR	7
		STRING icd_prcdr_cd12;
		//210	icd_prcdr_vrsn_cd12	icd_prcdr_vrsn_cd12	Claim Procedure Code XII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd12;
		//211	prcdr_dt12	prcdr_dt12	Claim Procedure Code XII Date	DATE	8
		STRING prcdr_dt12;
		//212	icd_prcdr_cd13	icd_prcdr_cd13	Claim Procedure Code XIII	CHAR	7
		STRING icd_prcdr_cd13;
		//213	icd_prcdr_vrsn_cd13	icd_prcdr_vrsn_cd13	Claim Procedure Code XIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd13;
		//214	prcdr_dt13	prcdr_dt13	Claim Procedure Code XIII Date	DATE	8
		STRING prcdr_dt13;
		//215	icd_prcdr_cd14	icd_prcdr_cd14	Claim Procedure Code XIV	CHAR	7
		STRING icd_prcdr_cd14;
		//216	icd_prcdr_vrsn_cd14	icd_prcdr_vrsn_cd14	Claim Procedure Code XIV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd14;
		//217	prcdr_dt14	prcdr_dt14	Claim Procedure Code XIV Date	DATE	8
		STRING prcdr_dt14;
		//218	icd_prcdr_cd15	icd_prcdr_cd15	Claim Procedure Code XV	CHAR	7
		STRING icd_prcdr_cd15;
		//219	icd_prcdr_vrsn_cd15	icd_prcdr_vrsn_cd15	Claim Procedure Code XV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd15;
		//220	prcdr_dt15	prcdr_dt15	Claim Procedure Code XV Date	DATE	8
		STRING prcdr_dt15;
		//221	icd_prcdr_cd16	icd_prcdr_cd16	Claim Procedure Code XVI	CHAR	7
		STRING icd_prcdr_cd16;
		//222	icd_prcdr_vrsn_cd16	icd_prcdr_vrsn_cd16	Claim Procedure Code XVI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd16;
		//223	prcdr_dt16	prcdr_dt16	Claim Procedure Code XVI Date	DATE	8
		STRING prcdr_dt16;
		//224	icd_prcdr_cd17	icd_prcdr_cd17	Claim Procedure Code XVII	CHAR	7
		STRING icd_prcdr_cd17;
		//225	icd_prcdr_vrsn_cd17	icd_prcdr_vrsn_cd17	Claim Procedure Code XVII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd17;
		//226	prcdr_dt17	prcdr_dt17	Claim Procedure Code XVII Date	DATE	8
		STRING prcdr_dt17;
		//227	icd_prcdr_cd18	icd_prcdr_cd18	Claim Procedure Code XVIII	CHAR	7
		STRING icd_prcdr_cd18;
		//228	icd_prcdr_vrsn_cd18	icd_prcdr_vrsn_cd18	Claim Procedure Code XVIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd18;
		//229	prcdr_dt18	prcdr_dt18	Claim Procedure Code XVIII Date	DATE	8
		STRING prcdr_dt18;
		//230	icd_prcdr_cd19	icd_prcdr_cd19	Claim Procedure Code XIX	CHAR	7
		STRING icd_prcdr_cd19;
		//231	icd_prcdr_vrsn_cd19	icd_prcdr_vrsn_cd19	Claim Procedure Code XIX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd19;
		//232	prcdr_dt19	prcdr_dt19	Claim Procedure Code XIX Date	DATE	8
		STRING prcdr_dt19;
		//233	icd_prcdr_cd20	icd_prcdr_cd20	Claim Procedure Code XX	CHAR	7
		STRING icd_prcdr_cd20;
		//234	icd_prcdr_vrsn_cd20	icd_prcdr_vrsn_cd20	Claim Procedure Code XX Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd20;
		//235	prcdr_dt20	prcdr_dt20	Claim Procedure Code XX Date	DATE	8
		STRING prcdr_dt20;
		//236	icd_prcdr_cd21	icd_prcdr_cd21	Claim Procedure Code XXI	CHAR	7
		STRING icd_prcdr_cd21;
		//237	icd_prcdr_vrsn_cd21	icd_prcdr_vrsn_cd21	Claim Procedure Code XXI Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd21;
		//238	prcdr_dt21	prcdr_dt21	Claim Procedure Code XXI Date	DATE	8
		STRING prcdr_dt21;
		//239	icd_prcdr_cd22	icd_prcdr_cd22	Claim Procedure Code XXII	CHAR	7
		STRING icd_prcdr_cd22;
		//240	icd_prcdr_vrsn_cd22	icd_prcdr_vrsn_cd22	Claim Procedure Code XXII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd22;
		//241	prcdr_dt22	prcdr_dt22	Claim Procedure Code XXII Date	DATE	8
		STRING prcdr_dt22;
		//242	icd_prcdr_cd23	icd_prcdr_cd23	Claim Procedure Code XXIII	CHAR	7
		STRING icd_prcdr_cd23;
		//243	icd_prcdr_vrsn_cd23	icd_prcdr_vrsn_cd23	Claim Procedure Code XXIII Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd23;
		//244	prcdr_dt23	prcdr_dt23	Claim Procedure Code XXIII Date	DATE	8
		STRING prcdr_dt23;
		//245	icd_prcdr_cd24	icd_prcdr_cd24	Claim Procedure Code XXIV	CHAR	7
		STRING icd_prcdr_cd24;
		//246	icd_prcdr_vrsn_cd24	icd_prcdr_vrsn_cd24	Claim Procedure Code XXIV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd24;
		//247	prcdr_dt24	prcdr_dt24	Claim Procedure Code XXIV Date	DATE	8
		STRING prcdr_dt24;
		//248	icd_prcdr_cd25	icd_prcdr_cd25	Claim Procedure Code XXV	CHAR	7
		STRING icd_prcdr_cd25;
		//249	icd_prcdr_vrsn_cd25	icd_prcdr_vrsn_cd25	Claim Procedure Code XXV Claim Procedure Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING icd_prcdr_vrsn_cd25;
		//250	prcdr_dt25	prcdr_dt25	Claim Procedure Code XXV Date	DATE	8
		STRING prcdr_dt25;
	END;
	
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
		//33	per_diem	clm_pass_thru_per_diem_amt	Claim Pass Thru Per Diem Amount	NUM	12
		STRING clm_pass_thru_per_diem_amt;
		//34	ded_amt	nch_bene_ip_ddctbl_amt	NCH Beneficiary Inpatient Deductible Amount	NUM	12
		STRING nch_bene_ip_ddctbl_amt;
		//35	coin_amt	nch_bene_pta_coinsrnc_lblty_am	NCH Beneficiary Part A Coinsurance Liability Amount	NUM	12
		STRING nch_bene_pta_coinsrnc_lblty_am;
		//36	blddedam	nch_bene_blood_ddctbl_lblty_am	NCH Beneficiary Blood Deductible Liability Amount	NUM	12
		STRING nch_bene_blood_ddctbl_lblty_am;
		//37	pcchgamt	nch_profnl_cmpnt_chrg_amt	NCH Professional Component Charge Amount	NUM	12
		STRING nch_profnl_cmpnt_chrg_amt;
		//38	ncchgamt	nch_ip_ncvrd_chrg_amt	NCH Inpatient Noncovered Charge Amount	NUM	12
		STRING nch_ip_ncvrd_chrg_amt;
		//39	pps_cptl	clm_tot_pps_cptl_amt	Claim Total PPS Capital Amount	NUM	12
		STRING clm_tot_pps_cptl_amt;
		//40	cptl_fsp	clm_pps_cptl_fsp_amt	Claim PPS Capital FSP Amount	NUM	12
		STRING clm_pps_cptl_fsp_amt;
		//41	cptloutl	clm_pps_cptl_outlier_amt	Claim PPS Capital Outlier Amount	NUM	12
		STRING clm_pps_cptl_outlier_amt;
		//42	disp_shr	clm_pps_cptl_dsprprtnt_shr_amt	Claim PPS Capital Disproportionate Share Amount	NUM	12
		STRING clm_pps_cptl_dsprprtnt_shr_amt;
		//43	ime_amt	clm_pps_cptl_ime_amt	Claim PPS Capital IME Amount	NUM	12
		STRING clm_pps_cptl_ime_amt;
		//44	cptl_exp	clm_pps_cptl_excptn_amt	Claim PPS Capital Exception Amount	NUM	12
		STRING clm_pps_cptl_excptn_amt;
		//45	hldhrmls	clm_pps_old_cptl_hld_hrmls_amt	Claim PPS Old Capital Hold Harmless Amount	NUM	12
		STRING clm_pps_old_cptl_hld_hrmls_amt;
		//46	drgwtamt	clm_pps_cptl_drg_wt_num	Claim PPS Capital DRG Weight Number	NUM	8
		STRING clm_pps_cptl_drg_wt_num;
		//47	util_day	clm_utlztn_day_cnt	Claim Utilization Day Count	NUM	3
		STRING clm_utlztn_day_cnt;
		//48	coin_day	bene_tot_coinsrnc_days_cnt	Beneficiary Total Coinsurance Days Count	NUM	3
		STRING bene_tot_coinsrnc_days_cnt;
		//49	lrd_use	bene_lrd_used_cnt	Beneficiary LRD Used Count	NUM	3
		STRING bene_lrd_used_cnt;
		//50	nutilday	clm_non_utlztn_days_cnt	Claim Non Utilization Days Count	NUM	5
		STRING clm_non_utlztn_days_cnt;
		//51	bldfrnsh	nch_blood_pnts_frnshd_qty	NCH Blood Pints Furnished Quantity	NUM	3
		STRING nch_blood_pnts_frnshd_qty;
		//52	ncovfrom	nch_vrfd_ncvrd_stay_from_dt	NCH Verified Noncovered Stay From Date	DATE	8
		STRING nch_vrfd_ncvrd_stay_from_dt;
		//53	ncovthru	nch_vrfd_ncvrd_stay_thru_dt	NCH Verified Noncovered Stay Through Date	DATE	8
		STRING nch_vrfd_ncvrd_stay_thru_dt;
		//54	exhst_dt	nch_bene_mdcr_bnfts_exhtd_dt_i	NCH Beneficiary Medicare Benefits Exhausted Date	DATE	8
		STRING nch_bene_mdcr_bnfts_exhtd_dt_i;
		//55	dschrgdt	nch_bene_dschrg_dt	NCH Beneficiary Discharge Date	DATE	8
		STRING nch_bene_dschrg_dt;
		//56	drg_cd	clm_drg_cd	Claim Diagnosis Related Group Code	CHAR	3
		STRING clm_drg_cd;
		//57	outlr_cd	clm_drg_outlier_stay_cd	Claim Diagnosis Related Group Outlier Stay Code	CHAR	1
		STRING clm_drg_outlier_stay_cd;
		//58	outlrpmt	nch_drg_outlier_aprvd_pmt_amt	NCH DRG Outlier Approved Payment Amount	NUM	12
		STRING nch_drg_outlier_aprvd_pmt_amt;
		//59	admtg_dgns_cd	admtg_dgns_cd	Claim Admitting Diagnosis Code	CHAR	7
		STRING admtg_dgns_cd;
		//60	admtg_dgns_vrsn_cd	admtg_dgns_vrsn_cd	Claim Admitting Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING admtg_dgns_vrsn_cd;
		//61	prncpal_dgns_cd	prncpal_dgns_cd	Primary Claim Diagnosis Code	CHAR	7
		STRING prncpal_dgns_cd;
		//62	prncpal_dgns_vrsn_cd	prncpal_dgns_vrsn_cd	Primary Claim Diagnosis Code Diagnosis Version Code (ICD-9 or ICD-10)	CHAR	1
		STRING prncpal_dgns_vrsn_cd;
		
		base_icd_diag_proc_layout;
		
		//251	dob_dt	dob_dt	LDS Age Category	NUM	1
		STRING dob_dt;
		//252	gndr_cd	gndr_cd	Gender Code from Claim	CHAR	1
		STRING gndr_cd;
		//253	race_cd	bene_race_cd	Race Code from Claim	CHAR	1
		STRING bene_race_cd;
		//254	cnty_cd	bene_cnty_cd	County Code from Claim (SSA)	CHAR	3
		STRING bene_cnty_cd;
		//255	state_cd	bene_state_cd	State Code from Claim (SSA)	CHAR	2
		STRING bene_state_cd;
		//256	cwf_bene_mdcr_stus_cd	cwf_bene_mdcr_stus_cd	CWF Beneficiary Medicare Status Code	CHAR	2
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
		//13	apchipps	rev_cntr_apc_hipps_cd	Revenue Center APC/HIPPS	CHAR	5
		STRING rev_cntr_apc_hipps_cd;
	
	END;

END;