IMPORT Std;
IMPORT LPezet.Linux.BinUtils;
IMPORT LPezet.HPCC.SFile;

IMPORT CMS.PUF.MSDRG.Layouts;
IMPORT CMS.PUF.MSDRG.Datasets;

EXPORT Load := MODULE

	SHARED LandingZone_IP := 'localhost';
	// Set the folder containing the data files on the Landing Zone here:  (Should end in / )
	SHARED BaseDataDirectory := '/var/lib/HPCCSystems/mydropzone/CMS/PUF/MSDRG/fulltext/';
	

	EXPORT diag_code_to_msdrg_files := '<root>' +
		'<file>full_appendix_B.txt</file>' +
	'</root>';


	EXPORT msdrg_files := '<root>' +
		'<file>full_appendix_A.txt</file>' +
		// Those are different files not about MSDRG list and description
		//'<file>full_appendix_C.txt</file>' +
		//'<file>full_appendix_D_E.txt</file>' +
		//'<file>full_appendix_F_J.txt</file>' +
	'</root>';
	
	EXPORT raw_diag_code_to_msdrg_layout := RECORD
		STRING i10dx;
		STRING mdc;
		STRING drgs;
		STRING i10_description;
	END;

	// Regex:
	// i10dx:							^\s([A-Z][^ ]+) 
	// mdc: 							^.{9}([^ ]+)
	// drgs: 							^.{13}([^ ]+)
	// i10_description:		^.{21}([^ ]+)
	SHARED raw_diag_code_to_msdrg_layout to_raw_diag_code_to_msdrg_layout( BinUtils.line_layout pRecord ) := TRANSFORM
		SELF.i10dx := (STRING) TRIM( REGEXFIND('^\\s([A-Z][^ ]+)', pRecord.line, 1 ) );
		SELF.mdc := (STRING) TRIM( REGEXFIND('^.{9}([^ ]+)', pRecord.line, 1 ) );
		SELF.drgs := (STRING) TRIM( REGEXFIND('^.{13}([^ ]+)', pRecord.line, 1 ) );
		SELF.i10_description := (STRING) TRIM( REGEXFIND('^.{21}([^$]+)', pRecord.line, 1 ) );
	END;
	
	SHARED raw_diag_code_to_msdrg_layout diag_code_to_msdrg_fill_in_blanks(raw_diag_code_to_msdrg_layout pLeft, raw_diag_code_to_msdrg_layout pRight) := TRANSFORM
		SELF.i10dx := IF( pRight.i10dx = '', pLeft.i10dx, pRight.i10dx );
		SELF.i10_description := IF( pRight.i10_description = '', pLeft.i10_description, pRight.i10_description );
		SELF := pRight;
	END;
	
	SHARED INTEGER number_of_drgs(STRING pRange) := FUNCTION
		RETURN
			CASE( LENGTH( pRange ),
				7 => ( (INTEGER) pRange[5..7] - (INTEGER) pRange[1..3] + 1),
				0
			);
	END;	
	
	SHARED raw_diag_code_to_msdrg_layout normalize_diag_code_to_msdrg(raw_diag_code_to_msdrg_layout pRecord, INTEGER pCounter) := TRANSFORM
		INTEGER oFrom := (INTEGER) pRecord.drgs[1..3];
		SELF.drgs := (STRING) (oFrom + pCounter - 1);
		SELF := pRecord;
	END;
	
	SHARED Layouts.diag_code_to_msdrg_layout to_diag_code_to_msdrg_layout(raw_diag_code_to_msdrg_layout pRecord) := TRANSFORM
		SELF.drg := pRecord.drgs;
		SELF.mdc := pRecord.mdc;
		SELF.icd10_dx := pRecord.i10dx;
		SELF.icd10_dx_description := pRecord.i10_description;
	END;
	
	SHARED load_diag_code_to_msdrg_file( STRING pInFile ) := FUNCTION
		File_In := BaseDataDirectory + pInFile;
		File_Content_ByLine := DATASET(std.File.ExternalLogicalFilename(LandingZone_IP, File_In), BinUtils.line_layout, CSV(HEADING(9), SEPARATOR(''), QUOTE(''), NOTRIM ));
		//File_Content_ByLine := BinUtils.cat( File_In );
		A := PROJECT(File_Content_ByLine, to_raw_diag_code_to_msdrg_layout(LEFT) );
		B := ITERATE(A, diag_code_to_msdrg_fill_in_blanks(LEFT, RIGHT) );
		C := NORMALIZE( B, number_of_drgs(LEFT.drgs), normalize_diag_code_to_msdrg(LEFT, COUNTER) );
		D := PROJECT( C, to_diag_code_to_msdrg_layout( LEFT ) );
		RETURN D;
	END;
	
	EXPORT load_diag_code_to_msdrg_file_into_logical( STRING pFileName ) := FUNCTION
		DS_In := load_diag_code_to_msdrg_file( pFileName );
		DS_Dist := DISTRIBUTE(DS_In, HASH(icd10_dx));
		RETURN OUTPUT(DS_Dist,, Datasets.File_DIAG_CODE_TO_MSDRG_SUB + pFileName, OVERWRITE);
	END;
	
	EXPORT clear_diag_code_to_msdrg_superfile() := FUNCTION
		RETURN SFile.Reset( Datasets.File_DIAG_CODE_TO_MSDRG_ALL );
	END;
	
	EXPORT add_to_diag_code_to_msdrg_superfile( STRING pFileName ) := FUNCTION
		RETURN SFile.AddSub( Datasets.File_DIAG_CODE_TO_MSDRG_ALL, Datasets.File_DIAG_CODE_TO_MSDRG_SUB + pFileName );
	END;
	
	EXPORT remove_from_diag_code_to_msdrg_superfile( STRING pFileName ) := FUNCTION
		RETURN SFile.RemoveSub( Datasets.File_DIAG_CODE_TO_MSDRG_ALL, Datasets.File_DIAG_CODE_TO_MSDRG_SUB + pFileName );
	END;
	
	// Regex:
	// ^(\d{3})\s([\w\s]{3})\s([\w\s]{2})\s(.*)
	// drg: 1
	// mdc: 2
	// ms: 3
	// description: 4
	Layouts.msdrg_layout to_msdrg_layout( BinUtils.line_layout pRecord ) := TRANSFORM
		STRING3 drg := (STRING3) TRIM( REGEXFIND('^(\\d{3})\\s([\\w\\s]{3})\\s([\\w\\s]{2})\\s(.*)', pRecord.line, 1) );
		SELF.drg := IF ( drg != '', drg, SKIP );
		SELF.mdc := (STRING3) TRIM( REGEXFIND('^(\\d{3})\\s([\\w\\s]{3})\\s([\\w\\s]{2})\\s(.*)', pRecord.line, 2) );
		SELF.ms := (STRING1) TRIM( REGEXFIND('^(\\d{3})\\s([\\w\\s]{3})\\s([\\w\\s]{2})\\s(.*)', pRecord.line, 3) );
		SELF.description := (STRING) TRIM( REGEXFIND('^(\\d{3})\\s([\\w\\s]{3})\\s([\\w\\s]{2})\\s(.*)', pRecord.line, 4) );
	END;
	
	SHARED load_msdrg_file( STRING pInFile ) := FUNCTION
		File_In := BaseDataDirectory + pInFile;
		File_Content_ByLine := BinUtils.cat( File_In );
		RETURN PROJECT(File_Content_ByLine, to_msdrg_layout(LEFT) );
	END;

	EXPORT load_msdrg_file_into_logical( STRING pFileName ) := FUNCTION
		DS_In := load_msdrg_file( pFileName );
		DS_Dist := DISTRIBUTE(DS_In, HASH(drg));
		RETURN OUTPUT(DS_Dist,, Datasets.File_MSDRG_SUB_PREFIX + pFileName, OVERWRITE);
	END;
	
	EXPORT clear_msdrg_superfile() := FUNCTION
		RETURN SFile.Reset( Datasets.File_MSDRG_ALL );
	END;
	
	EXPORT add_to_msdrg_superfile( STRING pFileName ) := FUNCTION
		RETURN SFile.AddSub( Datasets.File_MSDRG_ALL, Datasets.File_MSDRG_SUB_PREFIX + pFileName );
	END;
	
	EXPORT remove_from_msdrg_superfile( STRING pFileName ) := FUNCTION
		RETURN SFile.RemoveSub( Datasets.File_MSDRG_ALL, Datasets.File_MSDRG_SUB_PREFIX + pFileName );
	END;
	
	EXPORT load_msdrgs() := MACRO
	
		IMPORT CMS.PUF.MSDRG.Datasets;
		IMPORT CMS.PUF.MSDRG.Layouts;

		LOADXML(Load.msdrg_files);
		
		//SEQUENTIAL(
			//Load.clear_msdrg_superfile();
			#FOR(file)
				#UNIQUENAME(oFile)
				%oFile% := %''%;
				SEQUENTIAL(
					Load.remove_from_msdrg_superfile( %oFile% ),
					Load.load_msdrg_file_into_logical( %oFile% ),
					Load.add_to_msdrg_superfile( %oFile% )
				);
			#END
			//DATASET([], raw_msdrg_layout)
		//);
		/*
		// TODO: Create Super File
		// Load Each file
		RETURN
			SEQUENTIAL(
				load_msdrg_file_into_logical( 'full_appendix_A.txt', '~cms::puf::msdrg::msdrgs::A' ),
				load_msdrg_file_into_logical( 'full_appendix_B.txt', '~cms::puf::msdrg::msdrgs::B' ),
				load_msdrg_file_into_logical( 'full_appendix_C.txt', '~cms::puf::msdrg::msdrgs::C' ),
				load_msdrg_file_into_logical( 'full_appendix_D_E.txt', '~cms::puf::msdrg::msdrgs::DE' ),
				load_msdrg_file_into_logical( 'full_appendix_F_J.txt', '~cms::puf::msdrg::msdrgs::FJ' ),
				
			);
		*/
		
	ENDMACRO;
	
	EXPORT load_diag_code_to_msdrgs() := MACRO
	
		IMPORT CMS.PUF.MSDRG.Datasets;
		IMPORT CMS.PUF.MSDRG.Layouts;

		LOADXML(Load.diag_code_to_msdrg_files);
		
		//SEQUENTIAL(
			//Load.clear_msdrg_superfile();
			#FOR(file)
				#UNIQUENAME(oFile)
				%oFile% := %''%;
				SEQUENTIAL(
					Load.remove_from_diag_code_to_msdrg_superfile( %oFile% ),
					Load.load_diag_code_to_msdrg_file_into_logical( %oFile% ),
					Load.add_to_diag_code_to_msdrg_superfile( %oFile% )
				);
			#END
			//DATASET([], raw_msdrg_layout)
		//);
		/*
		// TODO: Create Super File
		// Load Each file
		RETURN
			SEQUENTIAL(
				load_msdrg_file_into_logical( 'full_appendix_A.txt', '~cms::puf::msdrg::msdrgs::A' ),
				load_msdrg_file_into_logical( 'full_appendix_B.txt', '~cms::puf::msdrg::msdrgs::B' ),
				load_msdrg_file_into_logical( 'full_appendix_C.txt', '~cms::puf::msdrg::msdrgs::C' ),
				load_msdrg_file_into_logical( 'full_appendix_D_E.txt', '~cms::puf::msdrg::msdrgs::DE' ),
				load_msdrg_file_into_logical( 'full_appendix_F_J.txt', '~cms::puf::msdrg::msdrgs::FJ' ),
				
			);
		*/
		
	ENDMACRO;


END;