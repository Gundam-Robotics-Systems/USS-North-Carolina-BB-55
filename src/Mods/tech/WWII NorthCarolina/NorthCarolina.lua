-- MOD per DCS WORLD by Markindel and Cadarth
-- USS NorthCarolina 

-----             Cartella Shapes --------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes/")

-----             Cartella Textures ---------------------------------------------------
mount_vfs_texture_path  (current_mod_path.."/Textures/")
mount_vfs_texture_path  (current_mod_path.."/Textures/NorthCarolina.zip")

--[[
-----             Cartella Sound --------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Sound/")
mount_vfs_model_path	(current_mod_path.."/Sound/Effects")
mount_vfs_model_path	(current_mod_path.."/Sound/Effects/Weapons")
mount_vfs_model_path	(current_mod_path.."/Sound/Effects/Weapons/Cannon")
mount_vfs_model_path	(current_mod_path.."/Sound/sdef")
mount_vfs_model_path	(current_mod_path.."/Sound/sdef/Weapons")
mount_vfs_model_path	(current_mod_path.."/Sound/sdef/Weapons/Cannon")
mount_vfs_model_path	(current_mod_path.."/Sound/Sounders")
mount_vfs_model_path	(current_mod_path.."/Sound/Sounders/GroundUnits")
mount_vfs_model_path	(current_mod_path.."/Sound/Sounders/GroundUnits/WeaponSystem")
mount_vfs_model_path	(current_mod_path.."/Sound/Sounders/GroundUnits/WeaponSystem/Navy")
mount_vfs_model_path	(current_mod_path.."/Sound/Sounders/GroundUnits/WeaponSystem/Navy/USS_NorthCarolina.lua")
mount_vfs_model_path	(current_mod_path.."/Sound/Sounders/GroundUnits/WeaponSystem/Tools")
--]]



GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "NorthCarolina"
GT.visual.shape_dstr = ""

---------------------------------------------------------------------
----------------------------------------------------------------------

GT.animation_arguments.radar1_rotation = 11; -- вращение радара 1
GT.radar1_period = 3;
GT.animation_arguments.radar2_rotation = -1; -- вращение радара 2 отсутствует
GT.animation_arguments.radar3_rotation = -1; -- вращение радара 3 отсутствует
GT.animation_arguments.luna_lights = -1;


GT.life = 6000
GT.mass = 7.25e+006
GT.max_velocity = 55,6
GT.race_velocity = 40
GT.economy_velocity = 30
GT.economy_distance = 1.59272e+007
GT.race_distance = 1.59272e+007
GT.shipLength = 251
GT.Width = 36
GT.Height = 25.6
GT.Length = 106.2
GT.DeckLevel = 7.2

GT.X_nose = 110.0000
GT.X_tail = -123.000

GT.Tail_Width = 11
GT.Gamma_max = 0.35
GT.Om = 0.05
GT.speedup = 0.1
GT.R_min = 212.4
GT.distFindObstacles = 368.6

GT.airWeaponDist = 100000
GT.airFindDist = 150000
GT.exhaust = 
{
	[1] = { size = 0.90 , pos = {-14.0 , 26.0, 1.0 } },
}


---- Primo valore    : avanti/indietro
---- Secondo valore: alto/basso
---- Terzo Valore    : destra/sinistra

GT.DM = {
----- Scafo.
	{ area_name = "Scafo_Prua_Dx",			area_arg = 76,	area_life = 100, area_fire = { pos = {75.0, 4.0, 8.0}, size = 1.5}},
	{ area_name = "Scafo_Centrale_Dx",		area_arg = 71,	area_life = 100, area_fire = { pos = {20.0,  2.0, 13.0}, size = 1.5}},
	{ area_name = "Scafo_Centrale2_Dx",		area_arg = 95,	area_life = 100, area_fire = { pos = {-30.0,  2.0, 13.0}, size = 1.5}},
	{ area_name = "Scafo_Poppa_Dx", 			area_arg = 72,	area_life = 100, area_fire = { pos = {-70.0, 2.0, 8.0}, size = 1.5}},

	{ area_name = "Scafo_Prua_Sx", 		    	area_arg = 73,	area_life = 100, area_fire = { pos = {90.0, 4.0, -10.0}, size = 1.5}},
	{ area_name = "Scafo_Centrale_Sx", 		area_arg = 74,	area_life = 100, area_fire = { pos = {0.0,  2.0, -13.0}, size = 1.5}},
	{ area_name = "Scafo_Centrale2_Sx", 		area_arg = 94,	area_life = 100, area_fire = { pos = {-30.0,  2.0, -13.0}, size = 1.5}},
	{ area_name = "Scafo_Poppa_Sx", 			area_arg = 75,	area_life = 100, area_fire = { pos = {-100.0, 2.0, -10.5}, size = 1.5}},
-------- Sovrastrutture	
	{ area_name = "Zona_Fumaiolo",          		area_arg = 77,	area_life = 60,  area_fire = { pos = {0.5, 12.0, 0.0}, size = 2.5}},
	{ area_name = "Strutture_Poppa",        		area_arg = 82,	area_life = 200, area_fire = { pos = {-23.0, 12.0, 0.0}, size = 1.5}},
	{ area_name = "Sala_Comando",	        		area_arg = 83,	area_life = 150, area_fire = { pos = {15.0, 12.0, 0.0}, size = 2.5}},
		
--------- 4 Torri Binate da 380mm	
	{ area_name = "Torre_380_Anton",			area_arg = 96,	area_life = 60, area_fire = { pos = {55.0, 11.0, 0.0}, size =  1.5}},
	{ area_name = "Torre_380_Bruno",			area_arg = 98,	area_life = 60, area_fire = { pos = {35.0, 14.0, 0.0}, size =  1.5}},  
	{ area_name = "Torre_380_Cesare",			area_arg = 70,	area_life = 60, area_fire = { pos = {-64.0, 14.0, 0.0}, size = 1.5}},
	{ area_name = "Torre_380_Dora",		    	area_arg = 99,	area_life = 60, area_fire = { pos = {-62.0, 11.0, 0.0}, size = 1.5}},  

	{ area_name = "Ponte Prua",	           		area_arg = 84,	area_life = 60, area_fire = { pos = {67.0, 11.0, 0.0}, size =  1.5}},
         { area_name = "Ponte Poppa",		    		area_arg = 85,	area_life = 60, area_fire = { pos = {-95.0, 11.0, 0.0}, size = 1.5}}, 
--[[	
------------------ 6 Torri Binate da 150
	{ area_name = "Torre_150_Dx_1",			area_arg = 71,	area_life = 100, area_fire = { pos = {93.0, 4.0, 8.0}, size = 1.5}},
	{ area_name = "Torre_150_Dx_2",			area_arg = 71,	area_life = 100, area_fire = { pos = {93.0, 4.0, 8.0}, size = 1.5}},
	{ area_name = "Torre_150_Dx_3",			area_arg = 71,	area_life = 100, area_fire = { pos = {93.0, 4.0, 8.0}, size = 1.5}},
	{ area_name = "Torre_150_Sx_1",			area_arg = 74,	area_life = 100, area_fire = { pos = {93.0, 4.0, 8.0}, size = 1.5}},
	{ area_name = "Torre_150_Sx_2",			area_arg = 74,	area_life = 100, area_fire = { pos = {93.0, 4.0, 8.0}, size = 1.5}},
	{ area_name = "Torre_150_Sx_3",			area_arg = 74,	area_life = 100, area_fire = { pos = {93.0, 4.0, 8.0}, size = 1.5}},
--]]

}

