IMPORT CMS.PUF.DESynPUF.Layouts;

EXPORT Datasets := MODULE

	EXPORT File_Raw_Bene_2008 := '~cms::puf::desynpuf::bene::raw::2008';
	EXPORT File_Raw_Bene_2009 := '~cms::puf::desynpuf::bene::raw::2009';
	EXPORT File_Raw_Bene_2010 := '~cms::puf::desynpuf::bene::raw::2010';
	EXPORT File_Raw_Bene_All := '~cms::puf::desynpuf::bene::raw::all';
	
	EXPORT File_Raw_Carrier_1A := '~cms::puf::desynpuf::carrier::raw::1a';
	EXPORT File_Raw_Carrier_1B := '~cms::puf::desynpuf::carrier::raw::1b';
	EXPORT File_Raw_Carrier_All := '~cms::puf::desynpuf::carrier::raw::all';
	
	EXPORT File_Raw_IP := '~cms::puf::desynpuf::ip::raw';
	EXPORT File_Raw_OP := '~cms::puf::desynpuf::op::raw';
	EXPORT File_Raw_PDE := '~cms::puf::desynpuf::pde::raw';
	
	
	EXPORT File_Bene := '~cms::puf::desynpuf::bene';
	EXPORT File_Carrier := '~cms::puf::desynpuf::carrier';
	EXPORT File_IP := '~cms::puf::desynpuf::ip';
	EXPORT File_OP := '~cms::puf::desynpuf::op';
	EXPORT File_PDE := '~cms::puf::desynpuf::pde';
	
	EXPORT dsRawBene := DATASET( File_Raw_Bene_All, Layouts.raw_bene_layout, THOR );
	EXPORT dsRawCarrier := DATASET( File_Raw_Carrier_All, Layouts.raw_carrier_layout, THOR );
	EXPORT dsRawIP := DATASET( File_Raw_IP, Layouts.raw_ip_layout, THOR );
	EXPORT dsRawOP := DATASET( File_Raw_OP, Layouts.raw_op_layout, THOR );
	EXPORT dsRawPDE := DATASET( File_Raw_PDE, Layouts.raw_pde_layout, THOR );
	

END;