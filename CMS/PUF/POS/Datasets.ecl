IMPORT $.Layouts;

EXPORT Datasets := MODULE
	
	EXPORT Logical_File_Version(STRING pVersion) := '~common::reference::cms::pos::' + pVersion;
	EXPORT Logical_File_CLIA(STRING pVersion) := Logical_File_Version( pVersion ) + '::clia';
	EXPORT Logical_File_OTHER(STRING pVersion) := Logical_File_Version( pVersion ) + '::other';
	
	EXPORT CLIA_SEP18 := DATASET( Logical_File_CLIA('dec17'), Layouts.raw_pos_layout_17_18, CSV(HEADING(1)));
	EXPORT CLIA_DEC17 := DATASET( Logical_File_CLIA('sep18'), Layouts.raw_pos_layout_17_18, CSV(HEADING(1)));

	EXPORT OTHER_SEP18 := DATASET( Logical_File_OTHER('dec17'), Layouts.raw_pos_layout_17_18, CSV(HEADING(1)));
	EXPORT OTHER_DEC17 := DATASET( Logical_File_OTHER('sep18'), Layouts.raw_pos_layout_17_18, CSV(HEADING(1)));

END;