-- Source for modifications: https://en.wikipedia.org/wiki/North_Carolina-class_battleship
-- Oerlikon (20 mm) naval AAA weapons. Source: https://en.wikipedia.org/wiki/Oerlikon_20_mm_cannon
-- Used default Mark 15 CIWS Phalanx Block 1 weapon system as template with alterations
GT_t.WS_t.ship_Oerlikon_20 = {name = "20 mm Oerlikon"};
GT_t.WS_t.ship_Oerlikon_20.angles = {
                    {math.rad(180), math.rad(-180), math.rad(-15), math.rad(90)},
                    };
GT_t.WS_t.ship_Oerlikon_20.omegaY = math.rad(115) -- Block 1B
GT_t.WS_t.ship_Oerlikon_20.omegaZ = math.rad(116) -- Block 1B
GT_t.WS_t.ship_Oerlikon_20.pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.ship_Oerlikon_20.pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.ship_Oerlikon_20.reference_angle_Z = 0
GT_t.WS_t.ship_Oerlikon_20.LN = {}
GT_t.WS_t.ship_Oerlikon_20.LN[1] = {}
GT_t.WS_t.ship_Oerlikon_20.LN[1].type = 3
GT_t.WS_t.ship_Oerlikon_20.LN[1].distanceMin = 10
GT_t.WS_t.ship_Oerlikon_20.LN[1].distanceMax = 1500 -- effective shooting with 3600 meters
GT_t.WS_t.ship_Oerlikon_20.LN[1].max_trg_alt = 1000
GT_t.WS_t.ship_Oerlikon_20.LN[1].reactionTime = 1.8
GT_t.WS_t.ship_Oerlikon_20.LN[1].beamWidth = math.rad(1);
GT_t.WS_t.ship_Oerlikon_20.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_Oerlikon_20.LN[1].sensor, GT_t.WSN_t[3])
GT_t.WS_t.ship_Oerlikon_20.LN[1].PL = {}
GT_t.WS_t.ship_Oerlikon_20.LN[1].PL[1] = {}
GT_t.WS_t.ship_Oerlikon_20.LN[1].PL[1].ammo_capacity = 1550;
GT_t.WS_t.ship_Oerlikon_20.LN[1].PL[1].shell_name = {"Rh202_20_AP", "Rh202_20_HE"};
GT_t.WS_t.ship_Oerlikon_20.LN[1].PL[1].shell_display_name = "20mm AP+HE";
GT_t.WS_t.ship_Oerlikon_20.LN[1].PL[1].shot_delay = 60/450 -- 450 rounds per minute average
GT_t.WS_t.ship_Oerlikon_20.LN[1].PL[1].reload_time = 1000000; -- never during the mission (ship autogun)
GT_t.WS_t.ship_Oerlikon_20.LN[1].BR = { {pos = {3.478, 0, 0} }, }



-- Bofors Mk 12 (40 mm) naval AAA weapons. Source: https://en.wikipedia.org/wiki/Bofors_40_mm_gun
-- Used default Mark 15 CIWS Phalanx Block 1 weapon system as template with alterations
GT_t.WS_t.ship_Bofors_40_Mk_12 = {name = "40 mm Bofors Mk 12"};
GT_t.WS_t.ship_Bofors_40_Mk_12.angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(90)},
                    };
GT_t.WS_t.ship_Bofors_40_Mk_12.omegaY = math.rad(115) -- Block 1B
GT_t.WS_t.ship_Bofors_40_Mk_12.omegaZ = math.rad(116) -- Block 1B
GT_t.WS_t.ship_Bofors_40_Mk_12.pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.ship_Bofors_40_Mk_12.pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.ship_Bofors_40_Mk_12.reference_angle_Z = 0
GT_t.WS_t.ship_Bofors_40_Mk_12.LN = {}
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1] = {}
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].type = 3
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].distanceMin = 10
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].distanceMax = 7160 -- effective shooting
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].max_trg_alt = 3800
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].reactionTime = 1.8
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].beamWidth = math.rad(1);
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].sensor, GT_t.WSN_t[3])
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL = {}
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1] = {}
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].ammo_capacity = 560;
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].shell_name = {"Boforos_40_Mk12_HE"};
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].shell_display_name = "40mm HE";
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].shot_delay = 60/120 -- 120 rpm
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].PL[1].reload_time = 1000000; -- never during the mission (ship autogun)
GT_t.WS_t.ship_Bofors_40_Mk_12.LN[1].BR = { {pos = {3.478, 0, 0} }, }


