IMPORT CMS.PUF.MSDRG.Layouts;

EXPORT Datasets := MODULE

	EXPORT File_MSDRG_ALL := '~cms::puf::msdrg::msdrgs::all';
	EXPORT File_MSDRG_SUB_PREFIX :=  '~cms::puf::msdrg::msdrgs::';
	
	EXPORT File_DIAG_CODE_TO_MSDRG_ALL := '~cms::puf::msdrg::i10dx_to_drg::all';
	EXPORT File_DIAG_CODE_TO_MSDRG_SUB :=  '~cms::puf::msdrg::i10dx_to_drg::';
	
	EXPORT dsMSDRG := DATASET( File_MSDRG_ALL, Layouts.msdrg_layout, THOR );
	EXPORT dsDiagCodeToMSDRG := DATASET( File_DIAG_CODE_TO_MSDRG_ALL, Layouts.diag_code_to_msdrg_layout, THOR );
	

END;