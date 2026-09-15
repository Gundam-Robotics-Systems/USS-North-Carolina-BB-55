dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/WeaponSystemTools.lua")
dofile("GroundUnits/WeaponSystem/Tools/LauncherTools.lua")
dofile("GroundUnits/WeaponSystem/Tools/TurretTools.lua")

dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")

local host = ED_AudioAPI.createHost(ED_AudioAPI.ContextWorld, "NorthCarolina_WS")

-- turret

local NorthCarolina_turret = {}

function NorthCarolina_turret:calc_pitch_gain(rotationSpeedY)
	local rotSpdY = math.abs(rotationSpeedY)
	local pitch = 0.5 + rotSpdY
	local gain = ((rotSpdY > 1.0) and 1.0 or rotSpdY) + 0.8
	
	return pitch, gain
end

setmetatable(NorthCarolina_turret, {__index = class_turret})

function onEvent_CreateTurret(arg1, arg2)
	local ws_type = arg1
	local ws_id = arg2
	
	local sound_file = NorthCarolina_turret:select_sound_file(getWsType(ws_type))
	local sound_source = ED_AudioAPI.createSource(host, sound_file)
	
	local turret = NorthCarolina_turret:new(getWsType(ws_type), sound_source)
	table.insert(turret_list, turret)
end

function onEvent_StopTurret(arg1)
	if turret_list[arg1] ~= nil then
		turret_list[arg1]:stop_play()
	end
end

-- turret

-- launcher

local NorthCarolina_launcher = {}

-- _9M311(kortik)
-- WS_ID:	1
-- L_ID:	1
-- L_TYPE:	6

-- GSH_6_30K(kortik)
-- WS_ID:	1
-- L_ID:	2
-- L_TYPE:	101

-- _9M311(kortik)
-- WS_ID:	2
-- L_ID:	1
-- L_TYPE:	6

-- GSH_6_30K(kortik)
-- WS_ID:	2
-- L_ID:	2
-- L_TYPE:	101

-- _9M311(kortik)
-- WS_ID:	3
-- L_ID:	1
-- L_TYPE:	6

-- GSH_6_30K(kortik)
-- WS_ID:	3
-- L_ID:	2
-- L_TYPE:	101

-- _9M311(kortik)
-- WS_ID:	4
-- L_ID:	1
-- L_TYPE:	6

-- GSH_6_30K(kortik)
-- WS_ID:	4
-- L_ID:	2
-- L_TYPE:	101

-- _9M311(kortik)
-- WS_ID:	5
-- L_ID:	1
-- L_TYPE:	6

-- GSH_6_30K(kortik)
-- WS_ID:	5
-- L_ID:	2
-- L_TYPE:	101

-- _9M311(kortik)
-- WS_ID:	6
-- L_ID:	1
-- L_TYPE:	6

-- GSH_6_30K(kortik)
-- WS_ID:	6
-- L_ID:	2
-- L_TYPE:	101

-- AK130
-- WS_ID:	7
-- L_ID:	1
-- L_TYPE:	4

-- RadarTrack
-- WS_ID:	8
-- L_ID:	1
-- L_TYPE:	0

-- ship_klinok
-- WS_ID:	9
-- L_ID:	1
-- L_TYPE:	5

-- ship_klinok
-- WS_ID:	10
-- L_ID:	1
-- L_TYPE:	5

-- ship_klinok
-- WS_ID:	11
-- L_ID:	1
-- L_TYPE:	5

-- ship_klinok
-- WS_ID:	12
-- L_ID:	1
-- L_TYPE:	5

-- RadarTrack
-- WS_ID:	13
-- L_ID:	1
-- L_TYPE:	0

-- ship_rifM
-- WS_ID:	14
-- L_ID:	1
-- L_TYPE:	5

-- ship_rifM
-- WS_ID:	15
-- L_ID:	1
-- L_TYPE:	5

-- ship_rifM
-- WS_ID:	16
-- L_ID:	1
-- L_TYPE:	5

-- ship_rifM
-- WS_ID:	17
-- L_ID:	1
-- L_TYPE:	5

-- ship_rifM
-- WS_ID:	18
-- L_ID:	1
-- L_TYPE:	5

-- ship_rifM
-- WS_ID:	19
-- L_ID:	1
-- L_TYPE:	5

-- RadarTrack
-- WS_ID:	20
-- L_ID:	1
-- L_TYPE:	0

-- ship_rif
-- WS_ID:	21
-- L_ID:	1
-- L_TYPE:	5

-- ship_rif
-- WS_ID:	22
-- L_ID:	1
-- L_TYPE:	5

-- ship_rif
-- WS_ID:	23
-- L_ID:	1
-- L_TYPE:	5

-- ship_rif
-- WS_ID:	24
-- L_ID:	1
-- L_TYPE:	5