-------------------------------------------------------------------------------------------------
--   Descrizione Cannoni da 150mm
-------------------------------------------------------------------------------------------------
-- 38 Caliber Mark 12 (127 mm) naval artillery weapons. Source: https://en.wikipedia.org/wiki/5%22/38_caliber_gun
-- Used default FMC5 MK45 127mm Navy artillery weapon system as template with alterations
GT_t.WS_t.ship_38cal_Mk12 = {name = "127 mm Mark 12"}
GT_t.WS_t.ship_38cal_Mk12.angles = {
					{math.rad(164.25), math.rad(-164.25), math.rad(-15), math.rad(85)},
					};
GT_t.WS_t.ship_38cal_Mk12.omegaY = 0.6
GT_t.WS_t.ship_38cal_Mk12.omegaZ = 0.6
GT_t.WS_t.ship_38cal_Mk12.reference_angle_Z = 0
GT_t.WS_t.ship_38cal_Mk12.LN = {}
GT_t.WS_t.ship_38cal_Mk12.LN[1] = {}
GT_t.WS_t.ship_38cal_Mk12.LN[1].type = 6
GT_t.WS_t.ship_38cal_Mk12.LN[1].xc = 3
GT_t.WS_t.ship_38cal_Mk12.LN[1].distanceMin = 50
GT_t.WS_t.ship_38cal_Mk12.LN[1].max_trg_alt = 7500
GT_t.WS_t.ship_38cal_Mk12.LN[1].reactionTime = 15
GT_t.WS_t.ship_38cal_Mk12.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_38cal_Mk12.LN[1].sensor, GT_t.WSN_t[10])
GT_t.WS_t.ship_38cal_Mk12.LN[1].PL = {}
GT_t.WS_t.ship_38cal_Mk12.LN[1].PL[1] = {}
GT_t.WS_t.ship_38cal_Mk12.LN[1].PL[1].ammo_capacity = 240 -- Currently uses same ammo count as SK_C_38
GT_t.WS_t.ship_38cal_Mk12.LN[1].PL[1].shell_name = {"MK45_127"}; -- Currently uses MK45 127 mm shells (127 mm ammo is WIP)
GT_t.WS_t.ship_38cal_Mk12.LN[1].PL[1].shot_delay = 60/15 -- (15 rounds per minute per barrel - average)
GT_t.WS_t.ship_38cal_Mk12.LN[1].automaticLoader = false;
GT_t.WS_t.ship_38cal_Mk12.LN[1].reload_time = 240 * 20
GT_t.WS_t.ship_38cal_Mk12.LN[1].BR = { {pos = {8, 0, 0.1} }, {pos = {8, 0, -0.1} } }


-------------------------------------------------------------------------------------------------
--   Descrizione Cannoni da 406mm
-------------------------------------------------------------------------------------------------
-- 45 Caliber Mark 6 (406 mm) naval artillery weapons. Source: https://en.wikipedia.org/wiki/16%22/45_caliber_Mark_6_gun
-- Used default AK130 130mm Navy artillery weapon system as template with alterations
GT_t.WS_t.ship_45cal_Mk6 = {name = "406 mm Mark 6"}
GT_t.WS_t.ship_45cal_Mk6.angles = {
					{math.rad(150), math.rad(-150), math.rad(-2), math.rad(45)},
					};
GT_t.WS_t.ship_45cal_Mk6.omegaY = 0.6
GT_t.WS_t.ship_45cal_Mk6.omegaZ = 0.6
GT_t.WS_t.ship_45cal_Mk6.reference_angle_Z = 0
GT_t.WS_t.ship_45cal_Mk6.LN = {}
GT_t.WS_t.ship_45cal_Mk6.LN[1] = {}
GT_t.WS_t.ship_45cal_Mk6.LN[1].type = 6
GT_t.WS_t.ship_45cal_Mk6.LN[1].distanceMin = 50
GT_t.WS_t.ship_45cal_Mk6.LN[1].max_trg_alt = 20
GT_t.WS_t.ship_45cal_Mk6.LN[1].reactionTime = 15
GT_t.WS_t.ship_45cal_Mk6.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_45cal_Mk6.LN[1].sensor, GT_t.WSN_t[10])
GT_t.WS_t.ship_45cal_Mk6.LN[1].PL = {}
GT_t.WS_t.ship_45cal_Mk6.LN[1].PL[1] = {}
GT_t.WS_t.ship_45cal_Mk6.LN[1].PL[1].ammo_capacity = 240
GT_t.WS_t.ship_45cal_Mk6.LN[1].PL[1].shell_name = {"A222_130"}; -- Currently uses A222 130 mm shells (406 mm ammo is WIP)
--GT_t.WS_t.ship_45cal_Mk6.LN[1].PL[1].shell_name = {"Shell_406mm"};

GT_t.WS_t.ship_45cal_Mk6.LN[1].PL[1].shot_delay = 60/2 -- (2 rounds per minute per barrel - average)
GT_t.WS_t.ship_45cal_Mk6.LN[1].automaticLoader = false;
GT_t.WS_t.ship_45cal_Mk6.LN[1].reload_time = 240 * 20
GT_t.WS_t.ship_45cal_Mk6.LN[1].BR = { {pos = {8, 0, 0.1} }, {pos = {8, 0, 0.0} }, {pos = {8, 0, -0.1} } }

