// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

kit_cia_asset = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD_LT","rhs_vest_commander","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ""],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_nor_sl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_Winter","CUP_V_B_ALICE","usm_pack_alice_prc77","CUP_H_PMC_Beanie_Khaki","rhsusf_shemagh2_grn"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_ris","CUP_20Rnd_762x51_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",3],["SmokeShellBlue",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_nor_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_Winter","CUP_V_B_ALICE","CUP_B_AlicePack_OD","CUP_H_PMC_Beanie_Khaki","rhsusf_shemagh2_grn"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_ris","CUP_20Rnd_762x51_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",3],["SmokeShellBlue",2],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShellYellow",2]]]
];
kit_nor_mg = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_Winter","CUP_V_B_ALICE","CUP_B_AlicePack_OD","CUP_H_PMC_Beanie_Khaki","rhsusf_shemagh2_grn"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_MG3_rail","CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["HANDGUN MAG",1],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];
kit_nor_gr = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_Winter","CUP_V_B_ALICE","CUP_B_AlicePack_OD","CUP_H_PMC_Beanie_Khaki","rhsusf_shemagh2_grn"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_ris","CUP_20Rnd_762x51_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["HANDGUN MAG",1],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["ATMine_Range_Mag",2],["DemoCharge_Remote_Mag",3]]]
];
kit_nor_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_Winter","CUP_V_B_ALICE","CUP_B_AlicePack_OD","CUP_H_PMC_Beanie_Khaki","rhsusf_shemagh2_grn"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_ris","CUP_20Rnd_762x51_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["HANDGUN MAG",1],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["ATMine_Range_Mag",2]]]
];
kit_nor_cargo = [
	[["CUP_launch_M72A6_Loaded",3]],
	[["HandGrenade",10],["CUP_13Rnd_9x19_Browning_HP",10],["CUP_20Rnd_762x51_G3",30],["ATMine_Range_Mag",2],["DemoCharge_Remote_Mag",2],["CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",10]],
	[["ACE_Clacker",3],["ACE_fieldDressing",30],["ACE_packingBandage",30],["ACE_elasticBandage",30],["ACE_morphine",5]],
	[]
];

kit_sov_random = [
	"kit_sov_r"
	,"kit_sov_mg"
	,"kit_sov_at"
	,"kit_sov_ar"
	,"kit_sov_r"
	,"kit_sov_r"
	,"kit_sov_r"
	,"kit_sov_r"
];
kit_sov_r = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","rhs_6sh46","","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sov_mg = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","rhs_6sh46","","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_EarPlugs",1]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",1]]]
];
kit_sov_at = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","rhs_6sh46","CUP_B_RPGPack_Khaki","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","CUP_optic_PGO7V3",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",3]]]
];
kit_sov_ar = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD","rhs_6sh46","","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sov_crew = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD_apc","","","",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK74_plum_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sov_officer = [
	["<EQUIPEMENT >>  ","VDV_M69_FIELD_LT","rhs_vest_commander","","345th_beret_VDV_officer",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sov_cargo = [
	[],
	[["CUP_30Rnd_545x39_AK_M",10],["rhs_mag_rgd5",15],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",10]],
	[["ACE_fieldDressing",15],["ACE_elasticBandage",15]],
	[]
];