-- ship_rif
-- WS_ID:	25
-- L_ID:	1
-- L_TYPE:	5

-- ship_rif
-- WS_ID:	26
-- L_ID:	1
-- L_TYPE:	5

-- ship_granit
-- WS_ID:	27
-- L_ID:	1
-- L_TYPE:	5

function NorthCarolina_launcher:select_launcher(ws_id, l_id) -- This is the code that links the weapons with the weaponsystem sound definitions found in CannonSounds.lua (Cadarth)
---- 3 Turret 406mm	
	if ws_id == 1 and l_id == 1 then
	    return ship_45cal_Mk6
	elseif ws_id == 2 and l_id == 1 then
		return ship_45cal_Mk6
	elseif ws_id == 3 and l_id == 1 then
		return ship_45cal_Mk6
---- 10 turret 127mm		
	elseif ws_id == 4 and l_id == 1 then
		return ship_38cal_Mk12
	elseif ws_id == 5 and l_id == 1 then
		return ship_38cal_Mk12
	elseif ws_id == 6 and l_id == 1 then
		return ship_38cal_Mk12
	elseif ws_id == 7 and l_id == 1 then
		return ship_38cal_Mk12
	elseif ws_id == 8 and l_id == 1 then
		return ship_38cal_Mk12
	elseif ws_id == 9 and l_id == 1 then
		return ship_38cal_Mk12
	elseif ws_id == 10 and l_id == 1 then
		return ship_38cal_Mk12
	elseif ws_id == 11 and l_id == 1 then
		return ship_38cal_Mk12	
	elseif ws_id == 12 and l_id == 1 then
		return ship_38cal_Mk12
	elseif ws_id == 13 and l_id == 1 then
		return ship_38cal_Mk12
---- 5 MachineGun Bofors 40mm		
	elseif ws_id == 14 and l_id == 1 then
		return ship_Bofors_40_Mk_12
	elseif ws_id == 15 and l_id == 1 then
		return ship_Bofors_40_Mk_12	
	elseif ws_id == 16 and l_id == 1 then
		return ship_Bofors_40_Mk_12				
 	elseif ws_id == 17 and l_id == 1 then
		return ship_Bofors_40_Mk_12
	elseif ws_id == 18 and l_id == 1 then
		return ship_Bofors_40_Mk_12	
---- 32 MachineGun Bofors 20mm	
	elseif ws_id == 19 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 20 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 21 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 22 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 23 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 24 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 25 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 26 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 27 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 28 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 29 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 30 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 31 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 32 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 33 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 34 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 35 and l_id == 1 then
		return ship_Oerlikon_20
       elseif ws_id == 36 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 37 and l_id == 1 then
		return ship_Oerlikon_20
       elseif ws_id == 38 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 39 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 40 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 41 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 42 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 43 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 44 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 45 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 46 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 47 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 48 and l_id == 1 then
		return ship_Oerlikon_20
	elseif ws_id == 49 and l_id == 1 then
		return ship_Oerlikon_20
        elseif ws_id == 50 and l_id == 1 then
		return ship_Oerlikon_20		
	end
end

setmetatable(NorthCarolina_launcher, {__index = class_launcher})

function onEvent_CreateLauncher(arg1, arg2, arg3)
	local ws_id = arg1
	local l_id = arg2
	local l_type = getWsType(arg3)
	local launcher_param = NorthCarolina_launcher:select_launcher(ws_id, l_id)
	
	if launcher_param ~= -1 then
		local launcher = class_launcher:new(ws_id, l_id, l_type, launcher_param, host)
		NorthCarolina_launcher:table_insert(launcher)
	end
end

function onEvent_SingleShot(arg1, arg2)
	if launcher_list[arg1][arg2] ~= nil then
		NorthCarolina_launcher:single_shot(arg1, arg2)
	end
end

function onEvent_StartBurst(arg1, arg2)
	if launcher_list[arg1][arg2] ~= nil then
		NorthCarolina_launcher:start_burst(arg1, arg2)
	end
end

function onEvent_EndBurst(arg1, arg2)
	if launcher_list[arg1][arg2] ~= nil then
		NorthCarolina_launcher:end_burst(arg1, arg2)
	end
end

function onEvent_ReloadFirst(arg1, arg2)
	if launcher_list[arg1][arg2] ~= nil then
		NorthCarolina_launcher:reload_first(arg1, arg2)
	end
end

function onEvent_ReloadSecond(arg1, arg2)
	if launcher_list[arg1][arg2] ~= nil then
		NorthCarolina_launcher:reload_second(arg1, arg2)
	end
end

-- launcher

-- maintain

function onUpdate(params)
	updateHost(host, params)
	
	if turret_list[params.WsId] ~= nil then
		turret_list[params.WsId]:update(params.RotationSpeedY)
	end
end

-- maintain