-------------------------------------------------------------------------------------
--  Start Weapons systems
-------------------------------------------------------------------------------------
-- weapon systems
GT.WS = {}
local ws;
GT.WS.maxTargetDetectionRange = 450000;
GT.WS.radar_type = 102


------------------------------------------------------------------------------------------------
-- 3 Torrette to 410mm                                                                     --  
--------------  Torretta Cannone di Prua 1 Anton -----------------------------------------------
------------------------------------------------------------------------------------------------
-- Note: Currently can fire up to about 23 km in range with 130 mm shells from default AK130 weapons system.
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_45cal_Mk6 )
GT.WS[ws].area = 'Torre_380_Anton' --Torre_380_Anton
GT.WS[ws].center = 'CENTER_TOWER_01'
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].drawArgument2 = 1
GT.WS[ws].angles[1][1] = math.rad(140);
GT.WS[ws].angles[1][2] = math.rad(-140);
GT.WS[ws].angles[1][3] = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(0);	
GT.WS[ws].LN[1].BR[1].recoilTime = 1.5;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_01_1',
		recoilArgument = 33,
	},
	{
		connector_name = 'POINT_NC_01_2',
		recoilArgument = 33,
	},
	{
		connector_name = 'POINT_NC_01_3',
		recoilArgument = 33,
	}
}


-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-------------  Torretta Cannone di Prua 2 Bruno -------------------------------------------------------------

-- Note: Currently can fire up to about 23 km in range with 130 mm shells from default AK130 weapons system.
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_45cal_Mk6 )
GT.WS[ws].area = 'Torre_380_Bruno'
GT.WS[ws].center = 'CENTER_TOWER_02'
GT.WS[ws].drawArgument1 = 13
GT.WS[ws].drawArgument2 = 14
GT.WS[ws].angles[1][1] = math.rad(140);
GT.WS[ws].angles[1][2] = math.rad(-140);
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].LN[1].BR[1].recoilTime = 1.5;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_02_1',
		recoilArgument = 34,
	},
	{
		connector_name = 'POINT_NC_02_2',
		recoilArgument = 34,
	},
	{
		connector_name = 'POINT_NC_02_3',
		recoilArgument = 34,
	}
}

-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--- Torretta Cannone di Poppa  3  Dora ----------------------------------------------------------------------
---   Stern cannon turret
-- Note: Currently can fire up to about 23 km in range with 130 mm shells from default AK130 weapons system.
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_45cal_Mk6 )
GT.WS[ws].area = 'Torre_380_Dora' 
GT.WS[ws].center = 'CENTER_TOWER_03'
GT.WS[ws].drawArgument1 = 17
GT.WS[ws].drawArgument2 = 18
GT.WS[ws].reference_angle_Y = math.rad(180);
GT.WS[ws].angles[1][1] = math.rad(-45);
GT.WS[ws].angles[1][2] = math.rad(45);
--GT.WS[ws].angles = {
--					{math.rad(-45), math.rad(-180), math.rad(2), math.rad(80)},
--					{math.rad(180), math.rad(45), math.rad(2), math.rad(80)},
--}
GT.WS[ws].LN[1].BR[1].recoilTime = 1.5;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_03_1',
		recoilArgument = 35,
	},
	{
		connector_name = 'POINT_NC_03_2',
		recoilArgument = 35,
	},
	{
		connector_name = 'POINT_NC_03_3',
		recoilArgument = 35,
	}
}




-----------------------------------------------------------------------------------------------------------
---------- *************** 10 turrets with  2 cannons 127mm   ****************---------------
-----------------------------------------------------------------------------------------------------------

--- 1)  127mm turret turned towards the bow---------------------
-- Note: Currently can fire up to about 23 km in range with 127 mm shells from default FMC5 weapons system.
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_04'
GT.WS[ws].drawArgument1 = 19
GT.WS[ws].drawArgument2 = 20
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(40);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_1_1',
		recoilArgument = 36,
	},
	{
		connector_name = 'POINT_NC_MT_1_2',
		recoilArgument = 36,
	}
}



--- 2)  127mm turret turned towards the bow---------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_05'
GT.WS[ws].drawArgument1 = 21
GT.WS[ws].drawArgument2 = 22
GT.WS[ws].angles[1][1] = math.rad(0);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(0);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_2_1',
		recoilArgument = 37,
	},
	{
		connector_name = 'POINT_NC_MT_2_2',
		recoilArgument = 37,
	}
}

--- 3)  127mm turret turned towards the bow---------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Centrale_Sx'
GT.WS[ws].center = 'CENTER_TOWER_06'
GT.WS[ws].drawArgument1 = 23
GT.WS[ws].drawArgument2 = 24
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(30);
GT.WS[ws].reference_angle_Y = math.rad(179);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_3_1',
		recoilArgument = 38,
	},
	{
		connector_name = 'POINT_NC_MT_3_2',
		recoilArgument = 38,
	}
}

--- 4)  127mm turret turned towards the bow---------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Centrale_Dx'
GT.WS[ws].center = 'CENTER_TOWER_07'
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
GT.WS[ws].angles[1][1] = math.rad(-30);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-179);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_4_1',
		recoilArgument = 39,
	},
	{
		connector_name = 'POINT_NC_MT_4_2',
		recoilArgument = 39,
	}
}

--- 5)  127mm turret turned towards the bow---------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Centrale_Dx'
GT.WS[ws].center = 'CENTER_TOWER_08'
GT.WS[ws].drawArgument1 = 27
GT.WS[ws].drawArgument2 = 28
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(30);
GT.WS[ws].reference_angle_Y = math.rad(179);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_5_1',
		recoilArgument = 40,
	},
	{
		connector_name = 'POINT_NC_MT_5_2',
		recoilArgument = 40,
	}
}

