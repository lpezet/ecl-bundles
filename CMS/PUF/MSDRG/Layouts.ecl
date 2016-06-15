EXPORT Layouts := MODULE

	EXPORT msdrg_layout := RECORD
		STRING3 drg; // MS-DRG
		STRING3 mdc; // Major Diagnostic Code
		STRING1 ms; // 'M' for medical MS-DRG, 'P' for surgical MS-DRG
		STRING description; // Description
	END;
	
	EXPORT diag_code_to_msdrg_layout := RECORD
		STRING3 drg;
		STRING2 mdc;
		STRING icd10_dx;
		STRING icd10_dx_description;
	END;

END;