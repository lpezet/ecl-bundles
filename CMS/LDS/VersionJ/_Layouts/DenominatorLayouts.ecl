EXPORT DenominatorLayouts := INTERFACE

	EXPORT summary_layout := RECORD
		//1	dsysrtky	dsysrtky	DESY SORT KEY
		STRING dsysrtky;
		//2	state_cd	state_cd	STATE CODE
		STRING state_cd;
		//3	cnty_cd	cnty_cd	COUNTY CODE
		STRING cnty_cd;
		//4	sex	sex	SEX
		STRING sex;
		//5	race	race	BENEFICIARY RACE CODE
		STRING race;
		//6	age	age	AGE
		STRING age;
		//7	orec	orec	ORIGINAL REASON FOR ENTITLEMENT
		STRING orec;
		//8	crec	crec	CURRENT REASON FOR ENTITLEMENT CODE
		STRING crec;
		//9	esrd_ind	esrd_ind	END STAGE RENAL DISEASE INDICATOR (ESRD)
		STRING esrd_ind;
		//10	ms_cd	ms_cd	MEDICARE STATUS CODE
		STRING ms_cd;
		//11	a_trm_cd	a_trm_cd	PART A TERMINATION CODE
		STRING a_trm_cd;
		//12	b_trm_cd	b_trm_cd	PART B TERMINATION CODE
		STRING b_trm_cd;
		//13	buyin01	buyin01	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin01;
		//14	buyin02	buyin02	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin02;
		//15	buyin03	buyin03	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin03;
		//16	buyin04	buyin04	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin04;
		//17	buyin05	buyin05	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin05;
		//18	buyin06	buyin06	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin06;
		//19	buyin07	buyin07	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin07;
		//20	buyin08	buyin08	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin08;
		//21	buyin09	buyin09	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin09;
		//22	buyin10	buyin10	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin10;
		//23	buyin11	buyin11	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin11;
		//24	buyin12	buyin12	MEDICARE ENTITLEMENT/ BUY-IN INDICATOR
		STRING buyin12;
		//25	hmoind01	hmoind01	HMO INDICATOR
		STRING hmoind01;
		//26	hmoind02	hmoind02	HMO INDICATOR
		STRING hmoind02;
		//27	hmoind03	hmoind03	HMO INDICATOR
		STRING hmoind03;
		//28	hmoind04	hmoind04	HMO INDICATOR
		STRING hmoind04;
		//29	hmoind05	hmoind05	HMO INDICATOR
		STRING hmoind05;
		//30	hmoind06	hmoind06	HMO INDICATOR
		STRING hmoind06;
		//31	hmoind07	hmoind07	HMO INDICATOR
		STRING hmoind07;
		//32	hmoind08	hmoind08	HMO INDICATOR
		STRING hmoind08;
		//33	hmoind09	hmoind09	HMO INDICATOR
		STRING hmoind09;
		//34	hmoind10	hmoind10	HMO INDICATOR
		STRING hmoind10;
		//35	hmoind11	hmoind11	HMO INDICATOR
		STRING hmoind11;
		//36	hmoind12	hmoind12	HMO INDICATOR
		STRING hmoind12;
		//37	a_mo_cnt	a_mo_cnt	HI COVERAGE
		STRING a_mo_cnt;
		//38	b_mo_cnt	b_mo_cnt	SMI COVERAGE
		STRING b_mo_cnt;
		//39	hmo_mo	hmo_mo	HMO COVERAGE
		STRING hmo_mo;
		//40	buyin_mo	buyin_mo	STATE BUY-IN COVERAGE
		STRING buyin_mo;
		//41	v_dod_sw	v_dod_sw	VALID DATE OF DEATH SWITCH
		STRING v_dod_sw;
		//42	death_dt	death_dt	BENEFICIARY ENCRYPTED FILE (BEF) DATE OF DEATH
		STRING death_dt;
		//43	rfrnc_yr	rfrnc_yr	BENEFICIARY ENROLLMENT REFERENCE YEAR
		STRING rfrnc_yr;
	
	END;


END;