--- 6)  127mm turret turned towards the bow---------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_SK_C_28 )
GT.WS[ws].area = 'Scafo_Centrale_Dx'
GT.WS[ws].center = 'CENTER_TOWER_09'
GT.WS[ws].drawArgument1 = 29
GT.WS[ws].drawArgument2 = 30
GT.WS[ws].angles[1][1] = math.rad(-30);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-179);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_6_1',
		recoilArgument = 41,
	},
	{
		connector_name = 'POINT_NC_MT_6_2',
		recoilArgument = 41,
	}
}

--- 7)  127mm turret facing aft --------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Centrale_Sx'
GT.WS[ws].center = 'CENTER_TOWER_10'
GT.WS[ws].drawArgument1 = 31
GT.WS[ws].drawArgument2 = 32
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(30);
GT.WS[ws].reference_angle_Y = math.rad(179);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_7_1',
		recoilArgument = 42,
	},
	{
		connector_name = 'POINT_NC_MT_7_2',
		recoilArgument = 42,
	}
}


--- 8)  127mm turret facing aft ---------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Centrale_Dx'
GT.WS[ws].center = 'CENTER_TOWER_11'
GT.WS[ws].drawArgument1 = 43
GT.WS[ws].drawArgument2 = 44
GT.WS[ws].angles[1][1] = math.rad(-30);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-179);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_8_1',
		recoilArgument = 144,
	},
	{
		connector_name = 'POINT_NC_MT_8_2',
		recoilArgument = 144,
	}
}

--- 9)  127mm turret facing aft --------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Centrale_Sx'
GT.WS[ws].center = 'CENTER_TOWER_12'
GT.WS[ws].drawArgument1 = 45
GT.WS[ws].drawArgument2 = 46
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(30);
GT.WS[ws].reference_angle_Y = math.rad(179);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_9_1',
		recoilArgument = 146,
	},
	{
		connector_name = 'POINT_NC_MT_9_2',
		recoilArgument = 146,
	}
}

--- 10)  127mm turret facing aft ---------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_38cal_Mk12 )
GT.WS[ws].area = 'Scafo_Centrale_Sx'
GT.WS[ws].center = 'CENTER_TOWER_13'
GT.WS[ws].drawArgument1 = 47
GT.WS[ws].drawArgument2 = 48
GT.WS[ws].angles[1][1] = math.rad(-30);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-179);   
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_NC_MT_10_1',
		recoilArgument = 148,
	},
	{
		connector_name = 'POINT_NC_MT_10_2',
		recoilArgument = 148,
	}
}


---------------------------------------------------------------------------------------------------------------------------------
---------- ***************   5  quad Bofors 40 mm guns    ****************------------------------
---------------------------------------------------------------------------------------------------------------------------------
--- 1)  quad Bofors 40 mm guns - Left
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 )
GT.WS[ws].area = 'Scafo_Centrale_Sx'
GT.WS[ws].center = 'CENTER_TOWER_14'
GT.WS[ws].drawArgument1 = 49
GT.WS[ws].drawArgument2 = 50
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(0);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_1_1',
		recoilArgument = 150,
	},
	{
		connector_name = 'POINT_Bofors_1_2',
		recoilArgument = 150,
	},
	{
		connector_name = 'POINT_Bofors_1_3',
		recoilArgument = 150,
	},
	{
		connector_name = 'POINT_Bofors_1_4',
		recoilArgument = 150,
	}
}

--- 2)  quad Bofors 40 mm guns - Right
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 )
GT.WS[ws].area = 'Scafo_Centrale_Sx'
GT.WS[ws].center = 'CENTER_TOWER_15'
GT.WS[ws].drawArgument1 = 51
GT.WS[ws].drawArgument2 = 52
GT.WS[ws].angles[1][1] = math.rad(-0);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(0);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_2_1',
		recoilArgument = 152,
	},
	{
		connector_name = 'POINT_Bofors_2_2',
		recoilArgument = 152,
	},
	{
		connector_name = 'POINT_Bofors_2_3',
		recoilArgument = 152,
	},
	{
		connector_name = 'POINT_Bofors_2_4',
		recoilArgument = 152,
	}
}



--- 3)  quad Bofors 40 mm guns - left/aft
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 )
GT.WS[ws].area = 'Strutture_Poppa'
GT.WS[ws].center = 'CENTER_TOWER_16'
GT.WS[ws].drawArgument1 = 53
GT.WS[ws].drawArgument2 = 54
GT.WS[ws].angles[1][1] = math.rad(180);
GT.WS[ws].angles[1][2] = math.rad(45);
GT.WS[ws].reference_angle_Y = math.rad(180);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_3_1',
		recoilArgument = 154,
	},
	{
		connector_name = 'POINT_Bofors_3_2',
		recoilArgument = 154,
	},
	{
		connector_name = 'POINT_Bofors_3_3',
		recoilArgument = 154,
	},
	{
		connector_name = 'POINT_Bofors_3_4',
		recoilArgument = 154,
	}
}


--- 4)  quad Bofors 40 mm guns - right/aft
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 )
GT.WS[ws].area = 'Strutture_Poppa'
GT.WS[ws].center = 'CENTER_TOWER_17'
GT.WS[ws].drawArgument1 = 55
GT.WS[ws].drawArgument2 = 56
GT.WS[ws].angles[1][1] = math.rad(-45);
GT.WS[ws].angles[1][2] = math.rad(-180);
GT.WS[ws].reference_angle_Y = math.rad(-179);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_4_1',
		recoilArgument = 156,
	},
	{
		connector_name = 'POINT_Bofors_4_2',
		recoilArgument = 156,
	},
	{
		connector_name = 'POINT_Bofors_4_3',
		recoilArgument = 156,
	},
	{
		connector_name = 'POINT_Bofors_4_4',
		recoilArgument = 156,
	}
}

