IMPORT LPezet.Linux.Curl;
IMPORT LPezet.Linux.BinUtils;

EXPORT ToCSV := MODULE
	
	EXPORT IOptions := INTERFACE
		EXPORT STRING python_bin;
		EXPORT STRING quoting;
		EXPORT STRING linedelimiter;
		EXPORT STRING delimiter;
		EXPORT STRING output_encoding;
	END;
	
	EXPORT DefaultOptions := MODULE(IOptions)
		EXPORT STRING python_bin := '/usr/bin/python3';
		EXPORT STRING quoting := 'nonnumeric';
		EXPORT STRING linedelimiter := '\\n';
		EXPORT STRING delimiter := ',';
		EXPORT STRING output_encoding := 'utf-8';
	END;

	SHARED mBaseScriptsPath := '/tmp/hpcc/lpezet/excel';
	SHARED mXLS2CSVScriptURL := 'https://raw.githubusercontent.com/lpezet/ecl-bundles/master/Excel/xls2csv.py';
	SHARED mXLS2CSVScriptLocal := mBaseScriptsPath + '/xls2csv.py';
	//SHARED mXLSX2CSVScriptURL := 'https://raw.githubusercontent.com/lpezet/ecl-bundles/master/Excel/xls2csv.py';
	
	EXPORT setup_scripts() := SEQUENTIAL(
		OUTPUT( BinUtils.mkdir( mBaseScriptsPath, true ), NAMED('SetupMkdir') ),
		OUTPUT( Curl.download( mXLS2CSVScriptURL, mXLS2CSVScriptLocal ), NAMED('SetupDownloadXLSScript') )
	);
	
	EXPORT xls2csv( STRING pXLSFilePath, STRING pCSVFilePath, STRING pSheetName = '', UNSIGNED pSheetIndex = -1, IOptions pOptions = DefaultOptions ) := FUNCTION
		oParams := IF( pSheetName != '', '-n "' + pSheetName + '"', '-s ' + pSheetIndex );
		RETURN SEQUENTIAL(
			setup_scripts(),
			OUTPUT( PIPE( pOptions.python_bin + ' ' + mXLS2CSVScriptLocal + ' ' + oParams + ' "' + pXLSFilePath + '" "' + pCSVFilePath + '"', BinUtils.line_layout), NAMED('xls2csv') )
		);
	END;
		

END;