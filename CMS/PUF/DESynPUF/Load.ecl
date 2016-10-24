IMPORT Std;

IMPORT CMS.PUF.DESynPUF.Config;
IMPORT CMS.PUF.DESynPUF.Datasets;
IMPORT CMS.PUF.DESynPUF.Layouts;

IMPORT LPezet.HPCC.SFile;

EXPORT Load := MODULE

	EXPORT load_bene(Config pConfig) := FUNCTION
		oDS2008 := DATASET(std.File.ExternalLogicalFilename( pConfig.local_path_ip, pConfig.local_path + pConfig.raw_bene_2008_file ), Layouts.raw_bene_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oDS2009 := DATASET(std.File.ExternalLogicalFilename( pConfig.local_path_ip, pConfig.local_path + pConfig.raw_bene_2009_file ), Layouts.raw_bene_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oDS2010 := DATASET(std.File.ExternalLogicalFilename( pConfig.local_path_ip, pConfig.local_path + pConfig.raw_bene_2010_file ), Layouts.raw_bene_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oDS2008Dist := DISTRIBUTE(oDS2008, HASH(bene_id));
		oDS2009Dist := DISTRIBUTE(oDS2009, HASH(bene_id));
		oDS2010Dist := DISTRIBUTE(oDS2010, HASH(bene_id));
		RETURN SEQUENTIAL(
			SFile.Create( Datasets.File_Raw_Bene_All ),
			SFile.Reset( Datasets.File_Raw_Bene_All ),
			OUTPUT(oDS2008Dist,, Datasets.File_Raw_Bene_2008, OVERWRITE),
			OUTPUT(oDS2009Dist,, Datasets.File_Raw_Bene_2009, OVERWRITE),
			OUTPUT(oDS2010Dist,, Datasets.File_Raw_Bene_2010, OVERWRITE),
			SFile.AddSub( Datasets.File_Raw_Bene_All, Datasets.File_Raw_Bene_2008 ),
			SFile.AddSub( Datasets.File_Raw_Bene_All, Datasets.File_Raw_Bene_2009 ),
			SFile.AddSub( Datasets.File_Raw_Bene_All, Datasets.File_Raw_Bene_2010 )
		);
	
	END;
	
	EXPORT load_carrier(Config pConfig) := FUNCTION
		oDS1A := DATASET(std.File.ExternalLogicalFilename( pConfig.local_path_ip, pConfig.local_path + pConfig.raw_carrier_2008_2010_1a_file ), Layouts.raw_carrier_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oDS1B := DATASET(std.File.ExternalLogicalFilename( pConfig.local_path_ip, pConfig.local_path + pConfig.raw_carrier_2008_2010_1b_file ), Layouts.raw_carrier_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oDS1ADist := DISTRIBUTE(oDS1A, HASH(bene_id));
		oDS1BDist := DISTRIBUTE(oDS1B, HASH(bene_id));
		RETURN SEQUENTIAL(
			SFile.Create( Datasets.File_Raw_Carrier_All ),
			SFile.Reset( Datasets.File_Raw_Carrier_All ),
			OUTPUT(oDS1ADist,, Datasets.File_Raw_Carrier_1A, OVERWRITE),
			OUTPUT(oDS1BDist,, Datasets.File_Raw_Carrier_1B, OVERWRITE),
			SFile.AddSub( Datasets.File_Raw_Carrier_All, Datasets.File_Raw_Carrier_1A ),
			SFile.AddSub( Datasets.File_Raw_Carrier_All, Datasets.File_Raw_Carrier_1B )
		);
	END;
	
	EXPORT load_ip( Config pConfig ) := FUNCTION
		oDS := DATASET(std.File.ExternalLogicalFilename( pConfig.local_path_ip, pConfig.local_path + pConfig.raw_ip_2008_2010_file ), Layouts.raw_ip_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oDSDist := DISTRIBUTE(oDS, HASH(bene_id));
		RETURN OUTPUT(oDSDist,, Datasets.File_Raw_IP, OVERWRITE);
	END;
	
	EXPORT load_op( Config pConfig ) := FUNCTION
		oDS := DATASET(std.File.ExternalLogicalFilename( pConfig.local_path_ip, pConfig.local_path + pConfig.raw_ip_2008_2010_file ), Layouts.raw_op_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oDSDist := DISTRIBUTE(oDS, HASH(bene_id));
		RETURN OUTPUT(oDSDist,, Datasets.File_Raw_OP, OVERWRITE);
	END;
	
	EXPORT load_pde( Config pConfig ) := FUNCTION
		oDS := DATASET(std.File.ExternalLogicalFilename( pConfig.local_path_ip, pConfig.local_path + pConfig.raw_pde_2008_2010_file ), Layouts.raw_pde_layout,CSV(HEADING(1), SEPARATOR([',']), TERMINATOR(['\n','\r\n','\n\r'])));
		oDSDist := DISTRIBUTE(oDS, HASH(bene_id));
		RETURN OUTPUT(oDSDist,, Datasets.File_Raw_PDE, OVERWRITE);
	END;
	
	EXPORT load_all( Config pConfig ) := FUNCTION
		RETURN PARALLEL(
			load_bene( pConfig ),
			load_ip( pConfig ),
			load_op( pConfig ),
			load_pde( pConfig ),
			load_carrier( pConfig )
		);
	END;

END;