--- 5)  quad Bofors 40 mm guns - center/aft
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Bofors_40_Mk_12 )
GT.WS[ws].area = 'Strutture_Poppa'
GT.WS[ws].center = 'CENTER_TOWER_18'
GT.WS[ws].drawArgument1 = 57
GT.WS[ws].drawArgument2 = 58
GT.WS[ws].angles[1][1] = math.rad(-45);
GT.WS[ws].angles[1][2] = math.rad(45);
GT.WS[ws].reference_angle_Y = math.rad(180);  
GT.WS[ws].LN[1].BR[1].recoilTime = 1.0;
GT.WS[ws].LN[1].fireAnimationArgument = 158;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_Bofors_5_1',
		recoilArgument = 158,
	},
	{
		connector_name = 'POINT_Bofors_5_2',
		recoilArgument = 158,
	},
	{
		connector_name = 'POINT_Bofors_5_3',
		recoilArgument = 158,
	},
	{
		connector_name = 'POINT_Bofors_5_4',
		recoilArgument = 158,
	}
}


--------------------------------------------------------------------------------------------------------------------------------
---------- ***************   32 Machine Gun 20mm    ****************------------------------
---------------------------------------------------------------------------------------------------------------------------------
--1) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_19'
GT.WS[ws].drawArgument1 = 59
GT.WS[ws].drawArgument2 = 60
GT.WS[ws].angles[1][1] = math.rad(135);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].reference_angle_Y = math.rad(35);  -- valore originale 90
GT.WS[ws].LN[1].fireAnimationArgument = 160;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_1_1',
		recoilArgument = 160,
	},
	{
		connector_name = 'POINT_MGun_1_2',
		recoilArgument = 160,
	}
}
--2) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_20'
GT.WS[ws].drawArgument1 = 61
GT.WS[ws].drawArgument2 = 62
GT.WS[ws].angles[1][1] = math.rad(-30);
GT.WS[ws].angles[1][2] = math.rad(-135);
GT.WS[ws].reference_angle_Y = math.rad(-35);  -- valore originale 90
GT.WS[ws].LN[1].fireAnimationArgument = 162;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_2_1',
		recoilArgument = 162,
	},
	{
		connector_name = 'POINT_MGun_2_2',
		recoilArgument = 162,
	}
}

--3) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_21'
GT.WS[ws].drawArgument1 = 63
GT.WS[ws].drawArgument2 = 64
GT.WS[ws].angles[1][1] = math.rad(135);
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].reference_angle_Y = math.rad(45);  -- valore originale 90
GT.WS[ws].LN[1].fireAnimationArgument = 164;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_3_1',
		recoilArgument = 164,
	},
	{
		connector_name = 'POINT_MGun_3_2',
		recoilArgument = 164,
	}
}
--4) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_22'
GT.WS[ws].drawArgument1 = 65
GT.WS[ws].drawArgument2 = 66
GT.WS[ws].angles[1][1] = math.rad(-135);
GT.WS[ws].angles[1][2] = math.rad(45);
GT.WS[ws].reference_angle_Y = math.rad(-45);  -- valore originale 90
GT.WS[ws].LN[1].fireAnimationArgument = 166;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_4_1',
		recoilArgument = 166,
	},
	{
		connector_name = 'POINT_MGun_4_2',
		recoilArgument = 166,
	}
}

--5) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_23'
GT.WS[ws].drawArgument1 = 67
GT.WS[ws].drawArgument2 = 68
GT.WS[ws].angles[1][1] = math.rad(135);
GT.WS[ws].angles[1][2] = math.rad(-35);
GT.WS[ws].reference_angle_Y = math.rad(90);  -- valore originale 90
GT.WS[ws].LN[1].fireAnimationArgument = 168;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_5_1',
		recoilArgument = 168,
	},
	{
		connector_name = 'POINT_MGun_5_2',
		recoilArgument = 168,
	}
}

--6) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_24'
GT.WS[ws].drawArgument1 = 69
GT.WS[ws].drawArgument2 = 70
GT.WS[ws].angles[1][1] = math.rad(-135);
GT.WS[ws].angles[1][2] = math.rad(35);
GT.WS[ws].reference_angle_Y = math.rad(-90);  -- valore originale 90
GT.WS[ws].LN[1].fireAnimationArgument = 170;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_6_1',
		recoilArgument = 170,
	},
	{
		connector_name = 'POINT_MGun_6_2',
		recoilArgument = 170,
	}
}

--7) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_25'
GT.WS[ws].drawArgument1 = 71
GT.WS[ws].drawArgument2 = 72
GT.WS[ws].angles[1][1] = math.rad(135);
GT.WS[ws].angles[1][2] = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(35);  
GT.WS[ws].LN[1].fireAnimationArgument = 172;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_7_1',
		recoilArgument = 172,
	},
	{
		connector_name = 'POINT_MGun_7_2',
		recoilArgument = 172,
	}
}


--8) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_26'
GT.WS[ws].drawArgument1 = 73
GT.WS[ws].drawArgument2 = 74
GT.WS[ws].angles[1][1] = math.rad(0);
GT.WS[ws].angles[1][2] = math.rad(-135);
GT.WS[ws].reference_angle_Y = math.rad(-35);  
GT.WS[ws].LN[1].fireAnimationArgument = 174;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_8_1',
		recoilArgument = 174,
	},
	{
		connector_name = 'POINT_MGun_8_2',
		recoilArgument = 174,
	}
}
--9) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_27'
GT.WS[ws].drawArgument1 = 75
GT.WS[ws].drawArgument2 = 76
GT.WS[ws].angles[1][1] = math.rad(0);
GT.WS[ws].angles[1][2] = math.rad(150);
GT.WS[ws].reference_angle_Y = math.rad(35);  
GT.WS[ws].LN[1].fireAnimationArgument = 176;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_9_1',
		recoilArgument = 176,
	},
	{
		connector_name = 'POINT_MGun_9_2',
		recoilArgument = 176,
	}
}

--10) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_28'
GT.WS[ws].drawArgument1 = 77
GT.WS[ws].drawArgument2 = 78
GT.WS[ws].angles[1][1] = math.rad(-150);
GT.WS[ws].angles[1][2] = math.rad(-0);
GT.WS[ws].reference_angle_Y = math.rad(-35);  
GT.WS[ws].LN[1].fireAnimationArgument = 178;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_10_1',
		recoilArgument = 178,
	},
	{
		connector_name = 'POINT_MGun_10_2',
		recoilArgument = 178,
	}
}

--11) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_29'
GT.WS[ws].drawArgument1 = 79
GT.WS[ws].drawArgument2 = 80
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(35);  
GT.WS[ws].LN[1].fireAnimationArgument = 180;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_11_1',
		recoilArgument = 180,
	},
	{
		connector_name = 'POINT_MGun_11_2',
		recoilArgument = 180,
	}
}

--12) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_30'
GT.WS[ws].drawArgument1 = 81
GT.WS[ws].drawArgument2 = 82
GT.WS[ws].angles[1][1] = math.rad(-0);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-35);  
GT.WS[ws].LN[1].fireAnimationArgument = 182;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_12_1',
		recoilArgument = 182,
	},
	{
		connector_name = 'POINT_MGun_12_2',
		recoilArgument = 182,
	}
}

--13) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_31'
GT.WS[ws].drawArgument1 = 83
GT.WS[ws].drawArgument2 = 84
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(-10);
GT.WS[ws].reference_angle_Y = math.rad(35);  
GT.WS[ws].LN[1].fireAnimationArgument = 184;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_13_1',
		recoilArgument = 184,
	},
	{
		connector_name = 'POINT_MGun_13_2',
		recoilArgument = 184,
	}
}

--14) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_32'
GT.WS[ws].drawArgument1 = 85
GT.WS[ws].drawArgument2 = 86
GT.WS[ws].angles[1][1] = math.rad(-10);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-35);  
GT.WS[ws].LN[1].fireAnimationArgument = 186;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_14_1',
		recoilArgument = 186,
	},
	{
		connector_name = 'POINT_MGun_14_2',
		recoilArgument = 186,
	}
}

--15) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_33'
GT.WS[ws].drawArgument1 = 87
GT.WS[ws].drawArgument2 = 88
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].LN[1].fireAnimationArgument = 188;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_15_1',
		recoilArgument = 188,
	},
	{
		connector_name = 'POINT_MGun_15_2',
		recoilArgument = 188,
	}
}

--16) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_34'
GT.WS[ws].drawArgument1 = 89
GT.WS[ws].drawArgument2 = 90
GT.WS[ws].angles[1][1] = math.rad(-150);
GT.WS[ws].angles[1][2] = math.rad(-0);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].LN[1].fireAnimationArgument = 190;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_16_1',
		recoilArgument = 190,
	},
	{
		connector_name = 'POINT_MGun_16_2',
		recoilArgument = 190,
	}
}

--17) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_35'
GT.WS[ws].drawArgument1 = 91
GT.WS[ws].drawArgument2 = 92
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(10);
GT.WS[ws].reference_angle_Y = math.rad(35);  
GT.WS[ws].LN[1].fireAnimationArgument = 192;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_17_1',
		recoilArgument = 192,
	},
	{
		connector_name = 'POINT_MGun_17_2',
		recoilArgument = 192,
	}
}

--18) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_36'
GT.WS[ws].drawArgument1 = 93
GT.WS[ws].drawArgument2 = 94
GT.WS[ws].angles[1][1] = math.rad(-10);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-35);  
GT.WS[ws].LN[1].fireAnimationArgument = 194;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_18_1',
		recoilArgument = 192,
	},
	{
		connector_name = 'POINT_MGun_18_2',
		recoilArgument = 192,
	}
}

--19) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_37'
GT.WS[ws].drawArgument1 = 95
GT.WS[ws].drawArgument2 = 96
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(10);
GT.WS[ws].reference_angle_Y = math.rad(125);  
GT.WS[ws].LN[1].fireAnimationArgument = 196;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_19_1',
		recoilArgument = 196,
	},
	{
		connector_name = 'POINT_MGun_19_2',
		recoilArgument = 196,
	}
}

--20) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_38'
GT.WS[ws].drawArgument1 = 97
GT.WS[ws].drawArgument2 = 98
GT.WS[ws].angles[1][1] = math.rad(-10);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-125);  
GT.WS[ws].LN[1].fireAnimationArgument = 198;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_20_1',
		recoilArgument = 198,
	},
	{
		connector_name = 'POINT_MGun_20_2',
		recoilArgument = 198,
	}
}
--21) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_39'
GT.WS[ws].drawArgument1 = 99
GT.WS[ws].drawArgument2 = 100
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].LN[1].fireAnimationArgument = 199;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_21_1',
		recoilArgument = 199,
	},
	{
		connector_name = 'POINT_MGun_21_2',
		recoilArgument = 199,
	}
}

--22) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_40'
GT.WS[ws].drawArgument1 = 101
GT.WS[ws].drawArgument2 = 102
GT.WS[ws].angles[1][1] = math.rad(-0);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].LN[1].fireAnimationArgument = 202;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_22_1',
		recoilArgument = 202,
	},
	{
		connector_name = 'POINT_MGun_22_2',
		recoilArgument = 202,
	}
}

--23) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_41'
GT.WS[ws].drawArgument1 = 103
GT.WS[ws].drawArgument2 = 104
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(0);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].LN[1].fireAnimationArgument = 204;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_23_1',
		recoilArgument = 204,
	},
	{
		connector_name = 'POINT_MGun_23_2',
		recoilArgument = 204,
	}
}

--24) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_42'
GT.WS[ws].drawArgument1 = 105
GT.WS[ws].drawArgument2 = 106
GT.WS[ws].angles[1][1] = math.rad(-0);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].LN[1].fireAnimationArgument = 206;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_24_1',
		recoilArgument = 206,
	},
	{
		connector_name = 'POINT_MGun_24_2',
		recoilArgument = 206,
	}
}
--25) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_43'
GT.WS[ws].drawArgument1 = 107
GT.WS[ws].drawArgument2 = 108
GT.WS[ws].angles[1][1] = math.rad(160);
GT.WS[ws].angles[1][2] = math.rad(10);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].LN[1].fireAnimationArgument = 208;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_25_1',
		recoilArgument = 208,
	},
	{
		connector_name = 'POINT_MGun_25_2',
		recoilArgument = 208,
	}
}
--26) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_44'
GT.WS[ws].drawArgument1 = 109
GT.WS[ws].drawArgument2 = 110
GT.WS[ws].angles[1][1] = math.rad(-10);
GT.WS[ws].angles[1][2] = math.rad(-160);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].LN[1].fireAnimationArgument = 210;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_26_1',
		recoilArgument = 210,
	},
	{
		connector_name = 'POINT_MGun_26_2',
		recoilArgument = 210,
	}
}
--27) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_45'
GT.WS[ws].drawArgument1 = 111
GT.WS[ws].drawArgument2 = 112
GT.WS[ws].angles[1][1] = math.rad(180);
GT.WS[ws].angles[1][2] = math.rad(45);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].LN[1].fireAnimationArgument = 212;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_27_1',
		recoilArgument = 212,
	},
	{
		connector_name = 'POINT_MGun_27_2',
		recoilArgument = 212,
	}
}
--28) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_46'
GT.WS[ws].drawArgument1 = 113
GT.WS[ws].drawArgument2 = 114
GT.WS[ws].angles[1][1] = math.rad(-45);
GT.WS[ws].angles[1][2] = math.rad(-180);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].LN[1].fireAnimationArgument = 214;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_28_1',
		recoilArgument = 214,
	},
	{
		connector_name = 'POINT_MGun_28_2',
		recoilArgument = 214,
	}
}
--29) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_47'
GT.WS[ws].drawArgument1 = 115
GT.WS[ws].drawArgument2 = 116
GT.WS[ws].angles[1][1] = math.rad(180);
GT.WS[ws].angles[1][2] = math.rad(45);
GT.WS[ws].reference_angle_Y = math.rad(90);  
GT.WS[ws].LN[1].fireAnimationArgument = 216;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_29_1',
		recoilArgument = 216,
	},
	{
		connector_name = 'POINT_MGun_29_2',
		recoilArgument = 216,
	}
}
--30) MGun Dx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_48'
GT.WS[ws].drawArgument1 = 117
GT.WS[ws].drawArgument2 = 118
GT.WS[ws].angles[1][1] = math.rad(-45);
GT.WS[ws].angles[1][2] = math.rad(-180);
GT.WS[ws].reference_angle_Y = math.rad(-90);  
GT.WS[ws].LN[1].fireAnimationArgument = 218;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_30_1',
		recoilArgument = 218,
	},
	{
		connector_name = 'POINT_MGun_30_2',
		recoilArgument = 218,
	}
}
--31) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Sx'
GT.WS[ws].center = 'CENTER_TOWER_49'
GT.WS[ws].drawArgument1 = 119
GT.WS[ws].drawArgument2 = 120
GT.WS[ws].angles[1][1] = math.rad(180);
GT.WS[ws].angles[1][2] = math.rad(45);
GT.WS[ws].reference_angle_Y = math.rad(180);  
GT.WS[ws].LN[1].fireAnimationArgument = 220;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_31_1',
		recoilArgument = 220,
	},
	{
		connector_name = 'POINT_MGun_31_2',
		recoilArgument = 220,
	}
}

--32) MGun Sx
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_Oerlikon_20 )
GT.WS[ws].area = 'Scafo_Prua_Dx'
GT.WS[ws].center = 'CENTER_TOWER_50'
GT.WS[ws].drawArgument1 = 121
GT.WS[ws].drawArgument2 = 122
GT.WS[ws].angles[1][1] = math.rad(-45);
GT.WS[ws].angles[1][2] = math.rad(-180);
GT.WS[ws].reference_angle_Y = math.rad(-180);  
GT.WS[ws].LN[1].fireAnimationArgument = 222;
GT.WS[ws].LN[1].BR[1].recoilTime = 1;
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_MGun_32_1',
		recoilArgument = 222,
	},
	{
		connector_name = 'POINT_MGun_32_2',
		recoilArgument = 222,
	}
}

------------------------------------------------------------------------------------------------------
--      Parte Finale                                                                                --
------------------------------------------------------------------------------------------------------
GT.Name = "USS_NorthCarolina"
GT.DisplayName = _("USS NorthCarolina")
GT.Rate = 6000

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV", "long-range naval FLIR",},
                RADAR = {
                "Patriot str",
                "ticonderoga search radar",
                }
            };


			
GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;

GT.Singleton   ="no";
GT.mapclasskey = "P0091000067";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,wsType_GenericLightArmoredShip,

                    "Cruisers",
                    "RADAR_BAND1_FOR_ARM",
                    "DetectionByAWACS",
				};
				



GT.Categories = {
					{name = "Armed Ship"},
				};
---GT.Countries = { "GERMANY", "Germany", "GER",};
add_surface_unit(GT)	
			