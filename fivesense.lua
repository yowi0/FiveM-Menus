Citizen.CreateThread(function()
    -- // Shit something went from lol I am gonna fix it instatly _FiVe_SeNsE_ #1 \\ --
   local _c = Citizen
   local _FiVe_SeNsE_ = {
       allweps = {"PISTOL","PISTOL_MK2","COMBATPISTOL","APPISTOL","REVOLVER","REVOLVER_MK2","DOUBLEACTION","PISTOL50","SNSPISTOL","SNSPISTOL_MK2","HEAVYPISTOL","VINTAGEPISTOL","STUNGUN","FLAREGUN","MARKSMANPISTOL","KNIFE","KNUCKLE","NIGHTSTICK","HAMMER","BAT","GOLFCLUB","CROWBAR","BOTTLE","DAGGER","HATCHET","MACHETE","FLASHLIGHT","SWITCHBLADE","POOLCUE","PIPEWRENCH","MICROSMG","MINISMG","SMG","SMG_MK2","ASSAULTSMG","COMBATPDW","GUSENBERG","MACHINEPISTOL","MG","COMBATMG","COMBATMG_MK2","ASSAULTRIFLE","ASSAULTRIFLE_MK2","CARBINERIFLE","CARBINERIFLE_MK2","ADVANCEDRIFLE","SPECIALCARBINE","SPECIALCARBINE_MK2","BULLPUPRIFLE","BULLPUPRIFLE_MK2","COMPACTRIFLE","PUMPSHOTGUN","PUMPSHOTGUN_MK2","SWEEPERSHOTGUN","SAWNOFFSHOTGUN","BULLPUPSHOTGUN","ASSAULTSHOTGUN","MUSKET","HEAVYSHOTGUN","DBSHOTGUN","SNIPERRIFLE","HEAVYSNIPER","HEAVYSNIPER_MK2","MARKSMANRIFLE","MARKSMANRIFLE_MK2","GRENADELAUNCHER","GRENADELAUNCHER_SMOKE","RPG","MINIGUN","FIREWORK","RAILGUN","HOMINGLAUNCHER","COMPACTLAUNCHER","GRENADE","STICKYBOMB","PROXMINE","BZGAS","SMOKEGRENADE","MOLOTOV","FIREEXTINGUISHER","PETROLCAN","SNOWBALL","FLARE","BALL" },
       allwepwithWEAPON = {"waeapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_flashlight","weapon_unarmed","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_knuckle","weapon_knife","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench","weapon_battleaxe","weapon_poolcue","weapon_stone_hatchet","weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_snspistol_mk2","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun","weapon_marksmanpistol","weapon_revolver","weapon_revolver_mk2","weapon_doubleaction","weapon_raypistol","weapon_ceramicpistol","weapon_navyrevolver","weapon_gadgetpistol","weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_combatpdw","weapon_machinepistol","weapon_minismg","weapon_raycarbine","weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_musket","weapon_heavyshotgun","weapon_dbshotgun","weapon_autoshotgun","weapon_combatshotgun","weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_specialcarbine_mk2","weapon_bullpuprifle","weapon_bullpuprifle_mk2","weapon_compactrifle","weapon_militaryrifle","weapon_mg","weapon_combatmg","weapon_combatmg_mk2","weapon_gusenberg","weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2","weapon_rpg","weapon_grenadelauncher","weapon_grenadelauncher_smoke","weapon_minigun","weapon_firework","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher","weapon_rayminigun","weapon_grenade","weapon_bzgas","weapon_molotov","weapon_stickybomb","weapon_proxmine","weapon_snowball","weapon_pipebomb","weapon_ball","weapon_smokegrenade","weapon_flare","weapon_petrolcan","weapon_fireextinguisher","weapon_hazardcan",},
       allwepwithWEAPONGlife = {"WT_RIFLE_ADV","WT_PIST_AP","WT_RIFLE_ASL","WT_RIFLE_ASL2","WT_SG_ASL","WT_SMG_ASL","WT_AUTOSHGN","WT_BAT","WT_BALL","WT_BATTLEAXE","WT_BOTTLE","WT_BULLRIFLE","WT_BULLRIFLE2","WT_SG_BLP","WT_BZGAS","WT_RIFLE_CBN","WT_RIFLE_CBN2","M60","M60 MK II","WT_COMBATPDW","WT_PIST_CBT","WT_CMPGL","WT_CMPRIFLE","WT_CROWBAR","Dagger","WT_DBSHGN","WT_REV_DA","WT_FIRE","WT_FWRKLNCHR","WT_FLARE","WT_FLAREGUN","WT_FLASHLIGHT","WT_GOLFCLUB","WT_GNADE","WT_GL","WT_GUSENBERG","WT_HAMMER","WT_HATCHET","WT_HEAVYPSTL","WT_HVYSHOT","AWP","AWP MK II","WT_HOMLNCH","WT_KNIFE","WT_KNUCKLE","WT_MACHETE","WT_MCHPIST","WT_MKPISTOL","WT_MKRIFLE","WT_MKRIFLE2","WT_MG","WT_SMG_MCR","WT_MINIGUN","WT_MINISMG","WT_MOLOTOV","WT_MUSKET","WT_NGTSTK","WT_PETROL","WT_PIPEBOMB","WT_PIST","WT_PIST_50","WT_PIST2","WT_POOLCUE","WT_PRXMINE","WT_SG_PMP","WT_SG_PMP2","WT_RAILGUN","WT_REVOLVER","WT_REVOLVER2","WT_RPG","WT_SG_SOF","WT_SMG","WT_SMG2","WT_GNADE_SMK","WT_SNIP_RIF","WT_SNWBALL","WT_SNSPISTOL","WT_SNSPISTOL2","WT_RIFLE_SCBN","WT_SPCARBINE2","WT_GNADE_STK","WT_STUN","WT_SWBLADE","WT_UNARMED","WT_VPISTOL","WT_WRENCH","WT_RAYPISTOL","WT_RAYCARBINE","WT_SHATCHET","WT_CERPST","WT_REV_NV","WT_CMBSHGN","WT_MLTRYRFL",},
       natives = {}, us = {tab = 'Player'}, menu = {loader = true}, pos = {}, friends = {}, 
       Keybinds = {
           ['Noclip'] = {'-', 1337},
           ['GLife-Noclip'] = {'-', 1337},
           ['Freecam'] = {'-', 1337},
           ['FillAmmo'] = {'-', 1337},
           ['RepairVehicle'] = {'-', 1337},
           ['Glifefarm'] = {'-', 1337},
           ['Godmode'] = {'-', 1337},
           ['Heal'] = {'-', 1337},
           ['Armor'] = {'-', 1337},
           ['Fastrun'] = {'-', 1337},
           ['Maxtune'] = {'-', 1337},
           ['FlipVehicle'] = {'-', 1337},
           ['Revive'] = {'-', 1337},
           ['TeleporToWaypoint'] = {'-', 1337},
           ['TeleportZombies'] = {'-', 1337},
           --['SpawnZombies'] = {'-', 1337},
           ['SetZombieHP'] = {'-', 1337},
           ['PanicKey'] = {'-', 1337},
           ['AutoKillZomb'] = {'-', 1337},		
   
       },
       _shit_ThisMathematicShit = {
           _ud_abs = math.abs,
           _ud_atan2 = math.atan2,
           _ud_ceil = math.ceil,
           _ud_cos = math.cos,
           _ud_deg = math.deg,
           _ud_pi = math.pi,
           _ud_rad = math.rad,
           _ud_random = math.random,
           _ud_sin = math.sin,
           _ud_sqrt = math.sqrt,
           _ud_floor = math.floor,  
           _ud_clamp = math.clamp,
           _ud_vectorthree = vector3,
           _ud_Ppairs = pairs,
           _ud_Iipairs = ipairs,
       },
       _shitlol_ThisStringShit = {
           _ud_format = string.format,
           _ud_upper = string.upper,
           _ud_len = string.len,
           _ud_lower = string.lower,
           _ud_sub = string.sub,
           _ud_print = print,
           _ud_gmatch = string.gmatch,
       },
       _shitmeh_ThisCoroutineShit = {
           _ud_wrap = coroutine.wrap,
           _ud_yield = coroutine.yield,
           _ud_metatable = setmetatable,
       },
       _shitfuck_ThisTableShit = {
           _ud_tremove= table.remove,
           _ud_tinsert= table.insert,
           _ud_tunpack= table.unpack,
           _ud_msgpack= msgpack.pack,
           _ud_msgunpack= msgpack.unpack,
       },
       n = {
           _ud_string = tostring, 
           _ud_num = tonumber,
           _ud_wait = _c.Wait,
           _ud_thr = _c.CreateThread,
           _ud_inv = _c.InvokeNative,
           _ud_rra = _c.ReturnResultAnyway,
           _ud_int = _c.PointerValueInt,
           _ud_pvv = _c.PointerValueVector,
           _ud_raf = _c.ResultAsFloat,
           _ud_ras = _c.ResultAsString,
           _ud_ral = _c.ResultAsLong,
           _ud_rav = _c.ResultAsVector,
           _ud_rai = _c.ResultAsInteger,
           _ud_pvf = _c.PointerValueFloat,
           _ud_rao = _c.ResultAsObject,
           _ud_ii = _c.PointerValueIntInitialized,
           _ud_pvi = _c.PointerValueInt,
       },
       _shitkurva_ThisIsshitwithall = {
           _ud_submenu = 'Pistols',
           _ud__ud_keyskeys = {
               ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
               ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
               ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40,
               ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
               ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
               ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RCTRL"] = 70, ["D"] = 178, ["D"] = 173,
               ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DEL"] = 178, ["R"] = 70, ["R"] = 175, ["H"] = 213,
               ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173, ["T"] = 37, ["T"] = 27,
               ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118, ["MOUSE2"] = 25, ["MOUSE1"] = 24, ["INSERT"] = 121,
               
           },
           _ud__ud_bindkeys = {
               ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
               ["E"] = 322, ["1"] = 288, ["2"] = 289, ["3"] = 170, ["5"] = 166, ["6"] = 167, ["7"] = 168, ["8"] = 169, ["9"] = 56, ["10"] = 57,
               ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BS"] = 177,
               ["T"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40,
               ["C"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
               ["L"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
               ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DEL"] = 178,
               ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173, ["LEFTSHIFT"] = 21,
               ["L"] = 36, ["L"] = 19, ["S"] = 22, ["R"] = 70,
               ["H"] = 213, ["P"] = 10, ["p"] = 11, ["D"] = 178,
               ["L"] = 174, ["R"] = 175, ["T"] = 27, ["D"] = 173,
               ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118, ["M2"] = 25, ["M1"] = 24, ["INSERT"] = 121,
               
           },
           boundingplayers = true, 
           CORNERplayers = true,
           healthplayers = true, 
           armorplayers = true,
           glowplayers = true,
           vehicletab = true,
           menuenabled = true,
           HealthDynamicColor = true,
           HudColor = false,
           ArmorDynamicColor = true,
           newboundplayers = true,
           newhealthplayers = true,
           newarmorplayers = true,
   
       }, 
       weapons = { '<font color="#b4e61e">[PISTOLS]', "PISTOL","PISTOL_MK2","COMBATPISTOL","APPISTOL","REVOLVER","REVOLVER_MK2","DOUBLEACTION","PISTOL50","SNSPISTOL","SNSPISTOL_MK2","HEAVYPISTOL","VINTAGEPISTOL","STUNGUN","FLAREGUN","MARKSMANPISTOL",'<font color="#b4e61e">[MELEE]', "KNIFE","KNUCKLE","NIGHTSTICK","HAMMER","BAT","GOLFCLUB","CROWBAR","BOTTLE","DAGGER","HATCHET","MACHETE","FLASHLIGHT","SWITCHBLADE","POOLCUE","PIPEWRENCH",'<font color="#b4e61e">[SMGs]', "MICROSMG","MINISMG","SMG","SMG_MK2","ASSAULTSMG","COMBATPDW","GUSENBERG","MACHINEPISTOL","MG","COMBATMG","COMBATMG_MK2",'<font color="#b4e61e">[RIFLES]', "ASSAULTRIFLE","ASSAULTRIFLE_MK2","CARBINERIFLE","CARBINERIFLE_MK2","ADVANCEDRIFLE","SPECIALCARBINE","SPECIALCARBINE_MK2","BULLPUPRIFLE","BULLPUPRIFLE_MK2","COMPACTRIFLE",'<font color="#b4e61e">[SHOTGUNS]', "PUMPSHOTGUN","PUMPSHOTGUN_MK2","SWEEPERSHOTGUN","SAWNOFFSHOTGUN","BULLPUPSHOTGUN","ASSAULTSHOTGUN","MUSKET","HEAVYSHOTGUN","DBSHOTGUN",'<font color="#b4e61e">[SNIPERS]', "SNIPERRIFLE","HEAVYSNIPER","HEAVYSNIPER_MK2","MARKSMANRIFLE","MARKSMANRIFLE_MK2", '<font color="#b4e61e">[USELESS]', "GRENADELAUNCHER","GRENADELAUNCHER_SMOKE","RPG","MINIGUN","FIREWORK","RAILGUN","HOMINGLAUNCHER","COMPACTLAUNCHER","GRENADE","STICKYBOMB","PROXMINE","BZGAS","SMOKEGRENADE","MOLOTOV","FIREEXTINGUISHER","PETROLCAN","SNOWBALL","FLARE","BALL" },
       hitsoundlol = {},
       hitsound = {},
       freecam = { 
           freezer = false,
           mode = 1,
           modes = {
               "Teleport",
               "Fast and Furious",
               "Vehicle Spawner",
               "Entity Deleter",
               "Particle Spawner",
               "Ped Spawner",
               "Animal Spawner",
               "Prop Spawner",
               "Map Fucker",
               "Tree Spawner",
               "Look Around",
               "Freeze Entity",
               "Terrorist Attack",
           },
       },
       static = {
           ["Aimbot"] = {0.0, 0.0},
           ["Player"] = {0.0},
           ["Weapons"] = {0.0, 0.0, 0.0},
           ["Visuals"] = {0.0, 0.0, 0.0},
           ["Settings"] = {0.0},
           ["Online"] = {0.0, 0.0, 0.0},
           ["Lua"] = {0.0},
           ["Dumper"] = {0.0, 0.0, 0.0},
           --["Keybinds"] = {0.0, 0.0, 0.0},
       },
       drag = {
           [1] = {x = 0.5, y = 0.5, w = 0.510, h = 0.5},
           [2] = {x = 0.5, y = 0.5},
       },
       ThisIsSliders = {
           [2] = {max = 1.0, min = 0.0,value = 0.4},
           [3] = {max = 100, min = 0,value = 100},
           [4] = {max = 50.0, min = 0,value = 20.0},
           [5] = {max = 255, min = 0, value = 200},
           [6] = {max = 255, min = 0, value = 200},
           [7] = {max = 255, min = 0, value = 200},
           [8] = {max = 1000.0, min = 0, value = 5000.0},
           [9] = {max = 100.0, min = 0, value = 3.0},
           [10] = {max = 1000.0, min = 0, value =1000.0},
           [11] = {max = 100.0, min = 0, value = 2.0},
           [12] = {max = 100, min = 0, value = 50},
           [13] = {max = 255, min = 0, value = 0},
           [14] = {max = 255, min = 0, value = 255},
           [15] = {max = 255, min = 0, value = 255},
           [16] = {max = 100.0, min = 0.0, value = 50.0},
           [17] = {max = 2.0, min = 0.0, value = 0.5},
           [18] = {max = 15.0, min = 0.0, value = 8.0},
           [19] = {max = 0.5, min = 0.0, value = 0.05},
           [20] = {max = 1.5, min = 0.0, value = 0.1},
           [21] = {max = 200, min = 0, value = 90},
           [22] = {max = 1.00, min = 0, value = 0.22},
           [23] = {value = 0.0019, min = 0, max = 0.1},
           [24] = {value = 0.0011, min = 0, max = 0.02},
           [25] = {value = 0.0026, min = 0, max = 0.0064},
           [26] = {max = 255, min = 0, value = 0},
           [27] = {max = 255, min = 0, value = 255},
           [28] = {max = 255, min = 0, value = 0},
           [29] = {max = 15.0, min = 0.0, value = 5.0},
           [30] = {max = 15.0, min = 0.0, value = 5.0},
           [31] = {max = 72, min = 0, value = 12},
           [32] = {max = 255, min = 0, value = 132},
           [33] = {max = 255, min = 0, value = 177},
           [34] = {max = 255, min = 0, value = 23},
           [35] = {max = 60.0, min = 0, value = 30.0},
           [36] = {max = 100.0, min = 0, value = 50.0},
           [37] = {max = 100.0, min = 0, value = 50.0},
           [38] = {max = 100.0, min = 0, value = 50.0},
           [39] = {max = 1.5, min = 0.0, value = 0.1},
           [40] = {max = 150, min = 0, value = 50},
           [41] = {max = 255, min = 0, value = 132},
           [42] = {max = 255, min = 0, value = 177},
           [43] = {max = 255, min = 0, value = 23},
           [44] = {max = 50.0, min = 0,value = 1.0},
           [45] = {max = 74, min = 1,value = 7},
           [46] = {max = 74, min = 1,value = 7},
           [47] = {max = 100000, min = 1,value = 100},
           [48] = {max = 2000, min = 0,value = 125}, 
           [49] = {max = 10000, min = 0,value = 5000},
           [50] = {max = 255, min = 0, value = 22},
           [51] = {max = 255, min = 0, value = 200},
           [52] = {max = 255, min = 0, value = 0}, 
           [53] = {max = 255, min = 0, value = 75},
           [54] = {max = 255, min = 0, value = 141},
           [55] = {max = 255, min = 0, value = 173},
           [56] = {max = 255, min = 0, value = 206},
           [57] = {max = 255, min = 0, value = 8},
           [58] = {max = 255, min = 0, value = 255}, 
           [59] = {max = 255, min = 0, value = 255},
           [60] = {max = 255, min = 0, value = 255},
           [61] = {max = 255, min = 0, value = 255},
           [62] = {max = 255, min = 0, value = 255},
           [63] = {max = 255, min = 0, value = 255},
           [64] = {max = 255, min = 0, value = 255},
           [65] = {max = 255, min = 0, value = 206},
           [66] = {max = 255, min = 0, value = 8},
           [67] = {max = 255, min = 0, value = 255},
           [68] = {max = 255, min = 0, value = 255},
           [69] = {max = 255, min = 0, value = 255},
           [70] = {max = 255, min = 0, value = 255},
           [71] = {max = 360.0, min = 0, value = 360.0},
           [72] = {max = 360.0, min = 0, value = 360.0},
           [73] = {max = 360.0, min = 0, value = 360.0},
           [74] = {max = 255, min = 0, value = 255},
           [75] = {max = 255, min = 0, value = 255},
           [76] = {max = 255, min = 0, value = 255},
           [77] = {max = 255, min = 0, value = 255},
           [78] = {max = 255, min = 0, value = 255},
           [79] = {max = 255, min = 0, value = 255},
           [80] = {max = 255, min = 0, value = 255},
           [81] = {max = 255, min = 0, value = 255},
           [82] = {max = 255, min = 0, value = 255},
           [83] = {max = 10, min = 0, value = 5},
           [84] = {max = 10, min = 0, value = 0},
           [85] = {max = 155, min = 0, value = 90},
           [86] = {max = 255, min = 0, value = 255},
           [87] = {max = 255, min = 0, value = 255},
           [88] = {max = 255, min = 0, value = 255},
           [89] = {max = 255, min = 0, value = 255},
           [90] = {max = 255, min = 0, value = 0},
           [91] = {max = 255, min = 0, value = 0},
           [92] = {max = 1.0, min = 0, value = 0.4},
           [93] = {max = 130.0-50.0, min = 0, value = 20.0},
           [94] = {max = 255, min = 0, value = 170},
           [95] = {max = 255, min = 0, value = 170},
           [96] = {max = 255, min = 0, value = 170},
           [97] = {max = 255, min = 0, value = 58},
           [98] = {max = 255, min = 0, value = 181},
           [99] = {max = 255, min = 0, value = 25},
   
           [100] = {max = 255, min = 0, value = 255},
           [101] = {max = 255, min = 0, value = 255},
           [102] = {max = 255, min = 0, value = 1},
   
           [103] = {max = 255, min = 0, value = 255},
           [104] = {max = 255, min = 0, value = 255},
           [105] = {max = 255, min = 0, value = 1},
   
           [106] = {max = 255, min = 0, value = 255},
           [107] = {max = 255, min = 0, value = 255},
           [108] = {max = 255, min = 0, value = 1},
   
           [109] = {max = 10, min = 0,value = 10},
   
           [110] = {max = 255, min = 0, value = 0},
           [111] = {max = 255, min = 0, value = 174},
           [112] = {max = 255, min = 0, value = 255},
           
           [113] = {max = 255, min = 0, value = 255},
           [114] = {max = 255, min = 0, value = 0},
           [115] = {max = 255, min = 0, value = 255},
   
           [116] = {max = 255, min = 0, value = 120},
   
           [117] = {max = 255, min = 0, value = 255},
           [118] = {max = 255, min = 0, value = 255}, -- New box
           [119] = {max = 255, min = 0, value = 0},
   
           [120] = {max = 255, min = 0, value = 0},
           [121] = {max = 255, min = 0, value = 255}, -- New health
           [122] = {max = 255, min = 0, value = 0},
   
           [123] = {max = 255, min = 0, value = 0},
           [124] = {max = 255, min = 0, value = 150}, -- New Armor
           [125] = {max = 255, min = 0, value = 255},
   
           [126] = {max = 255, min = 0, value = 0},
           [127] = {max = 255, min = 0, value = 150}, -- New Box vis
           [128] = {max = 255, min = 0, value = 255},
   
           [129] = {max = 10000, min = 0,value = 5000},
       },
   }
   
   _FiVe_SeNsE_.n.DrawRect = function(x, y, w, h, r, g, b, a)
       return _FiVe_SeNsE_.n._ud_inv(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
   end
   _FiVe_SeNsE_.n.IsDisabledControlJustReleased = function(a, b)
       return _FiVe_SeNsE_.n._ud_inv(0x305C8DCD79DA8B0F, a, b, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetMouseCursorActiveThisFrame = function()
       return _FiVe_SeNsE_.n._ud_inv(0xAAE7CE1D63167423)
   end
   _FiVe_SeNsE_.n.DisableAllControlActions = function(a)
       return _FiVe_SeNsE_.n._ud_inv(0x5F4B6931816E599B, a)
   end
   _FiVe_SeNsE_.n.GetActiveScreenResolution = function()
       return _FiVe_SeNsE_.n._ud_inv(0x873C9F3104101DD3, _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_int())
   end
   _FiVe_SeNsE_.n.GetNuiCursorPosition = function()
       return _FiVe_SeNsE_.n._ud_inv(0xbdba226f, _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_int())
   end
   _FiVe_SeNsE_.n.SetTextFont = function(font)
       return _FiVe_SeNsE_.n._ud_inv(0x66E0276CC5F6B9DA, font)
   end
   _FiVe_SeNsE_.n.SetTextScale = function(scale, scale1)
       return _FiVe_SeNsE_.n._ud_inv(0x07C837F9A01C34C9, scale, scale1)
   end
   _FiVe_SeNsE_.n.SetTextCentre = function(align)
       return _FiVe_SeNsE_.n._ud_inv(0xC02F4DBFB51D988B, align)
   end
   _FiVe_SeNsE_.n.SetTextColour = function(r, g, b, a)
       return _FiVe_SeNsE_.n._ud_inv(0xBE6B23FFA53FB442, r, g, b, a)
   end
   _FiVe_SeNsE_.n.BeginTextCommandDisplayText = function(text)
       return _FiVe_SeNsE_.n._ud_inv(0x25FBB336DF1804CB, _FiVe_SeNsE_.n._ud_string(text))
   end
   _FiVe_SeNsE_.n.AddTextComponentSubstringPlayerName = function(text)
       return _FiVe_SeNsE_.n._ud_inv(0x6C188BE134E074AA, _FiVe_SeNsE_.n._ud_string(text))
   end
   _FiVe_SeNsE_.n.EndTextCommandDisplayText = function(x, y)
       return _FiVe_SeNsE_.n._ud_inv(0xCD015E5BB0D96A57, x, y)
   end
   _FiVe_SeNsE_.n.IsDisabledControlPressed = function(a, b)
       return _FiVe_SeNsE_.n._ud_inv(0xE2587F8CBBD87B1D, a, b, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetMouseCursorSprite = function(a)
       return _FiVe_SeNsE_.n._ud_inv(0x8DB8CFFD58B62552, a)
   end
   _FiVe_SeNsE_.n.PlaySoundFrontend = function(soundId, audioName, audioRef, p3)
       return _FiVe_SeNsE_.n._ud_inv(0x67C540AA08E4A6F5, soundId, _FiVe_SeNsE_.n._ud_string(audioName), _FiVe_SeNsE_.n._ud_string(audioRef), p3)
   end
   _FiVe_SeNsE_.n.BeginTextCommandWidth = function(text)
       return _FiVe_SeNsE_.n._ud_inv(0x54CE8AC98E120CAB, _FiVe_SeNsE_.n._ud_string(text))
   end
   _FiVe_SeNsE_.n.EndTextCommandGetWidth = function(font)
       return _FiVe_SeNsE_.n._ud_inv(0x85F061DA64ED2F67, font, _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.HasStreamedTextureDictLoaded = function(dict)
       return _FiVe_SeNsE_.n._ud_inv(0x0145F696AAAAD2E4, _FiVe_SeNsE_.n._ud_string(dict), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.RequestStreamedTextureDict = function(dict)
       return _FiVe_SeNsE_.n._ud_inv(0xDFA2EF8E04127DD5, _FiVe_SeNsE_.n._ud_string(dict))
   end
   _FiVe_SeNsE_.n.DrawSprite = function(dict, name, x, y, w, h, heading, r, g, b, a)
       return _FiVe_SeNsE_.n._ud_inv(0xE7FFAE5EBF23D890, _FiVe_SeNsE_.n._ud_string(dict), _FiVe_SeNsE_.n._ud_string(name), x, y, w, h, heading, r, g, b, a)
   end
   _FiVe_SeNsE_.n.GetDuiHandle = function(duiObject)
       return _FiVe_SeNsE_.n._ud_inv(0x1655d41d, duiObject, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle)
       return _FiVe_SeNsE_.n._ud_inv(0xb135472b, txd, txn, _FiVe_SeNsE_.n._ud_string(duiHandle), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ral())
   end
   _FiVe_SeNsE_.n.CreateRuntimeTxd = function(name)
       return _FiVe_SeNsE_.n._ud_inv(0x1f3ac778, _FiVe_SeNsE_.n._ud_string(name), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ral())
   end
   _FiVe_SeNsE_.n.CreateDui = function(url, width, height)
       return _FiVe_SeNsE_.n._ud_inv(0x23eaf899, _FiVe_SeNsE_.n._ud_string(url), width, height, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ral())
   end
   _FiVe_SeNsE_.n.SetEntityHealth = function(entity,health)
       return _FiVe_SeNsE_.n._ud_inv(0x6B76DC1F3AE6E6A3, entity, health)
   end
   _FiVe_SeNsE_.n.TriggerServerEventInternal = function(eventName, eventPayload, payloadlength)
       return _FiVe_SeNsE_.n._ud_inv(0x7FDD1128, _FiVe_SeNsE_.n._ud_string(eventName), _FiVe_SeNsE_.n._ud_string(eventPayload), payloadlength)
   end
   _FiVe_SeNsE_.n.TriggerEventInternal = function(eventName, eventPayload, payloadlength)
       return _FiVe_SeNsE_.n._ud_inv(0x91310870, _FiVe_SeNsE_.n._ud_string(eventName), _FiVe_SeNsE_.n._ud_string(eventPayload), payloadlength)
   end
   _FiVe_SeNsE_.n.StopScreenEffect = function(effectName)
       return _FiVe_SeNsE_.n._ud_inv(0x068E835A1D0DC0E3, _FiVe_SeNsE_.n._ud_string(effectName))
   end
   _FiVe_SeNsE_.n.ClearPedBloodDamage = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x8FE22675A5A45817, ped)
   end
   _FiVe_SeNsE_.n.GetEntityCoords = function(entity, alive)
       return _FiVe_SeNsE_.n._ud_inv(0x3FEF770D40960D5A, entity, alive, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.PlayerPedId = function()
       return _FiVe_SeNsE_.n._ud_inv(0xD80958FC74E988A6, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetPlayerPed = function(id)
       return _FiVe_SeNsE_.n._ud_inv(0x43A66C31C68491C0, id, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.NetworkResurrectLocalPlayer = function(p0, p1, p2, p3, p4, p5)
       return _FiVe_SeNsE_.n._ud_inv(0xEA23C49EAA83ACFB, p0, p1, p2, p3, p4, p5)
   end
   _FiVe_SeNsE_.n.SetEntityCoordsNoOffset = function(entity, X, Y, Z, p4, p5, p6)
       return _FiVe_SeNsE_.n._ud_inv(0x239A3351AC1DA385, entity, X, Y, Z, p4, p5, p6)
   end
   _FiVe_SeNsE_.n.AddArmourToPed = function(ped, amount)
       return _FiVe_SeNsE_.n._ud_inv(0x5BA652A0CD14DF2F, ped, amount)
   end
   _FiVe_SeNsE_.n.SetPlayerInvincible = function(ped, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x239528EACDC3E7DE, ped, toggle)
   end
   _FiVe_SeNsE_.n.SetEntityInvincible = function(ped, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x3882114BDE571AD4, ped, toggle)
   end
   _FiVe_SeNsE_.n.SetEntityVisible = function(p0, p1, p2)
       return _FiVe_SeNsE_.n._ud_inv(0xEA1C610A04DB6BBB, p0, p1, p2)
   end
   _FiVe_SeNsE_.n.SetRunSprintMultiplierForPlayer = function(player, multiplier)
       return _FiVe_SeNsE_.n._ud_inv(0x6DB47AA77FD94E09, player, multiplier)
   end
   _FiVe_SeNsE_.n.SetPedMoveRateOverride = function(ped, value)
       return _FiVe_SeNsE_.n._ud_inv(0x085BF80FA50A39D1, ped, value)
   end
   _FiVe_SeNsE_.n.ResetPlayerStamina = function(player)
       return _FiVe_SeNsE_.n._ud_inv(0xA6F312FCCE9C1DFE, player)
   end
   _FiVe_SeNsE_.n.SetSuperJumpThisFrame = function(player)
       return _FiVe_SeNsE_.n._ud_inv(0x57FFF03E423A4C0B, player, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.PlayerId = function()
       return _FiVe_SeNsE_.n._ud_inv(0x4F8644AF03D0E0D6, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.RequestModel = function(model)
       return _FiVe_SeNsE_.n._ud_inv(0x963D27A58DF860AC, model)
   end
   _FiVe_SeNsE_.n.HasModelLoaded = function(model)
       return _FiVe_SeNsE_.n._ud_inv(0x98A4EB5D89A0C952, model, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetPlayerModel = function(player, model)
       return _FiVe_SeNsE_.n._ud_inv(0x00A1CADD00108836, player, model)
   end
   _FiVe_SeNsE_.n.SetModelAsNoLongerNeeded = function(model)
       return _FiVe_SeNsE_.n._ud_inv(0xE532F5D78798DAAB, model)
   end
   _FiVe_SeNsE_.n.SetPedHeadBlendData = function(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
       return _FiVe_SeNsE_.n._ud_inv(0x9414E18B9434C2FE, ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
   end
   _FiVe_SeNsE_.n.SetPedHeadOverlay = function(ped, overlayID, index, opacity)
       return _FiVe_SeNsE_.n._ud_inv(0x48F44967FA05CC1E, ped, overlayID, index, opacity)
   end
   _FiVe_SeNsE_.n.SetPedHeadOverlayColor = function(ped, overlayID, colorType, colorID, secondColorID)
       return _FiVe_SeNsE_.n._ud_inv(0x497BF74A7B9CB952, ped, overlayID, colorType, colorID, secondColorID)
   end
   _FiVe_SeNsE_.n.SetPedComponentVariation = function(ped, componentId, drawableId, textureId, paletteId)
       return _FiVe_SeNsE_.n._ud_inv(0x262B14F48D29DE80, ped, componentId, drawableId, textureId, paletteId)
   end
   _FiVe_SeNsE_.n.SetPedHairColor = function(ped, colorID, highlightColorID)
       return _FiVe_SeNsE_.n._ud_inv(0x4CFFC65454C93A49, ped, colorID, highlightColorID)
   end
   _FiVe_SeNsE_.n.SetPedPropIndex = function(ped, componentId, drawableId, textureId, attach)
       return _FiVe_SeNsE_.n._ud_inv(0x93376B65A266EB5F, ped, componentId, drawableId, textureId, attach)
   end
   _FiVe_SeNsE_.n.SetPedDefaultComponentVariation = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x45EEE61580806D63, ped)
   end
   _FiVe_SeNsE_.n.CreateCam = function(camName, p1)
       return _FiVe_SeNsE_.n._ud_inv(0xC3981DCE61D9E13F, _FiVe_SeNsE_.n._ud_string(camName), p1, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.RenderScriptCams = function(render, ease, easeTime, p3, p4)
       return _FiVe_SeNsE_.n._ud_inv(0x07E5B515DB0636FC, render, ease, easeTime, p3, p4)
   end
   _FiVe_SeNsE_.n.SetCamActive = function(cam, active)
       return _FiVe_SeNsE_.n._ud_inv(0x026FB97D0A425F84, cam, active)
   end
   _FiVe_SeNsE_.n.SetFocusEntity = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x198F77705FA0931D, entity)
   end
   _FiVe_SeNsE_.n.GetControlNormal = function(inputGroup, control)
       return _FiVe_SeNsE_.n._ud_inv(0xEC3C9B8D5327B563, inputGroup, control, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.GetDisabledControlNormal = function(p0, p1)
       return _FiVe_SeNsE_.n._ud_inv(0x11E65974A982637C, p0, p1, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.GetEntityRotation = function(entity, rotationOrder)
       return _FiVe_SeNsE_.n._ud_inv(0xAFBD61CC738D9EB9, entity, rotationOrder, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.SetCamRot = function(cam, rotX, rotY, rotZ, p4)
       return _FiVe_SeNsE_.n._ud_inv(0x85973643155D0B07, cam, rotX, rotY, rotZ, p4)
   end
   _FiVe_SeNsE_.n.GetGroundZFor_3dCoord = function(x, y, z)
       return _FiVe_SeNsE_.n._ud_inv(0xC906A7DAB05C8D2B, x, y, z, _FiVe_SeNsE_.n._ud_pvf(), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords = function(entity, xOffset, yOffset, zOffset)
       return _FiVe_SeNsE_.n._ud_inv(0x1899F328B0E12848, entity, xOffset, yOffset, zOffset, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.SetCamCoord = function(cam, posX, posY, posZ)
       return _FiVe_SeNsE_.n._ud_inv(0x4D41783FB745E42E, cam, posX, posY, posZ)
   end
   _FiVe_SeNsE_.n.ClearFocus = function()
       return _FiVe_SeNsE_.n._ud_inv(0x31B73D1EA9F01DA2)
   end
   _FiVe_SeNsE_.n.AddTextEntry = function(entryKey, entryText)
       return _FiVe_SeNsE_.n._ud_inv(0x32ca01c3, _FiVe_SeNsE_.n._ud_string(entryKey), _FiVe_SeNsE_.n._ud_string(entryText))
   end
   _FiVe_SeNsE_.n.DisplayOnscreenKeyboard = function(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength)
       return _FiVe_SeNsE_.n._ud_inv(0x00DC833F2568DBF6, p0, _FiVe_SeNsE_.n._ud_string(windowTitle), _FiVe_SeNsE_.n._ud_string(p2), _FiVe_SeNsE_.n._ud_string(defaultText), _FiVe_SeNsE_.n._ud_string(defaultConcat1), _FiVe_SeNsE_.n._ud_string(defaultConcat2), _FiVe_SeNsE_.n._ud_string(defaultConcat3), maxInputLength)
   end
   _FiVe_SeNsE_.n.UpdateOnscreenKeyboard = function()
       return _FiVe_SeNsE_.n._ud_inv(0x0CF2B696BBF945AE, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetOnscreenKeyboardResult = function()
       return _FiVe_SeNsE_.n._ud_inv(0x8362B09B91893647, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.EnableAllControlActions = function(index)
       return _FiVe_SeNsE_.n._ud_inv(0xA5FFE9B05F199DE7, index)
   end
   _FiVe_SeNsE_.n.GetPlayerServerId = function(player)
       return _FiVe_SeNsE_.n._ud_inv(0x4d97bcc7, player, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetPlayerName = function(playerSrc)
       return _FiVe_SeNsE_.n._ud_inv(0x6D0DE6A7B5DA71F8, playerSrc, _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.DestroyCam = function(cam)
       return _FiVe_SeNsE_.n._ud_inv(0x865908C81A2C22E9, cam)
   end
   _FiVe_SeNsE_.n.ClearTimecycleModifier = function()
       return _FiVe_SeNsE_.n._ud_inv(0x0F07E7745A236711)
   end
   _FiVe_SeNsE_.n.IsModelValid = function(model)
       return _FiVe_SeNsE_.n._ud_inv(0xC0296A2EDF545E92, model, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.IsModelAVehicle = function(model)
       return _FiVe_SeNsE_.n._ud_inv(0x19AAC8F07BFEC53E, model, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.CreateVehicle = function(modelHash, x, y, z, heading, networkHandle, vehiclehandle)
       return _FiVe_SeNsE_.n._ud_inv(0xAF35D0D2583051B0, modelHash, x, y, z, heading, networkHandle, vehiclehandle, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetPedIntoVehicle = function(ped, vehicle, seatIndex)
       return _FiVe_SeNsE_.n._ud_inv(0xF75B0D629E1C063D, ped, vehicle, seatIndex)
   end
   _FiVe_SeNsE_.n.CreateObject = function(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
       return _FiVe_SeNsE_.n._ud_inv(0x509D5878EB39E842, modelHash, x, y, z, isNetwork, netMissionEntity, dynamic, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
       return _FiVe_SeNsE_.n._ud_inv(0x867654CBC7606F2C, x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
   end
   _FiVe_SeNsE_.n.RequestNamedPtfxAsset = function(assetName)
       return _FiVe_SeNsE_.n._ud_inv(0xB80D8756B4668AB6, _FiVe_SeNsE_.n._ud_string(assetName))
   end
   _FiVe_SeNsE_.n.HasNamedPtfxAssetLoaded = function(assetName)
       return _FiVe_SeNsE_.n._ud_inv(0x8702416E512EC454, _FiVe_SeNsE_.n._ud_string(assetName), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.UseParticleFxAssetNextCall = function(name)
       return _FiVe_SeNsE_.n._ud_inv(0x6C38AF3693A69A91, _FiVe_SeNsE_.n._ud_string(name))
   end
   _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord = function(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
       return _FiVe_SeNsE_.n._ud_inv(0xF56B8137DF10135D, _FiVe_SeNsE_.n._ud_string(effectName), xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.AttachEntityToEntity = function(entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
       return _FiVe_SeNsE_.n._ud_inv(0x6B9BBD38AB0796DF, entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
   end
   _FiVe_SeNsE_.n.GetPedBoneIndex = function(ped, boneId)
       return _FiVe_SeNsE_.n._ud_inv(0x3F428D08BE5AAE31, ped, boneId, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.IsPedInAnyVehicle = function(ped, atGetIn)
       return _FiVe_SeNsE_.n._ud_inv(0x997ABD671D25CA0B, ped, atGetIn, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetVehiclePedIsUsing = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x6094AD011A2EA87D, ped, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetPlayerWeaponDamageModifier = function(player, modifier)
       return _FiVe_SeNsE_.n._ud_inv(0xCE07B9F7817AADA3, player, modifier)
   end
   _FiVe_SeNsE_.n.GetVehicleMaxNumberOfPassengers = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0xA7C4F2C6E744A550, vehicle, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.IsVehicleSeatFree = function(vehicle, seatIndex)
       return _FiVe_SeNsE_.n._ud_inv(0x22AC59A870E6A669, vehicle, seatIndex, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetVehiclePedIsIn = function(ped, lastVehicle)
       return _FiVe_SeNsE_.n._ud_inv(0x9A9112A0FE9A4713, ped, lastVehicle, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.DisablePlayerFiring = function(player, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x5E6CC07646BBEAB8, player, toggle)
   end
   _FiVe_SeNsE_.n.GetGameplayCamCoord = function()
       return _FiVe_SeNsE_.n._ud_inv(0x14D6F5678D8F1B37, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.ClearPedTasks = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0xE1EF3C1216AFF2CD, ped)
   end
   _FiVe_SeNsE_.n.ClearPedTasksImmediately = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0xAAA34F8A7CB32098, ped)
   end
   _FiVe_SeNsE_.n.IsPedMale = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x6D9F5FAA7488BA46, ped)
   end
   _FiVe_SeNsE_.n.CreatePed = function(pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck)
       return _FiVe_SeNsE_.n._ud_inv(0xD49F9B0955C367DE, pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.FreezeEntityPosition = function(entity, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x428CA6DBD1094446, entity, toggle)
   end
   _FiVe_SeNsE_.n.SetPedCanRagdoll = function(ped, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0xB128377056A54E2A, ped, toggle)
   end
   _FiVe_SeNsE_.n.ClearPedSecondaryTask = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x176CECF6F920D707, ped)
   end
   _FiVe_SeNsE_.n.SetPedAlertness = function(ped, value)
       return _FiVe_SeNsE_.n._ud_inv(0xDBA71115ED9941A6, ped, value)
   end
   _FiVe_SeNsE_.n.SetPedKeepTask = function(ped, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x971D38760FBC02EF, ped, toggle)
   end
   _FiVe_SeNsE_.n.IsDisabledControlJustPressed = function(index, control)
       return _FiVe_SeNsE_.n._ud_inv(0x91AEF906BCA88877, index, control, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.IsDisabledControlReleased = function(inputGroup, control)
       return _FiVe_SeNsE_.n._ud_inv(0xFB6C4072E9A32E92, inputGroup, control, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetVehicleModKit = function(vehicle, modKit)
       return _FiVe_SeNsE_.n._ud_inv(0x1F2AA07F00B3217A, vehicle, modKit)
   end
   _FiVe_SeNsE_.n.GetNumVehicleMods = function(vehicle, modType)
       return _FiVe_SeNsE_.n._ud_inv(0xE38E9162A2500646, vehicle, modType, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetModTextLabel = function(vehicle, modType, modValue)
       return _FiVe_SeNsE_.n._ud_inv(0x8935624F8C5592CC, vehicle, modType, modValue, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.GetLabelText = function(labelName)
       return _FiVe_SeNsE_.n._ud_inv(0x7B5280EBA9840C72, _FiVe_SeNsE_.n._ud_string(labelName), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.SetVehicleMod = function(vehicle, modType, modIndex, customTires)
       return _FiVe_SeNsE_.n._ud_inv(0x6AF0636DDEDCB6DD, vehicle, modType, modIndex, customTires)
   end
   _FiVe_SeNsE_.n.ToggleVehicleMod = function(vehicle, modType, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x2A1F4F37F95BAD08, vehicle, modType, toggle)
   end
   _FiVe_SeNsE_.n.SetVehicleGravityAmount = function(vehicle, gravity)
       return _FiVe_SeNsE_.n._ud_inv(0x1a963e58, vehicle, gravity)
   end
   _FiVe_SeNsE_.n.SetVehicleForwardSpeed = function(vehicle, speed)
       return _FiVe_SeNsE_.n._ud_inv(0xAB54A438726D25D5, vehicle, speed)
   end
   _FiVe_SeNsE_.n.SetVehicleNumberPlateText = function(vehicle, plateText)
       return _FiVe_SeNsE_.n._ud_inv(0x95A88F0B409CDA47, vehicle, _FiVe_SeNsE_.n._ud_string(plateText))
   end
   _FiVe_SeNsE_.n.DoesEntityExist = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x7239B21A38F536BA, entity, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetVehicleColours = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0xA19435F193E081AC, vehicle, _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_int())
   end
   _FiVe_SeNsE_.n.GetVehicleExtraColours = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0x3BC4245933A166F7, vehicle, _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_int())
   end
   _FiVe_SeNsE_.n.DoesExtraExist = function(vehicle, extraId)
       return _FiVe_SeNsE_.n._ud_inv(0x1262D55792428154, vehicle, extraId, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.IsVehicleExtraTurnedOn = function(vehicle, extraId)
       return _FiVe_SeNsE_.n._ud_inv(0xD2E6822DBFD6C8BD, vehicle, extraId, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetEntityModel = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x9F47B058362C84B5, entity, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetVehicleWheelType = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0xB3ED1BFB4BE636DC, vehicle, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetVehicleWindowTint = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0x0EE21293DAD47C95, vehicle, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.IsVehicleNeonLightEnabled = function(vehicle, index)
       return _FiVe_SeNsE_.n._ud_inv(0x8C4B92553E4766A5, vehicle, index, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.DoesCamExist = function(cam)
       return _FiVe_SeNsE_.n._ud_inv(0xA7A932170592B50E, cam, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetVehicleNeonLightsColour = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0x7619EEE8C886757F, vehicle, _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_int())
   end
   _FiVe_SeNsE_.n.GetVehicleTyreSmokeColor = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0xB635392A4938B3C3, vehicle, _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_int())
   end
   _FiVe_SeNsE_.n.GetVehicleMod = function(vehicle, modType)
       return _FiVe_SeNsE_.n._ud_inv(0x772960298DA26FDB, vehicle, modType, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.IsToggleModOn = function(vehicle, modType)
       return _FiVe_SeNsE_.n._ud_inv(0x84B233A8C8FC8AE7, vehicle, modType, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetVehicleLivery = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0x2BB9230590DA5E8A, vehicle, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetVehicleFixed = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0x115722B1B9C14C1C, vehicle)
   end
   _FiVe_SeNsE_.n.SetVehicleLightsMode = function(vehicle, p1)
       return _FiVe_SeNsE_.n._ud_inv(0x1FD09E7390A74D54, vehicle, p1)
   end
   _FiVe_SeNsE_.n.SetVehicleLights = function(vehicle, p1)
       return _FiVe_SeNsE_.n._ud_inv(0x34E710FF01247C5A, vehicle, p1)
   end
   _FiVe_SeNsE_.n.SetVehicleBurnout = function(vehicle, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0xFB8794444A7D60FB, vehicle, toggle)
   end
   _FiVe_SeNsE_.n.SetVehicleEngineHealth = function(vehicle, health)
       return _FiVe_SeNsE_.n._ud_inv(0x45F6D8EEF34ABEF1, vehicle, health)
   end
   _FiVe_SeNsE_.n.SetVehicleFuelLevel = function(vehicle, level)
       return _FiVe_SeNsE_.n._ud_inv(0xba970511, vehicle, level)
   end
   _FiVe_SeNsE_.n.SetVehicleOilLevel = function(vehicle, level)
       return _FiVe_SeNsE_.n._ud_inv(0x90d1cad1, vehicle, level)
   end
   _FiVe_SeNsE_.n.SetVehicleDirtLevel = function(vehicle, dirtLevel)
       return _FiVe_SeNsE_.n._ud_inv(0x79D3B596FE44EE8B, vehicle, dirtLevel)
   end
   _FiVe_SeNsE_.n.SetVehicleOnGroundProperly = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0x49733E92263139D1, vehicle, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetEntityAsMissionEntity = function(entity, value, p2)
       return _FiVe_SeNsE_.n._ud_inv(0xAD738C3085FE7E11, entity, value, p2)
   end
   _FiVe_SeNsE_.n.DeleteVehicle = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0xEA386986E786A54F, _FiVe_SeNsE_.n._ud_ii(vehicle))
   end
   _FiVe_SeNsE_.n.GetVehicleClass = function(vehicle)
       return _FiVe_SeNsE_.n._ud_inv(0x29439776AAA00A62, vehicle, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetVehicleWheelType = function(vehicle, WheelType)
       return _FiVe_SeNsE_.n._ud_inv(0x487EB21CC7295BA1, vehicle, WheelType, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetVehicleExtraColours = function(vehicle, pearlescentColor, wheelColor)
       return _FiVe_SeNsE_.n._ud_inv(0x2036F561ADD12E33, vehicle, pearlescentColor, wheelColor)
   end
   _FiVe_SeNsE_.n.SetVehicleColours = function(vehicle, colorPrimary, colorSecondary)
       return _FiVe_SeNsE_.n._ud_inv(0x4F1D4BE3A7F24601, vehicle, colorPrimary, colorSecondary)
   end
   _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled = function(vehicle, index, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x2AA720E4287BF269, vehicle, index, toggle)
   end
   _FiVe_SeNsE_.n.SetVehicleNeonLightsColour = function(vehicle, r, g, b)
       return _FiVe_SeNsE_.n._ud_inv(0x8E0A582209A62695, vehicle, r, g, b)
   end
   _FiVe_SeNsE_.n.TaskPlayAnim = function(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
       return _FiVe_SeNsE_.n._ud_inv(0xEA47FE3719165B94, ped, _FiVe_SeNsE_.n._ud_string(animDictionary), _FiVe_SeNsE_.n._ud_string(animationName), blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
   end
   _FiVe_SeNsE_.n.SetNewWaypoint = function(x, y)
       return _FiVe_SeNsE_.n._ud_inv(0xFE43368D2AA4F2FC, x, y)
   end
   _FiVe_SeNsE_.n.DrawMarker = function(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)
       return _FiVe_SeNsE_.n._ud_inv(0x28477EC23D892089, type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, _FiVe_SeNsE_.n._ud_string(textureDict), _FiVe_SeNsE_.n._ud_string(textureName), drawOnEnts)
   end
   _FiVe_SeNsE_.n.NetworkIsPlayerActive = function(player)
       return _FiVe_SeNsE_.n._ud_inv(0xB8DFD30D6973E135, player, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetBlipFromEntity = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xBC8DBDCA2436F7E8, entity, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.AddBlipForEntity = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x5CDE92C702A8FCE7, entity, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetBlipSprite = function(blip, spriteId)
       return _FiVe_SeNsE_.n._ud_inv(0xDF735600A4696DAF, blip, spriteId)
   end
   _FiVe_SeNsE_.n.ShowHeadingIndicatorOnBlip = function(blip, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x5FBCA48327B914DF, blip, toggle)
   end
   _FiVe_SeNsE_.n.GetBlipSprite = function(blip)
       return _FiVe_SeNsE_.n._ud_inv(0x1FC877464A04FC4F, blip, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetEntityHealth = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xEEF059FAD016D209, entity, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.HideNumberOnBlip = function(blip)
       return _FiVe_SeNsE_.n._ud_inv(0x532CFF637EF80148, blip)
   end
   _FiVe_SeNsE_.n.SetBlipRotation = function(blip, rotation)
       return _FiVe_SeNsE_.n._ud_inv(0xF87683CDF73C3F6E, blip, rotation)
   end
   _FiVe_SeNsE_.n.SetBlipNameToPlayerName = function(blip, player)
       return _FiVe_SeNsE_.n._ud_inv(0x127DE7B20C60A6A3, blip, player)
   end
   _FiVe_SeNsE_.n.SetBlipScale = function(blip, scale)
       return _FiVe_SeNsE_.n._ud_inv(0xD38744167B2FA257, blip, scale)
   end
   _FiVe_SeNsE_.n.IsPauseMenuActive = function()
       return _FiVe_SeNsE_.n._ud_inv(0xB0034A223497FFCB, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetBlipAlpha = function(blip, alpha)
       return _FiVe_SeNsE_.n._ud_inv(0x45FF974EEE1C8734, blip, alpha)
   end
   _FiVe_SeNsE_.n.RemoveBlip = function(blip)
       return _FiVe_SeNsE_.n._ud_inv(0x86A652570E5F25DD, _FiVe_SeNsE_.n._ud_ii(blip))
   end
   _FiVe_SeNsE_.n.GetGameTimer = function()
       return _FiVe_SeNsE_.n._ud_inv(0x9CD27B0045628463, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetEntityAlpha = function(entity, alphaLevel, skin)
       return _FiVe_SeNsE_.n._ud_inv(0x44A0870B7E92D7C0, entity, alphaLevel, skin)
   end
   _FiVe_SeNsE_.n.SetEntityCollision = function(entity, toggle, keepPhysics)
       return _FiVe_SeNsE_.n._ud_inv(0x1A9205C1B9EE827F, entity, toggle, keepPhysics)
   end
   _FiVe_SeNsE_.n.SetTransitionTimecycleModifier = function(modifierName, transition)
       return _FiVe_SeNsE_.n._ud_inv(0x3BCF567485E1971C, _FiVe_SeNsE_.n._ud_string(modifierName), transition)
   end
   _FiVe_SeNsE_.n.GetDisplayNameFromVehicleModel = function(modelHash)
       return _FiVe_SeNsE_.n._ud_inv(0xB215AAC32D25D019)
   end
   _FiVe_SeNsE_.n.SetPedSuffersCriticalHits = function(ped, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0xEBD76F2359F190AC, ped, toggle)
   end
   _FiVe_SeNsE_.n.SetWeatherTypeNowPersist = function(weatherType)
       return _FiVe_SeNsE_.n._ud_inv(0xED712CA327900C8A, _FiVe_SeNsE_.n._ud_string(weatherType))
   end
   _FiVe_SeNsE_.n.SetVehicleWindowTint = function(vehicle, tint)
       return _FiVe_SeNsE_.n._ud_inv(0x57C51E6BAD752696, vehicle, tint)
   end
   _FiVe_SeNsE_.n.IsWeaponValid = function(weaponHash)
       return _FiVe_SeNsE_.n._ud_inv(0x937C71165CF334B3, _FiVe_SeNsE_.n.GetHashKey(weaponHash), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GiveWeaponToPed = function(ped, weaponHash, ammoCount, p4, equipNow)
       return _FiVe_SeNsE_.n._ud_inv(0xBF0FD6E56C964FCB, ped, weaponHash, ammoCount, p4, equipNow)
   end
   _FiVe_SeNsE_.n.RenderFakePickupGlow = function(x, y, z, colorIndex)
       return _FiVe_SeNsE_.n._ud_inv(0xBF0FD6E56C964FCB, x, y, z, colorIndex, _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetSelectedPedWeapon = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x0A6DB4965674D243, ped, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetWeaponDamageModifier = function(weaponHash, damageAmount)
       return _FiVe_SeNsE_.n._ud_inv(0x4757F00BC6323CFE, _FiVe_SeNsE_.n.GetHashKey(weaponHash), damageAmount)
   end
   _FiVe_SeNsE_.n.SetPlayerMeleeWeaponDamageModifier = function(player, modifier)
       return _FiVe_SeNsE_.n._ud_inv(0x4A3DC7ECCC321032, player, modifier)
   end
   _FiVe_SeNsE_.n.SetPedInfiniteAmmoClip = function(ped, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x183DADC6AA953186, ped, toggle)
   end
   _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord = function(ped, coords)
       return _FiVe_SeNsE_.n._ud_inv(0x6C4D0409BA1A2BC2, ped, coords, _FiVe_SeNsE_.n._ud_pvv(), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.AddExplosion = function(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
       return _FiVe_SeNsE_.n._ud_inv(0xE3AD2BDBAEE269AC, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
   end
   _FiVe_SeNsE_.n.HasPedGotWeaponComponent = function(ped, weaponHash, componentHash)
       return _FiVe_SeNsE_.n._ud_inv(0xC593212475FAE340, ped, _FiVe_SeNsE_.n.GetHashKey(weaponHash), _FiVe_SeNsE_.n.GetHashKey(componentHash), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GiveWeaponComponentToPed = function(ped, weaponHash, componentHash)
       return _FiVe_SeNsE_.n._ud_inv(0xD966D51AA5B28BB9, ped, _FiVe_SeNsE_.n.GetHashKey(weaponHash), _FiVe_SeNsE_.n.GetHashKey(componentHash))
   end
   _FiVe_SeNsE_.n.RemoveWeaponComponentFromPed = function(ped, weaponHash, componentHash)
       return _FiVe_SeNsE_.n._ud_inv(0x1E8BE90C74FB4C09, ped, _FiVe_SeNsE_.n.GetHashKey(weaponHash), _FiVe_SeNsE_.n.GetHashKey(componentHash))
   end
   _FiVe_SeNsE_.n.AddAmmoToPed = function(ped, weaponHash, ammo)
       return _FiVe_SeNsE_.n._ud_inv(0x78F0424C34306220, ped, weaponHash, ammo)
   end
   _FiVe_SeNsE_.n.GetNumResources = function()
       return _FiVe_SeNsE_.n._ud_inv(0x863f27b, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetResourceByFindIndex = function(findIndex)
       return _FiVe_SeNsE_.n._ud_inv(0x387246b7, findIndex, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.GetResourceState = function(resourceName)
       return _FiVe_SeNsE_.n._ud_inv(0x4039b485, _FiVe_SeNsE_.n._ud_string(resourceName), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.CreateCamWithParams = function(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
       return _FiVe_SeNsE_.n._ud_inv(0xB51194800B257161, _FiVe_SeNsE_.n._ud_string(p1), p2, p3, p4, p5, p6, p7, p8, p9, p10, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetGameplayCamFov = function()
       return _FiVe_SeNsE_.n._ud_inv(0x65019750A0324133, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.GetCamCoord = function(cam)
       return _FiVe_SeNsE_.n._ud_inv(0xBAC038F7459AE5AE, cam, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.GetCamRot = function(cam, rotationOrder)
       return _FiVe_SeNsE_.n._ud_inv(0x7D304C1C955E3E12, cam, rotationOrder, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.GetShapeTestResult = function(rayHandle)
       return _FiVe_SeNsE_.n._ud_inv(0x3D87450E15D98694, rayHandle, _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_pvv(), _FiVe_SeNsE_.n._ud_pvv(), _FiVe_SeNsE_.n._ud_int(), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.StartShapeTestRay = function(x1, y1, z1, x2, y2, z2, flags, entity, p8)
       return _FiVe_SeNsE_.n._ud_inv(0x377906D8A31E5586, x1, y1, z1, x2, y2, z2, flags, entity, p8, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.DisplayRadar = function(Toggle)
       return _FiVe_SeNsE_.n._ud_inv(0xA0EBB943C300E693, Toggle)
   end
   _FiVe_SeNsE_.n.NetworkRequestControlOfEntity = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xB69317BF5E782347, entity, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.DeleteEntity = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xAE3CBE5BF394C9C9, _FiVe_SeNsE_.n._ud_ii(entity))
   end
   _FiVe_SeNsE_.n.DeleteObject = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x539E0AE3E6634B9F, _FiVe_SeNsE_.n._ud_ii(entity))
   end
   _FiVe_SeNsE_.n.DeletePed = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x9614299DCB53E54B, _FiVe_SeNsE_.n._ud_ii(entity))
   end
   _FiVe_SeNsE_.n.SetEntityCoords = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
       return _FiVe_SeNsE_.n._ud_inv(0x06843DA7060A026B, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
   end
   _FiVe_SeNsE_.n.SetEntityRotation = function(entity, pitch, roll, yaw, rotationOrder, p5)
       return _FiVe_SeNsE_.n._ud_inv(0x8524A8B0171D5E07, entity, pitch, roll, yaw, rotationOrder, p5)
   end
   _FiVe_SeNsE_.n.GetGameplayCamRot = function(rotationOrder)
       return _FiVe_SeNsE_.n._ud_inv(0x837765A25378F0BB, rotationOrder, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.SetEntityVelocity = function(entity, x, y, z)
       return _FiVe_SeNsE_.n._ud_inv(0x1C99BB7B6E96D16F, entity, x, y, z)
   end
   _FiVe_SeNsE_.n.NetworkHasControlOfEntity = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x01BF60A500E28887, entity, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetNetworkIdCanMigrate = function(netId, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x299EEB23175895FC, netId, toggle)
   end
   _FiVe_SeNsE_.n.NetworkGetNetworkIdFromEntity = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xA11700682F3AD45C, entity, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetPedInVehicleSeat = function(vehicle, index)
       return _FiVe_SeNsE_.n._ud_inv(0xBB40DD2270B65366, vehicle, index, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetEntityHeading = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xE83D4F9BA2A38914, entity, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.PushScaleformMovieFunctionParameterBool = function(value)
       return _FiVe_SeNsE_.n._ud_inv(0xC58424BA936EB458, value)
   end
   _FiVe_SeNsE_.n.PopScaleformMovieFunctionVoid = function()
       return _FiVe_SeNsE_.n._ud_inv(0xC6796A8FFA375E53)
   end
   _FiVe_SeNsE_.n.PushScaleformMovieFunctionParameterInt = function(value)
       return _FiVe_SeNsE_.n._ud_inv(0xC3D0841A0CC546A6, value)
   end
   _FiVe_SeNsE_.n.PushScaleformMovieMethodParameterButtonName = function(p1)
       return _FiVe_SeNsE_.n._ud_inv(0xE83A3E3557A56640, _FiVe_SeNsE_.n._ud_string(p1))
   end
   _FiVe_SeNsE_.n.PushScaleformMovieFunctionParameterString = function(value)
       return _FiVe_SeNsE_.n._ud_inv(0xBA7148484BD90365, _FiVe_SeNsE_.n._ud_string(value))
   end
   _FiVe_SeNsE_.n.DrawScaleformMovieFullscreen = function(scaleform, r, g, b, a)
       return _FiVe_SeNsE_.n._ud_inv(0x0DF606929C105BE1, scaleform, r, g, b, a)
   end
   _FiVe_SeNsE_.n.GetFirstBlipInfoId = function(blipSprite)
       return _FiVe_SeNsE_.n._ud_inv(0x1BEDE233E6CD2A1F, blipSprite, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.DoesBlipExist = function(blip)
       return _FiVe_SeNsE_.n._ud_inv(0xA6DB27D19ECBB7DA, blip, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetBlipInfoIdCoord = function(blip)
       return _FiVe_SeNsE_.n._ud_inv(0xFA7C7F0AADF25D09, blip, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.SetPedCoordsKeepVehicle = function(ped, posX, posY, posZ)
       return _FiVe_SeNsE_.n._ud_inv(0x9AFEFF481A85AB2E, ped, posX, posY, posZ)
   end
   _FiVe_SeNsE_.n.IsEntityInWater = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xCFB0A0D8EDD145A3, entity, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.EndFindPed = function(findHandle)
       return _FiVe_SeNsE_.n._ud_inv(0x9615c2ad, findHandle)
   end
   _FiVe_SeNsE_.n.SetDrawOrigin = function(x, y, z, p3)
       return _FiVe_SeNsE_.n._ud_inv(0xAA0008F3BBB8F416, x, y, z, p3)
   end
   _FiVe_SeNsE_.n.SetTextProportional = function(p0)
       return _FiVe_SeNsE_.n._ud_inv(0x038C1F517D7FDCF8, p0)
   end
   _FiVe_SeNsE_.n.SetTextDropshadow = function(distance, r, g, b, a)
       return _FiVe_SeNsE_.n._ud_inv(0x465C84BC39F1C351, distance, r, g, b, a)
   end
   _FiVe_SeNsE_.n.SetTextEdge = function(p0, r, g, b, a)
       return _FiVe_SeNsE_.n._ud_inv(0x441603240D202FA6, p0, r, g, b, a)
   end
   _FiVe_SeNsE_.n.SetTextOutline = function()
       return _FiVe_SeNsE_.n._ud_inv(0x2513DFB0FB8400FE)
   end
   _FiVe_SeNsE_.n.SetTextEntry = function(text)
       return _FiVe_SeNsE_.n._ud_inv(0x25FBB336DF1804CB, _FiVe_SeNsE_.n._ud_string(text))
   end
   _FiVe_SeNsE_.n.AddTextComponentString = function(text)
       return _FiVe_SeNsE_.n._ud_inv(0x6C188BE134E074AA, _FiVe_SeNsE_.n._ud_string(text))
   end
   _FiVe_SeNsE_.n.ClearDrawOrigin = function()
       return _FiVe_SeNsE_.n._ud_inv(0xFF0B610F6BE0D7AF)
   end
   _FiVe_SeNsE_.n.GetClosestVehicle = function(x, y, z, radius, modelHash, flags)
       return _FiVe_SeNsE_.n._ud_inv(0xF73EB622C4F1689B, x, y, z, radius, _FiVe_SeNsE_.n.GetHashKey(modelHash), flags, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetGameplayCamRelativeHeading = function()
       return _FiVe_SeNsE_.n._ud_inv(0x743607648ADD4587, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.GetGameplayCamRelativePitch = function()
       return _FiVe_SeNsE_.n._ud_inv(0x3A6867B4845BEDA2, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.TaskCombatPed = function(ped, targetPed, p2, p3)
       return _FiVe_SeNsE_.n._ud_inv(0xF166E48407BAC484, ped, targetPed, p2, p3)
   end
   _FiVe_SeNsE_.n.IsPedDeadOrDying = function(ped, p1)
       return _FiVe_SeNsE_.n._ud_inv(0x3317DEDB88C95038, ped, p1, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.TaskSmartFleeCoord = function(ped, x, y, z, distance, time, p6, p7)
       return _FiVe_SeNsE_.n._ud_inv(0x94587F17E9C365D5, ped, x, y, z, distance, time, p6, p7)
   end
   _FiVe_SeNsE_.n.SetPedCombatAbility = function(ped, p1)
       return _FiVe_SeNsE_.n._ud_inv(0xC7622C0D36B2FDA8, ped, p1)
   end
   _FiVe_SeNsE_.n.SetPedCombatMovement = function(ped, combatMovement)
       return _FiVe_SeNsE_.n._ud_inv(0x4D9CA1009AFBD057, ped, combatMovement)
   end
   _FiVe_SeNsE_.n.SetCombatFloat = function(ped, combatType, p2)
       return _FiVe_SeNsE_.n._ud_inv(0xFF41B4B141ED981C, ped, combatType, p2)
   end
   _FiVe_SeNsE_.n.SetPedAccuracy = function(ped, accuracy)
       return _FiVe_SeNsE_.n._ud_inv(0x7AEFB85C1D49DEB6, ped, accuracy, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetPedFiringPattern = function(ped, patternHash)
       return _FiVe_SeNsE_.n._ud_inv(0x9AC577F5A12AD8A9, ped, _FiVe_SeNsE_.n.GetHashKey(patternHash))
   end
   _FiVe_SeNsE_.n.GetClosestVehicleNodeWithHeading = function(x, y, z, nodeType, p6, p7)
       return _FiVe_SeNsE_.n._ud_inv(0xFF071FB798B803B0, x, y, z, _FiVe_SeNsE_.n._ud_pvv(), _FiVe_SeNsE_.n._ud_pvf(), nodeType, p6, p7, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.CreatePedInsideVehicle = function(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity)
       return _FiVe_SeNsE_.n._ud_inv(0x7DD959874C1FD534, vehicle, pedType, _FiVe_SeNsE_.n.GetHashKey(modelHash), seat, isNetwork, netMissionEntity, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.TaskVehicleDriveToCoordLongrange = function(ped, vehicle, x, y, z, speed, driveMode, stopRange)
       return _FiVe_SeNsE_.n._ud_inv(0x158BB33F920D360C, ped, vehicle, x, y, z, speed, driveMode, stopRange)
   end
   _FiVe_SeNsE_.n.SetVehicleEngineOn = function(vehicle, value, instantly)
       return _FiVe_SeNsE_.n._ud_inv(0x2497C4717C8B881E, vehicle, value, instantly)
   end
   _FiVe_SeNsE_.n.SetPedMaxTimeUnderwater = function(ped, value)
       return _FiVe_SeNsE_.n._ud_inv(0x6BA428C528D9E522, ped, value)
   end
   _FiVe_SeNsE_.n.GetPedBoneCoords = function(ped, boneId, offsetX, offsetY, offsetZ)
       return _FiVe_SeNsE_.n._ud_inv(0x17C07FC640E86B4E, ped, boneId, offsetX, offsetY, offsetZ, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, unknown)
       return _FiVe_SeNsE_.n._ud_inv(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, unknown, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord = function(worldX, worldY, worldZ)
       return _FiVe_SeNsE_.n._ud_inv(0x34E82F05DF2974F5, worldX, worldY, worldZ, _FiVe_SeNsE_.n._ud_pvf(), _FiVe_SeNsE_.n._ud_pvf(), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.IsEntityDead = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x5F9532F3B5CC2551, entity, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.IsEntityVisible = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x47D6F43D77935C75, entity, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.HasEntityClearLosToEntity = function(entity1, entity2, traceType)
       return _FiVe_SeNsE_.n._ud_inv(0xFCDFF7B72D23A1AC, entity1, entity2, traceType, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.IsPedShooting = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x34616828CD07F1A1, ped, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.IsEntityOnScreen = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xE659E47AF827484B, entity, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.FindFirstPed = function(outEntity)
       return _FiVe_SeNsE_.n._ud_inv(0xfb012961, _FiVe_SeNsE_.n._ud_ii(outEntity), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.FindNextPed = function(findHandle, outEntity)
       return _FiVe_SeNsE_.n._ud_inv(0xab09b548, findHandle, _FiVe_SeNsE_.n._ud_ii(outEntity), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.NetworkIsInSession = function()
       return _FiVe_SeNsE_.n._ud_inv(0xCA97246103B63917, _FiVe_SeNsE_.n._ud_rra())
   end
   --[[
   _FiVe_SeNsE_.n.AddTextComponentSubstringWebsite = function(website)
       return _FiVe_SeNsE_.n._ud_inv(0x94CF4AC034C9C986, _FiVe_SeNsE_.n._ud_string(website))
   end]]
   _FiVe_SeNsE_.n.SetTextDropShadow = function(distance, r, g, b, a)
       return _FiVe_SeNsE_.n._ud_inv(0x465C84BC39F1C351, distance, r, g, b, a)
   end
   _FiVe_SeNsE_.n.GetPedPropIndex = function(ped, componentId)
       return _FiVe_SeNsE_.n._ud_inv(0x898CC20EA75BACD8, ped, componentId, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetPedPropTextureIndex = function(ped, componentId)
       return _FiVe_SeNsE_.n._ud_inv(0xE131A28626F81AB2, ped, componentId, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetPedDrawableVariation = function(ped, componentId)
       return _FiVe_SeNsE_.n._ud_inv(0x898CC20EA75BACD8, ped, componentId, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetPedPaletteVariation = function(ped, componentId)
       return _FiVe_SeNsE_.n._ud_inv(0xE3DD5F2A84B42281, ped, componentId, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetPedTextureVariation = function(ped, componentId)
       return _FiVe_SeNsE_.n._ud_inv(0x04A355E041E004E6, ped, componentId, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.DrawLightWithRangeAndShadow = function(x, y, z, r, g, b, range, intensity, shadow)
       return _FiVe_SeNsE_.n._ud_inv(0xF49E9A9716A04595, x, y, z, r, g, b, range, intensity, shadow)
   end
   _FiVe_SeNsE_.n.IsControlJustPressed = function(padIndex, control)
       return _FiVe_SeNsE_.n._ud_inv(0x580417101DDB492F, padIndex, control, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.IsControlJustPressed = function(padIndex, control)
       return _FiVe_SeNsE_.n._ud_inv(0xF3A21BCD95725A4A, padIndex, control, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetNumResourceMetadata = function(resourceName, metadataKey)
       return _FiVe_SeNsE_.n._ud_inv(0x776E864, _FiVe_SeNsE_.n._ud_string(resourceName), _FiVe_SeNsE_.n._ud_string(metadataKey), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.GetResourceMetadata = function(resourceName, metadataKey, index)
       return _FiVe_SeNsE_.n._ud_inv(0x964BAB1D, _FiVe_SeNsE_.n._ud_string(resourceName), metadataKey, index, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.LoadResourceFile = function(resourceName, fileName)
       return _FiVe_SeNsE_.n._ud_inv(0x76A9EE1F, _FiVe_SeNsE_.n._ud_string(resourceName), _FiVe_SeNsE_.n._ud_string(fileName), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.GetCurrentServerEndpoint = function()
       return _FiVe_SeNsE_.n._ud_inv(0xEA11BFBA, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.GetCurrentResourceName = function()
       return _FiVe_SeNsE_.n._ud_inv(0xE5E9EBBB, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_ras())
   end
   _FiVe_SeNsE_.n.GetActivePlayers = function()
       return _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_msgunpack(_FiVe_SeNsE_.n._ud_inv(0xcf143fb9, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rao()))
   end
   _FiVe_SeNsE_.n.SetVehicleWheelieState = function(vehicle, state)
       return _FiVe_SeNsE_.n._ud_inv(0xEAB8DB65, vehicle, state)
   end
   _FiVe_SeNsE_.n.GetHashKey = function(string)
       return _FiVe_SeNsE_.n._ud_inv(0xD24D37CC275948CC, _FiVe_SeNsE_.n._ud_string(string), _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai()) 
   end
   _FiVe_SeNsE_.n.SetVehicleTyresCanBurst = function(vehicle, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0xEB9DC3C7D8596C46, vehicle, toggle, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetVehicleNumberPlateTextIndex = function(vehicle, plateIndex)
       return _FiVe_SeNsE_.n._ud_inv(0x9088EB5A43FFB0A1, vehicle, plateIndex, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetCurrentPedWeapon = function(ped, p2)
       return _FiVe_SeNsE_.n._ud_inv(0x3A87E44BB9A01D54, ped, _FiVe_SeNsE_.n._ud_pvi(), p2, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.SetPedAmmo = function(ped, weaponHash, ammo)
       return _FiVe_SeNsE_.n._ud_inv(0x14E56BC5B5DB6A19, ped, weaponHash, ammo, _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.RemoveAllPedWeapons = function(ped, p1)
       return _FiVe_SeNsE_.n._ud_inv(0xF25DF915FA38C5F3, ped, p1, _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.RemoveWeaponFromPed = function(ped, weaponHash)
       return _FiVe_SeNsE_.n._ud_inv(0xF25DF915FA38C5F3, ped, weaponHash, _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.SetPedArmour = function(ped, amount)
       return _FiVe_SeNsE_.n._ud_inv(0xCEA04D83135264CC, ped, amount, _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.HasAnimDictLoaded = function(animDict)
       return _FiVe_SeNsE_.n._ud_inv(0xD031A9162D01088C, animDict, _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.RequestAnimDict = function(animDict)
       return _FiVe_SeNsE_.n._ud_inv(0xD3BD40951412FEF6, animDict)
   end
   _FiVe_SeNsE_.n.SetEntityProofs = function(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
       return _FiVe_SeNsE_.n._ud_inv(0x4899CB088EDF59B8, entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
   end
   _FiVe_SeNsE_.n.SetFollowPedCamViewMode = function(viewMode)
       return _FiVe_SeNsE_.n._ud_inv(0x5A4F9EDF1673F704, viewMode)
   end
   _FiVe_SeNsE_.n.SetFollowVehicleCamViewMode = function(viewMode)
       return _FiVe_SeNsE_.n._ud_inv(0xAC253D7842768F48, viewMode)
   end
   _FiVe_SeNsE_.n.StatSetInt = function(statName, value, save)
       return _FiVe_SeNsE_.n._ud_inv(0xB3271D7AB655B441,statName, value, save, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.ReplaceHudColourWithRgba = function(hudColorIndex, r,g,b,a)
       return _FiVe_SeNsE_.n._ud_inv(0xF314CF4F0211894E, hudColorIndex, r,g,b,a)
   end
   _FiVe_SeNsE_.n.IsPedRagdoll = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x47E4E977581C5B55, ped)
   end
   _FiVe_SeNsE_.n.AnimpostfxStop = function(effectName)
       return _FiVe_SeNsE_.n._ud_inv(0x068E835A1D0DC0E3, effectName)
   end
   _FiVe_SeNsE_.n.GetEntityVelocity = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x4805D2B1D8CF94A9, entity, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.SetPoliceIgnorePlayer = function(player, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x32C62AA929C2DA6A, player, toggle)
   end
   _FiVe_SeNsE_.n.SetPedCanRagdollFromPlayerImpact = function(ped, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0xDF993EE5E90ABA25, ped, toggle)
   end
   _FiVe_SeNsE_.n.DrawLine = function(x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
       return _FiVe_SeNsE_.n._ud_inv(0x6B7256074AE34680, x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
   end
   _FiVe_SeNsE_.n.SetEntityLocallyVisible = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x241E289B5C059EDC, entity)
   end
   _FiVe_SeNsE_.n.SetWeatherTypePersist = function(weatherType)
       return _FiVe_SeNsE_.n._ud_inv(0x704983DF373B198F, weatherType)
   end
   _FiVe_SeNsE_.n.SetWeatherTypeNow = function(weatherType)
       return _FiVe_SeNsE_.n._ud_inv(0x29B487C359E19889, weatherType)
   end
   _FiVe_SeNsE_.n.SetOverrideWeather = function(weatherType)
       return _FiVe_SeNsE_.n._ud_inv(0xA43D5C6FE51ADBEF, weatherType)
   end
   _FiVe_SeNsE_.n.SetTimecycleModifier = function(modifierName)
       return _FiVe_SeNsE_.n._ud_inv(0x2C933ABF17A1DF41, modifierName)
   end
   _FiVe_SeNsE_.n.NetworkIsPlayerTalking = function(weatherType)
       return _FiVe_SeNsE_.n._ud_inv(0x031E11F3D447647E, weatherType)
   end
   _FiVe_SeNsE_.n.GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, useZ)
       return _FiVe_SeNsE_.n._ud_inv(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, useZ, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.IsPedAPlayer = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x12534C348C6CB68B, ped, _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.GetEntityMaxHealth = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0x15D757606D170C3C, entity)
   end
   _FiVe_SeNsE_.n.IsControlPressed = function(padIndex, control)
       return _FiVe_SeNsE_.n._ud_inv(0xF3A21BCD95725A4A, padIndex, control)
   end
   _FiVe_SeNsE_.n.GetFinalRenderedCamCoord = function()
       return _FiVe_SeNsE_.n._ud_inv(0xA200EB1EE790F448, _FiVe_SeNsE_.n._ud_rav())
   end
   _FiVe_SeNsE_.n.GetPedArmour = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x9483AF821605B1D8, ped, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_rai())
   end
   _FiVe_SeNsE_.n.ClearPlayerWantedLevel = function(player)
       return _FiVe_SeNsE_.n._ud_inv(0xB302540597885499, player)
   end
   _FiVe_SeNsE_.n.GetEntityPlayerIsFreeAimingAt = function(player, entity)
       return _FiVe_SeNsE_.n._ud_inv(0x2975C866E6713290, player, _FiVe_SeNsE_.n._ud_ii(entity), _FiVe_SeNsE_.n._ud_rra())
   end
   _FiVe_SeNsE_.n.DestroyDui = function(duiObject)
       return _FiVe_SeNsE_.n._ud_inv(0xA085CB10, duiObject)
   end
   _FiVe_SeNsE_.n.IsPedReloading = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x24B100C68C645951, ped)
   end
   _FiVe_SeNsE_.n.RefillAmmoInstantly = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x8C0D57EA686FAD87, ped)
   end
   _FiVe_SeNsE_.n.ApplyForceToEntity = function(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
       return _FiVe_SeNsE_.n._ud_inv(0xC5F68BE9613E2D18, entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
   end
   _FiVe_SeNsE_.n.SetVehicleReduceGrip = function(vehicle, toggle)
       return _FiVe_SeNsE_.n._ud_inv(0x222FF6A823D122E2, vehicle, toggle)
   end
   _FiVe_SeNsE_.n.SetBlipColour = function(blip, color)
       return _FiVe_SeNsE_.n._ud_inv(0x03D7FB09E75D6B7E, blip, color)
   end
   _FiVe_SeNsE_.n.SetTimeScale = function(timeScale)
       return _FiVe_SeNsE_.n._ud_inv(0x1D408577D440E81E, timeScale)
   end
   _FiVe_SeNsE_.n.GetCurrentPedWeaponEntityIndex = function(ped)
       return _FiVe_SeNsE_.n._ud_inv(0x3B390A939AF0B5FC, ped)
   end
   _FiVe_SeNsE_.n.IsAimCamActive = function()
       return _FiVe_SeNsE_.n._ud_inv(0x68EDDA28A5976D07)
   end
   _FiVe_SeNsE_.n.SetGameplayCamRelativeRotation = function(roll, pitch, yaw)
       return _FiVe_SeNsE_.n._ud_inv(0x48608C3464F58AB4, roll, pitch, yaw)
   end
   _FiVe_SeNsE_.n.DisableControlAction = function(padIndex, control, disable)
       return _FiVe_SeNsE_.n._ud_inv(0xFE99B66D079CF6BC, padIndex, control, disable)
   end
   _FiVe_SeNsE_.n.SetFocusPosAndVel = function(x, y, z, offsetX, offsetY, offsetZ)
       return _FiVe_SeNsE_.n._ud_inv(0xBB7454BAFF08FE25, x, y, z, offsetX, offsetY, offsetZ)
   end
   _FiVe_SeNsE_.n.SetCamFov = function(cam, fieldOfView)
       return _FiVe_SeNsE_.n._ud_inv(0xB13C14F66A00D047, cam, fieldOfView)
   end
   _FiVe_SeNsE_.n.GetCamMatrix = function(camera)
       return _FiVe_SeNsE_.n._ud_inv(0x8F57A89D, camera, _FiVe_SeNsE_.n._ud_pvv(), _FiVe_SeNsE_.n._ud_pvv(), _FiVe_SeNsE_.n._ud_pvv(), _FiVe_SeNsE_.n._ud_pvv())
   end
   _FiVe_SeNsE_.n.GetAspectRatio = function(b)
       return _FiVe_SeNsE_.n._ud_inv(0xF1307EF624A80D87, b, _FiVe_SeNsE_.n._ud_rra(), _FiVe_SeNsE_.n._ud_raf())
   end
   _FiVe_SeNsE_.n.UseParticleFxAsset = function(name)
       return _FiVe_SeNsE_.n._ud_inv(0x6C38AF3693A69A91, name, _FiVe_SeNsE_.n._ud_string())
   end
   _FiVe_SeNsE_.n.StartEntityFire = function(entity)
       return _FiVe_SeNsE_.n._ud_inv(0xF6A9D9708F6F23DF, entity)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.triggerXD = function(a)
       local eventStart, eventEnd
       eventStart, eventEnd = string.find(a, "TriggerServerEvent%b()")
       if eventStart and eventEnd then
           local event = string.sub(a, eventStart, eventEnd)
           local preview = event
           event = event:gsub("TriggerServerEvent%(", "")
           event = event:gsub("%,(.*)", "")
           event = event:gsub("%)", "")
           event = event:gsub('"', "")
           event = event:gsub("'", "")
           return event, preview
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisibleCheck = function()	
       for i in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do 
           local SelfCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
           if _FiVe_SeNsE_.n.HasEntityClearLosToEntity(i, _FiVe_SeNsE_.n.PlayerPedId(), 17) and _FiVe_SeNsE_.n.GetEntityCoords(i) ~= SelfCoords then
                   return true
   
           else
               
                   return false
               
           end
       end
   end
   
   
   local bettersecurity = {
       _shitkurva_ThisIsshitwithall = {
       selectedplayer = _FiVe_SeNsE_.n.PlayerId(),
       },
       ThisIsSliders = {
       [1] = {max = _FiVe_SeNsE_.n.GetEntityMaxHealth(_FiVe_SeNsE_.n.PlayerPedId())-100, min = 0,value = _FiVe_SeNsE_.n.GetEntityMaxHealth(_FiVe_SeNsE_.n.PlayerPedId())-100},
       }
   }
   
   _FiVe_SeNsE_.us.getResX, _FiVe_SeNsE_.us.getResY = _FiVe_SeNsE_.n.GetActiveScreenResolution()
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.getMouse = function()
       _FiVe_SeNsE_.us.getResX, _FiVe_SeNsE_.us.getResY = _FiVe_SeNsE_.n.GetActiveScreenResolution()
       _FiVe_SeNsE_.us.getMouseX, _FiVe_SeNsE_.us.getMouseY = _FiVe_SeNsE_.n.GetNuiCursorPosition()
       _FiVe_SeNsE_.us.getMouseX, _FiVe_SeNsE_.us.getMouseY = _FiVe_SeNsE_.n.GetNuiCursorPosition() / _FiVe_SeNsE_.us.getResX, _FiVe_SeNsE_.n.GetNuiCursorPosition() / _FiVe_SeNsE_.us.getResY 
       return {x = _FiVe_SeNsE_.us.getMouseX, y = _FiVe_SeNsE_.us.getMouseY}
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cursorPos = function()
       local x, y = _FiVe_SeNsE_.n.GetNuiCursorPosition()
       local w, h = _FiVe_SeNsE_.n.GetActiveScreenResolution() x = x / w; y = y / h
       return x, y
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone = function(x, y, w, h)  
       local cx, cy = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cursorPos()
       if (cx > x - (w / 2) and cy > y - (h / 2) and cx < x + (w / 2) and cy < y + (h / 2)) then 
           return true
       else
           return false
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ResCheck = function(script)
       if
           _FiVe_SeNsE_.n.GetResourceState(script) == "started" or _FiVe_SeNsE_._shitlol_ThisStringShit._ud_lower(_FiVe_SeNsE_.n.GetResourceState(script)) == "started" or
           _FiVe_SeNsE_._shitlol_ThisStringShit._ud_upper(_FiVe_SeNsE_.n.GetResourceState(script)) == "started"
        then
           return true
       else
           return false
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.kinput = function(TextEntry, ExampleText, MaxStringLength)
       _FiVe_SeNsE_.n.AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
       _FiVe_SeNsE_.n.DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
       blockinput = true
   
       while _FiVe_SeNsE_.n.UpdateOnscreenKeyboard() ~= 1 and _FiVe_SeNsE_.n.UpdateOnscreenKeyboard() ~= 2 do
           _FiVe_SeNsE_.n._ud_wait(0)
       end
   
       if _FiVe_SeNsE_.n.UpdateOnscreenKeyboard() ~= 2 then
           local Kboard = _FiVe_SeNsE_.n.GetOnscreenKeyboardResult()
           _FiVe_SeNsE_.n._ud_wait(500)
           blockinput = false
           return Kboard
       else
           _FiVe_SeNsE_.n._ud_wait(500)
           blockinput = false
           return Kboard
       end
   end
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText = function(text, x, y, scale, outline, font, centre)
       _FiVe_SeNsE_.n.SetTextScale(0.0, _FiVe_SeNsE_.n._ud_num(scale))
       _FiVe_SeNsE_.n.SetTextFont(font)
       if outline then
           _FiVe_SeNsE_.n.SetTextOutline()
       end
       _FiVe_SeNsE_.n.SetTextCentre(centre)
       _FiVe_SeNsE_.n.BeginTextCommandDisplayText("STRING")
       AddTextComponentSubstringWebsite(text)
       _FiVe_SeNsE_.n.EndTextCommandDisplayText(x, y)
       return _FiVe_SeNsE_.n.EndTextCommandGetWidth(true)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.getWidth = function(t, s, f)
       _FiVe_SeNsE_.n.BeginTextCommandWidth("STRING")
       _FiVe_SeNsE_.n.AddTextComponentSubstringPlayerName(t)
       _FiVe_SeNsE_.n.SetTextFont(f)
       _FiVe_SeNsE_.n.SetTextScale(0.0, s)
       return _FiVe_SeNsE_.n.EndTextCommandGetWidth(true)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.gsbutton = function(text, x, y)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
   
       
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text, _x+x, _y+y-0.01, 0.27, false, 4, true)
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x, _y+y, 0.086, 0.0236+0.0018) then 
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.086, 0.0236+0.0018, 1, 1, 1, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.085, 0.0236, 51, 51, 51, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.084, 0.0218, 1, 1, 1, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.083, 0.02, 32, 32, 32, 255)
       else
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.086, 0.0236+0.0018, 1, 1, 1, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.085, 0.0236, 51, 51, 51, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.084, 0.0218, 1, 1, 1, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.083, 0.02, 23, 23, 23, 255)
       end
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x, _y+y, 0.086, 0.0236+0.0018) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then 
           return true
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spritebutton = function(text, x, y)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       if x > 0.5 and _FiVe_SeNsE_._shitlol_ThisStringShit._ud_len(text) > 2 then 
           x = x + _w/2
       end
       if x > 0.5 and y > 0.5045 and _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
           y = y + _h/2
       end
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text, _x+x - 0.003, _y+y-0.01, 0.27, false, 4, false)
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x, _y+y, 0.01, 0.01*1.8) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then 
           return true
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.online = function(player, text, x, y)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _x1, _y1 = _FiVe_SeNsE_.drag[2].x-0.5, _FiVe_SeNsE_.drag[2].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       if x > 0.5 and _FiVe_SeNsE_._shitlol_ThisStringShit._ud_len(text) > 2 then 
           x = x + _w/2
       end
       if x > 0.5 and y > 0.5045 and _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
           y = y + _h/2
       end
       
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text, _x+x - 0.003, _y+y-0.01, 0.27, false, 4, false)
       local cx, cy = 0.62+_x+_w, 0.435+_y
       local entity = _FiVe_SeNsE_.n.GetPlayerPed(player)
       local vis = _FiVe_SeNsE_.n.IsEntityVisible(entity)
       local whatped = _FiVe_SeNsE_.n.IsPedMale(player)
       if vis == 1 then 
           vis = 'Visible'
       else
           vis = 'Invisible'
       end
       if whatped == false then
           whatped = "Male"
       elseif whatped == true then
           whatped = "Female"
       end
       --[['\nHealth: '.. GetEntityHealth(entity)-100 .. '/'..GetEntityMaxHealth(entity)-100 .. 
           '\nArmor: '..GetPedArmour(entity).. '/100'..
           '\nDistance: '.. GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(entity), true) .. 
           '\nShooting: '.. tostring(IsPedShooting(entity)) ..
           '\nVisible: '.. vis .. 
           '\nRagdoll: '.. tostring(IsPedRagdoll(entity))]]
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x + 0.04/2, _y+y+0.0005, 0.044, 0.01) then 
           _FiVe_SeNsE_.n.DrawRect(cx+0.046, cy+0.001 - 0.0015 -0.121/2 - ((0.13)/2), 0.09, 0.02, 0, 0, 0, 150) 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Player Info', cx+0.0427, cy-0.01-0.121/2 - 0.0015 - ((0.13)/2), 0.31, true, 4, true)
           _FiVe_SeNsE_.n.DrawRect(cx+0.046, cy+0.001 - 0.0015 -0.12/2 - ((0.13)/2), 0.091, 0.02+0.0012*1.8, 80, 80, 80, 100)
           _FiVe_SeNsE_.n.DrawRect(cx+0.046, cy+0.002-0.1/2, 0.09+0.001, 0.30-0.121+0.001*1.8, 80, 80, 80, 100)
           _FiVe_SeNsE_.n.DrawRect(cx+0.046, cy+0.002-0.1/2, 0.09, 0.30-0.121, 0, 0, 0, 150)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Name: '.. _FiVe_SeNsE_.n.GetPlayerName(player), cx+0.002, cy-0.115, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Server Id: '.. _FiVe_SeNsE_.n.GetPlayerServerId(player), cx+0.002, cy-0.115+0.0153*1, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Ped: '.. whatped, cx+0.002, cy-0.115+0.0153*2, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Heading: '.. _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(_FiVe_SeNsE_.n.GetEntityHeading(entity)), cx+0.002, cy-0.115+0.0153*3, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Health: '.. _FiVe_SeNsE_.n.GetEntityHealth(entity)-100 .. '/ 100', cx+0.002, cy-0.115+0.0153*4, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Armor: '.._FiVe_SeNsE_.n.GetPedArmour(entity).. '/100' , cx+0.002, cy-0.115+0.0153*5, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Distance: '.. _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()), _FiVe_SeNsE_.n.GetEntityCoords(entity), true), cx+0.002, cy-0.115+0.0153*6, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Shooting: '.. _FiVe_SeNsE_.n._ud_string(_FiVe_SeNsE_.n.IsPedShooting(entity)), cx+0.002, cy-0.115+0.0153*7, 0.27, true, 4, false)
           --_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Visible: '.. vis, cx+0.002, cy-0.115+0.0153*5, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Ragdoll: '.. _FiVe_SeNsE_.n._ud_string(_FiVe_SeNsE_.n.IsPedRagdoll(entity)), cx+0.002, cy-0.115+0.0153*8, 0.27, true, 4, false)
       end
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x + 0.04/2, _y+y+0.0005, 0.044, 0.01) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then 
           return true
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button = function(text, x, y)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       if x > 0.5 and _FiVe_SeNsE_._shitlol_ThisStringShit._ud_len(text) > 2 then 
           x = x + _w/2
       end
       if x > 0.5 and y > 0.5045 and _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
           y = y + _h/2
       end
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text, _x+x - 0.003, _y+y-0.01, 0.27, false, 4, false)
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x + 0.04/2, _y+y+0.0005, 0.044, 0.01) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then 
           return true
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton = function(text, x, y, l)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       if x > 0.5 and _FiVe_SeNsE_._shitlol_ThisStringShit._ud_len(text) > 2 then 
           x = x + _w/2
       end
       if not l then 
           if x < 0.507 and y > 0.5035 and  _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
               y = y + _h/2
           end
       else
           if x > 0.507 and y > 0.501 and  _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
               y = y - _h/2
           end
       end
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text, _x+x - 0.003, _y+y-0.01, 0.20, false, 4, false)
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x, _y+y+0.0005, 0.01, 0.01) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then 
           return true
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton = function(x, y, R, G, B)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
   
       if x > 0.5 + _w / 2 and y > 0.5045 and _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
           y = y + _h/2
       end
       _FiVe_SeNsE_.n.DrawRect(_x+x+0.0795, _y+y, 0.0057, 0.0034*1.8 + 0.0018, 1, 1, 1, 255)
       _FiVe_SeNsE_.n.DrawRect(_x+x+0.0795, _y+y, 0.0056, 0.0034*1.8, R, G, B, 255) 
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text, _x+x + 0.004, _y+y-0.01, 0.27, false, 4, false)
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x+0.0795, _y+y, 0.0056, 0.0034*1.8) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then 
           return true
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox = function(bool, text, x, y)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       if x > 0.5 then 
           x = x + _w/2
       end
       if x > 0.5 and y > 0.5045 and _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
           y = y + _h/2
       end
       if bool then 
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.004, 0.003*1.8 + 0.0018, 1, 1, 1, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.003, 0.003*1.8, _FiVe_SeNsE_.ThisIsSliders[32].value, _FiVe_SeNsE_.ThisIsSliders[33].value, _FiVe_SeNsE_.ThisIsSliders[34].value, 255) 
       else
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.004, 0.003*1.8 + 0.0018, 1, 1, 1, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.003, 0.003*1.8, 66, 66, 66, 255) 
       end
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text, _x+x + 0.004, _y+y-0.01, 0.27, false, 4, false)
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x + 0.04/2, _y+y+0.0005, 0.044, 0.01) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then 
           return true
       end
   end
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider = function(x, y, slider, v)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       if x > 0.5 then 
           x = x + _w/2
       end
       if x > 0.5 and y > 0.5045 and _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
           y = y + _h/2
       end
       _FiVe_SeNsE_.pos.getCurX, _FiVe_SeNsE_.pos.getCurY = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cursorPos()
       local wslid = 0.078+_w/2
       _FiVe_SeNsE_.us.getTextWidth = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.getWidth(slider.value, 0.2, 4)
       _FiVe_SeNsE_.n.DrawRect((_w/2)/2+_x+x, _y+y, wslid+0.001, 6/_FiVe_SeNsE_.us.getResY, 0, 0, 0, 255)
       _FiVe_SeNsE_.n.DrawRect((_w/2)/2+_x+x, _y+y, wslid, 4/_FiVe_SeNsE_.us.getResY, 65, 63, 65, 255)
       _FiVe_SeNsE_.n.DrawRect((_w/2)/2+_x+x + (slider.value/(slider.max/wslid)/2) - (wslid / 2), _y+y, slider.value/(slider.max/wslid), 4/_FiVe_SeNsE_.us.getResY, _FiVe_SeNsE_.ThisIsSliders[32].value, _FiVe_SeNsE_.ThisIsSliders[33].value, _FiVe_SeNsE_.ThisIsSliders[34].value, 255) 
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(slider.value, (_w/2)/2+_x+x + (slider.value/(slider.max/wslid)/1) - (wslid / 2) - _FiVe_SeNsE_.us.getTextWidth, _y+y-0.008, 0.2, true, 4, false)
   
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)/2+_x+x, _y+y, wslid+0.009, 9/_FiVe_SeNsE_.us.getResY) and _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 69)  then
           _FiVe_SeNsE_.us.math = ( ((_FiVe_SeNsE_.pos.getCurX) - (_x+x - (0.5 - 0.458))) / ((_x+x + ((0.538+_w/2) - 0.5)) - (_x+x - (0.5 - 0.458))) ) * (slider.max - slider.min) - slider.min
           if v == nil then
               slider.value = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(_FiVe_SeNsE_.us.math)
           else
               slider.value = _FiVe_SeNsE_.n._ud_num(_FiVe_SeNsE_._shitlol_ThisStringShit._ud_format("%."..v.."f", _FiVe_SeNsE_.us.math))
           end
       end
       if slider.value > slider.max then
           slider.value = slider.max
       elseif slider.value < slider.min then
           slider.value = slider.min
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D = function(x, y, z, text, r, g, b)
       _FiVe_SeNsE_.n.SetDrawOrigin(x, y, z, 0)
       _FiVe_SeNsE_.n.SetTextFont(0)
       _FiVe_SeNsE_.n.SetTextProportional(0)
       _FiVe_SeNsE_.n.SetTextScale(0.0, 0.20)
       _FiVe_SeNsE_.n.SetTextColour(r, g, b, 255)
       _FiVe_SeNsE_.n.SetTextDropshadow(0, 0, 0, 0, 255)
       _FiVe_SeNsE_.n.SetTextEdge(2, 0, 0, 0, 150)
       _FiVe_SeNsE_.n.SetTextDropShadow()
       _FiVe_SeNsE_.n.SetTextOutline()
       _FiVe_SeNsE_.n.SetTextEntry("STRING")
       _FiVe_SeNsE_.n.SetTextCentre(1)
       _FiVe_SeNsE_.n.AddTextComponentString(text)
       _FiVe_SeNsE_.n.EndTextCommandDisplayText(0.0, 0.0)
       _FiVe_SeNsE_.n.ClearDrawOrigin()
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menubutton = function(text, x, y)
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       if x > 0.5 then 
           x = x + _w/2
       end
       if x > 0.5 and y > 0.48 then 
           y = y + _h/2
       end
       if text[1] == _FiVe_SeNsE_.us.tab then 
           _FiVe_SeNsE_.n.DrawRect(_x+x + 0.001, _y+y, 0.04, 0.06, 17, 17, 17, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x + 0.0005, _y+y, 0.04, 0.06, 17, 17, 17, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.04, 0.0636, 1, 1, 1, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.04, 0.062, 34, 34, 34, 255)
           _FiVe_SeNsE_.n.DrawRect(_x+x, _y+y, 0.04, 0.06, 17, 17, 17, 255)
   
   
           
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text[2], _x+0.427, _y+0.301, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text[3], _x+0.516+ _w/2, _y+0.301, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text[4], _x+0.516+ _w/2, _y+0.483+_h/2, 0.27, true, 4, false)
   
       end
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+x, _y+y, 0.04, 0.06) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then 
           return true
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetCameraDirection = function()
       local Heading = _FiVe_SeNsE_.n.GetGameplayCamRelativeHeading() + _FiVe_SeNsE_.n.GetEntityHeading(_FiVe_SeNsE_.n.PlayerPedId())
       local Pitch = _FiVe_SeNsE_.n.GetGameplayCamRelativePitch()
       local x = -_FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(Heading * _FiVe_SeNsE_._shit_ThisMathematicShit._ud_pi / 180.0)
       local y = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_cos(Heading * _FiVe_SeNsE_._shit_ThisMathematicShit._ud_pi / 180.0)
       local z = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(Pitch * _FiVe_SeNsE_._shit_ThisMathematicShit._ud_pi / 180.0)
       local len = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_sqrt(x * x + y * y + z * z)
       if len ~= 0 then
           x = x / len
           y = y / len
           z = z / len
       end
       return x, y, z
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce = function(Entity)
       if not _FiVe_SeNsE_.n.NetworkIsInSession() or _FiVe_SeNsE_.n.NetworkHasControlOfEntity(Entity) then
           return true
       end
           _FiVe_SeNsE_.n.SetNetworkIdCanMigrate(_FiVe_SeNsE_.n.NetworkGetNetworkIdFromEntity(Entity), true)
       return _FiVe_SeNsE_.n.NetworkRequestControlOfEntity(Entity)
   end
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.lerp = function(delta, from, to)
       if delta > 1 then return to end
       if delta < 0 then return from end
       return from + (to - from) * delta
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.revive = function()
       local EntityCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
       local Coords = {
           x = EntityCoords.x,
           y = EntityCoords.y,
           z = EntityCoords.z,
       }
       _FiVe_SeNsE_.n.SetEntityCoordsNoOffset(_FiVe_SeNsE_.n.PlayerPedId(), Coords.x, Coords.y, Coords.z, false, false, false, true)
       _FiVe_SeNsE_.n.NetworkResurrectLocalPlayer(Coords.x, Coords.y, Coords.z, 0, true, false)
       _FiVe_SeNsE_.n.SetPlayerInvincible(_FiVe_SeNsE_.n.PlayerPedId(), false)
       TriggerEvent("playerSpawned", Coords.x, Coords.y, Coords.z)
       _FiVe_SeNsE_.n.ClearPedBloodDamage(_FiVe_SeNsE_.n.PlayerPedId())
       _FiVe_SeNsE_.n.AnimpostfxStop("DeathFailOut")
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.loadgif = function()
       _FiVe_SeNsE_.n._ud_thr(function()
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fivem"),"logo", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244967936753684/1.png",516,516)))	_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs"),"line", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244975440363521/2.png", 400, 4))) _FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs1"),"headshot", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244586301751307/3.png", 49, 44)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs12"),"headshotW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244587790467082/4.png", 57, 51)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs2"),"headshot2", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244589544210493/5.png", 45, 49)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs22"),"headshot2W", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244591532310608/6.png", 43, 51)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs3"),"gun", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244593582669834/7.png", 54, 53)))	_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs32"),"gunW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244595634470922/8.png", 53, 53)))_FiVe_SeNsE_.n._ud_wait(100)	
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs4"),"visuals", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244597777891338/9.png", 65, 63)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs42"),"visualsW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244599718281246/10.png", 60, 56)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs5"),"settings", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244601728663582/11.png", 56, 55)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs52"),"settingsW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244603997257758/12.png", 60, 58)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs6"),"online", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864246342380945448/13.png", 50, 52)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs62"),"onlineW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864246339306782720/14.png", 46, 48)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs7"),"lua", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244628458963034/15.png", 44, 39)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("fs72"),"luaW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244635920629760/16.png", 44, 31)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("hidegid"),"hideg", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244643167469588/17.png", 189, 74)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("custompistol"),"pistol", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244651132846100/18.png", 97, 40)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("customknife"),"knife", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244663715102740/19.png", 94, 22)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("customsmg"),"smg", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244679515439124/20.png", 86, 34)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("custompump"),"pump", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244689544675338/21.png", 78, 40)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("customak"),"ak", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244695198597120/22.png", 111, 36)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("customsniper"),"sniper", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244701347577856/23.png", 125, 36)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("custompistolW"),"pistolW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244707407822848/24.png", 93, 42)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("customknifeW"),"knifeW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244718677786655/25.png", 93, 28)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("customsmgW"),"smgW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244943030583296/26.png", 80, 33)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("custompumpW"),"pumpW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244946260721674/27.png", 78, 36)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("customakW"),"akW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244955803680798/28.png", 112, 32)))_FiVe_SeNsE_.n._ud_wait(100)
           _FiVe_SeNsE_.n.CreateRuntimeTextureFromDuiHandle(_FiVe_SeNsE_.n.CreateRuntimeTxd("customsniperW"),"sniperW", _FiVe_SeNsE_.n.GetDuiHandle(_FiVe_SeNsE_.n.CreateDui("https://cdn.discordapp.com/attachments/860929360092725269/864244960755974174/29.png", 122, 36)))_FiVe_SeNsE_.n._ud_wait(100)
   
       end)
   end
   
   -- Icons lol
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.loadgif()
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerate = function(aH, aI, aJ)
       return _FiVe_SeNsE_._shitmeh_ThisCoroutineShit._ud_wrap(function() local aK, t = aH() if not t or t == 0 then aJ(aK)return end local aF = {handle = aK, destructor = aJ}
       _FiVe_SeNsE_._shitmeh_ThisCoroutineShit._ud_metatable(aF, aE) local aL = true repeat _FiVe_SeNsE_._shitmeh_ThisCoroutineShit._ud_yield(t) aL, t = aI(aK) until not aL aF.destructor, aF.handle = nil, nil aJ(aK) end)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateVehicles = function()
       return _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerate(FindFirstVehicle,FindNextVehicle,EndFindVehicle)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds = function()
       return _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerate(FindFirstPed,FindNextPed,EndFindPed)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateObjects = function()
       return _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerate(FindFirstObject,FindNextObject,EndFindObject)
   end
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CustomWorldColor = function(r, g, b, distance, shadow)
       pos = _FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.GetPlayerPed(-1), 0x796E, 0.0, 0.0, 0.0)
       _FiVe_SeNsE_.n._ud_inv(0xF49E9A9716A04595, pos.x, pos.y, pos.z + 3.0, r, g, b, distance, shadow)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection = function(rotation)
       local retz = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_rad(rotation.z)
       local retx = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_rad(rotation.x)
       local absx = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_abs(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_cos(retx))
       return _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(-_FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(retz) * absx, _FiVe_SeNsE_._shit_ThisMathematicShit._ud_cos(retz) * absx, _FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(retx))
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetSeatPedIsIn = function(ped)
       if not _FiVe_SeNsE_.n.IsPedInAnyVehicle(ped, false) then
           return
       else
           veh = _FiVe_SeNsE_.n.GetVehiclePedIsIn(ped)
           for i = 0, _FiVe_SeNsE_.n.GetVehicleMaxNumberOfPassengers(veh) do
               if _FiVe_SeNsE_.n.GetPedInVehicleSeat(veh) then
                   return i
               end
           end
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.WepFromHash = function(hashcode)
       for i = 1, #_FiVe_SeNsE_.allwepwithWEAPON do
           if _FiVe_SeNsE_.n.GetHashKey(_FiVe_SeNsE_.allwepwithWEAPON[i]) == hashcode then
               return _FiVe_SeNsE_._shitlol_ThisStringShit._ud_sub(_FiVe_SeNsE_.allwepwithWEAPON[i], 8)
           end
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.WepFromHashGlife = function(hashcode)
       for i = 1, #_FiVe_SeNsE_.allwepwithWEAPONGlife do
           if _FiVe_SeNsE_.n.GetHashKey(_FiVe_SeNsE_.allwepwithWEAPONGlife[i]) == hashcode then
               return _FiVe_SeNsE_._shitlol_ThisStringShit._ud_sub(_FiVe_SeNsE_.allwepwithWEAPONGlife[i], 8)
           end
       end
   end
   
   
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fuckupmap = function(fuckmap)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, 431.05, -983.04, 30.71, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, 226.12, -793.08, 30.67, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, 284.67, -863.06, 10.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, 106.12, -1005.57, 10.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -742.62, -670.57, 20.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -83.91, -120.57, 30.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -1026.01, -489.57, 50.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -1378.01, -396.57, 32.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -833.01, -1277.57, 4.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -398.01, -2165.89, 5.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -500.01, -2060.89, 20.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, 1013.906, 469.653, 0, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -157.854, 906.653, 5.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -2088.525, 633.528, 20.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -2112.81, 2976.336, 4.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, 1129.261, 3012.753, 5.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -2149.238, 4797.172, 20.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -2149.238, 4797.172, 20.70, true, true, false)
       _FiVe_SeNsE_.n.CreateObject(fuckmap, -84.998, 6217.423, 20.70, true, true, false)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToPlayerVeh = function(player)
       local ped = _FiVe_SeNsE_.n.GetPlayerPed(player)
       local vehicle = _FiVe_SeNsE_.n.GetVehiclePedIsUsing(_FiVe_SeNsE_.n.GetPlayerPed(player))
       local getseats = _FiVe_SeNsE_.n.GetVehicleMaxNumberOfPassengers(vehicle)
   
       if not _FiVe_SeNsE_.n.IsPedInAnyVehicle(ped) then
           return _FiVe_SeNsE_._shitlol_ThisStringShit._ud_print("That Retard is not in vehicle sad bro.")
       end
   
       for i = 0, getseats do
           if _FiVe_SeNsE_.n.IsVehicleSeatFree(vehicle, i) then
               _FiVe_SeNsE_.n.SetPedIntoVehicle(_FiVe_SeNsE_.n.PlayerPedId(), vehicle, i)
               break
           end
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cloneoutfit = function(tped)
       local ped = _FiVe_SeNsE_.n.GetPlayerPed(tped)
       local myself = _FiVe_SeNsE_.n.PlayerPedId()
   
       local getoutfit = {
           
           head = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 0),
           head2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 0),
           head3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 0),
       
           hair = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 2),
           hair2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 2),
           hair3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 2),
       
           hat = _FiVe_SeNsE_.n.GetPedPropIndex(ped, 0),
           hat2 = _FiVe_SeNsE_.n.GetPedPropTextureIndex(ped, 0),
       
           glasses = _FiVe_SeNsE_.n.GetPedPropIndex(ped, 1),
           glasses2 = _FiVe_SeNsE_.n.GetPedPropTextureIndex(ped, 1),
       
           ear = _FiVe_SeNsE_.n.GetPedPropIndex(ped, 2),
           ear2 = _FiVe_SeNsE_.n.GetPedPropTextureIndex(ped, 2),
       
           watches = _FiVe_SeNsE_.n.GetPedPropIndex(ped, 6),
           watches2 = _FiVe_SeNsE_.n.GetPedPropTextureIndex(ped, 6),
       
           wrist = _FiVe_SeNsE_.n.GetPedPropIndex(ped, 7),
           wrist2 = _FiVe_SeNsE_.n.GetPedPropTextureIndex(ped, 7),
       
           beard = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 1),
           beard2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 1),
           beard3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 1),
       
       
           torso = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 3),
           torso2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 3),
           torso3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 3),
       
           legs = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 4),
           legs2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 4),
           legs3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 4),
       
           hands = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 5),
           hands2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 5),
           hands3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 5),
           
           foot = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 6),
           foot2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 6),
           foot3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 6),
       
           mask = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 10),
           mask2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 10),
           mask3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 10),
           aux = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 11),
           aux2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 11),
           aux3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 11),
       
           accessories = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 7),
           accessories2 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 7),
           accessories3 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 7),
           accessories4 = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 8),
           accessories5 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 8),
           accessories6 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 8),
           accessories7 = _FiVe_SeNsE_.n.GetPedDrawableVariation(ped, 9),
           accessories8 = _FiVe_SeNsE_.n.GetPedPaletteVariation(ped, 9),
           accessories9 = _FiVe_SeNsE_.n.GetPedTextureVariation(ped, 9),
       }
   
      _FiVe_SeNsE_.n.SetPedPropIndex(myself, 0, getoutfit.hat, getoutfit.hat2, 1)
      _FiVe_SeNsE_.n.SetPedPropIndex(myself, 1, getoutfit.glasses, getoutfit.glasses2, 1)
      _FiVe_SeNsE_.n.SetPedPropIndex(myself, 2, getoutfit.ear, getoutfit.ear2, 1)
      _FiVe_SeNsE_.n.SetPedPropIndex(myself, 6, getoutfit.watches, getoutfit.watches2, 1)
      _FiVe_SeNsE_.n.SetPedPropIndex(myself, 7, getoutfit.wrist, getoutfit.wrist2, 1)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 0, getoutfit.head, getoutfit.head3, getoutfit.head2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 1, getoutfit.beard, getoutfit.beard3, getoutfit.beard2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 2, getoutfit.hair, getoutfit.hair3, getoutfit.hair2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 3, getoutfit.torso, getoutfit.torso3, getoutfit.torso2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 4, getoutfit.legs, getoutfit.legs3, getoutfit.legs2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 5, getoutfit.hands, getoutfit.hands3, getoutfit.hands2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 6, getoutfit.foot, getoutfit.foot3, getoutfit.foot2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 7, getoutfit.accessories, getoutfit.accessories3, getoutfit.accessories2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 8, getoutfit.accessories4, getoutfit.accessories6, getoutfit.accessories5)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 9, getoutfit.accessories7, getoutfit.accessories9, getoutfit.accessories8)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 10, getoutfit.mask, getoutfit.mask3, getoutfit.mask2)
      _FiVe_SeNsE_.n.SetPedComponentVariation(myself, 11, getoutfit.aux, getoutfit.aux3, getoutfit.aux2)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint = function(x, y, z)
       local r = _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1))
       if _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.GetPlayerPed(-1), false) then
           _FiVe_SeNsE_.n.SetEntityCoords(r, x, y, z)
       else
           _FiVe_SeNsE_.n.SetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(-1), x, y, z)
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.split = function(content, pattern)
       local lines = {}
       -- I dont know TOMORROW
       for s in content:gmatch(pattern) do
           lines[#lines + 1] = s
       end
       return lines
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToWaypoint = function()
       local point = _FiVe_SeNsE_.n.GetFirstBlipInfoId(8)
         if _FiVe_SeNsE_.n.DoesBlipExist(point) then
             local wpcoord = _FiVe_SeNsE_.n.GetBlipInfoIdCoord(point)
           for height = 1, 1000 do
               _FiVe_SeNsE_.n.SetPedCoordsKeepVehicle(_FiVe_SeNsE_.n.PlayerPedId(), wpcoord["x"], wpcoord["y"], height + 0.0)
   
               local foundGround, zPos = _FiVe_SeNsE_.n.GetGroundZFor_3dCoord(wpcoord["x"], wpcoord["y"], height + 0.0)
   
               if foundGround then
                   _FiVe_SeNsE_.n.SetPedCoordsKeepVehicle(_FiVe_SeNsE_.n.PlayerPedId(), wpcoord["x"], wpcoord["y"], height + 0.0)
                   break
               end
               _FiVe_SeNsE_.n._ud_wait(0)
           end
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.iftab = function(text)
       return _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tab == text
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.loadicons = function()
       local y = 0.34
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       if _FiVe_SeNsE_.us.tab == 'Aimbot' then 
           _FiVe_SeNsE_.n.DrawSprite('fs12', 'headshotW', _x+0.4, _y+y, 0.027, 0.027*1.68, 0.0, 255, 255, 255, 255) 
       else
           _FiVe_SeNsE_.n.DrawSprite('fs1', 'headshot', _x+0.4, _y+y, 0.024, 0.024*1.68, 0.0, 255, 255, 255, 255) 
       end 
       y = y + 0.054
   
       if _FiVe_SeNsE_.us.tab == 'Player' then 
           _FiVe_SeNsE_.n.DrawSprite('fs22', 'headshot2W', _x+0.4, _y+y, 0.021, 0.024*1.8, 0.0, 255, 255, 255, 255) 
       else
           _FiVe_SeNsE_.n.DrawSprite('fs2', 'headshot2', _x+0.4, _y+y, 0.023, 0.024*1.8, 0.0, 255, 255, 255, 255) 
       end
       y = y + 0.054
   
       if _FiVe_SeNsE_.us.tab == 'Weapons' then 
           _FiVe_SeNsE_.n.DrawSprite('fs32', 'gunW', _x+0.4, _y+y, 0.023, 0.022*1.8, 0.0, 255, 255, 255, 255) 
       else
           _FiVe_SeNsE_.n.DrawSprite('fs3', 'gun', _x+0.4, _y+y, 0.023, 0.022*1.8, 0.0, 255, 255, 255, 255) 
       end
           
       y = y + 0.054
   
       if _FiVe_SeNsE_.us.tab == 'Visuals' then 
           _FiVe_SeNsE_.n.DrawSprite('fs42', 'visualsW', _x+0.4, _y+y, 0.0255, 0.0255*1.67, 0.0, 255, 255, 255, 255) 
       else
           _FiVe_SeNsE_.n.DrawSprite('fs4', 'visuals', _x+0.4, _y+y, 0.0265, 0.0255*1.8, 0.0, 255, 255, 255, 255) 
       end
           
       y = y + 0.054
       if _FiVe_SeNsE_.us.tab == 'Settings' then 
           _FiVe_SeNsE_.n.DrawSprite('fs52', 'settingsW', _x+0.4, _y+y, 0.026, 0.025*1.8, 0.0, 255, 255, 255, 255) 
       else
           _FiVe_SeNsE_.n.DrawSprite('fs5', 'settings', _x+0.4, _y+y, 0.026, 0.025*1.8, 0.0, 255, 255, 255, 255) 
       end
           
       y = y + 0.054
       if _FiVe_SeNsE_.us.tab == 'Online' then 
           _FiVe_SeNsE_.n.DrawSprite('fs62', 'onlineW', _x+0.4, _y+y, 0.024, 0.023*1.8, 0.0, 255, 255, 255, 255) 
       else
           _FiVe_SeNsE_.n.DrawSprite('fs6', 'online', _x+0.4, _y+y, 0.024, 0.023*1.8, 0.0, 255, 255, 255, 255) 
       end
           
       y = y + 0.054
       if _FiVe_SeNsE_.us.tab == 'Lua' then 
           _FiVe_SeNsE_.n.DrawSprite('fs72', 'luaW', _x+0.4015, _y+y+0.001, 0.024, 0.023*1.4, 0.0, 255, 255, 255, 255) 
       else
           _FiVe_SeNsE_.n.DrawSprite('fs7', 'lua', _x+0.4, _y+y, 0.024, 0.023*1.8, 0.0, 255, 255, 255, 255) 
       end
   end
   
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect = function(x, y, w, h, r, g, b, a)
       _FiVe_SeNsE_.n.DrawRect(x, y, w, h, r, g, b, a)
   end
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawRects = function()
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       
       
   
       if _FiVe_SeNsE_.us.tab ~= 'Weapons' then 
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5 - 0.02/2, (_h/2)+_y+0.5, _w+0.225, _h+0.4098, 56, 56, 56, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5 - 0.02/2, (_h/2)+_y+0.5, _w+0.224, _h+0.408, 40, 40, 40, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5 - 0.02/2, (_h/2)+_y+0.5, _w+0.221, _h+0.4018, 53, 53, 53, 255)
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5 - 0.01/2, (_h/2)+_y+0.5, _w+0.21, _h+0.4, 17, 17, 17, 255)
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5, _w+0.086-_w/2, _h+0.3906, 1, 1, 1, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5, _w+0.085-_w/2, _h+0.3888, 34, 34, 34, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5, _w+0.084-_w/2, _h+0.387, 23, 23, 23, 255)
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.086-_w/2, _h+0.2036-_h/2, 1, 1, 1, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.085-_w/2, _h+0.2018-_h/2, 34, 34, 34, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.084-_w/2, _h+0.2-_h/2, 23, 23, 23, 255)
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.086-_w/2, _h+0.1836-_h/2, 1, 1, 1, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.085-_w/2, _h+0.1818-_h/2, 34, 34, 34, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.084-_w/2, _h+0.18-_h/2, 23, 23, 23, 255)
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect(_x+0.401 , (_h/2)+_y+0.5, 0.04, _h+0.4, 34, 34, 34, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect(_x+0.4005 , (_h/2)+_y+0.5, 0.04, _h+0.4, 1, 1, 1, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect(_x+0.4 , (_h/2)+_y+0.5, 0.04, _h+0.4, 12, 12, 12, 255)
       else
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5 - 0.02/2, (_h/2)+_y+0.5, _w+0.225, _h+0.4098, 56, 56, 56, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5 - 0.02/2, (_h/2)+_y+0.5, _w+0.224, _h+0.408, 40, 40, 40, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5 - 0.02/2, (_h/2)+_y+0.5, _w+0.221, _h+0.4018, 53, 53, 53, 255)
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5 - 0.01/2, (_h/2)+_y+0.5, _w+0.21, _h+0.4, 17, 17, 17, 255)
   
   
   
       local h = 0.05
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5+h/2, _w+0.086-_w/2, _h+0.3906-h, 1, 1, 1, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5+h/2, _w+0.085-_w/2, _h+0.3888-h, 34, 34, 34, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5+h/2, _w+0.084-_w/2, _h+0.387-h, 23, 23, 23, 255)
   
       local h = 0.05
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5+h/2, _w+0.086-_w/2, _h+0.3906-h, 1, 1, 1, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5+h/2, _w+0.085-_w/2, _h+0.3888-h, 34, 34, 34, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5+h/2, _w+0.084-_w/2, _h+0.387-h, 23, 23, 23, 255)
   
       local w = 0.008
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5145-w/2, _y+0.33, _w+0.182-w, 0.0436, 1, 1, 1, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5145-w/2, _y+0.33, _w+0.181-w, 0.0418, 34, 34, 34, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.5145-w/2, _y+0.33, _w+0.18-w, 0.04, 23, 23, 23, 255)
       
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect(_x+0.401 , (_h/2)+_y+0.5, 0.04, _h+0.4, 34, 34, 34, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect(_x+0.4005 , (_h/2)+_y+0.5, 0.04, _h+0.4, 1, 1, 1, 255)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect(_x+0.4 , (_h/2)+_y+0.5, 0.04, _h+0.4, 12, 12, 12, 255)
   
       
       end
   
       
   
       _FiVe_SeNsE_.n.DrawSprite('fs', 'line', _x+0.4904+_w/2, _y+0.301, 0.219+_w, 3/_FiVe_SeNsE_.us.getResY, 0.0, 255, 255, 255, 255)
   
   
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hsvToRgb = function(h, s, v, a)
       local r, g, b
   
       local i = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(h * 6);
       local f = h * 6 - i;
       local p = v * (1 - s);
       local q = v * (1 - f * s);
       local t = v * (1 - (1 - f) * s);
   
       i = i % 6
       if i == 0 then r, g, b = v, t, p
       elseif i == 1 then r, g, b = q, v, p
       elseif i == 2 then r, g, b = p, v, t
       elseif i == 3 then r, g, b = p, q, v
       elseif i == 4 then r, g, b = t, p, v
       elseif i == 5 then r, g, b = v, p, q
       end
   
       return _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(r * 255 + 0.5), _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(g * 255 + 0.5), _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(b * 255 + 0.5), _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(a * 255)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ambientGlow = function(p, r, g, b, distance, shadow)
       -- bones definiton SKEL_ROOT = 0x0,SKEL_Pelvis = 0x2e28,SKEL_L_Thigh = 0xe39f,SKEL_L_Calf = 0xf9bb,SKEL_L_Foot = 0x3779,SKEL_L_Toe0 = 0x83c,IK_L_Foot = 0xfedd,PH_L_Foot = 0xe175,MH_L_Knee = 0xb3fe,SKEL_R_Thigh = 0xca72,SKEL_R_Calf = 0x9000,SKEL_R_Foot = 0xcc4d,SKEL_R_Toe0 = 0x512d,IK_R_Foot = 0x8aae,PH_R_Foot = 0x60e6,MH_R_Knee = 0x3fcf,RB_L_ThighRoll = 0x5c57,RB_R_ThighRoll = 0x192a,SKEL_Spine_Root = 0xe0fd,SKEL_Spine0 = 0x5c01,SKEL_Spine1 = 0x60f0,SKEL_Spine2 = 0x60f1,SKEL_Spine3 = 0x60f2,SKEL_L_Clavicle = 0xfcd9,SKEL_L_UpperArm = 0xb1c5,SKEL_L_Forearm = 0xeeeb,SKEL_L_Hand = 0x49d9,SKEL_L_Finger00 = 0x67f2,SKEL_L_Finger01 = 0xff9,SKEL_L_Finger02 = 0xffa,SKEL_L_Finger10 = 0x67f3,SKEL_L_Finger11 = 0x1049,SKEL_L_Finger12 = 0x104a,SKEL_L_Finger20 = 0x67f4,SKEL_L_Finger21 = 0x1059,SKEL_L_Finger22 = 0x105a,SKEL_L_Finger30 = 0x67f5,SKEL_L_Finger31 = 0x1029,SKEL_L_Finger32 = 0x102a,SKEL_L_Finger40 = 0x67f6,SKEL_L_Finger41 = 0x1039,SKEL_L_Finger42 = 0x103a,PH_L_Hand = 0xeb95,IK_L_Hand = 0x8cbd,RB_L_ForeArmRoll = 0xee4f,RB_L_ArmRoll = 0x1470,MH_L_Elbow = 0x58b7,SKEL_R_Clavicle = 0x29d2,SKEL_R_UpperArm = 0x9d4d,SKEL_R_Forearm = 0x6e5c,SKEL_R_Hand = 0xdead,SKEL_R_Finger00 = 0xe5f2,SKEL_R_Finger01 = 0xfa10,SKEL_R_Finger02 = 0xfa11,SKEL_R_Finger10 = 0xe5f3,SKEL_R_Finger11 = 0xfa60,SKEL_R_Finger12 = 0xfa61,SKEL_R_Finger20 = 0xe5f4,SKEL_R_Finger21 = 0xfa70,SKEL_R_Finger22 = 0xfa71,SKEL_R_Finger30 = 0xe5f5,SKEL_R_Finger31 = 0xfa40,SKEL_R_Finger32 = 0xfa41,SKEL_R_Finger40 = 0xe5f6,SKEL_R_Finger41 = 0xfa50,SKEL_R_Finger42 = 0xfa51,PH_R_Hand = 0x6f06,IK_R_Hand = 0x188e,RB_R_ForeArmRoll = 0xab22,RB_R_ArmRoll = 0x90ff,MH_R_Elbow = 0xbb0,SKEL_Neck_1 = 0x9995,SKEL_Head = 0x796e,IK_Head = 0x322c,FACIAL_facialRoot = 0xfe2c,FB_L_Brow_Out_000 = 0xe3db,FB_L_Lid_Upper_000 = 0xb2b6,FB_L_Eye_000 = 0x62ac,FB_L_CheekBone_000 = 0x542e,FB_L_Lip_Corner_000 = 0x74ac,FB_R_Lid_Upper_000 = 0xaa10,FB_R_Eye_000 = 0x6b52,FB_R_CheekBone_000 = 0x4b88,FB_R_Brow_Out_000 = 0x54c,FB_R_Lip_Corner_000 = 0x2ba6,FB_Brow_Centre_000 = 0x9149,FB_UpperLipRoot_000 = 0x4ed2,FB_UpperLip_000 = 0xf18f,FB_L_Lip_Top_000 = 0x4f37,FB_R_Lip_Top_000 = 0x4537,FB_Jaw_000 = 0xb4a0,FB_LowerLipRoot_000 = 0x4324,FB_LowerLip_000 = 0x508f,FB_L_Lip_Bot_000 = 0xb93b,FB_R_Lip_Bot_000 = 0xc33b,FB_Tongue_000 = 0xb987,RB_Neck_1 = 0x8b93,IK_Root = 0xdd1c
   --local bonesifneeded = {0x0,0x2e28,0xe39f,0xf9bb,0x3779,0x83c,0xfedd,0xe175,0xb3fe,0xca72,0x9000,0xcc4d,0x512d,0x8aae,0x60e6,0x3fcf,0x5c57,0x192a,0xe0fd,0x5c01,0x60f0,0x60f1,0x60f2,0xfcd9,0xb1c5,0xeeeb,0x49d9,0x67f2,0xff9,0xffa,0x67f3,0x1049,0x104a,0x67f4,0x1059,0x105a,0x67f5,0x1029,0x102a,0x67f6,0x1039,0x103a,0xeb95,0x8cbd,0xee4f,0x1470,0x58b7,0x29d2,0x9d4d,0x6e5c,0xdead,0xe5f2,0xfa10,0xfa11,0xe5f3,0xfa60,0xfa61,0xe5f4,0xfa70,0xfa71,0xe5f5,0xfa40,0xfa41,0xe5f6,0xfa50,0xfa51,0x6f06,0x188e,0xab22,0x90ff,0xbb0,0x9995,0x796e,0x322c,0xfe2c,0xe3db,0xb2b6,0x62ac,0x542e,0x74ac,0xaa10,0x6b52,0x4b88,0x54c,0x2ba6,0x9149,0x4ed2,0xf18f,0x4f37,0x4537,0xb4a0,0x4324,0x508f,0xb93b,0xc33b,0xb987,0x8b93,0xdd1c,}
   
   local bones = {0, 23553, 24817, 24818, 24816, 11816,31086, 0xcc4d, 0x9995, 0x3779, 0xE0FD,0x5C57,0x192A,0x9995,0xB1C5,0xEEEB,0x49D9,0x9D4D,0x6E5C,0xDEAD, 0x5c01}
       for i = 1, #bones do 
           local head = _FiVe_SeNsE_.n.GetPedBoneCoords(p, bones[i], 0.0, 0.0, 0.0)
           _FiVe_SeNsE_.n.DrawLightWithRangeAndShadow(head.x, head.y, head.z + 0.3 , r, g, b, distance, shadow)
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ambientGlowwhite = function(p, distance, shadow)
       local bones = {31086, 0x796e}
       for i = 1, #bones do 
           local head = _FiVe_SeNsE_.n.GetPedBoneCoords(p, bones[i], 0.0, 0.0, 0.0)
           _FiVe_SeNsE_.n.DrawLightWithRangeAndShadow(head.x, head.y, head.z + 0.3 , 255, 255, 255, distance, shadow)
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ambientGlowlegs = function(p, r, g, b, distance, shadow)
       local bones = {0x3779, 0xcc4d}
       for i = 1, #bones do 
           local head = _FiVe_SeNsE_.n.GetPedBoneCoords(p, bones[i], 0.0, 0.0, 0.0)
           _FiVe_SeNsE_.n.DrawLightWithRangeAndShadow(head.x, head.y, head.z - 5 , r, g, b, distance, shadow)
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ambientGlowTest = function(p, r, g, b, distance, shadow)
   local bones = {0x0,0x2e28,0xe39f,0xf9bb,0x3779,0x83c,0xfedd,0xe175,0xb3fe,0xca72,0x9000,0xcc4d,0x512d,0x8aae,0x60e6,0x3fcf,0x5c57,0x192a,0xe0fd,0x5c01,0x60f0,0x60f1,0x60f2,0xfcd9,0xb1c5,0xeeeb,0x49d9,0x67f2,0xff9,0xffa,0x67f3,0x1049,0x104a,0x67f4,0x1059,0x105a,0x67f5,0x1029,0x102a,0x67f6,0x1039,0x103a,0xeb95,0x8cbd,0xee4f,0x1470,0x58b7,0x29d2,0x9d4d,0x6e5c,0xdead,0xe5f2,0xfa10,0xfa11,0xe5f3,0xfa60,0xfa61,0xe5f4,0xfa70,0xfa71,0xe5f5,0xfa40,0xfa41,0xe5f6,0xfa50,0xfa51,0x6f06,0x188e,0xab22,0x90ff,0xbb0,0x9995,0x796e,0x322c,0xfe2c,0xe3db,0xb2b6,0x62ac,0x542e,0x74ac,0xaa10,0x6b52,0x4b88,0x54c,0x2ba6,0x9149,0x4ed2,0xf18f,0x4f37,0x4537,0xb4a0,0x4324,0x508f,0xb93b,0xc33b,0xb987,0x8b93,0xdd1c,}
       for i = 1, #bones do 
           local head = _FiVe_SeNsE_.n.GetPedBoneCoords(p, bones[i], 0.0, 0.0, 0.0)
           DrawLightWithRange(head.x, head.y, head.z + 0.3 , r, g, b, distance, shadow)
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle = function(x, y, w, h, r, g, b, a)
       local scrW, scrH = _FiVe_SeNsE_.n.GetActiveScreenResolution()
       local ratioX, ratioY = 1 / scrW, 1 / scrH
   
       local actualX, actualY = ratioX * x, ratioY * y
       local actualW, actualH = ratioX * w, ratioY * h
       _FiVe_SeNsE_.n.DrawRect(actualX + actualW / 2, actualY + actualH / 2, actualW, actualH, r, g, b, a)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Gradient = function(x, y, w, h, horizontal, r, g, b, a, r1, g1, b1, a2)
       --_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(x, y, w, h, r, g, b, a)
       if horizontal then
           for i = 0, w, 2 do
               if i > w then
                   break
               end
               local a = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor((a2 - a) / w * i + a)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(x + i, y, i < w - 1 and 2 or 1, h, r1, g1, b1, _FiVe_SeNsE_._shit_ThisMathematicShit._ud_abs(a))
           end
       else
           for i = 0, h, 2 do
               if i > h then
                   break
               end
               local a = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor((a2 - a) / h * i + a)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(x, y + i, w, i < h - 1 and 2 or 1, r1, g1, b1, _FiVe_SeNsE_._shit_ThisMathematicShit._ud_abs(a))
           end
       end
   end
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HSVGradient = function(x, y, w, h, horizontal, h1, s1, v1, h2, s2, v2)
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(x, y, w, h, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hsvToRgb(h1, s1, v1, 1))
       if horizontal then
           for i = 0, w, 2 do
               local _h, s, v = ((h2 - h1) / w) * i + h1, ((s2 - s1) / w) * i + s1, ((v2 - v1) / w) * i + v1
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(x + i, y, 2, h, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hsvToRgb(_h, s, v, 1))
           end
       else
           for i = 0, h, 2 do
               local _h, s, v = ((h2 - h1) / h) * i + h1, ((s2 - s1) / h) * i + s1, ((v2 - v1) / h) * i + v1
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(x, y + i, w, 2, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hsvToRgb(_h, s, v, 1))
           end
       end
   end
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawRecterinio = function(x, y, w, h, r, g, b, a)
       resX, resY = _FiVe_SeNsE_.n.GetActiveScreenResolution()
       local _w, _h = w / resX, h / resY
       local _x, _y = x / resX + _w / 2, y / resY + _h / 2
       _FiVe_SeNsE_.n.DrawRect(_x, _y, _w, _h, r, g, b, a)
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse = function(scalling)
       local x, y = _FiVe_SeNsE_.n.GetNuiCursorPosition()
       local w, h = _FiVe_SeNsE_.n.GetActiveScreenResolution()
       if scalling then 
           x = x / w ; y = y / h 
       end;
       return {x = x, y = y}
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetScreenSize = function()
       local x, y = _FiVe_SeNsE_.n.GetActiveScreenResolution()
       return {x = x, y = y}
   end
   
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.rgb = function(frequency)
       local result = {}
       local curtime = _FiVe_SeNsE_.n.GetGameTimer() / 2000
       result.r = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(curtime * frequency + 0) * 127 + 128)
       result.g = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(curtime * frequency + 2) * 127 + 128)
       result.b = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(curtime * frequency + 4) * 127 + 128)
       return result
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker = function(R, G, B)
       _FiVe_SeNsE_.menu.colorpicker = true
       _FiVe_SeNsE_.menu.open = false
       local R = {HSV = {H = 0,S = 0,V = 0},RGB = {R = R,G = G,B = B},Held = {Hue = false,Value = false},Opened = false,Turned = true,}
       while R.Turned do
           _FiVe_SeNsE_.n.DisableControlAction(0, 1, true) -- LookLeftRight
           _FiVe_SeNsE_.n.DisableControlAction(0, 2, true) -- LookUpDown
           _FiVe_SeNsE_.n.DisableControlAction(0, 142, true) -- MeleeAttackAlternate
           _FiVe_SeNsE_.n.DisableControlAction(0, 322, true) -- ESC
           _FiVe_SeNsE_.n.DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
           _FiVe_SeNsE_.n.DisableControlAction(0, 25, true) -- MOUSE 2
           _FiVe_SeNsE_.n.DisableControlAction(0, 24, true) -- Attack
           _FiVe_SeNsE_.n.DisableControlAction(0, 257, true) -- Attack2
           _FiVe_SeNsE_.n.DisableControlAction(0, 32, true) -- W
           _FiVe_SeNsE_.n.DisableControlAction(0, 31, true) -- S
           _FiVe_SeNsE_.n.DisableControlAction(0, 30, true) -- D
           _FiVe_SeNsE_.n.DisableControlAction(0, 34, true) -- A
           _FiVe_SeNsE_.n.DisableControlAction(0, 23, true) -- F
           _FiVe_SeNsE_.n.DisableControlAction(0, 22, true) -- Jump
           _FiVe_SeNsE_.n.DisableControlAction(0, 16, true) -- Wep Scroll
           _FiVe_SeNsE_.n.DisableControlAction(0, 17, true) -- Wep Scroll
           local w, h = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetScreenSize().x, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetScreenSize().y
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(0, 0, w, h, 24, 24, 24, 200)
           local baseX, baseY = w / 2 - 100, h / 2 - 100
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(baseX - 2, baseY - 2, 204, 228, 18, 18, 18, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(baseX - 1, baseY - 1, 202, 226, 42, 42, 42, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(baseX, baseY, 200, 224, 24, 24, 24, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(baseX, baseY, 200, 1, R.RGB.R, R.RGB.G, R.RGB.B, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(baseX - 2 + 5, baseY - 2 + 196, 194, 26, 18, 18, 18, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(baseX - 1 + 5, baseY - 1 + 196, 192, 24, 42, 42, 42, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(baseX + 5, baseY + 196, 190, 22, 24, 24, 24, 255) 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText("Color", 0.451, 0.58, 0.201, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText("R: ".. R.RGB.R.. " G: ".. R.RGB.G.. " B: ".. R.RGB.B.. ", Confirm with enter", 0.451, 0.59, 0.29, true, 4, false)
           local r, g, b, a = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hsvToRgb(R.HSV.H, 1, 1, 1) 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rectangle(baseX + 10, baseY + 10, 160, 180, r, g, b, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Gradient(baseX + 10, baseY + 10, 160, 180, true, r, g, b, 255, 255, 255, 255, 0)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Gradient(baseX + 10, baseY + 10, 160, 180, false, 255, 255, 255, 0, 0, 0, 0, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HSVGradient(baseX + 20 + 160, baseY + 10, 10, 180, false, 0, 1, 1, 1, 1, 1)
           local x, y = _FiVe_SeNsE_.n.GetNuiCursorPosition()
           local w, h = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetScreenSize().x, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetScreenSize().y
           local baseX, baseY = w / 2 - 100, h / 2 - 100
           if _FiVe_SeNsE_.n.IsControlJustPressed(0, 18) then
               if x > baseX + 20 and x < baseX + 20 + 160 and y > baseY + 10 and y < baseY + 10 + 180 then
                   R.Held.Value = true
               end
               if x > baseX + 20 + 160 and x < baseX + 20 + 160 + 10 and y > baseY + 10 and y < baseY + 10 + 180 then
                   R.Held.Hue = true
               end
               if x < baseX or x > baseX + 200 or y < baseY or y > baseY + 200 then
                   R.Opened = false
               end
           end
           if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 69)  then
               if R.Held.Value then
                   local SR = x - baseX - 10
                   local VR = y - baseY - 60
                   R.HSV.S = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_clamp(SR / 180, 0, 1)
                   R.HSV.V = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_clamp(1 - VR / 160, 0, 1)
               end
               if R.Held.Hue then
                   local H = y - baseY + -19
                   R.HSV.H = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_clamp(H / 180, 0, 1)
               end
               local r, g, b, a = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
               R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
           else
               if R.Held.Value then
                   R.Opened = false
               end
               R.Held.Value = false
               R.Held.Hue = false
           end
   
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawRecterinio(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse(false).x - 2, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse(false).y - 7, 3, 13, 0, 0, 0, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawRecterinio(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse(false).x - 7, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse(false).y - 2, 13, 3, 0, 0, 0, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawRecterinio(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse(false).x - 1, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse(false).y - 6, 1, 11, 255, 255, 255, 255)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawRecterinio(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse(false).x - 6, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Mouse(false).y - 1 , 11, 1, 255, 255, 255, 255)
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 191) then
               _FiVe_SeNsE_.menu.open = true
               _FiVe_SeNsE_.menu.colorpicker = false
               R.Turned = false
               return R.RGB.R, R.RGB.G, R.RGB.B
           end
           _FiVe_SeNsE_.n._ud_wait(0)
       end
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectTab = function(text)
       _FiVe_SeNsE_.us.tab = text
   end
   
   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menu = function()
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawRects()
       local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
       local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
       local y = 0.34
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menubutton({'Aimbot', 'Whitelist', 'Aimlock', 'Aimbot'}, 0.4, y) then 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectTab('Aimbot')
       end  y = y + 0.054
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menubutton({'Player', 'Miscellanous', 'Definied Godmode', 'Freecam'}, 0.4, y) then 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectTab('Player')
       end y = y + 0.054
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menubutton({'Weapons', '', '', ''}, 0.4, y) then 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectTab('Weapons')
       end y = y + 0.054
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menubutton({'Visuals', 'Miscellanous', 'Crosshair', 'ESP'}, 0.4, y) then 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectTab('Visuals')
       end y = y + 0.054
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menubutton({'Settings', 'Subtab', 'Subtabs', 'Settings'}, 0.4, y) then 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectTab('Settings')
       end y = y + 0.054
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menubutton({'Online', 'Active Players', 'Troll Selection', 'General'}, 0.4, y) then 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectTab('Online')
       end y = y + 0.054
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menubutton({'Lua', 'Dynamic Triggers', 'Exploits', 'General'}, 0.4, y) then 
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectTab('Lua')
       end y = y + 0.054
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.loadicons()
   
       if _FiVe_SeNsE_.us.tab == 'Lua' then 
           _FiVe_SeNsE_.pos.y = 0.325
           
           if _FiVe_SeNsE_.pos.y >= 0.323 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Comming soon :)', 0.43, _FiVe_SeNsE_.pos.y) then 	
               end 
           end
           
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ESXStealMoney, 'ESX Steal Money', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ESXStealMoney = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ESXStealMoney 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[47])
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           _FiVe_SeNsE_.pos.y = 0.505
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Glifefarm'][1].. ']', 0.593+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y+_h/2) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['Glifefarm'][1] = k 
                   _FiVe_SeNsE_.Keybinds['Glifefarm'][2] = v
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifebypass, 'Glife Farm', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifebypass = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifebypass
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifexpfarm, 'Glife XP Farm', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifexpfarm = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifexpfarm
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifexpfarm then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['TeleportZombies'][1].. ']', 0.594+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y+ _h/2) then 
                       local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                       _FiVe_SeNsE_.Keybinds['TeleportZombies'][1] = k 
                       _FiVe_SeNsE_.Keybinds['TeleportZombies'][2] = v
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Manualglifexpfarm, 'Teleport Zombies', 0.517, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Manualglifexpfarm = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Manualglifexpfarm 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifexpfarm then 
                   if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['SetZombieHP'][1].. ']', 0.594+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y+ _h/2) then 
                           local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                           _FiVe_SeNsE_.Keybinds['SetZombieHP'][1] = k 
                           _FiVe_SeNsE_.Keybinds['SetZombieHP'][2] = v
                       end
                       if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Oneshot Teleported Zombies", 0.517, _FiVe_SeNsE_.pos.y) then 
                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetZombieHP()
                       end
                   end
               end
           end
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifexpfarm then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['AutoKillZomb'][1].. ']', 0.594+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y+ _h/2) then 
                       local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                       _FiVe_SeNsE_.Keybinds['AutoKillZomb'][1] = k 
                       _FiVe_SeNsE_.Keybinds['AutoKillZomb'][2] = v
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifeautokillzombies, 'Auto Kill Zombies', 0.517, _FiVe_SeNsE_.pos.y) then 
                       --_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.justameme()
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifeautokillzombies = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifeautokillzombies 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
           --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifexpfarm then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['SpawnZombies'][1].. ']', 0.594+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y+ _h/2) then 
                       local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                       _FiVe_SeNsE_.Keybinds['SpawnZombies'][1] = k 
                       _FiVe_SeNsE_.Keybinds['SpawnZombies'][2] = v
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnZombies, 'Spawn Zombies', 0.517, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnZombies = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnZombies 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end]]
       
   
   
           --[[if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeZombieSpawning, 'Glife Zombie Spawner', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeZombieSpawning = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeZombieSpawning
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeBoss, 'Glife Boss Spawner', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeBoss = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeBoss
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
       
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeMinions, 'Glife Minions Spawner', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeMinions = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeMinions
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015]]
   
       --[[	if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('G-LIFE DaBaby Car', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TestGlifecarspawn()
               end
           end ]]
   
       end
   
       if _FiVe_SeNsE_.us.tab == 'Settings' then 
           _FiVe_SeNsE_.pos.y = 0.325
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicletab, 'Vehicle', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicletab = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicletab 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.destroyertab = false
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.dumpertab = false
                   --_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KeybindsKeybinds = false
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.destroyertab, 'Destroyer', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.destroyertab = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.destroyertab 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicletab = false
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.dumpertab = false
                   --_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KeybindsKeybinds = false
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.dumpertab, 'Dumper', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.dumpertab = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.dumpertab 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicletab = false
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.destroyertab = false
                   --_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KeybindsKeybinds = false
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           --[[if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KeybindsKeybinds, 'Keybinds', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KeybindsKeybinds = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KeybindsKeybinds 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicletab = false
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.destroyertab = false
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.dumpertab = false
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015]]
   
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.dumpertab then
   
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.086-0.004-_w/2, _h+0.2036-0.004-_h/2, 1, 1, 1, 255)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.085-0.004-_w/2, _h+0.2018-0.004-_h/2, 34, 34, 34, 255)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.084-0.004-_w/2, _h+0.2-0.004-_h/2, 23, 23, 23, 255)
           
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.086-0.004-_w/2, _h+0.1836-0.004-_h/2, 1, 1, 1, 255)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.085-0.004-_w/2, _h+0.1818-0.004-_h/2, 34, 34, 34, 255)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.084-0.004-_w/2, _h+0.18-0.004-_h/2, 23, 23, 23, 255)
   
           
               _FiVe_SeNsE_.pos.y = 0.5025 + _FiVe_SeNsE_.static["Dumper"][2]
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.084-0.004-_w/2, _h+0.2-0.004-_h/2) then
                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.5025 - ((_FiVe_SeNsE_.n.GetNumResources()-13) * 0.015)) then
                       _FiVe_SeNsE_.static["Dumper"][2] = _FiVe_SeNsE_.static["Dumper"][2] - 0.015
                   end
                   if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.5025 then
                       _FiVe_SeNsE_.static["Dumper"][2] = _FiVe_SeNsE_.static["Dumper"][2] + 0.015
                   end
               end
   
               for i=1, _FiVe_SeNsE_.n.GetNumResources() do
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.script = _FiVe_SeNsE_.n.GetResourceByFindIndex(i)
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedScript == nil then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedScript = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.script 
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.script == nil then 
                   else
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.script ~= _FiVe_SeNsE_.n.GetCurrentResourceName() and _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.script ~= '_cfx_internal' then 
                           if _FiVe_SeNsE_.pos.y >= 0.5005 and _FiVe_SeNsE_.pos.y <= 0.5025+(13*0.015) + ((_FiVe_SeNsE_.drag[1].h-0.525)/2) then 
                               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.script, 0.43, _FiVe_SeNsE_.pos.y+_h/2) then 
                                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedScript = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.script
                               end 
                           end;_FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 ;
                       end 
                       
                   end
               end
   
   
           
   
   
               _FiVe_SeNsE_.pos.y = 0.32 + _FiVe_SeNsE_.static["Dumper"][3]
               
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.086-0.004-_w/2, _h+0.1836-0.004-_h/2) then
                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.32 - (42141 * 0.015)) then
                       _FiVe_SeNsE_.static["Dumper"][3] = _FiVe_SeNsE_.static["Dumper"][3] - 0.015
                   end
                   if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.32 then
                       _FiVe_SeNsE_.static["Dumper"][3] = _FiVe_SeNsE_.static["Dumper"][3] + 0.015
                   end
               end
   
               for i=0, _FiVe_SeNsE_.n.GetNumResourceMetadata(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedScript, "client_script")-1 do
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.data = _FiVe_SeNsE_.n.GetResourceMetadata(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedScript, "client_script", i)
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.data == "sbVNO.lua" or _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.data == "blockaQUzQjDQJSJc.lua" or _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.data == "tgVFf.lua" then 
                       return 
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scriptdata == nil then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scriptdata = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedScript
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scriptdatata == nil then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scriptdatata = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.data
                   end
                   if _FiVe_SeNsE_.pos.y >= 0.318 and _FiVe_SeNsE_.pos.y <= 0.325 + (10*0.015)  + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then 
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.data, 0.43, _FiVe_SeNsE_.pos.y) then 
                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scriptdata = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedScript
                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scriptdatata = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.data
                       end 
                   end
                   _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               end
   
   
               
               _FiVe_SeNsE_.pos.y = 0.295 + _FiVe_SeNsE_.static["Dumper"][1]
           
   
               local contents = _FiVe_SeNsE_.n.LoadResourceFile(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scriptdata, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scriptdatata)
               if contents then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.widthablerect(_x+_w+0.714+0.015/2, _y+0.5, 0.221, 0.4186+0.0018, 0, 0, 0, 155)
                   local lines = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.split(contents, "[^\r\n]+")
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_x+_w+0.714+0.015/2, _y+0.5, 0.221, 0.4186+0.0018) then
                       if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.295 - ((#lines-25) * 0.015)) then
                           _FiVe_SeNsE_.static["Dumper"][1] = _FiVe_SeNsE_.static["Dumper"][1] - 0.015
                       end
                       if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.295 then
                           _FiVe_SeNsE_.static["Dumper"][1] = _FiVe_SeNsE_.static["Dumper"][1] + 0.015
                       end
                   end
                   local content = ""
                   --local line
                   for i= 1, #lines do
                       if _FiVe_SeNsE_.pos.y >= 0.29 and _FiVe_SeNsE_.pos.y <= 0.7  then 
                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(lines[i], _w+_x+0.615, _y+_FiVe_SeNsE_.pos.y, 0.27, false, 4, false)
                       end
                       _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
                   end
               end
   
           end
   
   
           _FiVe_SeNsE_.pos.y = 0.505
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['PanicKey'][1].. ']', 0.594+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y+ _h/2) then 
                       local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                       _FiVe_SeNsE_.Keybinds['PanicKey'][1] = k 
                       _FiVe_SeNsE_.Keybinds['PanicKey'][2] = v
                   end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled, 'Panic key', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[32].value, _FiVe_SeNsE_.ThisIsSliders[33].value, _FiVe_SeNsE_.ThisIsSliders[34].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[32].value, _FiVe_SeNsE_.ThisIsSliders[33].value, _FiVe_SeNsE_.ThisIsSliders[34].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[32].value, _FiVe_SeNsE_.ThisIsSliders[33].value, _FiVe_SeNsE_.ThisIsSliders[34].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Menu: RGB', 0.517, _FiVe_SeNsE_.pos.y) then 
                       
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
       
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HudColor, 'Set Hud Color', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HudColor = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HudColor
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[41].value, _FiVe_SeNsE_.ThisIsSliders[42].value, _FiVe_SeNsE_.ThisIsSliders[43].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[41].value, _FiVe_SeNsE_.ThisIsSliders[42].value, _FiVe_SeNsE_.ThisIsSliders[43].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[41].value, _FiVe_SeNsE_.ThisIsSliders[42].value, _FiVe_SeNsE_.ThisIsSliders[43].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Hud: RGB', 0.517, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("IP: " .. _FiVe_SeNsE_.n.GetCurrentServerEndpoint(), 0.517, _FiVe_SeNsE_.pos.y) then 
           end
       end
   
       _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Resource: " .. _FiVe_SeNsE_.n.GetCurrentResourceName(), 0.517, _FiVe_SeNsE_.pos.y) then 
           end
       end
   
       _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
       if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DisableWSAD, 'Disable Movement', 0.517, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DisableWSAD = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DisableWSAD
           end 
       end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
       if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Select Menu Key',0.517, _FiVe_SeNsE_.pos.y) then 
               local text, value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
               _FiVe_SeNsE_.menu.key = value
           end
       end
   
       _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.destroyertab then
               _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Settings"][1]
   
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - (0 * 0.015)) then
                   _FiVe_SeNsE_.static["Settings"][1] = _FiVe_SeNsE_.static["Settings"][1] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Settings"][1] = _FiVe_SeNsE_.static["Settings"][1] + 0.015
               end
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Destroy Map', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fuckupmap(_FiVe_SeNsE_.n.GetHashKey("hw1_lod_08_09_16_17_18"))
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fuckupmap(_FiVe_SeNsE_.n.GetHashKey("cs4_lod_01_slod3"))
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fuckupmap(_FiVe_SeNsE_.n.GetHashKey("dt1_21_slod"))
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fuckupmap(_FiVe_SeNsE_.n.GetHashKey("dt1_11_dt1_tower_lod"))
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fuckupmap(_FiVe_SeNsE_.n.GetHashKey("id2_lod_00_ab_slod2"))
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fuckupmap(_FiVe_SeNsE_.n.GetHashKey("dt1_lod_03_04_05_11"))
                   end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
               end
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Explode Players', 0.43, _FiVe_SeNsE_.pos.y) then 
                       for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                           local position = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v))
                           _FiVe_SeNsE_.n._ud_wait(1)
                           _FiVe_SeNsE_.n.AddExplosion(position, _FiVe_SeNsE_.ThisIsSliders[45].value, 100.0, true, false, 1.0)
                       end
                   end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
               end
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[45])
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Destroy Players', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DestroyPlayer()
                   end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
               end
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Trap Players', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TrapPlayers()
                   end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
               end
   
   
               
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Emote Forcer', 0.43, _FiVe_SeNsE_.pos.y) then 
                       for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                           local Dancetable = {"dancesilly7","dance5","danceupper","dancef","danceglowstick2","danceglowstick","danceslow2","dancef6","dancesilly9","danceslow","dancehorse2","dancehorse3"}
                           local syncedEmote = {"handshake","handshake2","hug","slapped2","slapped","slap","headbutted","headbutt","punched","punch","stickupscared"}
                           local target = _FiVe_SeNsE_.n.GetPlayerPed(v)
                           _FiVe_SeNsE_.n._ud_wait(25)
                           TriggerServerEvent("ServerValidEmote",target,(Dancetable[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#Dancetable)]),(syncedEmote[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#syncedEmote)]))
                       end
                   end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
               end
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnShitsOnPlayers, 'Spawn Shits On Players', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnShitsOnPlayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnShitsOnPlayers
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MuzAll, 'Muz Particle Players', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MuzAll = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MuzAll
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodeloop, 'Explode Players ', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodeloop = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodeloop
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[46])
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.teleportertosky, 'Teleport All To Sky', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.teleportertosky = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.teleportertosky
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SilentKillAll, 'Silent Kill All', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SilentKillAll = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SilentKillAll
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KillEveryone, 'Kill Everyone', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KillEveryone = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KillEveryone
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tazeall, 'Taze All', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tazeall = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tazeall
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodeallcars, 'Explode Vehicles', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodeallcars = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodeallcars
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.kickallplayersfromcar, 'Kick All Players From Car', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.kickallplayersfromcar = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.kickallplayersfromcar
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CarSpamAll, 'Car Spam Players ', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CarSpamAll = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CarSpamAll
   
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.disablecars, 'Disable Vehicles', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.disablecars = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.disablecars
   
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.disablewepaons, 'Disable Weapons', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.disablewepaons = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.disablewepaons
   
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
       --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KeybindsKeybinds then
               _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Keybinds"][1]
   
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - (0 * 0.015)) then
                   _FiVe_SeNsE_.static["Keybinds"][1] = _FiVe_SeNsE_.static["Keybinds"][1] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Keybinds"][1] = _FiVe_SeNsE_.static["Keybinds"][1] + 0.015
               end
               
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('here keybinds', 0.517, _FiVe_SeNsE_.pos.y) then 
   
               end 
   
                _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           end]]
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicletab then 
               _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Settings"][1]
   
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - (0 * 0.015)) then
                   _FiVe_SeNsE_.static["Settings"][1] = _FiVe_SeNsE_.static["Settings"][1] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Settings"][1] = _FiVe_SeNsE_.static["Settings"][1] + 0.015
               end
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_invisiblevehicle, 'Invisible Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_invisiblevehicle = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_invisiblevehicle
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.autofix, 'Auto Repair', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.autofix = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.autofix
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bunnyhopvehicle, 'Bunnyhop Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bunnyhopvehicle = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bunnyhopvehicle
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.driftmode, 'Drift Mode Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.driftmode = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.driftmode
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
              --[[ if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.EasyHandling, 'Extra Handling Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.EasyHandling = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.EasyHandling
                   end 
                   if not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.EasyHandling then 
                       _FiVe_SeNsE_.n.SetVehicleGravityAmount(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), 0), 9.8)
                   end        
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015]]
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Extra Handling Attachment', 0.43, _FiVe_SeNsE_.pos.y) then 
                       
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[35], 1) 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceengine, 'Force Driving Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceengine = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceengine
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.alwaysWheelie, 'Always Wheelie', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.alwaysWheelie = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.alwaysWheelie
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Maxtune'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                       local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                       _FiVe_SeNsE_.Keybinds['Maxtune'][1] = k 
                       _FiVe_SeNsE_.Keybinds['Maxtune'][2] = v
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxtuneveh, 'Max Tune Vehicle: Spawner', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxtuneveh = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxtuneveh
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.sitinveh, 'Sit In Vehicle: Spawner', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.sitinveh = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.sitinveh
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Create Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       local iveh = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.kinput('Enter vehicle name here!', '', 30)
                       iveh = _FiVe_SeNsE_._shitlol_ThisStringShit._ud_lower(iveh)
                       if iveh == '' then 
                           _FiVe_SeNsE_._shitlol_ThisStringShit._ud_print("Please, enter a vehicle name next time")
                       else
                           local p = _FiVe_SeNsE_.n.PlayerPedId()
                           local vehicle = _FiVe_SeNsE_.n.GetHashKey(iveh)
                           local coords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
                           if _FiVe_SeNsE_.n.IsModelValid(vehicle) then
                               if not _FiVe_SeNsE_.n.HasModelLoaded(vehicle) then 
                                   _FiVe_SeNsE_.n.RequestModel(vehicle)
                               end
                               local vehR = _FiVe_SeNsE_.n.CreateVehicle(vehicle, coords, 1, 1, 1)
   
                               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.sitinveh then 
                                   _FiVe_SeNsE_.n.SetPedIntoVehicle(_FiVe_SeNsE_.n.PlayerPedId(), vehR, -1)
                               end
   
                               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxtuneveh then 
                                   _FiVe_SeNsE_.VcXzlkZanlcXHvlnEfaBremFbXgZvPuqursFdTiSekPnFCcMjdPAJDIKAOlWEhOYagDdZnxFxOSFSxrccgC.natives.SetVehicleWheelType(veh, 0)
                                   _FiVe_SeNsE_.n.SetVehicleModKit(veh, 0)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 0, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 0) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 1, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 1) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 2, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 2) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 3, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 3) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 4, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 4) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 10, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 10) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 11, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 11) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 12, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 12) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 13, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 13) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 15, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 15) - 2, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 16, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 16) - 1, false)
                                   _FiVe_SeNsE_.n.ToggleVehicleMod(veh, 17, true)
                                   _FiVe_SeNsE_.n.ToggleVehicleMod(veh, 18, true)
                                   _FiVe_SeNsE_.n.ToggleVehicleMod(veh, 19, true)
                                   _FiVe_SeNsE_.n.ToggleVehicleMod(veh, 21, true)
                                   _FiVe_SeNsE_.n.ToggleVehicleMod(veh, 22, true)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 25, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 25) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 27, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 27) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 28, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 28) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 30, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 30) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 33, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 33) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 34, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 34) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 35, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 35) - 1, false)
                                   _FiVe_SeNsE_.n.SetVehicleMod(veh, 38, _FiVe_SeNsE_.n.GetNumVehicleMods(veh, 38) - 1, true)
                                   _FiVe_SeNsE_.n.SetVehicleWindowTint(veh, 1)
                                   _FiVe_SeNsE_.n.SetVehicleTyresCanBurst(veh, false)
                                   _FiVe_SeNsE_.n.SetVehicleNumberPlateTextIndex(veh, 1)
                                   _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled(veh, 0, true)
                                   _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled(veh, 1, true)
                                   _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled(veh, 2, true)
                                   _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled(veh, 3, true)
                                   _FiVe_SeNsE_.n.SetVehicleNumberPlateText(veh, "5-SENSE")
                               end
                           end
                       end
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['RepairVehicle'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                       local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                       _FiVe_SeNsE_.Keybinds['RepairVehicle'][1] = k 
                       _FiVe_SeNsE_.Keybinds['RepairVehicle'][2] = v
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Repair Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_.n.SetVehicleFixed(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false))
                   end
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['FlipVehicle'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                       local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                       _FiVe_SeNsE_.Keybinds['FlipVehicle'][1] = k 
                       _FiVe_SeNsE_.Keybinds['FlipVehicle'][2] = v
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Flip Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_.n.SetVehicleOnGroundProperly(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false))
                   end
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Clean Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       local veh = _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false)
                       _FiVe_SeNsE_.n.SetVehicleDirtLevel(veh, 1.0)
                   end
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Make Vehicle Dirt', 0.43, _FiVe_SeNsE_.pos.y) then 
                       local veh = _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false)
                       _FiVe_SeNsE_.n.SetVehicleDirtLevel(veh, 15.0)
                   end
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Delete Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_.n.SetEntityAsMissionEntity(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 1, 1)
                       _FiVe_SeNsE_.n.DeleteEntity(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false))
                   end
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Max Tune Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_.n.SetVehicleModKit(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 0)
                       _FiVe_SeNsE_.n.SetVehicleWheelType(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 7)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 0, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 0) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 1, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 1) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 2, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 2) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 3, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 3) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 4, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 4) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 5, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 5) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 6, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 6) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 7, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 7) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 8, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 8) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 9, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 9) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 10, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 10) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 11, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 11) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 12, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 12) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 13, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 13) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 14, 16, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 15, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 15) - 2, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 16, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 16) - 1, false)
                       _FiVe_SeNsE_.n.ToggleVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 17, true)
                       _FiVe_SeNsE_.n.ToggleVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 18, true)
                       _FiVe_SeNsE_.n.ToggleVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 19, true)
                       _FiVe_SeNsE_.n.ToggleVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 20, true)
                       _FiVe_SeNsE_.n.ToggleVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 21, true)
                       _FiVe_SeNsE_.n.ToggleVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 22, true)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 23, 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 24, 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 25, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 25) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 27, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 27) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 28, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 28) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 30, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 30) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 33, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 33) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 34, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 34) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 35, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 35) - 1, false)
                       _FiVe_SeNsE_.n.SetVehicleMod(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 38, _FiVe_SeNsE_.n.GetNumVehicleMods(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 38) - 1, true)
                       _FiVe_SeNsE_.n.SetVehicleWindowTint(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 1)
                       _FiVe_SeNsE_.n.SetVehicleTyresCanBurst(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), false)
                       _FiVe_SeNsE_.n.SetVehicleNumberPlateTextIndex(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1), false), 5)
                       _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1)), 0, true)
                       _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1)), 1, true)
                       _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1)), 2, true)
                       _FiVe_SeNsE_.n.SetVehicleNeonLightEnabled(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.GetPlayerPed(-1)), 3, true)
                   end
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               
   
              
   
   
           end
   
       end
   
       if _FiVe_SeNsE_.us.tab == 'Online' then 
           _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Online"][1]
           local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5, _w+0.086-_w/2, _h+0.3906) then 
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - ((#_FiVe_SeNsE_.n.GetActivePlayers()-25) * 0.015)) then
                   _FiVe_SeNsE_.static["Online"][1] = _FiVe_SeNsE_.static["Online"][1] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Online"][1] = _FiVe_SeNsE_.static["Online"][1] + 0.015
               end
           end
   
   
           for i = 1, #_FiVe_SeNsE_.n.GetActivePlayers() do 
               local player = _FiVe_SeNsE_.n.GetActivePlayers()[i]     
               if _FiVe_SeNsE_.n.GetPlayerName(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer) == _FiVe_SeNsE_.n.GetPlayerName(player) then 
                   if _FiVe_SeNsE_.pos.y >= 0.323 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.online(player, '[~r~!~s~] '.. _FiVe_SeNsE_.n.GetPlayerName(player).. ' ['.. _FiVe_SeNsE_.n.GetPlayerServerId(player).. ']', 0.43, _FiVe_SeNsE_.pos.y) then 
                           bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer = player
                       end
                   end
               else
                   if _FiVe_SeNsE_.pos.y >= 0.323 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.online(player, '[~c~?~s~] '.._FiVe_SeNsE_.n.GetPlayerName(player).. ' ['.. _FiVe_SeNsE_.n.GetPlayerServerId(player).. ']', 0.43, _FiVe_SeNsE_.pos.y) then 
                           bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer = player
                       end
                   end
               end
   
               _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
           end
   
           _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Online"][3]
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.086-_w/2, _h+0.1836-_h/2) then 
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - (0 * 0.015)) then
                   _FiVe_SeNsE_.static["Online"][3] = _FiVe_SeNsE_.static["Online"][3] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Online"][3] = _FiVe_SeNsE_.static["Online"][3] + 0.015
               end
           end	
   
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll = 0.476 + ((_FiVe_SeNsE_.drag[1].h-0.5))
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Spectate, 'Spectate', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Spectate = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Spectate
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Copy Outfit', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cloneoutfit(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Attach To Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.AttachEntityToEntity(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer), 31086, 0, 0, 0, 4.0, 90.0, 1.0, false, false, false, true, 2, true )
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Teleport To Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.SetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)))
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Teleport To Player Vehicle', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToPlayerVeh(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
   
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Teleport Player To Me', 0.517, _FiVe_SeNsE_.pos.y) then
                   local lib = 'anim@arena@celeb@flat@paired@no_props@'
                   local lib2 = 'missfinale_c2mcs_1'
                   local lib3 = 'nm'
                   local anim1 = 'piggyback_c_player_a'
                   local anim2 = 'piggyback_c_player_b'
                   local distans = -0.0
                   local distans2 = 0.0
                   local height = 0.45
                   local spin = 0.0
                   local length = 1
                   local controlFlagMe = 49
                   local controlFlagTarget = 33
                   local animFlagTarget = 1 
                   TriggerServerEvent('cmg3_animations:sync', bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer, lib, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                   TriggerServerEvent('CarryPeople:sync', bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer, lib2, lib3, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                   TriggerServerEvent('cmg2_animations:sync', bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer, lib, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                   TriggerServerEvent("cmg2_animations:stop", _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
                   TriggerServerEvent("cmg2_animations:stop", _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
                   TriggerServerEvent("cmg3_animations:stop", _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
                   TriggerServerEvent("cmg3_animations:stop", _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
                   TriggerServerEvent("cmg3_animations1:stop", _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
                   TriggerServerEvent("cmg3_animations1:stop", _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
                   TriggerServerEvent("CarryPeople:stop", _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
                   TriggerServerEvent("CarryPeople:stop", _FiVe_SeNsE_.n.GetPlayerServerId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Trap Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TrapPlayer()
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Taze Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TazePlayer(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
           
       --[[if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Record Porn', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Recordporn(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015]]
   
           
           _FiVe_SeNsE_.pos.y = 0.5065 + _FiVe_SeNsE_.static["Online"][2]
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll = 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)
   
           local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scroll = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(9-(((_FiVe_SeNsE_.drag[1].h-0.53)/2)*66.6666667))
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scroll == 10 then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scroll = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scroll - 1
           end
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.086-_w/2, _h+0.2036-_h/2) then
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.508 - (_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.scroll * 0.015)) then
                   _FiVe_SeNsE_.static["Online"][2] = _FiVe_SeNsE_.static["Online"][2] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.5065 then
                   _FiVe_SeNsE_.static["Online"][2] = _FiVe_SeNsE_.static["Online"][2] + 0.015
               end
           end
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SilentKillHim, 'Silent Kill', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SilentKillHim = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SilentKillHim
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KillThePlayer, 'Kill Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KillThePlayer = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KillThePlayer
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tazeplayerlop, 'Taze Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tazeplayerlop = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tazeplayerlop
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y+0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ExplodeHim, 'Explode Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ExplodeHim = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ExplodeHim
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CrashHim, 'Crash Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CrashHim = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CrashHim
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GangPull, 'Gangster Pullup', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GangPull = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GangPull
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MassObjSpawn, 'Object Spawner On Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MassObjSpawn = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MassObjSpawn
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MassCarSpawn, 'Car Spawner On Player', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MassCarSpawn = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MassCarSpawn
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Ihaterabbits, 'Fuck his PC', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Ihaterabbits = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Ihaterabbits
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RipAllPCs, 'Spawn a lot shits', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RipAllPCs = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RipAllPCs
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ParticleSpam, 'PTFX Bomb Particle', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ParticleSpam = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ParticleSpam
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('PTFX: Particle Scale', 0.518, _FiVe_SeNsE_.pos.y) then 
   
       
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
   
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[36], 2) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ParticleSpam2, 'PTFX Clown Particle', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ParticleSpam2 = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ParticleSpam2
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
       
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('PTFX: Particle Scale', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
   
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[37], 2) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.muzparticle, 'PTFX Muz Particle', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.muzparticle = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.muzparticle
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('PTFX: Particle Scale', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
   
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[38], 2) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Spawn a terrorist', 0.518, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.terrorist()
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Explosion delay', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
   
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[49]) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.506 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Fire Player', 0.518, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.StartEntityFire(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
   
   
   
   
   
       end
   
       if _FiVe_SeNsE_.us.tab == 'Aimbot' then 
   
           _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Aimbot"][1]
           local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5, _w+0.086-_w/2, _h+0.3906) then 
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - ((#_FiVe_SeNsE_.n.GetActivePlayers()-25) * 0.015)) then
                   _FiVe_SeNsE_.static["Aimbot"][1] = _FiVe_SeNsE_.static["Aimbot"][1] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Aimbot"][1] = _FiVe_SeNsE_.static["Aimbot"][1] + 0.015
               end
           end
   
   
           for i = 1, #_FiVe_SeNsE_.n.GetActivePlayers() do 
               local player = _FiVe_SeNsE_.n.GetActivePlayers()[i]     
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button(_FiVe_SeNsE_.friends[_FiVe_SeNsE_.n.GetPlayerServerId(player)] and '[~g~WL~s~] '.. _FiVe_SeNsE_.n.GetPlayerName(player) or '[~r~UNWL~s~] '.. _FiVe_SeNsE_.n.GetPlayerName(player) , 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedFriend = player
                       _FiVe_SeNsE_.friends[_FiVe_SeNsE_.n.GetPlayerServerId(player)] = not _FiVe_SeNsE_.friends[_FiVe_SeNsE_.n.GetPlayerServerId(player)]
                   end
               end
   
               _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
           end
   
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll = 0.476 + ((_FiVe_SeNsE_.drag[1].h-0.5))
   
   
           
           
   
           _FiVe_SeNsE_.pos.y = 0.325
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimlock, 'Aimlock', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimlock = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimlock 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetpeds, 'Target Peds', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetpeds = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetpeds 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.linetotarget, 'Highlight target', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.linetotarget = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.linetotarget 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimlockfov, 'Draw Aimlock FOV', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimlockfov = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimlockfov 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeads, 'Target Deads', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeads = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeads 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckaim, 'Visible Check', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckaim = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckaim 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[20], 2) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Aimlock: FOV Alpha', 0.518, _FiVe_SeNsE_.pos.y) then 
               
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[21]) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Aimlock: Smoothing', 0.518, _FiVe_SeNsE_.pos.y) then 
               
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[22], 2) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           
   
           _FiVe_SeNsE_.pos.y = 0.505 + _FiVe_SeNsE_.static["Aimbot"][2]
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.086-_w/2, _h+0.2036-_h/2) then
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.505 - (6 * 0.015)) then
                   _FiVe_SeNsE_.static["Aimbot"][2] = _FiVe_SeNsE_.static["Aimbot"][2] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.505 then
                   _FiVe_SeNsE_.static["Aimbot"][2] = _FiVe_SeNsE_.static["Aimbot"][2] + 0.015
               end
           end
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimbot, 'Silent Aim', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimbot = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimbot 
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeadsaimbot, 'Target Deads', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeadsaimbot = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeadsaimbot 
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckaimbot, 'Visible Check', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckaimbot = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckaimbot 
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drawaimbotfov, 'Draw Aimbot FOV', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drawaimbotfov = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drawaimbotfov 
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Aimbot: FOV', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[39], 2) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Aimbot: FOV Alpha', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[40]) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.carkiller, 'Car Killer', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.carkiller = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.carkiller 
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ragebot, 'Ragebot', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ragebot = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ragebot 
               end 
           end
               
   
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spinbot, 'Spin Bot', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spinbot = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spinbot 
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.upsideDown, 'Upside Down', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.upsideDown = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.upsideDown 
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.customRotation, 'Set Custom Rotation', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.customRotation = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.customRotation 
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Rotatation: Pitch', 0.517, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[71], 1) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.505 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Rotatation: Yaw', 0.517, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[72], 1) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Rotatation: Roll', 0.517, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[73], 1) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           
   
   
       end
   
       if _FiVe_SeNsE_.us.tab == 'Visuals' then 
           _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Visuals"][1]
           _FiVe_SeNsE_.pos.scrollerinio = 0
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbags then
               _FiVe_SeNsE_.pos.scrollerinio = _FiVe_SeNsE_.pos.scrollerinio + 3
           end
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenrator then
               _FiVe_SeNsE_.pos.scrollerinio = _FiVe_SeNsE_.pos.scrollerinio + 3
           end
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydrop then
               _FiVe_SeNsE_.pos.scrollerinio = _FiVe_SeNsE_.pos.scrollerinio + 3
           end
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5, _w+0.086-_w/2, _h+0.3906) then
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - (_FiVe_SeNsE_.pos.scrollerinio * 0.015)) then
                   _FiVe_SeNsE_.static["Visuals"][1] = _FiVe_SeNsE_.static["Visuals"][1] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Visuals"][1] = _FiVe_SeNsE_.static["Visuals"][1] + 0.015
               end
           end
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('ESP Distance', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[48], 2)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[74].value, _FiVe_SeNsE_.ThisIsSliders[75].value, _FiVe_SeNsE_.ThisIsSliders[76].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[74].value, _FiVe_SeNsE_.ThisIsSliders[75].value, _FiVe_SeNsE_.ThisIsSliders[76].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[74].value, _FiVe_SeNsE_.ThisIsSliders[75].value, _FiVe_SeNsE_.ThisIsSliders[76].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.nametags, 'Nametags', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.nametags = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.nametags 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           --[[if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[80].value, _FiVe_SeNsE_.ThisIsSliders[81].value, _FiVe_SeNsE_.ThisIsSliders[82].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[80].value, _FiVe_SeNsE_.ThisIsSliders[81].value, _FiVe_SeNsE_.ThisIsSliders[82].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[80].value, _FiVe_SeNsE_.ThisIsSliders[81].value, _FiVe_SeNsE_.ThisIsSliders[82].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Distance, 'Distance', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Distance = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Distance 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015]]
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[77].value, _FiVe_SeNsE_.ThisIsSliders[78].value, _FiVe_SeNsE_.ThisIsSliders[79].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[77].value, _FiVe_SeNsE_.ThisIsSliders[78].value, _FiVe_SeNsE_.ThisIsSliders[79].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[77].value, _FiVe_SeNsE_.ThisIsSliders[78].value, _FiVe_SeNsE_.ThisIsSliders[79].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.holdingweapon, 'Holding Weapon', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.holdingweapon = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.holdingweapon 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.holdingweapon then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.textweaponesp, 'Text', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.textweaponesp = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.textweaponesp 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.holdingweapon then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.textweaponespGlife, 'Glife', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.textweaponespGlife = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.textweaponespGlife 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end]]
   
       if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[56].value, _FiVe_SeNsE_.ThisIsSliders[57].value, _FiVe_SeNsE_.ThisIsSliders[58].value) then 
               _FiVe_SeNsE_.ThisIsSliders[56].value, _FiVe_SeNsE_.ThisIsSliders[57].value, _FiVe_SeNsE_.ThisIsSliders[58].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[56].value, _FiVe_SeNsE_.ThisIsSliders[57].value, _FiVe_SeNsE_.ThisIsSliders[58].value)
           end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.LineESP, 'Lines', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.LineESP = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.LineESP 
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[106].value, _FiVe_SeNsE_.ThisIsSliders[107].value, _FiVe_SeNsE_.ThisIsSliders[108].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[106].value, _FiVe_SeNsE_.ThisIsSliders[107].value, _FiVe_SeNsE_.ThisIsSliders[108].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[106].value, _FiVe_SeNsE_.ThisIsSliders[107].value, _FiVe_SeNsE_.ThisIsSliders[108].value)
               end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischecklineesp, 'Visible Check', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischecklineesp = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischecklineesp 
                   end 
               end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceMap, 'Force Map', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceMap = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceMap 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.thirdPerson, 'Force Third Person', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.thirdPerson = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.thirdPerson 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.blips, 'Show Player Blips', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.blips = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.blips 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[5].value, _FiVe_SeNsE_.ThisIsSliders[6].value, _FiVe_SeNsE_.ThisIsSliders[7].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[5].value, _FiVe_SeNsE_.ThisIsSliders[6].value, _FiVe_SeNsE_.ThisIsSliders[7].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[5].value, _FiVe_SeNsE_.ThisIsSliders[6].value, _FiVe_SeNsE_.ThisIsSliders[7].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.WorldColor, 'World Color', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.WorldColor = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.WorldColor 
               end 
           end
           
   
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
       
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('World Color: Distance', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[8], 1) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('World Color: Shadow', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[9], 1) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FullBright, 'Full Bright', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FullBright = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FullBright 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Bright: Distance', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[10], 1) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Bright: Shadow', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[11], 1) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RemoveFog, 'Remove Fog', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RemoveFog = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RemoveFog 
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hideglifeid, 'G-LIFE Hide ID', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hideglifeid = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hideglifeid 
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           --[[if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.espoffwhileintsafezoneglife, 'G-LIFE Hide ESP', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.espoffwhileintsafezoneglife = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.espoffwhileintsafezoneglife 
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015]]
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[89].value, _FiVe_SeNsE_.ThisIsSliders[90].value, _FiVe_SeNsE_.ThisIsSliders[91].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[89].value, _FiVe_SeNsE_.ThisIsSliders[90].value, _FiVe_SeNsE_.ThisIsSliders[91].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[89].value, _FiVe_SeNsE_.ThisIsSliders[90].value, _FiVe_SeNsE_.ThisIsSliders[91].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbags, 'G-LIFE Lootbags', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbags = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbags 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbags then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagstext, 'Text', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagstext = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagstext 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbags then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagsbox, 'Box', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagsbox = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagsbox 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbags then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagslines, 'Lines', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagslines = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagslines 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[94].value, _FiVe_SeNsE_.ThisIsSliders[95].value, _FiVe_SeNsE_.ThisIsSliders[96].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[94].value, _FiVe_SeNsE_.ThisIsSliders[95].value, _FiVe_SeNsE_.ThisIsSliders[96].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[94].value, _FiVe_SeNsE_.ThisIsSliders[95].value, _FiVe_SeNsE_.ThisIsSliders[96].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenrator, 'G-LIFE Dungeon Generator', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenrator = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenrator 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenrator then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratortext, 'Text', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratortext = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratortext 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenrator then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratorbox, 'Box', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratorbox = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratorbox 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenrator then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratorlines, 'Lines', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratorlines = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratorlines 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.43+_w/2-0.0054, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[97].value, _FiVe_SeNsE_.ThisIsSliders[98].value, _FiVe_SeNsE_.ThisIsSliders[99].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[97].value, _FiVe_SeNsE_.ThisIsSliders[98].value, _FiVe_SeNsE_.ThisIsSliders[99].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[97].value, _FiVe_SeNsE_.ThisIsSliders[98].value, _FiVe_SeNsE_.ThisIsSliders[99].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydrop, 'G-LIFE Supply Drop', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydrop = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydrop 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydrop then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydroptext, 'Text', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydroptext = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydroptext 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydrop then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydropbox, 'Box', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydropbox = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydropbox 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydrop then 
               if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2) then
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydroplines, 'Lines', 0.43, _FiVe_SeNsE_.pos.y) then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydroplines = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydroplines 
                   end 
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
   
           _FiVe_SeNsE_.pos.y = 0.505+_FiVe_SeNsE_.static["Visuals"][3]
   
           local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll = 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.086-_w/2, _h+0.2036-_h/2) then
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.505 - (34 * 0.015)) then
                   _FiVe_SeNsE_.static["Visuals"][3] = _FiVe_SeNsE_.static["Visuals"][3] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.505 then
                   _FiVe_SeNsE_.static["Visuals"][3] = _FiVe_SeNsE_.static["Visuals"][3] + 0.015
               end
           end
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('ESP General: Size', 0.517, _FiVe_SeNsE_.pos.y + 0.005) then 
                       
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[19], 2) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[13].value, _FiVe_SeNsE_.ThisIsSliders[14].value, _FiVe_SeNsE_.ThisIsSliders[15].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[13].value, _FiVe_SeNsE_.ThisIsSliders[14].value, _FiVe_SeNsE_.ThisIsSliders[15].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[13].value, _FiVe_SeNsE_.ThisIsSliders[14].value, _FiVe_SeNsE_.ThisIsSliders[15].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.BoundingBox, 'Bounding Box', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.BoundingBox = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.BoundingBox 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[100].value, _FiVe_SeNsE_.ThisIsSliders[101].value, _FiVe_SeNsE_.ThisIsSliders[102].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[100].value, _FiVe_SeNsE_.ThisIsSliders[101].value, _FiVe_SeNsE_.ThisIsSliders[102].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[100].value, _FiVe_SeNsE_.ThisIsSliders[101].value, _FiVe_SeNsE_.ThisIsSliders[102].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisCheckBound, 'Visible Check', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisCheckBound = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisCheckBound 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundincludeself, 'Include self', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundincludeself = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundincludeself 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundingplayers, 'Only Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundingplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundingplayers 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FillBoundingBox, 'Fill Bounding Box', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FillBoundingBox = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FillBoundingBox 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[12]) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
       
       
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[86].value, _FiVe_SeNsE_.ThisIsSliders[87].value, _FiVe_SeNsE_.ThisIsSliders[88].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[86].value, _FiVe_SeNsE_.ThisIsSliders[87].value, _FiVe_SeNsE_.ThisIsSliders[88].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[86].value, _FiVe_SeNsE_.ThisIsSliders[87].value, _FiVe_SeNsE_.ThisIsSliders[88].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cornerBox, 'Corner Box', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cornerBox = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cornerBox 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[103].value, _FiVe_SeNsE_.ThisIsSliders[104].value, _FiVe_SeNsE_.ThisIsSliders[105].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[103].value, _FiVe_SeNsE_.ThisIsSliders[104].value, _FiVe_SeNsE_.ThisIsSliders[105].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[103].value, _FiVe_SeNsE_.ThisIsSliders[104].value, _FiVe_SeNsE_.ThisIsSliders[105].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckcorner, 'Visible Check', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckcorner = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckcorner 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CORNERincludeself, 'Include self', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CORNERincludeself = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CORNERincludeself 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CORNERplayers, 'Only Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CORNERplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CORNERplayers 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FillCorner, 'Fill Corner Box', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FillCorner = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FillCorner
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Alpha', 0.517, _FiVe_SeNsE_.pos.y) then 
               end
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[85]) 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[50].value, _FiVe_SeNsE_.ThisIsSliders[51].value, _FiVe_SeNsE_.ThisIsSliders[52].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[50].value, _FiVe_SeNsE_.ThisIsSliders[51].value, _FiVe_SeNsE_.ThisIsSliders[52].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[50].value, _FiVe_SeNsE_.ThisIsSliders[51].value, _FiVe_SeNsE_.ThisIsSliders[52].value)
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Healthbar, 'Healthbar', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Healthbar = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Healthbar 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.healthincludeself, 'Include self', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.healthincludeself = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.healthincludeself 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.healthplayers, 'Only Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.healthplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.healthplayers 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthDynamicColor, 'Healthbar Dynamic Color', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthDynamicColor = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthDynamicColor 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthbarText, 'Healthbar Text', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthbarText = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthbarText 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[53].value, _FiVe_SeNsE_.ThisIsSliders[54].value, _FiVe_SeNsE_.ThisIsSliders[55].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[53].value, _FiVe_SeNsE_.ThisIsSliders[54].value, _FiVe_SeNsE_.ThisIsSliders[55].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[53].value, _FiVe_SeNsE_.ThisIsSliders[54].value, _FiVe_SeNsE_.ThisIsSliders[55].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Armorbar, 'Armorbar', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Armorbar = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Armorbar 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.armorincludeself, 'Include self', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.armorincludeself = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.armorincludeself 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.armorplayers, 'Only Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.armorplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.armorplayers 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorDynamicColor, 'Armorbar Dynamic Color', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorDynamicColor = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorDynamicColor 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorbarText, 'Armorbar Text', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorbarText = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorbarText 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           --[[if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[59].value, _FiVe_SeNsE_.ThisIsSliders[60].value, _FiVe_SeNsE_.ThisIsSliders[61].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[59].value, _FiVe_SeNsE_.ThisIsSliders[60].value, _FiVe_SeNsE_.ThisIsSliders[61].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[59].value, _FiVe_SeNsE_.ThisIsSliders[60].value, _FiVe_SeNsE_.ThisIsSliders[61].value)
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicleESP, 'Vehicle ESP', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicleESP = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicleESP 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015]]
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[62].value, _FiVe_SeNsE_.ThisIsSliders[63].value, _FiVe_SeNsE_.ThisIsSliders[64].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[62].value, _FiVe_SeNsE_.ThisIsSliders[63].value, _FiVe_SeNsE_.ThisIsSliders[64].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[62].value, _FiVe_SeNsE_.ThisIsSliders[63].value, _FiVe_SeNsE_.ThisIsSliders[64].value)
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicleLine, 'Draw Lines to Vehicles', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicleLine = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicleLine 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[65].value, _FiVe_SeNsE_.ThisIsSliders[66].value, _FiVe_SeNsE_.ThisIsSliders[67].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[65].value, _FiVe_SeNsE_.ThisIsSliders[66].value, _FiVe_SeNsE_.ThisIsSliders[67].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[65].value, _FiVe_SeNsE_.ThisIsSliders[66].value, _FiVe_SeNsE_.ThisIsSliders[67].value)
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glowESP, 'Glow ESP', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glowESP = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glowESP 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Range', 0.517, _FiVe_SeNsE_.pos.y) then 
               end
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[92], 2)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.rgbglow, 'Rainbow Color', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.rgbglow = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.rgbglow 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glowplayers, 'Glow Only On Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glowplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glowplayers
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.skel, 'Skeleton ESP', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.skel = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.skel 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.skelplayers, 'Only Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.skelplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.skelplayers 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[110].value, _FiVe_SeNsE_.ThisIsSliders[111].value, _FiVe_SeNsE_.ThisIsSliders[112].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[110].value, _FiVe_SeNsE_.ThisIsSliders[111].value, _FiVe_SeNsE_.ThisIsSliders[112].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[110].value, _FiVe_SeNsE_.ThisIsSliders[111].value, _FiVe_SeNsE_.ThisIsSliders[112].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Chams, 'Solid Chams', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Chams = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Chams 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[113].value, _FiVe_SeNsE_.ThisIsSliders[114].value, _FiVe_SeNsE_.ThisIsSliders[115].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[113].value, _FiVe_SeNsE_.ThisIsSliders[114].value, _FiVe_SeNsE_.ThisIsSliders[115].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[113].value, _FiVe_SeNsE_.ThisIsSliders[114].value, _FiVe_SeNsE_.ThisIsSliders[115].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckchams, 'Visible Check', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckchams = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckchams
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Alpha', 0.517, _FiVe_SeNsE_.pos.y) then 
               end
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[116])
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[126].value, _FiVe_SeNsE_.ThisIsSliders[127].value, _FiVe_SeNsE_.ThisIsSliders[128].value ) then 
                   _FiVe_SeNsE_.ThisIsSliders[126].value, _FiVe_SeNsE_.ThisIsSliders[127].value, _FiVe_SeNsE_.ThisIsSliders[128].value  = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[126].value, _FiVe_SeNsE_.ThisIsSliders[127].value, _FiVe_SeNsE_.ThisIsSliders[128].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewBounding, 'Bounding Box [~r~NEW!~s~]', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewBounding = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewBounding 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[117].value, _FiVe_SeNsE_.ThisIsSliders[118].value, _FiVe_SeNsE_.ThisIsSliders[119].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[117].value, _FiVe_SeNsE_.ThisIsSliders[118].value, _FiVe_SeNsE_.ThisIsSliders[119].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[117].value, _FiVe_SeNsE_.ThisIsSliders[118].value, _FiVe_SeNsE_.ThisIsSliders[119].value)
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisCheckBoundNew, 'Visible Check', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisCheckBoundNew = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisCheckBoundNew 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newboundincludeself, 'Include Self', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newboundincludeself = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newboundincludeself 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newboundplayers, 'Only Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newboundplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newboundplayers 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[120].value, _FiVe_SeNsE_.ThisIsSliders[121].value, _FiVe_SeNsE_.ThisIsSliders[122].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[120].value, _FiVe_SeNsE_.ThisIsSliders[121].value, _FiVe_SeNsE_.ThisIsSliders[122].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[120].value, _FiVe_SeNsE_.ThisIsSliders[121].value, _FiVe_SeNsE_.ThisIsSliders[122].value)
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewHealthbar, 'Healthbar [~r~NEW!~s~]', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewHealthbar = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewHealthbar 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthbarTextNew, 'Healthbar Text', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthbarTextNew = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthbarTextNew 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newhealthincludeself, 'Include Self', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newhealthincludeself = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newhealthincludeself 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newhealthplayers, 'Only Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newhealthplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newhealthplayers 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[123].value, _FiVe_SeNsE_.ThisIsSliders[124].value, _FiVe_SeNsE_.ThisIsSliders[125].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[123].value, _FiVe_SeNsE_.ThisIsSliders[124].value, _FiVe_SeNsE_.ThisIsSliders[125].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[123].value, _FiVe_SeNsE_.ThisIsSliders[124].value, _FiVe_SeNsE_.ThisIsSliders[125].value)
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewArmor, 'Armorbar [~r~NEW!~s~]', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewArmor = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewArmor 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorbarTextNew, 'Armorbar Text', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorbarTextNew = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorbarTextNew 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newarmorincludeself, 'Include Self', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newarmorincludeself = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newarmorincludeself 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.503 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newarmorplayers, 'Only Players', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newarmorplayers = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newarmorplayers 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Visuals"][2]
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll = 0.476 + (_FiVe_SeNsE_.drag[1].h-0.5)
           local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.3965-_h/4, _w+0.086-_w/2, _h+0.1836-_h/2) then 
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - (0 * 0.015)) then
                   _FiVe_SeNsE_.static["Visuals"][2] = _FiVe_SeNsE_.static["Visuals"][2] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Visuals"][2] = _FiVe_SeNsE_.static["Visuals"][2] + 0.015
               end
           end	
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.colorpreviewbuton(0.517+_w-0.0044, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[26].value, _FiVe_SeNsE_.ThisIsSliders[27].value, _FiVe_SeNsE_.ThisIsSliders[28].value) then 
                   _FiVe_SeNsE_.ThisIsSliders[26].value, _FiVe_SeNsE_.ThisIsSliders[27].value, _FiVe_SeNsE_.ThisIsSliders[28].value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ColorPicker(_FiVe_SeNsE_.ThisIsSliders[26].value, _FiVe_SeNsE_.ThisIsSliders[27].value, _FiVe_SeNsE_.ThisIsSliders[28].value)
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.crosshair, 'Crosshair', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.crosshair = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.crosshair 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.crosshairOutline, 'Crosshair Outline', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.crosshairOutline = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.crosshairOutline
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Crosshair: Thickness', 0.517, _FiVe_SeNsE_.pos.y) then 
               
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[25], 5)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Crosshair: Size', 0.517, _FiVe_SeNsE_.pos.y) then 
               
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[24], 5)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Crosshair: Gap', 0.517, _FiVe_SeNsE_.pos.y) then 
               
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[23], 5)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
       end
   
       if _FiVe_SeNsE_.us.tab == 'Weapons' then 
           _FiVe_SeNsE_.pos.y = 0.369 + _FiVe_SeNsE_.static["Weapons"][3]
           local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5+0.05/2, _w+0.086-_w/2, _h+0.3906-0.05) then 
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.369 - (3 * 0.015)) then
                   _FiVe_SeNsE_.static["Weapons"][3] = _FiVe_SeNsE_.static["Weapons"][3] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.369 then
                   _FiVe_SeNsE_.static["Weapons"][3] = _FiVe_SeNsE_.static["Weapons"][3] + 0.015
               end
           end	
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll = 0.368
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.clowngun, 'PTFX Clown Gun', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.clowngun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.clowngun 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('PTFX: Particle Scale', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[29], 1)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.firegun, 'PTFX Fire Gun', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.firegun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.firegun 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('PTFX: Particle Scale', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[30], 1)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.pedGun, 'Ped Gun', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.pedGun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.pedGun 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Ped Gun: Ped', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[83])
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Ped Gun: Times', 0.518, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[84])
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodegun, 'Explode Gun', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodegun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodegun 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
           
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[31])
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['FillAmmo'][1].. ']', 0.593+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['FillAmmo'][1] = k 
                   _FiVe_SeNsE_.Keybinds['FillAmmo'][2] = v
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Fill Ammo', 0.517, _FiVe_SeNsE_.pos.y) then 
                   local _, gun = _FiVe_SeNsE_.n.GetCurrentPedWeapon(_FiVe_SeNsE_.n.PlayerPedId())
                   _FiVe_SeNsE_.n.SetPedAmmo(_FiVe_SeNsE_.n.PlayerPedId(), gun, 250)
               end
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Give All Weapons', 0.517, _FiVe_SeNsE_.pos.y) then 
                   for i = 1, #_FiVe_SeNsE_.allweps do
                    _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_" .. _FiVe_SeNsE_.allweps[i]), 256, false, false)
                   end
               end
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Remove All Weapons', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.RemoveAllPedWeapons(_FiVe_SeNsE_.n.PlayerPedId(), false)
               end
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Remove Holding Weapon', 0.517, _FiVe_SeNsE_.pos.y) then 
                   local _, gun = _FiVe_SeNsE_.n.GetCurrentPedWeapon(_FiVe_SeNsE_.n.PlayerPedId(), true)
                   _FiVe_SeNsE_.n.RemoveWeaponFromPed(_FiVe_SeNsE_.n.PlayerPedId(), gun)
               end
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.infiniteAmmunation, 'Infinite Ammunation', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.infiniteAmmunation = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.infiniteAmmunation 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noreaload, 'No Reload', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noreaload = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noreaload 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.teleportgun, 'Teleport Gun', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.teleportgun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.teleportgun 
               end 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DeleteGun, 'Delete Gun', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DeleteGun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DeleteGun 
               end 
           end 
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Oneshot, 'Oneshot', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Oneshot = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Oneshot 
               end 
           end 
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.shockwavegun, 'Shockwave Gun', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.shockwavegun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.shockwavegun 
               end 
           end 
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hitmarker, 'Hit Marker', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hitmarker = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hitmarker 
               end 
           end 
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hitsoundlol, 'Hit Sound', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hitsoundlol = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hitsoundlol 
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.minscroll and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hiteffect, 'Hit Effect', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hiteffect = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hiteffect 
               end 
           end
   
           
   
           _FiVe_SeNsE_.pos.y = 0.366 + _FiVe_SeNsE_.static["Weapons"][1]
           
            
           if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.366 - (0 * 0.015)) then
               _FiVe_SeNsE_.static["Weapons"][1] = _FiVe_SeNsE_.static["Weapons"][1] - 0.015
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.366 then
               _FiVe_SeNsE_.static["Weapons"][1] = _FiVe_SeNsE_.static["Weapons"][1] + 0.015
           end
   
           
   
           _FiVe_SeNsE_.pos.y = 0.5065 + _FiVe_SeNsE_.static["Weapons"][2]
   
           local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxscroll = 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.5545+_w/4, (_h/2)+_y+0.5935+_h/4, _w+0.086-_w/2, _h+0.2036-_h/2) then
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.508 - ((0) * 0.015)) then
                   _FiVe_SeNsE_.static["Weapons"][2] = _FiVe_SeNsE_.static["Weapons"][2] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.5065 then
                   _FiVe_SeNsE_.static["Weapons"][2] = _FiVe_SeNsE_.static["Weapons"][2] + 0.015
               end
           end
   
           _FiVe_SeNsE_.n.DrawSprite("custompistol","pistol",0.465+ _x,0.332+ _y,0.029,0.029 * 1, 0.0, 255,255, 255, 255 )
           _FiVe_SeNsE_.n.DrawSprite("customknife","knife",0.44+_x,0.332+_y,0.025,0.025 * 0.8,0.0,255,255,255,255)
           _FiVe_SeNsE_.n.DrawSprite("customsmg","smg",0.49+ _x,0.332+ _y,0.025, 0.025 * 1, 0.0,255,255,255,255)
           _FiVe_SeNsE_.n.DrawSprite("custompump","pump", 0.5145+ _x,0.332+ _y, 0.027,0.02* 1.78,0.0,255,255,255,255)
           _FiVe_SeNsE_.n.DrawSprite("customak","ak",0.546+ _x, 0.332+ _y,0.037, 0.025 * 1.2, 0.0,255, 255,255, 255)
           _FiVe_SeNsE_.n.DrawSprite("customsniper","sniper",0.585+_x,0.332+ _y,0.037,0.025 * 1.2,0.0,255,255, 255,255)
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu == 'Snipers' then 
               _FiVe_SeNsE_.n.DrawSprite("customsniperW","sniperW",0.585+_x,0.332+ _y,0.037,0.025 * 1.2,0.0,255,255, 255,255)
               _FiVe_SeNsE_.pos.y = 0.3695
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Marksman Rifle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_marksmanrifle"), 20, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Heavy Sniper", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_HEAVYSNIPER"), 20, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Sniper Rifle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_SNIPERRIFLE"), 20, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           else
                   end
           
           
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spritebutton('',0.585,0.332) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu = 'Snipers'
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu == 'Rifles' then 
               _FiVe_SeNsE_.n.DrawSprite("customakW","akW",0.546+ _x, 0.332+ _y,0.037, 0.025 * 1.2, 0.0,255, 255,255, 255)
               --_FiVe_SeNsE_.n.DrawSprite("mpweaponsgang1","w_ar_assaultrifle_mag2_silhouette",0.554+ _x,0.332+ _y,0.037,0.037 * 1.2, 0.0, 200,200,200,255)
               --_FiVe_SeNsE_.n.DrawSprite("mpweaponsgang1","w_ar_assaultrifle_silhouette_overlay",0.554+ _x, 0.332+ _y,0.035, 0.037 * 1.2, 0.0,200, 200,200, 255)
               _FiVe_SeNsE_.pos.y = 0.3695
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Assault Rifle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_assaultrifle"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Assault Rifle MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_assaultrifle_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Carbine Rifle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_carbinerifle"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Carbine Rifle MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_carbinerifle_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Advanced Rifle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_advancedrifle"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Special Carbine", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_specialcarbine"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Special Carbine MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_specialcarbine_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Bullpup Rifle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_bullpuprifle"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Bullpup Rifle MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_bullpuprifle_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Compact Rifle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_compactrifle"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Military Rifle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_militaryrifle"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Machine Gun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_mg"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Combat Machine Gun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_combatmg"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Combat Machine Gun MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_combatmg_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Gusenberg", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_gusenberg"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           else
               --_FiVe_SeNsE_.n.DrawSprite("mpweaponsgang1","w_ar_assaultrifle_mag2_silhouette",0.554+ _x,0.332+ _y,0.037,0.037 * 1.2, 0.0, 255,255,255,255)
               --_FiVe_SeNsE_.n.DrawSprite("mpweaponsgang1","w_ar_assaultrifle_silhouette_overlay",0.554+ _x, 0.332+ _y,0.035, 0.037 * 1.2, 0.0,96, 96,96, 255)
           end 
           
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spritebutton('',0.546,0.332) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu = 'Rifles'
           end
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu == 'Shotguns' then
               _FiVe_SeNsE_.pos.y = 0.3695
               _FiVe_SeNsE_.n.DrawSprite("custompumpW","pumpW", 0.5145+ _x,0.332+ _y, 0.027,0.02* 1.78,0.0,255,255,255,255)
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Pump Shotgun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_pumpshotgun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Pump Shotgun MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_pumpshotgun_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Sawnoff Shotgun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_sawnoffshotgun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Assault Shotgun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_assaultshotgun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Bullpup Shotgun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_bullpupshotgun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Musket", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_musket"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Heavy Shotgun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_heavyshotgun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Double Barrel Shotgun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_dbshotgun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Auto Shotgun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_autoshotgun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Combat Shotgun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_combatshotgun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           else
           end
        
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spritebutton('',0.5145,0.332) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu = 'Shotguns'
       
           end
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu == 'SMGS' then
               --_FiVe_SeNsE_.n.DrawSprite("mpweaponscommon","w_sb_microsmg_silhouette_overlay",0.485+ _x,0.336+ _y,0.029, 0.029 * 1, 0.0,200, 200,200, 255)
               _FiVe_SeNsE_.pos.y = 0.3695
               _FiVe_SeNsE_.n.DrawSprite("customsmgW","smgW",0.49+ _x,0.332+ _y,0.025, 0.025 * 1, 0.0,255,255,255,255)
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("SMG", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_smg"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Micro SMG", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_microsmg"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Smg MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_smg_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Assault SMG", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_assaultsmg"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Combat PDW", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_combatpdw"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Vintage Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_vintagepistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Machine Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_machinepistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Mini SMG", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_minismg"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Ray Carbine", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_raycarbine"), 120, false, false)
               end
           else
   
              end
           
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spritebutton('',0.485,0.332) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu = 'SMGS'
           end
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu == 'Pistols' then
               --_FiVe_SeNsE_.n.DrawSprite("mpweaponsgang1","w_pi_pistol_silhouette_overlay",0.465+ _x,0.336+ _y,0.029,0.029 * 1, 0.0, 200, 200,200, 255)
               _FiVe_SeNsE_.n.DrawSprite("custompistolW","pistolW",0.465+ _x,0.332+ _y,0.029,0.029 * 1, 0.0, 255,255, 255, 255 )_FiVe_SeNsE_.pos.y = 0.3695
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_pistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Pistol MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_pistol_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Combat Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_combatpistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("SNS Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_snspistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("SNS Pistol MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_snspistol_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Vintage Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_vintagepistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Heavy Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_heavypistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Stun Gun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_stungun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("AP Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_appistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Pistol 50", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_pistol50"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Flare Gun", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_flaregun"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Marksman Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_marksmanpistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Revolver", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_revolver"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Revolver MK2", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_revolver_mk2"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Double Action", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_doubleaction"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Ray Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_raypistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Ceramic Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_ceramicpistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Navy Revolver", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_navyrevolver"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Gadget Pistol", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("weapon_gadgetpistol"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           else
               
           end 
   
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spritebutton('',0.458,0.332) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu = 'Pistols'
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu == 'Melee' then 
               --_FiVe_SeNsE_.n.DrawSprite("mpweaponsunusedfornow","w_me_knife_silhouette",0.44+_x,0.332+_y,0.025,0.025 * 0.8,0.0, 200, 200,200, 255)
               _FiVe_SeNsE_.n.DrawSprite("customknifeW","knifeW",0.44+_x,0.332+_y,0.025,0.025 * 0.8,0.0,255,255,255,255)
               _FiVe_SeNsE_.pos.y = 0.3695
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Baseball Bat", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_BAT"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Battleaxe", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_BATTLEAXE"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Broken Bottle", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_BOTTLE"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Crowbar", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_CROWBAR"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Antique Cavalry Dagger", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_DAGGER"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Flashlight", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_FLASHLIGHT"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Golf Club", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_GOLFCLUB"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Hammer", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_HAMMER"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Hatchet", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_HATCHET"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Knife", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_KNIFE"), 1, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Brass Knuckles", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_KNUCKLE"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Machete", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_MACHETE"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Nightstick", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_NIGHTSTICK"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Pool Cue", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_POOLCUE"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Stone Hatchet", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_STONE_HATCHET"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Switchblade", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_SWITCHBLADE"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Wrench", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_WRENCH"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Grenade", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_GRENADE"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("BZ Grenade", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_BZGAS"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button("Proxy Mine", 0.43, _FiVe_SeNsE_.pos.y, false) then
                   _FiVe_SeNsE_.n.GiveWeaponToPed(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetHashKey("WEAPON_PROXMINE"), 120, false, false)
               end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           else
               
           end
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spritebutton('',0.435,0.332) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_submenu = 'Melee'
           end
   
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText("Weapons", _x+0.427, _y+0.347, 0.27, true, 4, false)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText("Cheats", _x+0.516+ _w/2, _y+0.347, 0.27, true, 4, false)
       end
   
       if _FiVe_SeNsE_.us.tab == 'Player' then 
           _FiVe_SeNsE_.pos.y = 0.325 + _FiVe_SeNsE_.static["Player"][1]
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.4665-_w/4, (_h/2)+_y+0.5, _w+0.086-_w/2, _h+0.3906) then
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 14) and _FiVe_SeNsE_.pos.y > (0.325 - (10 * 0.015)) then
                   _FiVe_SeNsE_.static["Player"][1] = _FiVe_SeNsE_.static["Player"][1] - 0.015
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 15) and _FiVe_SeNsE_.pos.y ~= 0.325 then
                   _FiVe_SeNsE_.static["Player"][1] = _FiVe_SeNsE_.static["Player"][1] + 0.015
               end
           end
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Noclip'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['Noclip'][1] = k 
                   _FiVe_SeNsE_.Keybinds['Noclip'][2] = v
               end 	
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noclip, 'Noclip', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noclip = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noclip 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Noclip Speed', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[44], 2)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['GLife-Noclip'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['GLife-Noclip'][1] = k 
                   _FiVe_SeNsE_.Keybinds['GLife-Noclip'][2] = v
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifenoclip, 'G-LIFE Noclip', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifenoclip = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifenoclip 
               end 
           end
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('G-LIFE Noclip Speed in Car', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[109])
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Fastrun'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['Fastrun'][1] = k 
                   _FiVe_SeNsE_.Keybinds['Fastrun'][2] = v
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superRun, 'Fast Run', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superRun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superRun 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
            
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[4], 2)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.InfiniteStamina, 'Infinite Stamina', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.InfiniteStamina = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.InfiniteStamina 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NoRagdoll, 'No Ragdoll', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NoRagdoll = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NoRagdoll 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.clearwantedlevel, 'Clear Wanted', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.clearwantedlevel = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.clearwantedlevel 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetGameplayFov, 'Change Gameplay FOV', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetGameplayFov = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetGameplayFov 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Gameplay Cam FOV', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[93], 1) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superjump, 'Super Jump', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superjump = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superjump 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Heal'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['Heal'][1] = k 
                   _FiVe_SeNsE_.Keybinds['Heal'][2] = v
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Add Health', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.SetEntityHealth(_FiVe_SeNsE_.n.PlayerPedId(), 100+bettersecurity.ThisIsSliders[1].value)
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, bettersecurity.ThisIsSliders[1]) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Armor'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['Armor'][1] = k 
                   _FiVe_SeNsE_.Keybinds['Armor'][2] = v
               end 
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Add Armor', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.SetPedArmour(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.ThisIsSliders[3].value)
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[3]) 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slowMotion, 'Slow Motion', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slowMotion = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slowMotion 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Slow Motion Scale', 0.43, _FiVe_SeNsE_.pos.y) then 
                   
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.467, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[2], 2)
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.antiHeadshot, 'Anti Headshot', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.antiHeadshot = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.antiHeadshot 
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_invisible, 'Invisible', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_invisible = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_invisible 
               end 
           end
           
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.infiniteRoll, 'Infinite Roll', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.infiniteRoll = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.infiniteRoll 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forcearmorbar, 'Force Armorbar', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forcearmorbar = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forcearmorbar 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forcehealthbar, 'Force Healthbar', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forcehealthbar = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forcehealthbar 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Set Ped As Juggernaut', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.setpedasjuggernaut()
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Revert From Juggernaut', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.setbackped()
               end 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Suicide', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.SetEntityHealth(_FiVe_SeNsE_.n.PlayerPedId(), 0)
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Revive'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['Revive'][1] = k 
                   _FiVe_SeNsE_.Keybinds['Revive'][2] = v
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Revive', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.revive()
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Clear Task Immediately', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.ClearPedTasksImmediately(_FiVe_SeNsE_.n.PlayerPedId()) 
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Clear Task Secondary', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.ClearPedSecondaryTask(_FiVe_SeNsE_.n.PlayerPedId())
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.515)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Have Sex with ped', 0.43, _FiVe_SeNsE_.pos.y) then
                   if not _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.GetPlayerPed(-1), true) then
                       if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("csb_stripper_02")) then
                           _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("csb_stripper_02")) 
                       end
                       if not _FiVe_SeNsE_.n.HasAnimDictLoaded("rcmpaparazzo_2") then 
                           _FiVe_SeNsE_.n.RequestAnimDict("rcmpaparazzo_2") 
                       end
                       local coords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), true)
                       local ped = _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey("csb_stripper_02"), coords, 0.0, true, false)
                       _FiVe_SeNsE_.n.SetEntityAsMissionEntity(ped, true, true)
                       _FiVe_SeNsE_.n.AttachEntityToEntity(ped, _FiVe_SeNsE_.n.PlayerPedId(), 4103, 11816, 0.25, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                       _FiVe_SeNsE_.n.ClearPedTasks(_FiVe_SeNsE_.n.PlayerPedId())
                       _FiVe_SeNsE_.n.TaskPlayAnim(_FiVe_SeNsE_.n.PlayerPedId(), "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                       _FiVe_SeNsE_.n.SetPedKeepTask(ped)
                       _FiVe_SeNsE_.n.TaskPlayAnim(ped, "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                   end 
       
               end
   
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.515)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['TeleporToWaypoint'][1].. ']', 0.503, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['TeleporToWaypoint'][1] = k 
                   _FiVe_SeNsE_.Keybinds['TeleporToWaypoint'][2] = v
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Teleport To Waypoint', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToWaypoint()
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.515)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Clear Task', 0.43, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_.n.ClearPedTasks(_FiVe_SeNsE_.n.PlayerPedId())
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.515)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Teleport To Nearest Vehicle', 0.43, _FiVe_SeNsE_.pos.y) then 
                   local ped = _FiVe_SeNsE_.n.PlayerPedId()
                   local veh = _FiVe_SeNsE_.n.GetClosestVehicle(_FiVe_SeNsE_.n.GetEntityCoords(ped, true), 1000.0, 0, 4)
                   local pos = _FiVe_SeNsE_.n.GetEntityCoords(veh, true)
                   if veh then 
                       _FiVe_SeNsE_.n.SetPedIntoVehicle(ped, veh, -1)
                   end
               end 
           end
           
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           _FiVe_SeNsE_.pos.y = 0.51
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Freecam'][1].. ']', 0.594+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y+ _h/2) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['Freecam'][1] = k 
                   _FiVe_SeNsE_.Keybinds['Freecam'][2] = v
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Freecam, 'Freecam', 0.517, _FiVe_SeNsE_.pos.y) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Freecam = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Freecam 
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Freecam: FOV', 0.517, _FiVe_SeNsE_.pos.y) then 
                       
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
       
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[16], 1) 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Freecam: Speed', 0.517, _FiVe_SeNsE_.pos.y) then 
                       
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
       
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[17], 2) 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Freecam: Sensitivity', 0.517, _FiVe_SeNsE_.pos.y) then 
                       
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
       
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[18], 2) 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Terrorist Attack: Delay', 0.517, _FiVe_SeNsE_.pos.y) then 
                       
               end 
           end
               
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
       
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slider(0.554, _FiVe_SeNsE_.pos.y, _FiVe_SeNsE_.ThisIsSliders[129], 2) 
           end
   
           _FiVe_SeNsE_.pos.y = 0.325
   
           if _FiVe_SeNsE_.pos.y >= 0.325 and _FiVe_SeNsE_.pos.y <= 0.703 + ((_FiVe_SeNsE_.drag[1].h-0.53)/2)  then
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Rbutton('['.._FiVe_SeNsE_.Keybinds['Godmode'][1].. ']', 0.594+(_w/2)-0.0044, _FiVe_SeNsE_.pos.y) then 
                   local k, v = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.Keybinds['Godmode'][1] = k 
                   _FiVe_SeNsE_.Keybinds['Godmode'][2] = v
               end 
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Godmode Bind', 0.517, _FiVe_SeNsE_.pos.y) then 
           end
   
           _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.godmode, 'Basic Godmode', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.godmode = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.godmode 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.semigodmode, 'Semi Godmode', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.semigodmode = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.semigodmode 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fivemGodmode, 'Default Godmode', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fivemGodmode = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fivemGodmode 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015 
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.bulletProof, 'Bullet Proof', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.bulletProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.bulletProof 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fireProof, 'Fire Proof', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fireProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fireProof 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explosionProof, 'Explosion Proof', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explosionProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explosionProof 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.collisionProof, 'Collision Proof', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.collisionProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.collisionProof 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.meleeProof, 'Melee Proof', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.meleeProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.meleeProof 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.steamProof, 'Steam Proof', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.steamProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.steamProof 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.checkbox(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drownProof, 'Drown Proof', 0.518, _FiVe_SeNsE_.pos.y) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drownProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drownProof 
           end _FiVe_SeNsE_.pos.y = _FiVe_SeNsE_.pos.y + 0.015
           end
       end
   end
   
   function _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind(text)
       local Settings = {Turned = true}
       while Settings.Turned do
           if not _FiVe_SeNsE_.menu.closethis then
               _FiVe_SeNsE_.n.DisableControlAction(0, 1, true) -- LookLeftRight
               _FiVe_SeNsE_.n.DisableControlAction(0, 2, true) -- LookUpDown
               _FiVe_SeNsE_.n.DisableControlAction(0, 142, true) -- MeleeAttackAlternate
               _FiVe_SeNsE_.n.DisableControlAction(0, 322, true) -- ESC
               _FiVe_SeNsE_.n.DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
               _FiVe_SeNsE_.n.DisableControlAction(0, 25, true) -- MOUSE 2
               _FiVe_SeNsE_.n.DisableControlAction(0, 24, true) -- Attack
               _FiVe_SeNsE_.n.DisableControlAction(0, 257, true) -- Attack2
               _FiVe_SeNsE_.n.DisableControlAction(0, 32, true) -- W
               _FiVe_SeNsE_.n.DisableControlAction(0, 31, true) -- S
               _FiVe_SeNsE_.n.DisableControlAction(0, 30, true) -- D
               _FiVe_SeNsE_.n.DisableControlAction(0, 34, true) -- A
               _FiVe_SeNsE_.n.DisableControlAction(0, 23, true) -- F
               _FiVe_SeNsE_.n.DisableControlAction(0, 22, true) -- Jump
               _FiVe_SeNsE_.n.DisableControlAction(0, 16, true) -- Wep Scroll
               _FiVe_SeNsE_.n.DisableControlAction(0, 17, true) -- Wep Scroll
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.204, 0.3036+0.0018*2, 55, 53, 59, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.203, 0.3036+0.0018, 39, 39, 41, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.201, 0.3018, 54, 53, 54, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.2, 0.3, 20, 20, 20, 255)
               _FiVe_SeNsE_.n.DrawRect(0.453, 0.41, 0.102, 0.1136, 1, 1, 1, 255)
               _FiVe_SeNsE_.n.DrawRect(0.453, 0.41, 0.101, 0.1118, 35, 33, 35, 255)
               _FiVe_SeNsE_.n.DrawRect(0.453, 0.41, 0.1, 0.11, 24, 23, 24, 255)
   
               _FiVe_SeNsE_.n.DrawRect(0.453, 0.378, 0.095, 0.03, 25, 25, 25, 255)
               local neww = 0.0045
               _FiVe_SeNsE_.n.DrawRect(0.55+neww/2, 0.41, 0.086+neww, 0.1136, 1, 1, 1, 255)
               _FiVe_SeNsE_.n.DrawRect(0.55+neww/2, 0.41, 0.085+neww, 0.1118, 35, 33, 35, 255)
               _FiVe_SeNsE_.n.DrawRect(0.55+neww/2, 0.41, 0.084+neww, 0.11, 24, 23, 24, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.557, 0.196, 0.1766, 1, 1, 1, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.557, 0.195, 0.1748, 35, 33, 35, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.557, 0.194, 0.173, 24, 23, 24, 255)
               _FiVe_SeNsE_.n.DrawSprite('fs', 'line', 0.5, 0.351, 0.2, 2/_FiVe_SeNsE_.us.getResY, 0.0, 255, 255, 255, 255)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Options', 0.521, 0.345, 0.29, true, 4, true)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Update', 0.415, 0.345, 0.29, true, 4, true)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Notifications', 0.422, 0.46, 0.29, true, 4, true)
   
               _FiVe_SeNsE_.n.DrawSprite('fivem', 'logo', 0.411, 0.371, 0.007, 0.007*1.8, 0., 255, 255, 255, 255)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Successfully injected [<FONT COLOR="#8dbc26">fivesense~s~]!', 0.415, 0.36, 0.29, false, 4, false)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Last Update: 12.07.2021', 0.4065, 0.374, 0.29, false, 4, false)
               local cx, cy = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cursorPos()
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('^', cx+0.0005, cy-0.008, 0.5, true, 4, true)
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.gsbutton('Select Menu Key',0.5525, 0.38) then 
                   _FiVe_SeNsE_.menu.selectmenukey = true
                   _FiVe_SeNsE_.menu.closethis = true
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.gsbutton('Set Menu Key To Del',0.5525, 0.405) then 
                   _FiVe_SeNsE_.menu.selectmenukey = true
                   _FiVe_SeNsE_.menu.closethis = true
                   return 'DL', 178
               end
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.gsbutton('Quit Menu',0.5525, 0.43) then 
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled = false
                   return 'BLACK', 242141
               end
           end
           if _FiVe_SeNsE_.menu.selectmenukey then
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.474, 0.204, 0.0188+0.0018*3, 55, 53, 59, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.474, 0.203, 0.0188+0.0018*2, 39, 39, 41, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.474, 0.201, 0.0188, 54, 53, 54, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.474, 0.2, 0.017, 20, 20, 20, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.474, 0.2-0.001, 0.017-0.0018, 35, 35, 35, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.474, 0.2-0.002, 0.017-0.0036, 24, 23, 24, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.204, 0.0188+0.0018*3, 55, 53, 59, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.203, 0.0188+0.0018*2, 39, 39, 41, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.201, 0.0188, 54, 53, 54, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.2, 0.017, 20, 20, 20, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.2-0.001, 0.017-0.0018, 35, 35, 35, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.2-0.002, 0.017-0.0036, 24, 23, 24, 255)
   
   
               _FiVe_SeNsE_.n.DrawSprite('fs', 'line', 0.5, 0.474-0.0085, 0.2, 2/_FiVe_SeNsE_.us.getResY, 0.0, 255, 255, 255, 255)
               _FiVe_SeNsE_.n.DrawSprite('fs', 'line', 0.5, 0.4915, 0.2, 2/_FiVe_SeNsE_.us.getResY, 0.0, 255, 255, 255, 255)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Click [ENTER] to confirm!', 0.402, 0.474-0.01, 0.27, true, 4, false)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(text, 0.402, 0.5-0.01, 0.27, true, 4, false)
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud__ud_bindkeys) do
                   if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, v)  then
                       shit = v
                       text = k
                   end
               end 
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 191) then 
                   return text, shit
               end  
           end
           _FiVe_SeNsE_.n._ud_wait(0)
       end
   end
   
   _FiVe_SeNsE_.menu.key = -1
   
   _FiVe_SeNsE_.n._ud_thr(function()
       local text, value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
       _FiVe_SeNsE_.menu.key = value
       while _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled do 
           _FiVe_SeNsE_.n._ud_wait(0) -- _x+0.6, _y+0.7, 0.008, 0.008*1.8
   
           _FiVe_SeNsE_.pos.getCurX, _FiVe_SeNsE_.pos.getCurY = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cursorPos()
           local _x, _y = _FiVe_SeNsE_.drag[1].x-0.5, _FiVe_SeNsE_.drag[1].y-0.5
           local _w, _h = _FiVe_SeNsE_.drag[1].w-0.5, _FiVe_SeNsE_.drag[1].h-0.5
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(_FiVe_SeNsE_.drag[1].x+_w/2, _FiVe_SeNsE_.drag[1].y - 0.2, 0.219+_w, 0.01) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then
               x, y = _FiVe_SeNsE_.drag[1].x - _FiVe_SeNsE_.pos.getCurX, _FiVe_SeNsE_.drag[1].y - _FiVe_SeNsE_.pos.getCurY
               _FiVe_SeNsE_.drag.enable = true
           elseif _FiVe_SeNsE_.n.IsDisabledControlReleased(0, 24) then
               _FiVe_SeNsE_.drag.enable = false
           end
       
           if _FiVe_SeNsE_.drag.enable then
               _FiVe_SeNsE_.drag[1].x = _FiVe_SeNsE_.pos.getCurX + x
               _FiVe_SeNsE_.drag[1].y = _FiVe_SeNsE_.pos.getCurY + y
           end
   
   
           local _x1, _y1 = _FiVe_SeNsE_.drag[2].x-0.5, _FiVe_SeNsE_.drag[2].y-0.5
           local cxx, cyy = 0.62+_x+_w, 0.435+_y
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone(cxx+0.046+_x1, (cyy+0.001 - 0.0015 -0.121/2 - ((0.13)/2)) + _y1, 0.091, 0.02+0.0012*1.8) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then
               x, y = _FiVe_SeNsE_.drag[2].x - _FiVe_SeNsE_.pos.getCurX, _FiVe_SeNsE_.drag[2].y - _FiVe_SeNsE_.pos.getCurY
               _FiVe_SeNsE_.drag.enable3 = true
           elseif _FiVe_SeNsE_.n.IsDisabledControlReleased(0, 24) then
               _FiVe_SeNsE_.drag.enable3 = false
           end
       
           if _FiVe_SeNsE_.drag.enable3 then
               _FiVe_SeNsE_.drag[2].x = _FiVe_SeNsE_.pos.getCurX + x
               _FiVe_SeNsE_.drag[2].y = _FiVe_SeNsE_.pos.getCurY + y
           end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.mouseZone((_w/2)+_x+0.5 - 0.02/2, (_h)+_y+0.7, _w+0.226, 0.008*1.8) and _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 24) then
               x, y = _FiVe_SeNsE_.drag[1].w - _FiVe_SeNsE_.pos.getCurX, _FiVe_SeNsE_.drag[1].h - _FiVe_SeNsE_.pos.getCurY
               _FiVe_SeNsE_.drag.enable2 = true
           elseif _FiVe_SeNsE_.n.IsDisabledControlReleased(0, 24) then
               _FiVe_SeNsE_.drag.enable2 = false
           end
       
           if _FiVe_SeNsE_.drag.enable2 then
               _FiVe_SeNsE_.drag[1].w = _FiVe_SeNsE_.pos.getCurX + x
               _FiVe_SeNsE_.drag[1].h = _FiVe_SeNsE_.pos.getCurY + y
           end
   
           if _FiVe_SeNsE_.drag[1].w < 0.510 then 
               _FiVe_SeNsE_.drag[1].w = 0.510
           end
           if _FiVe_SeNsE_.drag[1].h < 0.5 then 
               _FiVe_SeNsE_.drag[1].h = 0.5
           end
   
           --[[if _FiVe_SeNsE_.menu.loader then
   
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.204, 0.3036+0.0018*2, 55, 53, 59, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.203, 0.3036+0.0018, 39, 39, 41, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.201, 0.3018, 54, 53, 54, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.2, 0.3, 20, 20, 20, 255)
   
               _FiVe_SeNsE_.n.DrawRect(0.453, 0.41, 0.102, 0.1136, 1, 1, 1, 255)
               _FiVe_SeNsE_.n.DrawRect(0.453, 0.41, 0.101, 0.1118, 35, 33, 35, 255)
               _FiVe_SeNsE_.n.DrawRect(0.453, 0.41, 0.1, 0.11, 24, 23, 24, 255)
   
               local neww = 0.0045
               _FiVe_SeNsE_.n.DrawRect(0.55+neww/2, 0.41, 0.086+neww, 0.1136, 1, 1, 1, 255)
               _FiVe_SeNsE_.n.DrawRect(0.55+neww/2, 0.41, 0.085+neww, 0.1118, 35, 33, 35, 255)
               _FiVe_SeNsE_.n.DrawRect(0.55+neww/2, 0.41, 0.084+neww, 0.11, 24, 23, 24, 255)
   
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.557, 0.196, 0.1766, 1, 1, 1, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.557, 0.195, 0.1748, 35, 33, 35, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.557, 0.194, 0.173, 24, 23, 24, 255)
   
               _FiVe_SeNsE_.n.DrawSprite('fs', 'line', 0.5, 0.351, 0.2, 2/_FiVe_SeNsE_.us.getResY, 0.0, 255, 255, 255, 255)
   
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Options', 0.521, 0.345, 0.29, true, 4, true)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Update', 0.415, 0.345, 0.29, true, 4, true)
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('Notifications', 0.422, 0.46, 0.29, true, 4, true)
               local cx, cy = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cursorPos()
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('^', cx+0.0005, cy-0.008, 0.5, true, 4, true)
               _FiVe_SeNsE_.menu.open = false
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.button('Select Menu Key',0.512, 0.37) then 
                   local text, value = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bind('')
                   _FiVe_SeNsE_.menu.key = value 
                   _FiVe_SeNsE_.menu.loader = false 
   
               end
           end]]
   
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.menu.key) then 
               _FiVe_SeNsE_.menu.open = not _FiVe_SeNsE_.menu.open 
           end
   
           if _FiVe_SeNsE_.menu.open then 
               _FiVe_SeNsE_.n.DisableControlAction(0, 1, true) -- LookLeftRight
               _FiVe_SeNsE_.n.DisableControlAction(0, 2, true) -- LookUpDown
               _FiVe_SeNsE_.n.DisableControlAction(0, 142, true) -- MeleeAttackAlternate
               _FiVe_SeNsE_.n.DisableControlAction(0, 322, true) -- ESC
               _FiVe_SeNsE_.n.DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
               _FiVe_SeNsE_.n.DisableControlAction(0, 25, true) -- MOUSE 2
               _FiVe_SeNsE_.n.DisableControlAction(0, 24, true) -- Attack
               _FiVe_SeNsE_.n.DisableControlAction(0, 257, true) -- Attack2
                _FiVe_SeNsE_.n.DisableControlAction(0, 16, true) -- Wep Scroll
               _FiVe_SeNsE_.n.DisableControlAction(0, 17, true) -- Wep Scroll
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menu()
               local cx, cy = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cursorPos()
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText('^', cx+0.0005, cy-0.008, 0.5, true, 4, true)
           end
           
   
       end
   end)
   
   _FiVe_SeNsE_.n._ud_thr(function()
       while _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled do 
           _FiVe_SeNsE_.n._ud_wait(0)
   
           _FiVe_SeNsE_.n.SetEntityProofs(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.bulletProof, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fireProof, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explosionProof, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.collisionProof, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.meleeProof, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.steamProof, 1, _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drownProof)
           _FiVe_SeNsE_.n.SetPlayerInvincible(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fivemGodmode)
           _FiVe_SeNsE_.n.SetEntityInvincible(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fivemGodmode)
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.setpedasjuggernaut = function()  
               _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("u_m_y_juggernaut_01")) 
               if _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("u_m_y_juggernaut_01")) then
                   _FiVe_SeNsE_.n.SetPlayerModel(_FiVe_SeNsE_.n.PlayerId(), _FiVe_SeNsE_.n.GetHashKey("u_m_y_juggernaut_01"))
               end
           end
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.setbackped = function()  
               _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("mp_m_freemode_01")) 
               if _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("mp_m_freemode_01")) then
                   _FiVe_SeNsE_.n.SetPlayerModel(_FiVe_SeNsE_.n.PlayerId(), _FiVe_SeNsE_.n.GetHashKey("mp_m_freemode_01"))
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifebypass then 
               for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   if not _FiVe_SeNsE_.n.IsPedAPlayer(ped) and ped ~= _FiVe_SeNsE_.n.PlayerPedId() then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(ped)
                   _FiVe_SeNsE_.n.SetEntityHealth(ped, 0)
                   _FiVe_SeNsE_.n.SetEntityCoords(ped, _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()))
               end
           end
       end
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.justameme = function()
           local cs16sounds = _FiVe_SeNsE_.n.CreateDui("https://www.myinstants.com/media/sounds/multi-kill-mp3cut.mp3", 1, 1)
           _FiVe_SeNsE_.n.DestroyDui(cs16sounds)
       end
   
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifeautokillzombies then
           for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   if _FiVe_SeNsE_.n.IsEntityOnScreen(ped) then
                       local b = _FiVe_SeNsE_.n.GetEntityRotation(ped)
                       local c = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(b)
                       local d = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), false)
                       local e = _FiVe_SeNsE_.n.GetEntityCoords(ped, false)
                       local f = _FiVe_SeNsE_.n.GetPedBoneCoords(ped, 31086, 0, 0, 0)
                       local g = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
                       if g <= 5000.0 then
                           local h = _FiVe_SeNsE_.n.IsEntityDead(ped)
                           if not h then
                               _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 0.5, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), false, true, 1)
                           end
                       end
                   end
               end
           end
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.terrorist = function()
           if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey('mp_m_freemode_01')) then
               _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey('mp_m_freemode_01'))
           end
           -- CREATE PED
           local ped = _FiVe_SeNsE_.n.CreatePed(5, _FiVe_SeNsE_.n.GetHashKey('mp_m_freemode_01'), _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer), 0.0, -1.0, -1.0), _FiVe_SeNsE_.n.GetEntityHeading(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)), true, true)
           -- CLOTHES
           _FiVe_SeNsE_.n.SetPedDefaultComponentVariation(ped)
           _FiVe_SeNsE_.n.SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
           _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 1, 115, 0, 2)
           _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 3, 4, 0, 2)
           _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 11, 12, 0, 2)
           _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 8, 15, 0, 2)
           _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 4, 56, 0, 2)
           _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 6, 34, 0, 2)
           -- EXPLOSION
           _FiVe_SeNsE_.n._ud_thr(function()
               _FiVe_SeNsE_.n._ud_wait(_FiVe_SeNsE_.ThisIsSliders[49].value)
               _FiVe_SeNsE_.n.AddExplosion(_FiVe_SeNsE_.n.GetEntityCoords(ped), 34, 500.0, true, false, false, false)
           end)
       end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifexpfarm then 
               for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   local myself = _FiVe_SeNsE_.n.PlayerPedId()
                       local coords = _FiVe_SeNsE_.n.GetEntityCoords(myself)
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Manualglifexpfarm then
                           if not _FiVe_SeNsE_.n.IsPedAPlayer(ped) and ped ~= _FiVe_SeNsE_.n.PlayerPedId() then
                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(ped)
                           _FiVe_SeNsE_.n.SetEntityCoords(ped, coords.x + 3, coords.y, coords.z - 1)
                           _FiVe_SeNsE_.n.FreezeEntityPosition(ped, true)
                       end
                   end
               end
           end
   
           --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnZombies then
               local myCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
               local zombietable = {"s_m_m_marine_01", "s_m_y_marine_01", "a_m_m_mexcntry_01","a_m_m_polynesian_01","a_m_m_skidrow_01","a_m_y_genstreet_01","a_m_y_genstreet_02","a_m_y_stlat_01","csb_ramp_hic","a_m_m_fatlatin_01","a_m_m_rurmeth_01","a_m_m_hillbilly_02","a_m_m_hillbilly_01","s_m_y_prisoner_01","s_m_y_prismuscl_01","a_m_m_salton_01","a_m_y_salton_01",}
               local randomzombie = (zombietable[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#zombietable)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(randomzombie)) then 
               _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(randomzombie))
               _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey(randomzombie), myCoords.x + 120 , myCoords.y + 120, myCoords.z, 0.0, false, true)
           end
       end]]
   
   
   --[[	if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Autolootzom then  
           for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
               if not _FiVe_SeNsE_.n.IsPedAPlayer(ped) and ped ~= _FiVe_SeNsE_.n.PlayerPedId() then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(ped)
                   TriggerServerEvent("pichot:zombie", ped)
               end
           end
       end
   
   
   
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Autolootzomb then  
           _FiVe_SeNsE_.n._ud_thr(function()
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Autolootzomee = function()
               _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 38)
               _FiVe_SeNsE_.n.IsDisabledControlReleased(0, 38)
               _FiVe_SeNsE_.n.IsDisabledControlJustReleased(0, 38)
               _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 38)
               end
               while true do Wait(10)
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Autolootzomee()
               end
           end)
       end--]]
   
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetZombieHP = function()
                   for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                       if not _FiVe_SeNsE_.n.IsPedAPlayer(ped) and ped ~= _FiVe_SeNsE_.n.PlayerPedId() then
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(ped)
                       _FiVe_SeNsE_.n.SetEntityHealth(ped, 101)
                   end
               end
           end
   
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetZombieHP = function()
               for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   if not _FiVe_SeNsE_.n.IsPedAPlayer(ped) and ped ~= _FiVe_SeNsE_.n.PlayerPedId() then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(ped)
                   _FiVe_SeNsE_.n.SetEntityHealth(ped, 101)
               end
           end
       end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.WorldColor then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CustomWorldColor(_FiVe_SeNsE_.ThisIsSliders[5].value, _FiVe_SeNsE_.ThisIsSliders[6].value, _FiVe_SeNsE_.ThisIsSliders[7].value, _FiVe_SeNsE_.ThisIsSliders[8].value, _FiVe_SeNsE_.ThisIsSliders[9].value)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FullBright then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CustomWorldColor(255, 255, 255, _FiVe_SeNsE_.ThisIsSliders[10].value, _FiVe_SeNsE_.ThisIsSliders[11].value)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceMap then
               _FiVe_SeNsE_.n.DisplayRadar(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceMap, 1)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.thirdPerson then
               _FiVe_SeNsE_.n.SetFollowPedCamViewMode(0)
               _FiVe_SeNsE_.n.SetFollowVehicleCamViewMode(0)
           end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.infiniteRoll then 
               for i = 0, 3 do
                   _FiVe_SeNsE_.n.StatSetInt(_FiVe_SeNsE_.n.GetHashKey("mp" .. i .. "_shooting_ability"), 9999, true)
                   _FiVe_SeNsE_.n.StatSetInt(_FiVe_SeNsE_.n.GetHashKey("sp" .. i .. "_shooting_ability"), 9999, true)
               end
           else
               for i = 0, 3 do
                   _FiVe_SeNsE_.n.StatSetInt(_FiVe_SeNsE_.n.GetHashKey("mp" .. i .. "_shooting_ability"), 0, true)
                   _FiVe_SeNsE_.n.StatSetInt(_FiVe_SeNsE_.n.GetHashKey("sp" .. i .. "_shooting_ability"), 0, true)
               end
           end
   
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['GLife-Noclip'][2]) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifenoclip = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifenoclip
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Freecam'][2]) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Freecam = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Freecam
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Noclip'][2]) then 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noclip = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noclip
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['FillAmmo'][2]) then
               local _, gun = _FiVe_SeNsE_.n.GetCurrentPedWeapon(_FiVe_SeNsE_.n.PlayerPedId())
               _FiVe_SeNsE_.n.SetPedAmmo(_FiVe_SeNsE_.n.PlayerPedId(), gun, 250) 
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Glifefarm'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifebypass = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifebypass
           end
           --[[if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['SpawnZombies'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnZombies = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnZombies
           end]]
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['TeleportZombies'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Manualglifexpfarm = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Manualglifexpfarm
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['SetZombieHP'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetZombieHP()
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['PanicKey'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Freecam = false
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['AutoKillZomb'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifeautokillzombies = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifeautokillzombies 
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['RepairVehicle'][2]) then
               _FiVe_SeNsE_.n.SetVehicleFixed(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false))
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Godmode'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.godmode = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.godmode 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.semigodmode = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.semigodmode 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fivemGodmode = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fivemGodmode 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.bulletProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.bulletProof 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fireProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.fireProof 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explosionProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explosionProof 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.collisionProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.collisionProof 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.meleeProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.meleeProof 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.steamProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.steamProof 
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drownProof = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drownProof 
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Heal'][2]) then
               _FiVe_SeNsE_.n.SetEntityHealth(_FiVe_SeNsE_.n.PlayerPedId(), 100+bettersecurity.ThisIsSliders[1].value)
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Armor'][2]) then
               _FiVe_SeNsE_.n.SetPedArmour(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.ThisIsSliders[3].value)
           end
   
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Fastrun'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superRun = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superRun 
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Maxtune'][2]) then
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxtuneveh = not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.maxtuneveh
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['FlipVehicle'][2]) then
               _FiVe_SeNsE_.n.SetVehicleOnGroundProperly(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false))
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['TeleporToWaypoint'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToWaypoint()
           end
           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, _FiVe_SeNsE_.Keybinds['Revive'][2]) then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.revive()
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noclip then
               local old = 1.0
               local vehicleecheck = _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.PlayerPedId(), 0)
               local player = nil
               local x, y, z = nil
               if not vehicleecheck then
                   player = _FiVe_SeNsE_.n.PlayerPedId()
                   x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), 2))
               else
                   player = _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), 0)
                   x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), 1))
               end
               if vehicleecheck and _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetSeatPedIsIn(_FiVe_SeNsE_.n.PlayerPedId()) ~= -1 then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(player)
               end
               local Camerax, Cameray, Cameraz = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetCameraDirection()
               _FiVe_SeNsE_.n.SetEntityVisible(_FiVe_SeNsE_.n.PlayerPedId(), 0, 0)
               _FiVe_SeNsE_.n.SetEntityVisible(player, 0, 0)
               _FiVe_SeNsE_.n.SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 21) then -- Change speed
                   old = _FiVe_SeNsE_.ThisIsSliders[44].value
                   _FiVe_SeNsE_.ThisIsSliders[44].value = _FiVe_SeNsE_.ThisIsSliders[44].value * 5
               end
               if _FiVe_SeNsE_.n.IsDisabledControlJustReleased(0, 21) then -- Restore speed
                   _FiVe_SeNsE_.ThisIsSliders[44].value = old
               end
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 32) then
                   x = x + _FiVe_SeNsE_.ThisIsSliders[44].value * Camerax
                   y = y + _FiVe_SeNsE_.ThisIsSliders[44].value * Cameray
                   z = z + _FiVe_SeNsE_.ThisIsSliders[44].value * Cameraz
               end
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 269) then
                   x = x - _FiVe_SeNsE_.ThisIsSliders[44].value * Camerax
                   y = y - _FiVe_SeNsE_.ThisIsSliders[44].value * Cameray
                   z = z - _FiVe_SeNsE_.ThisIsSliders[44].value * Cameraz
               end
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 22) then
                   z = z + _FiVe_SeNsE_.ThisIsSliders[44].value
               end
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 36) then
                   z = z - _FiVe_SeNsE_.ThisIsSliders[44].value
               end
               _FiVe_SeNsE_.n.SetEntityCoordsNoOffset(player, x, y, z, true, true, true)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifenoclip then
               local speed = 0.5
               local speedcar = _FiVe_SeNsE_.ThisIsSliders[109].value
               local speedbypass = 0.09
               local vehicleecheck = _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.PlayerPedId(), 0)
               local player = nil
               local x, y, z = nil
               local Camerax, Cameray, Cameraz = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetCameraDirection()
   
   
               if not vehicleecheck then
                   player = _FiVe_SeNsE_.n.PlayerPedId()
                   x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), 2))
               else
                   player = _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), 0)
                   x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), 1))
               end
               if vehicleecheck and _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetSeatPedIsIn(_FiVe_SeNsE_.n.PlayerPedId()) ~= -1 then
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(player)
               end
   
               if vehicleecheck and _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 32) and _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetSeatPedIsIn(_FiVe_SeNsE_.n.PlayerPedId()) ~= -1 then
                   x = x + speedbypass * speedcar * Camerax
                   y = y + speedbypass * speedcar * Cameray
                   z = z + speedbypass * speedcar * Cameraz
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(player)
               end
               if vehicleecheck and _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 269) and _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetSeatPedIsIn(_FiVe_SeNsE_.n.PlayerPedId()) ~= -1 then
                   x = x - speedbypass * speedcar * Camerax
                   y = y - speedbypass * speedcar * Cameray
                   z = z - speedbypass * speedcar * Cameraz
                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RequestControlOnce(player)
               end
   
               _FiVe_SeNsE_.n.SetEntityVisible(_FiVe_SeNsE_.n.PlayerPedId(), 0, 0)
               _FiVe_SeNsE_.n.SetEntityVisible(player, 0, 0)
               _FiVe_SeNsE_.n.SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 32) then
                   _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), true)
                   x = x + speedbypass * Camerax
                   y = y + speedbypass * Cameray
                   z = z + speedbypass * Cameraz
               end
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 269) then
                   _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), true)
                   x = x - speedbypass * Camerax
                   y = y - speedbypass * Cameray
                   z = z - speedbypass * Cameraz
               end
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 22) then
                   _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), true)
                   z = z + speed
               end
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 36) then
                   _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), true)
                   z = z - speed
               end
               _FiVe_SeNsE_.n.SetEntityCoordsNoOffset(player, x, y, z, true, true, true)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HudColor then 
               _FiVe_SeNsE_.n.ReplaceHudColourWithRgba(116, _FiVe_SeNsE_.ThisIsSliders[41].value, _FiVe_SeNsE_.ThisIsSliders[42].value, _FiVe_SeNsE_.ThisIsSliders[43].value, 255)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superRun then
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 34) or _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 33) or _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 32) or _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 35) then
                   if _FiVe_SeNsE_.n.IsPedRagdoll(p) then
                   else
                       _FiVe_SeNsE_.n.SetEntityVelocity(p, _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(p, 0.0, _FiVe_SeNsE_.ThisIsSliders[4].value, _FiVe_SeNsE_.n.GetEntityVelocity(p)[3]) - _FiVe_SeNsE_.n.GetEntityCoords(p))
                   end
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SilentKillHim then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               _FiVe_SeNsE_.n.HasNamedPtfxAssetLoaded("core")						
               _FiVe_SeNsE_.n.RequestNamedPtfxAsset("core")
               for i = 1, 20 do
                   _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("core")	
                   _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0,0,0,0)
                   _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0,0,0,0)
                   _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0,0,0,0)
                   _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0,0,0,0)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KillEveryone then
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                   local p = _FiVe_SeNsE_.n.GetPlayerPed(v)
                   local b = _FiVe_SeNsE_.n.GetEntityRotation(p)
                   local c = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(b)
                   local d = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), false)
                   local e = _FiVe_SeNsE_.n.GetEntityCoords(p, false)
                   local f = _FiVe_SeNsE_.n.GetPedBoneCoords(p, 31086, 0, 0, 0)
                   local g = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
                   if g <= 10000.0 then
                       local h = _FiVe_SeNsE_.n.IsEntityDead(p)
                       if not h then
                       _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 0.5, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_SMG'), _FiVe_SeNsE_.n.PlayerPedId(), false, true, 1)
                   end
               end
           end
       end
   
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.KillThePlayer then
               local p = _FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)
               local b = _FiVe_SeNsE_.n.GetEntityRotation(p)
               local c = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(b)
               local d = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), false)
               local e = _FiVe_SeNsE_.n.GetEntityCoords(p, false)
               local f = _FiVe_SeNsE_.n.GetPedBoneCoords(p, 31086, 0, 0, 0)
               local g = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
               if g <= 5000.0 then
                   local h = _FiVe_SeNsE_.n.IsEntityDead(p)
                   if not h then
                   _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 0.5, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_SMG'), _FiVe_SeNsE_.n.PlayerPedId(), false, true, 1)
               end
           end
       end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SilentKillAll then
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                   local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v))
                   _FiVe_SeNsE_.n.HasNamedPtfxAssetLoaded("core")						
                   _FiVe_SeNsE_.n.RequestNamedPtfxAsset("core")
                   for i = 1, 20 do
                       _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("core")	
                       _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0,0,0,0)
                       _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0,0,0,0)
                       _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0,0,0,0)
                       _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,0,0,0,0)
                   end
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tazeall then
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               local ped = _FiVe_SeNsE_.n.GetPlayerPed(v)
               local Coords = _FiVe_SeNsE_.n.GetEntityCoords(ped)
           
               local bonecoords = _FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
               local bonecoords_2 = _FiVe_SeNsE_.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
           
               _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(bonecoords_2,bonecoords,1,true,_FiVe_SeNsE_.n.GetHashKey("WEAPON_STUNGUN"),_FiVe_SeNsE_.n.PlayerPedId(v),true,false,1.0)
           end
       end
   
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CarSpamAll then
           for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v))
               local MassCars = {"sultanrs","blista","zentorno","adder","turismo","deviant","thrax","vamos",}
               local CrashCar = (MassCars[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#MassCars)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(CrashCar)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(CrashCar))
               end 
               for v = 1, 5 do 
                   local veh = _FiVe_SeNsE_.n.CreateVehicle(_FiVe_SeNsE_.n.GetHashKey(CrashCar), coord, 1, 1, 1)
                   _FiVe_SeNsE_.n.SetVehicleNumberPlateText(veh, "5-SENSE")
               end
           end
       end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ExplodeHim then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               _FiVe_SeNsE_.n.AddExplosion(coord, 7, 100.0, true, false, 1.0)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.autofix then
               _FiVe_SeNsE_.n.SetVehicleFixed(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false))
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CrashHim then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               local CrashingPeds = {
                   "a_m_m_acult_01",
                   "a_m_m_hasjew_01",
                   "a_m_m_hillbilly_01",
                   "a_m_m_tranvest_01",
                   "a_m_y_acult_02",
                   "mp_m_fibsec_01",
                   "mp_m_bogdangoon",
                   "mp_m_meth_01",
               }
               local crashpeds = (CrashingPeds[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#CrashingPeds)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(crashpeds)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(crashpeds))
               end 
               for i = 1, 5 do 
                   _FiVe_SeNsE_.n.CreatePed(3, _FiVe_SeNsE_.n.GetHashKey(crashpeds), coord, 1, 1, 1)
                   _FiVe_SeNsE_.n._ud_wait(10)
                 --  _FiVe_SeNsE_.n.DeleteEntity(CrashingPeds)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GangPull  then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               local pullp = {
                   "csb_ramp_gang",
                   "g_m_importexport_01",
                   "g_m_y_famca_01",
               }
               local gangn = (pullp[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#pullp)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(gangn)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(gangn))
               end 
               local spawngang = _FiVe_SeNsE_.n.CreatePed(3, _FiVe_SeNsE_.n.GetHashKey(gangn), coord, 1, 1, 1)
                   _FiVe_SeNsE_.n.SetEntityInvincible(spawngang, true)
                   _FiVe_SeNsE_.n.GiveWeaponToPed(spawngang, _FiVe_SeNsE_.n.GetHashKey("WEAPON_MICROSMG"), 200, 1, 1)
                   _FiVe_SeNsE_.n.TaskCombatPed(spawngang, _FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer), 0, 16)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MassObjSpawn then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               local objectshits = {
                   "apa_mp_h_stn_chairarm_02",
                   "apa_mp_h_stn_chairarm_03",
                   "apa_mp_h_kit_kitchen_01_a",
                   "apa_mp_h_str_avunitm_01",
                   "apa_prop_flag_czechrep",
                   "bkr_prop_biker_bblock_cor",
                   "bkr_prop_bkr_cashpile_07",
                   "bkr_prop_meth_chiller_01a",
                   "bkr_prop_prtmachine_dryer_spin",
               }
   
               local objectspawning = (objectshits[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#objectshits)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(objectspawning)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(objectspawning))
               end 
               for i = 1, 5 do 
                   _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(objectspawning), coord, true, true, true)
   
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MassCarSpawn then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               local MassCars = {
                   "sultanrs",
                   "blista",
                   "zentorno",
                   "adder",
                   "turismo",
                   "deviant",
                   "thrax",
                   "vamos",
               }
               local CrashCar = (MassCars[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#MassCars)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(CrashCar)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(CrashCar))
               end 
               for i = 1, 5 do 
                   local veh = _FiVe_SeNsE_.n.CreateVehicle(_FiVe_SeNsE_.n.GetHashKey(CrashCar), coord, 1, 1, 1)
                   _FiVe_SeNsE_.n.SetVehicleNumberPlateText(veh, "5-SENSE")
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Ihaterabbits then
   
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
   
               local rabittlol = "a_c_rabbit_01"
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(rabittlol)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(rabittlol))
               end 
               for i = 1, 400 do 
                   _FiVe_SeNsE_.n.CreatePed(21, _FiVe_SeNsE_.n.GetHashKey(rabittlol), coord, 1, 1, 1)
               end
           end
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RipAllPCs then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
   
               local thiswilldothings = {"a_c_rabbit_01","a_c_rat","a_c_westy","a_c_stingray","a_c_pug","a_c_poodle","a_c_hen","a_c_cormorant","a_c_pig","a_c_dolphin","a_c_deer","a_c_crow","a_c_boar","a_c_cat_01","a_c_chickenhawk","a_c_chimp","a_c_cow",}
               local objectshits = {"apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
               
               local haha2 = (objectshits[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#objectshits)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(haha2)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(haha2))
               end 
   
               local haha = (thiswilldothings[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#thiswilldothings)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(haha)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(haha))
               end 
               for i = 1, 5 do 
                   _FiVe_SeNsE_.n.CreatePed(21, _FiVe_SeNsE_.n.GetHashKey(haha), coord, 1, 1, 1)
                   _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(haha2), coord, true, true, true)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SpawnShitsOnPlayers then
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v))
               local thiswilldothings = {"a_c_rabbit_01","a_c_rat","a_c_westy","a_c_stingray","a_c_pug","a_c_poodle","a_c_hen","a_c_cormorant","a_c_pig","a_c_dolphin","a_c_deer","a_c_crow","a_c_boar","a_c_cat_01","a_c_chickenhawk","a_c_chimp","a_c_cow",}
               local objectshits = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
   
               local haha2 = (objectshits[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#objectshits)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(haha2)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(haha2))
               end 
   
               local haha = (thiswilldothings[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#thiswilldothings)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(haha)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(haha))
               end 
                   _FiVe_SeNsE_.n.CreatePed(21, _FiVe_SeNsE_.n.GetHashKey(haha), coord, 1, 1, 1)
                   _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(haha2), coord, true, true, true)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DisableWSAD then
               if _FiVe_SeNsE_.menu.open then
               _FiVe_SeNsE_.n.DisableControlAction(0, 32, false) -- W
               _FiVe_SeNsE_.n.DisableControlAction(0, 31, false) -- S
               _FiVe_SeNsE_.n.DisableControlAction(0, 30, false) -- D
               _FiVe_SeNsE_.n.DisableControlAction(0, 34, false) -- A
           end
       end
   
           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DestroyPlayer = function()
                   for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                   local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v))
                   local objectshits = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                   local SpawnProp = (objectshits[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#objectshits)])
                   for v = 1, 5 do
                   local SpawnPropd = _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(SpawnProp), coord, true, true, true)
                   _FiVe_SeNsE_.n.AttachEntityToEntity(SpawnPropd,v,_FiVe_SeNsE_.n.GetPedBoneIndex(v, 0),coord,true,true,false,true,1,true)
               end
           end
       end
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TrapPlayer = function()
           local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
           local prop = _FiVe_SeNsE_.n.GetHashKey("bkr_prop_bkr_cashpile_07")
           _FiVe_SeNsE_.n.CreateObject(prop, coord.x, coord.y, coord.z -0.5, true, true, true)
           _FiVe_SeNsE_.n.CreateObject(prop, coord.x, coord.y, coord.z +1, true, true, true)
           _FiVe_SeNsE_.n.CreateObject(prop, coord.x +0.5, coord.y +0.5, coord.z +0.5, true, true, true)
           _FiVe_SeNsE_.n.CreateObject(prop, coord.x -0.5, coord.y -0.5, coord.z +0.5, true, true, true)
       end
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TazePlayer = function()
               local ped = _FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)
               local Coords = _FiVe_SeNsE_.n.GetEntityCoords(ped)
           
               local bonecoords = _FiVe_SeNsE_.n.GetPedBoneCoords(ped, 23553, Coords)
               local bonecoords_2 = _FiVe_SeNsE_.n.GetPedBoneCoords(ped, 57005, Coords)
           
               _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(bonecoords_2,bonecoords,1,true,_FiVe_SeNsE_.n.GetHashKey("WEAPON_STUNGUN"),_FiVe_SeNsE_.n.PlayerPedId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer),true,false,1.0)
           end
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Recordporn = function()
           if not _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.GetPlayerPed(-1), true) then
   
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("csb_stripper_02")) then
   
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("csb_stripper_02")) 
   
               end
   
               local coords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), true)
   
               local ped = _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey("csb_stripper_02"), coords, 0.0, true, false)
   
               _FiVe_SeNsE_.n.SetEntityAsMissionEntity(ped, true, true)
   
               _FiVe_SeNsE_.n.AttachEntityToEntity(ped, _FiVe_SeNsE_.n.PlayerPedId(), 4103, 11816, 0.25, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
   
               _FiVe_SeNsE_.n.SetPedKeepTask(ped)
   
               _FiVe_SeNsE_.n.TaskPlayAnim(ped, "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
   
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("ig_lestercrest")) then
   
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("ig_lestercrest")) 
   
               end
               
               local cameraman = _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey("ig_lestercrest"), coords, 0.0, true, false)
   
               local coord = _FiVe_SeNsE_.n.GetPedBoneCoords(cameraman, 0xDEAD, 0.0, 0.0, 0.0)
   
               local object = _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey("prop"), coord.x, coord.y, coord.z, true, true, true)
   
               _FiVe_SeNsE_.n.AttachEntityToEntity(ped, _FiVe_SeNsE_.n.PlayerPedId(), 0xDEAD, 11816, 0.25, coord.x, coord.y, coord.z, 0.0, 0.0, false, false, false, false, 2, true)
   
               _FiVe_SeNsE_.n.SetEntityAsMissionEntity(ped, true, true)
   
               _FiVe_SeNsE_.n.AttachEntityToEntity(ped, _FiVe_SeNsE_.n.PlayerPedId(), 4103, 11816, 0.25, coords.x + 3, coords.y + 3, coords.z, 0.0, 0.0, false, false, false, false, 2, true)
   
               _FiVe_SeNsE_.n.SetPedKeepTask(ped)
   
               _FiVe_SeNsE_.n.TaskPlayAnim(ped, "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
   
           end 
       end
   
       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.tazeplayerlop then
               local ped = _FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)
               local Coords = _FiVe_SeNsE_.n.GetEntityCoords(ped)
           
               local bonecoords = _FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
               local bonecoords_2 = _FiVe_SeNsE_.n.GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
           
               _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(bonecoords_2,bonecoords,1,true,_FiVe_SeNsE_.n.GetHashKey("WEAPON_STUNGUN"),_FiVe_SeNsE_.n.PlayerPedId(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer),true,false,1.0)
           end
   
       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TrapPlayers = function()
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                   local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v))
                   local prop = _FiVe_SeNsE_.n.GetHashKey("bkr_prop_bkr_cashpile_07")
   
                   for v = 1, 5 do
                   _FiVe_SeNsE_.n.CreateObject(prop, coord.x, coord.y, coord.z -0.5, true, true, true)
                   _FiVe_SeNsE_.n.CreateObject(prop, coord.x, coord.y, coord.z +1, true, true, true)
                   _FiVe_SeNsE_.n.CreateObject(prop, coord.x, coord.y, coord.z -0.5, true, true, true)
                   _FiVe_SeNsE_.n.CreateObject(prop, coord.x, coord.y, coord.z +1, true, true, true)
                   _FiVe_SeNsE_.n.CreateObject(prop, coord.x +0.5, coord.y +0.5, coord.z +0.5, true, true, true)
                   _FiVe_SeNsE_.n.CreateObject(prop, coord.x -0.5, coord.y -0.5, coord.z +0.5, true, true, true)
                   _FiVe_SeNsE_.n.SetEntityAlpha(object, 0, false)
                   _FiVe_SeNsE_.n.SetEntityAlpha(object2, 0, false)
               end
           end
       end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.MuzAll then
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v))
               _FiVe_SeNsE_.n.RequestNamedPtfxAsset("scr_rcbarry2")
               _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("scr_rcbarry2")
               _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("muz_clown",coord.x,coord.y,coord.z,0.0,0.0,0.0,_FiVe_SeNsE_.ThisIsSliders[38].value,false,false,false)
           end
       end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.disablecars then 
               for _, ped in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do 
                   if _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.GetPlayerPed(ped), true) then
                       _FiVe_SeNsE_.n.ClearPedTasksImmediately(_FiVe_SeNsE_.n.GetPlayerPed(ped))
                   end
               end 
           end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.pedGun then 
               local ped = _FiVe_SeNsE_.n.PlayerPedId()
               local bullet, pos = _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord(ped)
               
               local models = {'a_m_m_eastsa_02','a_m_m_farmer_01','a_m_m_tranvest_01','a_m_y_beachvesp_01','a_m_y_epsilon_01','a_m_y_eastsa_02','a_m_y_musclbeac_01','a_m_y_soucent_03','a_m_y_salton_01','a_m_y_soucent_04','a_m_y_vinewood_01',}
               local model =_FiVe_SeNsE_.n.GetHashKey(models[_FiVe_SeNsE_.ThisIsSliders[83].value+1])
               if bullet then 
                   if not _FiVe_SeNsE_.n.HasModelLoaded(model) then 
                       _FiVe_SeNsE_.n.RequestModel(model)
                   end
                   for i = 0, _FiVe_SeNsE_.ThisIsSliders[84].value+1 do
                       ped = _FiVe_SeNsE_.n.CreatePed(2, model, pos.x, pos.y, pos.z, 1, 1, 1)
                   end
               end
           end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.disablewepaons then 
               for _, ped in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do 
                   if _FiVe_SeNsE_.n.IsPedShooting(_FiVe_SeNsE_.n.GetPlayerPed(ped))  then
                       _FiVe_SeNsE_.n.ClearPedTasksImmediately(_FiVe_SeNsE_.n.GetPlayerPed(ped))
                   end
               end 
           end
   
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ParticleSpam then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               _FiVe_SeNsE_.n.RequestNamedPtfxAsset("scr_ba_bomb")
               _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("scr_ba_bomb")
               _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_ba_bomb_destroy",coord.x,coord.y,coord.z,0.0,0.0,0.0,_FiVe_SeNsE_.ThisIsSliders[36].value,false,false,false)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ParticleSpam2 then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               _FiVe_SeNsE_.n.RequestNamedPtfxAsset("scr_rcbarry2")
               _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("scr_rcbarry2")
               _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",coord.x,coord.y,coord.z,0.0,0.0,0.0,_FiVe_SeNsE_.ThisIsSliders[37].value,false,false,false)
           end
               
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.muzparticle then
               local coord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               _FiVe_SeNsE_.n.RequestNamedPtfxAsset("scr_rcbarry2")
               _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("scr_rcbarry2")
               _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("muz_clown",coord.x,coord.y,coord.z,0.0,0.0,0.0,_FiVe_SeNsE_.ThisIsSliders[38].value,false,false,false)
           end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CopsIgnorePlayer then
               _FiVe_SeNsE_.n.SetPoliceIgnorePlayer(_FiVe_SeNsE_.n.PlayerId(), true)
           else
               _FiVe_SeNsE_.n.SetPoliceIgnorePlayer(_FiVe_SeNsE_.n.PlayerId(), false)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NoRagdoll then
               _FiVe_SeNsE_.n.SetPedCanRagdoll(_FiVe_SeNsE_.n.PlayerPedId(), false)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.semigodmode then 
               if _FiVe_SeNsE_.n.GetEntityHealth(_FiVe_SeNsE_.n.PlayerPedId()) > 120 then 
                   _FiVe_SeNsE_.n.SetEntityHealth(_FiVe_SeNsE_.n.PlayerPedId(), _FiVe_SeNsE_.n.GetEntityHealth(_FiVe_SeNsE_.n.PlayerPedId()) + 20)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.InfiniteStamina then
               _FiVe_SeNsE_.n.ResetPlayerStamina(_FiVe_SeNsE_.n.PlayerId())
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.AntiStungun then
               _FiVe_SeNsE_.n.SetPedCanRagdollFromPlayerImpact(_FiVe_SeNsE_.n.PlayerPedId(), false)
           end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.antiHeadshot then 
               _FiVe_SeNsE_.n.SetPedSuffersCriticalHits(_FiVe_SeNsE_.n.PlayerPedId(), (_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.antiHeadshot))
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.superjump then 
               _FiVe_SeNsE_.n.SetSuperJumpThisFrame(_FiVe_SeNsE_.n.PlayerId())
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.godmode then 
               _FiVe_SeNsE_.n.SetEntityProofs(_FiVe_SeNsE_.n.PlayerPedId(), true, true, true, true, true, true, true, true)
           elseif not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.godmode then 
               _FiVe_SeNsE_.n.SetEntityProofs(_FiVe_SeNsE_.n.PlayerPedId(), false, false, false, false, false, false, false, false)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.skel then 
               for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.skelplayers then 
                       mr = _FiVe_SeNsE_.n.IsPedAPlayer(ped)
                   else
                       mr = ped
                   end
                   if mr then 
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x9995, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x9995, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xE0FD, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x5C57, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xE0FD, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x192A, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xE0FD, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x3FCF, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x192A, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xCC4D, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x3FCF, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xB3FE, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x5C57, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xB3FE, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x3779, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x9995, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xB1C5, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xB1C5, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xEEEB, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xEEEB, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x49D9, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x9995, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x9D4D, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x9D4D, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x6E5C, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                       _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0x6E5C, 0.0, 0.0, 0.0),_FiVe_SeNsE_.n.GetPedBoneCoords(ped, 0xDEAD, 0.0, 0.0, 0.0),_FiVe_SeNsE_.ThisIsSliders[68].value, _FiVe_SeNsE_.ThisIsSliders[69].value, _FiVe_SeNsE_.ThisIsSliders[70].value, 255)
                   end
                   _FiVe_SeNsE_.n.SetEntityVisible(ped, false, false)
                   _FiVe_SeNsE_.n.SetEntityLocallyVisible(ped, true)
                   _FiVe_SeNsE_.n.SetEntityAlpha(ped, 190)
               end
           else
               for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   _FiVe_SeNsE_.n.SetEntityVisible(ped,true, true)
                   _FiVe_SeNsE_.n.SetEntityAlpha(ped, 255)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_invisible then 
               _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 31086),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x9995),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x9995),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xE0FD),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x5C57),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xE0FD),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x192A),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xE0FD),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x3FCF),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x192A),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xCC4D),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x3FCF),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xB3FE),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x5C57),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xB3FE),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x3779),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x9995),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xB1C5),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xB1C5),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xEEEB),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xEEEB),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x49D9),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x9995),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x9D4D),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x9D4D),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x6E5C),255,255,255,255)_FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0x6E5C),_FiVe_SeNsE_.n.GetPedBoneCoords(_FiVe_SeNsE_.n.PlayerPedId(), 0xDEAD),255,255,255,255)
               _FiVe_SeNsE_.n.SetEntityVisible(_FiVe_SeNsE_.n.PlayerPedId(), false, false)
               _FiVe_SeNsE_.n.SetEntityLocallyVisible(_FiVe_SeNsE_.n.PlayerPedId(), true)
               _FiVe_SeNsE_.n.SetEntityAlpha(_FiVe_SeNsE_.n.PlayerPedId(), 0)
           else
               _FiVe_SeNsE_.n.SetEntityVisible(_FiVe_SeNsE_.n.PlayerPedId(),true, true)
               _FiVe_SeNsE_.n.SetEntityAlpha(_FiVe_SeNsE_.n.PlayerPedId(), 255)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RemoveFog then
               _FiVe_SeNsE_.n.SetWeatherTypePersist("CLEAR")
               _FiVe_SeNsE_.n.SetWeatherTypeNowPersist("CLEAR")
               _FiVe_SeNsE_.n.SetWeatherTypeNow("CLEAR")
               _FiVe_SeNsE_.n.SetOverrideWeather("CLEAR")
               _FiVe_SeNsE_.n.SetTimecycleModifier("CS1_railwayB_tunnel")
           else
               _FiVe_SeNsE_.n.ClearTimecycleModifier()
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hideglifeid then
               --_FiVe_SeNsE_.n.DrawRect(0.04, 0.93, 0.20, 0.14, 70, 70, 70, 255)
               _FiVe_SeNsE_.n.DrawRect(1.0, 0.0, 0.20, 0.14, 70, 70, 70, 255)
           end
   
           --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.espoffwhileintsafezoneglife then
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.BoundingBox = false
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cornerBox = false
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Healthbar = false
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Armorbar = false
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.nametags = false
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.LineESP = false
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.holdingweapon = false
           else  
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.BoundingBox = true
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cornerBox = true
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Healthbar = true
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Armorbar = true
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.nametags = true
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.LineESP = true
               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.holdingweapon = true
           end]]
   
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewBounding then 
                       for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                           local coordXMin = _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(ped, 0, 0, 0.9)
                           local coordYPlus = _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.9)
                           local bool, screenX, screenY = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
                           local bool2, screenX2, screenY2 = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
                           local resX, resY = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                           local coord = _FiVe_SeNsE_.n.GetEntityCoords(ped)
                           local x, y, z = coord.x, coord.y, coord.z
                           local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), _FiVe_SeNsE_.n.GetEntityCoords(ped), false) 
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newboundincludeself then 
                               me = ped
                           else
                               me = ped ~= _FiVe_SeNsE_.n.PlayerPedId() 
                           end
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newboundplayers then 
                               mr = _FiVe_SeNsE_.n.IsPedAPlayer(ped)
                           else
                               mr = ped
                           end
                           if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                           if bool2 and bool and mr and me and not _FiVe_SeNsE_.n.IsEntityDead(ped) and _FiVe_SeNsE_.n.IsEntityOnScreen(ped) and not _FiVe_SeNsE_.menu.colorpicker then
                               _FiVe_SeNsE_.n.SetDrawOrigin(x, y, z, 0)
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisCheckBoundNew then 
                               if _FiVe_SeNsE_.n.HasEntityClearLosToEntity(_FiVe_SeNsE_.n.PlayerPedId(), ped, 19) then 
                                   local r, g, b = _FiVe_SeNsE_.ThisIsSliders[117].value, _FiVe_SeNsE_.ThisIsSliders[118].value, _FiVe_SeNsE_.ThisIsSliders[119].value
                               _FiVe_SeNsE_.n.DrawRect((screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2 / resY, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(-(screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2 / resY, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(0, (screenY - screenY2) / 2, ((screenY - screenY2) / 3.5) + 2 / resX, 3 / resY, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(0, -(screenY - screenY2) / 2, ((screenY - screenY2) / 3.5) + 2 / resX, 3 / resY, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect((screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(-(screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(0, (screenY - screenY2) / 2, (screenY - screenY2) / 3.5, 1 / resY, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(0, -(screenY - screenY2) / 2, (screenY - screenY2) / 3.5, 1 / resY, r, g, b, 255)
                               else
                                   local r, g, b = _FiVe_SeNsE_.ThisIsSliders[126].value, _FiVe_SeNsE_.ThisIsSliders[127].value, _FiVe_SeNsE_.ThisIsSliders[128].value 
                               _FiVe_SeNsE_.n.DrawRect((screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2 / resY, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(-(screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2 / resY, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(0, (screenY - screenY2) / 2, ((screenY - screenY2) / 3.5) + 2 / resX, 3 / resY, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(0, -(screenY - screenY2) / 2, ((screenY - screenY2) / 3.5) + 2 / resX, 3 / resY, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect((screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(-(screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(0, (screenY - screenY2) / 2, (screenY - screenY2) / 3.5, 1 / resY, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(0, -(screenY - screenY2) / 2, (screenY - screenY2) / 3.5, 1 / resY, r, g, b, 255)
                           end
                       else
                           local r, g, b = _FiVe_SeNsE_.ThisIsSliders[126].value, _FiVe_SeNsE_.ThisIsSliders[127].value, _FiVe_SeNsE_.ThisIsSliders[128].value 
                           _FiVe_SeNsE_.n.DrawRect((screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2 / resY, 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect(-(screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2 / resY, 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect(0, (screenY - screenY2) / 2, ((screenY - screenY2) / 3.5) + 2 / resX, 3 / resY, 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect(0, -(screenY - screenY2) / 2, ((screenY - screenY2) / 3.5) + 2 / resX, 3 / resY, 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect((screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect(-(screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect(0, (screenY - screenY2) / 2, (screenY - screenY2) / 3.5, 1 / resY, r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect(0, -(screenY - screenY2) / 2, (screenY - screenY2) / 3.5, 1 / resY, r, g, b, 255)
                       end
                       _FiVe_SeNsE_.n.ClearDrawOrigin()
                   end
               end
           end
       end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewHealthbar then 
               for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do 
                   local coordXMin = _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(ped, 0, 0, 0.9)
                   local coordYPlus = _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.9)
                   local bool, screenX, screenY = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
                   local bool2, screenX2, screenY2 = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
                   local resX, resY = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                   local coord = _FiVe_SeNsE_.n.GetEntityCoords(ped)
                   local x, y, z = coord.x, coord.y, coord.z
                   local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), _FiVe_SeNsE_.n.GetEntityCoords(ped), false) 
                   local r, g, b = _FiVe_SeNsE_.ThisIsSliders[120].value, _FiVe_SeNsE_.ThisIsSliders[121].value, _FiVe_SeNsE_.ThisIsSliders[122].value
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newhealthincludeself then 
                       me = ped
                   else
                       me = ped ~= _FiVe_SeNsE_.n.PlayerPedId() 
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newhealthplayers then 
                       mr = _FiVe_SeNsE_.n.IsPedAPlayer(ped)
                   else
                       mr = ped
                   end
                   if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                   if bool and bool2 and mr and me and not _FiVe_SeNsE_.n.IsEntityDead(ped) and _FiVe_SeNsE_.n.IsEntityOnScreen(ped) then
                       _FiVe_SeNsE_.n.SetDrawOrigin(x, y, z, 0)
                       local H = _FiVe_SeNsE_.n.GetEntityHealth(ped)-100
                       if H > (_FiVe_SeNsE_.n.GetEntityMaxHealth(ped)-100) then 
                           H = (_FiVe_SeNsE_.n.GetEntityMaxHealth(ped)-100) 
                       end
                       local NUM = (_FiVe_SeNsE_.n.GetEntityMaxHealth(ped)-100) / (screenY - screenY2)
                       _FiVe_SeNsE_.n.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0, 3 / resX, (screenY - screenY2)+(2 / resX), 0, 0, 0, 255)
                       _FiVe_SeNsE_.n.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0, 1 / resX, (screenY - screenY2), 0, 0, 0, 255)
                       _FiVe_SeNsE_.n.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0 - (screenY - screenY2)/2 + ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), r, g, b, 255)
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthbarTextNew then 
                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(H), (0 + (screenY - screenY2) / 7 - 4 / resX),  0 - (screenY - screenY2)/2 + ((H/NUM) - (1 / resX)), 0.2, true, 4, true)
                       end
                   end
                   _FiVe_SeNsE_.n.ClearDrawOrigin()
               end
           end
       end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.NewArmor then 
               for ped in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   local coordXMin = _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(ped, 0, 0, 0.9)
                   local coordYPlus = _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.9)
                   local bool, screenX, screenY = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
                   local bool2, screenX2, screenY2 = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
                   local resX, resY = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                   local coord = _FiVe_SeNsE_.n.GetEntityCoords(ped)
                   local x, y, z = coord.x, coord.y, coord.z
                   local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), _FiVe_SeNsE_.n.GetEntityCoords(ped), false) 
                   local r, g, b = _FiVe_SeNsE_.ThisIsSliders[123].value, _FiVe_SeNsE_.ThisIsSliders[124].value, _FiVe_SeNsE_.ThisIsSliders[125].value
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newarmorincludeself then 
                       me = ped
                   else
                       me = ped ~= _FiVe_SeNsE_.n.PlayerPedId() 
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.newarmorplayers then 
                       mr = _FiVe_SeNsE_.n.IsPedAPlayer(ped)
                   else
                       mr = ped
                   end
                   if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                   if bool and bool2 and mr and me and not _FiVe_SeNsE_.n.IsEntityDead(ped) and _FiVe_SeNsE_.n.IsEntityOnScreen(ped) then
                       _FiVe_SeNsE_.n.SetDrawOrigin(x, y, z, 0)
                       local ay = 1200
                       local A = _FiVe_SeNsE_.n.GetPedArmour(ped)
                       local NUM = 100/((screenY - screenY2)/3.5)
                       _FiVe_SeNsE_.n.DrawRect(0, (0 + -(screenY - screenY2) / 2 + 8 / resX), ((screenY - screenY2) / 3.5) + (2 / resX), 3 / resY, 1, 1, 1, 255)
                       _FiVe_SeNsE_.n.DrawRect(0, (0 + -(screenY - screenY2) / 2 + 8 / resX), (screenY - screenY2) / 3.5, 1 / resY, 1, 1, 1, 255)
                       _FiVe_SeNsE_.n.DrawRect(0 + (screenY - screenY2)/7 - ((A/NUM) - (1 / resX))/2, (0 + -(screenY - screenY2) / 2 + 8 / resX), (-1*(A/NUM))-(1 / resX) , 1 / resY, r, g, b, 255)
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorbarTextNew and _FiVe_SeNsE_.n.GetPedArmour(ped) ~= 0 then 
                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(_FiVe_SeNsE_.n.GetPedArmour(ped), 0 + (screenY - screenY2)/7 - ((A/NUM) - (1 / resX)), (0 + -(screenY - screenY2) / 2 + 8 / resX), 0.2, true, 4, true)
                       end
                   end
                   _FiVe_SeNsE_.n.ClearDrawOrigin()
               end
           end
       end
   
           --[[local ped = _FiVe_SeNsE_.n.PlayerPedId()
           local coordXMin = _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(ped, 0, 0, 1.002)
           local coordYPlus = _FiVe_SeNsE_.n.GetOffsetFromEntityInWorldCoords(ped, 0, 0, -1.002)
           local bool, screenX, screenY = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
           local bool, screenX2, screenY2 = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
           local resX, resY = _FiVe_SeNsE_.n.GetActiveScreenResolution()
           local coord = _FiVe_SeNsE_.n.GetEntityCoords(ped)
           local x, y, z = coord.x, coord.y, coord.z
   
           if bool then
               _FiVe_SeNsE_.n.SetDrawOrigin(x, y, z, 0)
   
               _FiVe_SeNsE_.n.DrawRect((screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2 / resY, 0, 0, 0, 255)
               _FiVe_SeNsE_.n.DrawRect(-(screenY - screenY2) / 7, 0, 3 / resX, (screenY - screenY2) + 2 / resY, 0, 0, 0, 255)
               _FiVe_SeNsE_.n.DrawRect(0, (screenY - screenY2) / 2, ((screenY - screenY2) / 3.5) + 2 / resX, 3 / resY, 0, 0, 0, 255)
               _FiVe_SeNsE_.n.DrawRect(0, -(screenY - screenY2) / 2, ((screenY - screenY2) / 3.5) + 2 / resX, 3 / resY, 0, 0, 0, 255)
   
               _FiVe_SeNsE_.n.DrawRect((screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, 255, 255, 255, 255)
               _FiVe_SeNsE_.n.DrawRect(-(screenY - screenY2) / 7, 0, 1 / resX, screenY - screenY2, 255, 255, 255, 255)
               _FiVe_SeNsE_.n.DrawRect(0, (screenY - screenY2) / 2, (screenY - screenY2) / 3.5, 1 / resY, 255, 255, 255, 255)
               _FiVe_SeNsE_.n.DrawRect(0, -(screenY - screenY2) / 2, (screenY - screenY2) / 3.5, 1 / resY, 255, 255, 255, 255)
   
               local H = _FiVe_SeNsE_.n.GetEntityHealth(ped)-100
               if H > (_FiVe_SeNsE_.n.GetEntityMaxHealth(ped)-100) then H = (_FiVe_SeNsE_.n.GetEntityMaxHealth(ped)-100) end
               local NUM = (_FiVe_SeNsE_.n.GetEntityMaxHealth(ped)-100) / (screenY - screenY2)
               _FiVe_SeNsE_.n.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0, 3 / resX, (screenY - screenY2)+(2 / resX), 0, 0, 0, 255)
               _FiVe_SeNsE_.n.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0, 1 / resX, (screenY - screenY2), 0, 0, 0, 255)
               _FiVe_SeNsE_.n.DrawRect((0 + (screenY - screenY2) / 7 - 4 / resX), 0 - (screenY - screenY2)/2 + ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), 1, 255, 1, 255)
   
               local H = _FiVe_SeNsE_.n.GetPedArmour(ped)
               local NUM = 100/((screenY - screenY2)/3.5)
               _FiVe_SeNsE_.n.DrawRect(0, (0 + -(screenY - screenY2) / 2 + 8 / resX), ((screenY - screenY2) / 3.5) + (2 / resX), 3 / resY, 1, 1, 1, 255)
               _FiVe_SeNsE_.n.DrawRect(0, (0 + -(screenY - screenY2) / 2 + 8 / resX), (screenY - screenY2) / 3.5, 1 / resY, 1, 1, 1, 255)
               _FiVe_SeNsE_.n.DrawRect(0 + (screenY - screenY2)/7 - ((H/NUM) - (1 / resX))/2, (0 + -(screenY - screenY2) / 2 + 8 / resX), (-1*(H/NUM))-(1 / resX) , 1 / resY, 1, 1, 255, 255)
   
               _FiVe_SeNsE_.n.ClearDrawOrigin()
           end
           ]]
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbags then
               for v in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateObjects() do
                   local myCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
                   local getlootbag = _FiVe_SeNsE_.n.GetEntityCoords(v)
                   local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(v))
                   local r, g, b = _FiVe_SeNsE_.ThisIsSliders[89].value, _FiVe_SeNsE_.ThisIsSliders[90].value, _FiVe_SeNsE_.ThisIsSliders[91].value
                   local dist = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()), _FiVe_SeNsE_.n.GetEntityCoords(v), false) 
                   local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), _FiVe_SeNsE_.n.GetEntityCoords(v), false) 
                   local X, Y = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                   if _FiVe_SeNsE_.n.GetEntityModel(v) == 1234788901 then
                       local distance = #(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(myCoords) - _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(getlootbag))
                       if distance < _FiVe_SeNsE_.ThisIsSliders[48].value then 
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagstext then
                                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D(x, y, z, "Lootbag (" .. _FiVe_SeNsE_._shit_ThisMathematicShit._ud_ceil(dist).. "m)", r, g, b, 255)
                               end
                               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagsbox then
                                   _FiVe_SeNsE_.n.SetDrawOrigin(x, y, z, 0)
                                   _FiVe_SeNsE_.n.DrawRect(0 - (0.3/2)/d, 0, 1/X, (0.3*1.8)/d, r, g, b, 255)
                                   _FiVe_SeNsE_.n.DrawRect(0 + (0.3/2)/d, 0, 1/X, (0.3*1.8)/d, r, g, b, 255)
                                   _FiVe_SeNsE_.n.DrawRect(0, 0 - (((0.3*1.8)/2))/d, (0.3)/d, 1/Y, r, g, b, 255)
                                   _FiVe_SeNsE_.n.DrawRect(0, 0 + ((0.3*1.8)/2)/d, (0.3)/d, 1/Y, r, g, b, 255)
                                   _FiVe_SeNsE_.n.ClearDrawOrigin()
                               end
                               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifelootbagslines then
                                   _FiVe_SeNsE_.n.DrawLine(myCoords, getlootbag, r, g, b, 255)
                               end
                           end
                       end
                   end
               end
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenrator then
                   for v in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateObjects() do
                       local myCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
                       local getgenerator = _FiVe_SeNsE_.n.GetEntityCoords(v)
                       local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(v))
                       local r, g, b = _FiVe_SeNsE_.ThisIsSliders[94].value, _FiVe_SeNsE_.ThisIsSliders[95].value, _FiVe_SeNsE_.ThisIsSliders[96].value
                       local dist = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()), _FiVe_SeNsE_.n.GetEntityCoords(v), false) 
                       local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), _FiVe_SeNsE_.n.GetEntityCoords(v), false) 
                       local X, Y = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                       if _FiVe_SeNsE_.n.GetEntityModel(v) == -993191322 then
                           local distance = #(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(myCoords) - _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(getgenerator))
                           if distance < _FiVe_SeNsE_.ThisIsSliders[48].value then 
                               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratortext then
                                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D(x, y, z, "Generator (" .. _FiVe_SeNsE_._shit_ThisMathematicShit._ud_ceil(dist).. "m)", r, g, b, 255)
                                   end
                                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratorbox then
                                       _FiVe_SeNsE_.n.SetDrawOrigin(x, y, z, 0)
                                       _FiVe_SeNsE_.n.DrawRect(0 - (0.3/2)/d, 0, 1/X, (0.3*1.8)/d, r, g, b, 255)
                                       _FiVe_SeNsE_.n.DrawRect(0 + (0.3/2)/d, 0, 1/X, (0.3*1.8)/d, r, g, b, 255)
                                       _FiVe_SeNsE_.n.DrawRect(0, 0 - (((0.3*1.8)/2))/d, (0.3)/d, 1/Y, r, g, b, 255)
                                       _FiVe_SeNsE_.n.DrawRect(0, 0 + ((0.3*1.8)/2)/d, (0.3)/d, 1/Y, r, g, b, 255)
                                       _FiVe_SeNsE_.n.ClearDrawOrigin()
                                   end
                                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifegenratorlines then
                                       _FiVe_SeNsE_.n.DrawLine(myCoords, getgenerator, r, g, b, 255)
                                   end
                               end
                           end
                       end
                   end
   
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydrop then
                       for v in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateObjects() do
                           local myCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
                           local getsupply = _FiVe_SeNsE_.n.GetEntityCoords(v)
                           local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(v))
                           local r, g, b = _FiVe_SeNsE_.ThisIsSliders[97].value, _FiVe_SeNsE_.ThisIsSliders[98].value, _FiVe_SeNsE_.ThisIsSliders[99].value
                           local dist = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()), _FiVe_SeNsE_.n.GetEntityCoords(v), false) 
                           local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), _FiVe_SeNsE_.n.GetEntityCoords(v), false) 
                           local X, Y = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                           if _FiVe_SeNsE_.n.GetEntityModel(v) == 754816039 and _FiVe_SeNsE_.n.GetEntityModel(v) == 140790497 then
                               local distance = #(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(myCoords) - _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(getsupply))
                               if distance < _FiVe_SeNsE_.ThisIsSliders[48].value then 
                                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydroptext then
                                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D(x, y, z, "Supply Drop (" .. _FiVe_SeNsE_._shit_ThisMathematicShit._ud_ceil(dist).. "m)", r, g, b, 255)
                                       end
                                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydropbox then
                                           _FiVe_SeNsE_.n.SetDrawOrigin(x, y, z, 0)
                                           _FiVe_SeNsE_.n.DrawRect(0 - (0.3/2)/d, 0, 1/X, (0.3*1.8)/d, r, g, b, 255)
                                           _FiVe_SeNsE_.n.DrawRect(0 + (0.3/2)/d, 0, 1/X, (0.3*1.8)/d, r, g, b, 255)
                                           _FiVe_SeNsE_.n.DrawRect(0, 0 - (((0.3*1.8)/2))/d, (0.3)/d, 1/Y, r, g, b, 255)
                                           _FiVe_SeNsE_.n.DrawRect(0, 0 + ((0.3*1.8)/2)/d, (0.3)/d, 1/Y, r, g, b, 255)
                                           _FiVe_SeNsE_.n.ClearDrawOrigin()
                                       end
                                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glifesupplydroplines then
                                           _FiVe_SeNsE_.n.DrawLine(myCoords, getsupply, r, g, b, 255)
                                       end
                                   end
                               end
                           end
                       end
   
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.LineESP then
                           for i = 1, 255 do
                               if i ~= _FiVe_SeNsE_.n.PlayerId() and _FiVe_SeNsE_.n.GetActivePlayers() and _FiVe_SeNsE_.n.GetPlayerServerId(i) ~= 0 then
                                   local myped = _FiVe_SeNsE_.n.GetPlayerPed(i)
                                   local Selfx, Selfy, Selfz = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()))
                                   local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(myped))
                                   local distance = #(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(Selfx, Selfy, Selfz) - _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(x, y, z))
                                   if distance < _FiVe_SeNsE_.ThisIsSliders[48].value then
                                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischecklineesp then
                                           if _FiVe_SeNsE_.n.HasEntityClearLosToEntity(_FiVe_SeNsE_.n.PlayerPedId(), myped, 19) then 
                                              local r, g, b = _FiVe_SeNsE_.ThisIsSliders[106].value, _FiVe_SeNsE_.ThisIsSliders[107].value, _FiVe_SeNsE_.ThisIsSliders[108].value             
                                              _FiVe_SeNsE_.n.DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                                           else
                                               local r, g, b = _FiVe_SeNsE_.ThisIsSliders[56].value, _FiVe_SeNsE_.ThisIsSliders[57].value, _FiVe_SeNsE_.ThisIsSliders[58].value
                                               _FiVe_SeNsE_.n.DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                                           end
                                       else
                                           local r, g, b = _FiVe_SeNsE_.ThisIsSliders[56].value, _FiVe_SeNsE_.ThisIsSliders[57].value, _FiVe_SeNsE_.ThisIsSliders[58].value
                                           _FiVe_SeNsE_.n.DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                                       end
                                   end
                               end
                           end       
                       end
   
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.nametags then
                   for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                       if _FiVe_SeNsE_.n.GetPlayerPed(v) ~= _FiVe_SeNsE_.n.GetPlayerPed(-1) then
                           local x1, y1, z1 = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), true) )
                           local x2, y2, z2 = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v), true) )
                           local distance = #(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(x1, y1, z1) - _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(x2, y2, z2))
                           local r, g, b = _FiVe_SeNsE_.ThisIsSliders[74].value, _FiVe_SeNsE_.ThisIsSliders[75].value, _FiVe_SeNsE_.ThisIsSliders[76].value
                           if distance < _FiVe_SeNsE_.ThisIsSliders[48].value then
                               if _FiVe_SeNsE_.n.NetworkIsPlayerTalking(v) then
                                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D(x2, y2, z2 + 1.35, "<FONT COLOR='#8dbc26'>".. _FiVe_SeNsE_.n.GetPlayerName(v) ..' ['.. _FiVe_SeNsE_.n.GetPlayerServerId(v) ..']', r, g, b, 255)
                               else
                                   _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D(x2, y2, z2 + 1.35, _FiVe_SeNsE_.n.GetPlayerName(v) ..' ['.. _FiVe_SeNsE_.n.GetPlayerServerId(v) ..']', r, g, b, 255)
                               end
                           end
                       end 
                   end
               end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.holdingweapon then
               local plist = _FiVe_SeNsE_.n.GetActivePlayers()
               for i = 1, #plist do
                   local id = plist[i]
                   if _FiVe_SeNsE_.n.GetPlayerPed(id) ~= _FiVe_SeNsE_.n.PlayerPedId() then
                       local _, weaponhash = _FiVe_SeNsE_.n.GetCurrentPedWeapon(_FiVe_SeNsE_.n.GetPlayerPed(plist[i]), true)
                       local hweapon = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.WepFromHash(weaponhash)
                       local hweaponglife = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.WepFromHashGlife(weaponhash)
                       local x1, y1, z1 = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), true) )
                       local x2, y2, z2 = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(id), true) )
                       local distance = #(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(x1, y1, z1) - _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(x2, y2, z2))
                       local r, g, b = _FiVe_SeNsE_.ThisIsSliders[77].value, _FiVe_SeNsE_.ThisIsSliders[78].value, _FiVe_SeNsE_.ThisIsSliders[79].value 
                       if hweapon == nil then 
                           hweapon = "Fists" 
                       end
                       if hweaponglife == nil then
                           hweaponglife = "Unknown"
                       end
               
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.textweaponesp then 
                           if distance < _FiVe_SeNsE_.ThisIsSliders[48].value then	
                               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D(x2, y2, z2 - 1.0, ""..  _FiVe_SeNsE_._shitlol_ThisStringShit._ud_upper(hweapon), r, g, b, 255)
                           end
                       end
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.textweaponespGlife then 
                           if distance < _FiVe_SeNsE_.ThisIsSliders[48].value then	
                               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D(x2, y2, z2 - 1.0, ""..  _FiVe_SeNsE_._shitlol_ThisStringShit._ud_upper(hweaponglife), r, g, b, 255)
                           end
                       end
                   end
               end
           end
   
           --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Distance then
               local plist = _FiVe_SeNsE_.n.GetActivePlayers()
               for i = 1, #plist do
                   local id = plist[i]
                   if _FiVe_SeNsE_.n.GetPlayerPed(id) ~= _FiVe_SeNsE_.n.PlayerPedId() then
                       local playercoord = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(plist[i]))
                       local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(id), true) )
                       local dist = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()), _FiVe_SeNsE_.n.GetPlayerPed(id), false) 
                       local distance =  _FiVe_SeNsE_.n.GetDistanceBetweenCoords( _FiVe_SeNsE_.n.GetEntityCoords( _FiVe_SeNsE_.n.PlayerPedId(id)), playercoord)
                       local r, g, b = _FiVe_SeNsE_.ThisIsSliders[80].value, _FiVe_SeNsE_.ThisIsSliders[81].value, _FiVe_SeNsE_.ThisIsSliders[82].value 
                       if distance < _FiVe_SeNsE_.ThisIsSliders[48].value then	
                           _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText3D(x + 2.5, y, z + 1.35, "(".. _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(dist).."m)", r, g, b, 255)
                       end
                   end
               end
           end]]
           
   
           --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicleESP  then
               for v in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateVehicles() do
                   if _FiVe_SeNsE_.n.IsEntityOnScreen(v) then 
                       _FiVe_SeNsE_.n.SetDrawOrigin(_FiVe_SeNsE_.n.GetEntityCoords(v))
                       local dist = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()), _FiVe_SeNsE_.n.GetEntityCoords(v), false) 
                       local veh = _FiVe_SeNsE_.n.GetDisplayNameFromVehicleModel(_FiVe_SeNsE_.n.GetEntityModel(v))
                       if veh == "CARNOTFOUND" then
                       return "Nope"
                       end]]
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vehicleLine then
                           for v in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateVehicles() do 
                           _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId()), _FiVe_SeNsE_.n.GetEntityCoords(v), _FiVe_SeNsE_.ThisIsSliders[62].value, _FiVe_SeNsE_.ThisIsSliders[63].value, _FiVe_SeNsE_.ThisIsSliders[64].value, 255)
                       --[[_FiVe_SeNsE_.n.SetTextColour(_FiVe_SeNsE_.ThisIsSliders[59].value, _FiVe_SeNsE_.ThisIsSliders[60].value, _FiVe_SeNsE_.ThisIsSliders[61].value, 255)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText("".. _FiVe_SeNsE_._shitlol_ThisStringShit._ud_lower(veh) .. " (".. _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(dist).. "m)", 0, 0, 0.15, true, 0, true)
                       _FiVe_SeNsE_.n.ClearDrawOrigin()
                   end]]
               end
           end
   
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.customRotation then
               local dx, dy, dz = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetCameraDirection()
               if dx < 0 then dx = dx - 3.0 end; 
               if dy < 0 then dy = dy - 3.0 end; 
               if dy > 0 then dy = dy + 3.0 end; 
               if dx > 0 then dx = dx + 3.0 end; 
               local player = _FiVe_SeNsE_.n.PlayerPedId()
               local pitch, roll, yaw = _FiVe_SeNsE_.ThisIsSliders[71].value, _FiVe_SeNsE_.ThisIsSliders[72].value, _FiVe_SeNsE_.ThisIsSliders[73].value
               _FiVe_SeNsE_.n.SetEntityRotation(player, pitch, roll, yaw, true)
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 32) then
                   _FiVe_SeNsE_.n.SetEntityVelocity(player, dx, dy, -0.250)
               end
           end
   
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.spinbot then
               local dx, dy, dz = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetCameraDirection()
               if dx < 0 then dx = dx - 3.0 end; 
               if dx > 0 then dx = dx + 3.0 end; 
               if dy < 0 then  dy = dy - 3.0 end; 
               if dy > 0 then dy = dy + 3.0 end; 
               local player = _FiVe_SeNsE_.n.PlayerPedId()
               local rotation = _FiVe_SeNsE_.n.GetEntityRotation(player)
               _FiVe_SeNsE_.n.SetEntityRotation(player, 0.0, 0.0, _FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(0, 360)+0.0, true)
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 32) then
                   _FiVe_SeNsE_.n.SetEntityVelocity(player, dx, dy, -0.250)
               end 
              end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.upsideDown then
               local dx, dy, dz = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GetCameraDirection()
               if dx < 0 then dx = dx - 3.0 end; 
               if dx > 0 then dx = dx + 3.0 end; 
               if dy < 0 then  dy = dy - 3.0 end; 
               if dy > 0 then dy = dy + 3.0 end; 
               local player = _FiVe_SeNsE_.n.PlayerPedId()
               _FiVe_SeNsE_.n.SetEntityRotation(player, 180.0, 0.0, 0.0, true)
               if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 32) then
                   _FiVe_SeNsE_.n.SetEntityVelocity(player, dx, dy, -0.250)
               end 
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.cornerBox then 
               --for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               for p in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   local X, Y = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                   --local p = _FiVe_SeNsE_.n.GetPlayerPed(v)
                   local c = _FiVe_SeNsE_.n.GetEntityCoords(p)
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CORNERincludeself then 
                       me = p
                   else
                       me = p ~= _FiVe_SeNsE_.n.PlayerPedId() 
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.CORNERplayers then 
                       mr = _FiVe_SeNsE_.n.IsPedAPlayer(p)
                   else
                       mr = p
                   end
                   local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), c.x, c.y, c.z, true) * (1.1 - _FiVe_SeNsE_.ThisIsSliders[19].value)
                   if _FiVe_SeNsE_.n.IsEntityOnScreen(p) then
                       if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                       if me and mr and not _FiVe_SeNsE_.n.IsEntityDead(p) and not _FiVe_SeNsE_.menu.colorpicker then 
                           _FiVe_SeNsE_.n.SetDrawOrigin(c.x, c.y, c.z, 0)
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FillCorner then
                               _FiVe_SeNsE_.n.DrawRect(0.0, 0.0, (1075.2/X)/d, (2376/Y)/d, 0, 0, 0, _FiVe_SeNsE_.ThisIsSliders[85].value)
                           end
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckcorner then 
                           if _FiVe_SeNsE_.n.HasEntityClearLosToEntity(_FiVe_SeNsE_.n.PlayerPedId(), p, 19) then 
                               local r, g, b = _FiVe_SeNsE_.ThisIsSliders[103].value, _FiVe_SeNsE_.ThisIsSliders[104].value, _FiVe_SeNsE_.ThisIsSliders[105].value
                               _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, (-935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, (935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, (-935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, (935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
   
                               _FiVe_SeNsE_.n.DrawRect(((290+150/2)/X)/d, (1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(((-290-150/2)/X)/d, (1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(((290+150/2)/X)/d, (-1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(((-290-150/2)/X)/d, (-1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                           else
                               local r, g, b = _FiVe_SeNsE_.ThisIsSliders[86].value, _FiVe_SeNsE_.ThisIsSliders[87].value, _FiVe_SeNsE_.ThisIsSliders[88].value
                               _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, (-935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, (935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, (-935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, (935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
   
                               _FiVe_SeNsE_.n.DrawRect(((290+150/2)/X)/d, (1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(((-290-150/2)/X)/d, (1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(((290+150/2)/X)/d, (-1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(((-290-150/2)/X)/d, (-1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                           end
                       else
                           local r, g, b = _FiVe_SeNsE_.ThisIsSliders[86].value, _FiVe_SeNsE_.ThisIsSliders[87].value, _FiVe_SeNsE_.ThisIsSliders[88].value
                           _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, (-935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, (935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, (-935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, (935.6/Y)/d, (1/X),((500)/Y)/d, r, g, b, 255)
   
                           _FiVe_SeNsE_.n.DrawRect(((290+150/2)/X)/d, (1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect(((-290-150/2)/X)/d, (1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect(((290+150/2)/X)/d, (-1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect(((-290-150/2)/X)/d, (-1190.6/Y)/d, (350/X)/d,((1)/Y), r, g, b, 255)					
                       end
                           _FiVe_SeNsE_.n.ClearDrawOrigin()
                       end
                   end
               end
           end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.BoundingBox then 
               --for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               for p in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   local X, Y = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                   --local p = _FiVe_SeNsE_.n.GetPlayerPed(v)
                   local c = _FiVe_SeNsE_.n.GetEntityCoords(p)
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundincludeself then 
                       me = p
                   else
                       me = p ~= _FiVe_SeNsE_.n.PlayerPedId() 
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundingplayers then 
                       mr = _FiVe_SeNsE_.n.IsPedAPlayer(p)
                   else
                       mr = p
                   end
                   local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), c.x, c.y, c.z, true) * (1.1 - (_FiVe_SeNsE_.ThisIsSliders[19].value))
                   if _FiVe_SeNsE_.n.IsEntityOnScreen(p) then
                       if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                       if me and mr and not _FiVe_SeNsE_.n.IsEntityDead(p) and not _FiVe_SeNsE_.menu.colorpicker then 
                           _FiVe_SeNsE_.n.SetDrawOrigin(c.x, c.y, c.z, 0)
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.FillBoundingBox then
                               _FiVe_SeNsE_.n.DrawRect(0.0, 0.0, (1075.2/X)/d, (2376/Y)/d, 0, 0, 0, _FiVe_SeNsE_.ThisIsSliders[12].value)
                           end
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.VisCheckBound then 
                           if _FiVe_SeNsE_.n.HasEntityClearLosToEntity(_FiVe_SeNsE_.n.PlayerPedId(), p, 19) then 
                               local r, g, b = _FiVe_SeNsE_.ThisIsSliders[100].value, _FiVe_SeNsE_.ThisIsSliders[101].value, _FiVe_SeNsE_.ThisIsSliders[102].value
                               _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), r, g, b, 255)
                           else
                               local r, g, b = _FiVe_SeNsE_.ThisIsSliders[13].value, _FiVe_SeNsE_.ThisIsSliders[14].value, _FiVe_SeNsE_.ThisIsSliders[15].value
                               _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                               _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), r, g, b, 255)
                               _FiVe_SeNsE_.n.DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), r, g, b, 255)	
                           end
                       else
                           local r, g, b = _FiVe_SeNsE_.ThisIsSliders[13].value, _FiVe_SeNsE_.ThisIsSliders[14].value, _FiVe_SeNsE_.ThisIsSliders[15].value
                           _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, 0.0, (3/X),((2379)/Y)/d, 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect(0.0, (-1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect(0.0, (1187/Y)/d, ((1078.2)/X)/d, (3/Y), 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect((-537.6/X)/d, 0.0, (1/X), (2376/Y)/d, r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect((537.6/X)/d, 0.0, (1/X), (2376/Y)/d, r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect(0.0, (-1187/Y)/d, (1076.2/X)/d, (1/Y), r, g, b, 255)
                           _FiVe_SeNsE_.n.DrawRect(0.0, (1187/Y)/d, (1076.2/X)/d, (1/Y), r, g, b, 255)					
                       end
                       
                           _FiVe_SeNsE_.n.ClearDrawOrigin()
                       end
                   end
               end
           end
       end
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glowESP then
               for p in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do 
                   local color = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.rgb(2.5)
                   local range = _FiVe_SeNsE_.ThisIsSliders[92].value
                   local me = p ~= _FiVe_SeNsE_.n.PlayerPedId() 
                   local c = _FiVe_SeNsE_.n.GetEntityCoords(p)
                   local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), c.x, c.y, c.z, true) * (1.1 - _FiVe_SeNsE_.ThisIsSliders[19].value)
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.rgbglow then 
                       r, g, b = color.r, color.g, color.b
                   else
                       r, g, b = _FiVe_SeNsE_.ThisIsSliders[65].value, _FiVe_SeNsE_.ThisIsSliders[66].value, _FiVe_SeNsE_.ThisIsSliders[67].value
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.glowplayers then 
                       mr = _FiVe_SeNsE_.n.IsPedAPlayer(p)
                   else
                       mr = p
                   end
                   if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                   if me and mr then 
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ambientGlow(p, r, g, b, range, 180.0)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ambientGlowlegs(p, r, g, b, 0.1, 200.0)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ambientGlowwhite(p, 255, 255, 255, 0.1, 180.0)
                   end
               end
           end
       end
       
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Chams then
                   for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                       for car in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateVehicles() do
                       local p = _FiVe_SeNsE_.n.GetPlayerPed(v)
                       local c = _FiVe_SeNsE_.n.GetEntityCoords(p)
                       local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), c.x, c.y, c.z, true) * (1.1 - _FiVe_SeNsE_.ThisIsSliders[19].value)
                       local vehcheck = _FiVe_SeNsE_.n.IsPedInAnyVehicle(p, true)
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundincludeself then 
                           me = p
                       else
                           me = p ~= _FiVe_SeNsE_.n.PlayerPedId() 
                       end
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.boundingplayers then 
                           mr = _FiVe_SeNsE_.n.IsPedAPlayer(p)
                       else
                           mr = p
                       end
                       if _FiVe_SeNsE_.n.IsEntityOnScreen(p) then
                       if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                       if me and mr and not _FiVe_SeNsE_.n.IsEntityDead(p) and not _FiVe_SeNsE_.menu.colorpicker then 
                       if vehcheck then
                           _FiVe_SeNsE_.n.SetEntityAlpha(car, 190)
                       end
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckchams then
                           if _FiVe_SeNsE_.n.HasEntityClearLosToEntity(_FiVe_SeNsE_.n.PlayerPedId(), p, 19) then 
                       local r, g, b = _FiVe_SeNsE_.ThisIsSliders[113].value, _FiVe_SeNsE_.ThisIsSliders[114].value, _FiVe_SeNsE_.ThisIsSliders[115].value
                       local a = _FiVe_SeNsE_.ThisIsSliders[116].value
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 31086, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 1.5, r, g, b, a + 50, false, false, 2, 0.0, 0.0, true, true)
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 23553, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true)
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 46078, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true)
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 16335, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true) 
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 14201, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.2, r, g, b, a, false, false, 2, 0.0, 0.0, true, true)
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 52301, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.2, r, g, b, a, false, false, 2, 0.0, 0.0, true, true)
                       else
                           local a = _FiVe_SeNsE_.ThisIsSliders[116].value
                           local r, g, b = _FiVe_SeNsE_.ThisIsSliders[110].value, _FiVe_SeNsE_.ThisIsSliders[111].value, _FiVe_SeNsE_.ThisIsSliders[112].value
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 31086, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 1.5, r, g, b, a + 50, false, false, 2, 0.0, 0.0, true, true)
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 23553, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true)                 
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 46078, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true)
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 16335, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true) 
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 14201, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.2, r, g, b, a, false, false, 2, 0.0, 0.0, true, true)
                           _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 52301, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.2, r, g, b, a, false, false, 2, 0.0, 0.0, true, true)
                       end
                           else
                               local a = _FiVe_SeNsE_.ThisIsSliders[116].value
                               local r, g, b = _FiVe_SeNsE_.ThisIsSliders[110].value, _FiVe_SeNsE_.ThisIsSliders[111].value, _FiVe_SeNsE_.ThisIsSliders[112].value
                               _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 31086, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 1.5, r, g, b, a + 50, false, false, 2, 0.0, 0.0, true, true) 
                               _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 23553, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true)
                               _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 46078, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true)
                               _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 16335, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.3, r, g, b, a - 20, false, false, 2, 0.0, 0.0, true, true)                
                               _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 14201, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.2, r, g, b, a, false, false, 2, 0.0, 0.0, true, true)
                               _FiVe_SeNsE_.n.DrawMarker(28, _FiVe_SeNsE_.n.GetPedBoneCoords(p, 52301, 0.0, 0.0, 0.0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.2, r, g, b, a, false, false, 2, 0.0, 0.0, true, true)
                           end
                       end
                   end
               end
           end
       end
   end
   
   
                       
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.testingnewglow then
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                   local ped = _FiVe_SeNsE_.n.GetPlayerPed(v)
                   local x,y,z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(ped))
                   _FiVe_SeNsE_.n.RenderFakePickupGlow(x, y, z, 0)
                 end
               end
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Healthbar then 
               --for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               for p in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   local X, Y = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                   --local p = _FiVe_SeNsE_.n.GetPlayerPed(v)
                   local c = _FiVe_SeNsE_.n.GetEntityCoords(p)
                   local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), c.x, c.y, c.z, true) * (1.1 - _FiVe_SeNsE_.ThisIsSliders[19].value)
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.healthincludeself then 
                       me = p
                   else
                       me = p ~= _FiVe_SeNsE_.n.PlayerPedId() 
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.healthplayers then 
                       mr = _FiVe_SeNsE_.n.IsPedAPlayer(p)
                   else
                       mr = p
                   end
                   if _FiVe_SeNsE_.n.IsEntityOnScreen(p) then
                       if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                       if me and mr and not _FiVe_SeNsE_.n.IsEntityDead(p) and not _FiVe_SeNsE_.menu.colorpicker then 
                           _FiVe_SeNsE_.n.SetDrawOrigin(c.x, c.y, c.z, 0)
                           local H = _FiVe_SeNsE_.n.GetEntityHealth(p)-100
                           local W = 2375
                           local NUM = (_FiVe_SeNsE_.n.GetEntityMaxHealth(p)-100) / W
                           if H < -1 then 
                               H = 0
                           end
                           if H > (_FiVe_SeNsE_.n.GetEntityMaxHealth(p) - 100) then 
                               H = (_FiVe_SeNsE_.n.GetEntityMaxHealth(p) - 100) 
                           end
                           _FiVe_SeNsE_.n.DrawRect((-538.6/X)/d-(d/500)/d, 0.0, (3/X), (2377/Y)/d, 0, 0, 0, 180)
                           _FiVe_SeNsE_.n.DrawRect((-538.6/X)/d-(d/500)/d, 0.0, (1/X), (2376/Y)/d, 0, 0, 0, 180)
                           local r, g, b
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthDynamicColor then 
                               r, g, b = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(100-H), _FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(H * 2), 0
                           else
                               r, g, b = _FiVe_SeNsE_.ThisIsSliders[50].value, _FiVe_SeNsE_.ThisIsSliders[51].value, _FiVe_SeNsE_.ThisIsSliders[52].value
                           end
                           _FiVe_SeNsE_.n.DrawRect((-538.6/X)/d-(d/500)/d, ((2376/2)/Y)/d-(((H/NUM)/2)/Y)/d, (1/X), ((H/NUM)/Y)/d, r, g, b, 255)
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.HealthbarText then 
                               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(H), (-538.6/X)/d-(d/500)/d, ((2333/2)/Y)/d-(((H/NUM))/Y)/d-(d/200)/d, 0.2, true, 4, true)
                           end
                           _FiVe_SeNsE_.n.ClearDrawOrigin()
                       end
                   end
               end
           end
       end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Armorbar then 
               --for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               for p in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   local X, Y = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                   --local p = _FiVe_SeNsE_.n.GetPlayerPed(v)
                   local c = _FiVe_SeNsE_.n.GetEntityCoords(p)
                   local d = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(_FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), c.x, c.y, c.z, true) * (1.1 - _FiVe_SeNsE_.ThisIsSliders[19].value)
                   local A = _FiVe_SeNsE_.n.GetPedArmour(p)*10.76200
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.armorincludeself then 
                       me = p
                   else
                       me = p ~= _FiVe_SeNsE_.n.PlayerPedId() 
                   end
                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.armorplayers then 
                       mr = _FiVe_SeNsE_.n.IsPedAPlayer(p)
                   else
                       mr = p
                   end
                   if _FiVe_SeNsE_.n.IsEntityOnScreen(p) then
                   if d < _FiVe_SeNsE_.ThisIsSliders[48].value then
                       if me and mr and not _FiVe_SeNsE_.n.IsEntityDead(p) and not _FiVe_SeNsE_.menu.colorpicker then 
                           _FiVe_SeNsE_.n.SetDrawOrigin(c.x, c.y, c.z, 0)
                           local ay = 1200
                           _FiVe_SeNsE_.n.DrawRect(0.0, (ay/Y)/d+(d/400)/d, (1078.2/X)/d, (3/Y), 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect(0.0, (ay/Y)/d+(d/400)/d, (1078.2/X)/d, (1/Y), 0, 0, 0, 255)
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorDynamicColor and _FiVe_SeNsE_.n.GetPedArmour(p) ~= 0 then 
                               if _FiVe_SeNsE_.n.GetPedArmour(p) == 0 then 
                                   r, g, b = 75, 141-(50-_FiVe_SeNsE_.n.GetPedArmour(p)), 173-(100-_FiVe_SeNsE_.n.GetPedArmour(p))
                               else
                                   r, g, b = _FiVe_SeNsE_.ThisIsSliders[53].value, _FiVe_SeNsE_.ThisIsSliders[54].value, _FiVe_SeNsE_.ThisIsSliders[55].value
                               end
                           else
                               r, g, b = _FiVe_SeNsE_.ThisIsSliders[53].value, _FiVe_SeNsE_.ThisIsSliders[54].value, _FiVe_SeNsE_.ThisIsSliders[55].value
                           end
                           _FiVe_SeNsE_.n.DrawRect(((-1078.2/2)/X)/d+(((A)/2)/X)/d, (ay/Y)/d+(d/400)/d, ((A)/X)/d, (1/Y), r, g, b, 255)
                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ArmorbarText and _FiVe_SeNsE_.n.GetPedArmour(p) ~= 0 then 
                               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText(_FiVe_SeNsE_.n.GetPedArmour(p),((-1078.2/2)/X)/d+(((A)/1)/X)/d, (ay/Y)/d+(d/400)/d, 0.2, true, 4, true)
                           end
                           _FiVe_SeNsE_.n.ClearDrawOrigin()
                       end
                   end
               end
           end
       end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forcearmorbar then 
               local armor = _FiVe_SeNsE_.n.GetPedArmour(_FiVe_SeNsE_.n.PlayerPedId())
               local number = 100/0.1
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.97, 0.101, 0.0058, 5, 5, 5, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.97, 0.1, 0.004, 36, 76, 96, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5-(0.1/2)+((armor/number)/2), 0.97, armor/number, 0.004, 64, 129, 162, 255)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forcehealthbar then 
               local health = _FiVe_SeNsE_.n.GetEntityHealth(_FiVe_SeNsE_.n.PlayerPedId())-100
               local number = (_FiVe_SeNsE_.n.GetEntityMaxHealth(_FiVe_SeNsE_.n.PlayerPedId())-100)/0.1
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.98, 0.101, 0.0058, 5, 5, 5, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.98, 0.1, 0.004, 63, 102, 50, 255)
               local w = health/number
               if w > 0.1 then 
                   w = 0.1 
               end
               _FiVe_SeNsE_.n.DrawRect(0.5-(0.1/2)+((w)/2), 0.98, w, 0.004, 89, 152, 82, 255)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.clearwantedlevel then 
               local p = _FiVe_SeNsE_.n.PlayerId()
               _FiVe_SeNsE_.n.ClearPlayerWantedLevel(p)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodegun then 
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               local hit, coord = _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord(p)				
               if hit then 
                   _FiVe_SeNsE_.n.AddExplosion(coord.x, coord.y, coord.z, _FiVe_SeNsE_.ThisIsSliders[31].value, 100.0, true, false, 0.0)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.clowngun then 
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               local hit, coord = _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord(p)				
               if not _FiVe_SeNsE_.n.HasNamedPtfxAssetLoaded("scr_rcbarry2") then						
                   _FiVe_SeNsE_.n.RequestNamedPtfxAsset("scr_rcbarry2")
               end	
               if hit then 
                   _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("scr_rcbarry2")							
                   _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",coord.x, coord.y, coord.z,0,0,0,_FiVe_SeNsE_.ThisIsSliders[29].value,0,0,0)	
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.firegun then 
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               local hit, coord = _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord(p)				
               if not _FiVe_SeNsE_.n.HasNamedPtfxAssetLoaded("core") then						
                   _FiVe_SeNsE_.n.RequestNamedPtfxAsset("core")
               end	
               if hit then 
                   _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("core")							
                   _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coord.x, coord.y, coord.z,0,0,0,_FiVe_SeNsE_.ThisIsSliders[30].value,0,0,0)	
               end
           end
   
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.carkiller and _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.GetPlayerPed(-1), true) then
               for a in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   if a ~= _FiVe_SeNsE_.n.GetPlayerPed(-1) then
                       if _FiVe_SeNsE_.n.IsEntityOnScreen(a) then
                           local b = _FiVe_SeNsE_.n.GetEntityRotation(a)
                           local c = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(b)
                           local d = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), false)
                           local e = _FiVe_SeNsE_.n.GetEntityCoords(a, false)
                           local f = _FiVe_SeNsE_.n.GetPedBoneCoords(a, 31086, 0, 0, 0)
                           local g = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
                           if g <= 5000.0 then
                               local h = _FiVe_SeNsE_.n.IsEntityDead(a)
                               if not h then
                               if a ~= _FiVe_SeNsE_.n.GetPlayerPed(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedfriend) then
                                   _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 50.0, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), true, true, 1000)
                               end
                           end
                       end
                   end
               end
           end
       end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ragebot then
               for a in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   if a ~= _FiVe_SeNsE_.n.GetPlayerPed(-1) then
                       if _FiVe_SeNsE_.n.IsEntityOnScreen(a) then
                           local b = _FiVe_SeNsE_.n.GetEntityRotation(a)
                           local c = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(b)
                           local d = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), false)
                           local e = _FiVe_SeNsE_.n.GetEntityCoords(a, false)
                           local f = _FiVe_SeNsE_.n.GetPedBoneCoords(a, 31086, 0, 0, 0)
                           local g = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
                           if g <= 5000.0 then
                               local h = _FiVe_SeNsE_.n.IsEntityDead(a)
                               if not h then
                                   if a ~= _FiVe_SeNsE_.n.GetPlayerPed(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedfriend) then
                                   _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 50.0, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), true, true, 1000)
                               end
                           end
                       end
                   end
               end
           end
       end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimbot then
               for a in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   if a ~= _FiVe_SeNsE_.n.GetPlayerPed(-1) then
                       if _FiVe_SeNsE_.n.IsEntityOnScreen(a) then
                           local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(a))
                           local _, _x, _y = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(x, y, z)
                           local FOV = _FiVe_SeNsE_.ThisIsSliders[39].value
                           local b = _FiVe_SeNsE_.n.GetEntityRotation(a)
                           local c = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(b)
                           local d = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), false)
                           local e = _FiVe_SeNsE_.n.GetEntityCoords(a, false)
                           local f = _FiVe_SeNsE_.n.GetPedBoneCoords(a, 31086, 0, 0, 0)
                           local g = _FiVe_SeNsE_.n.GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, false)
                           if g <= 5000.0 then
                               if a ~= _FiVe_SeNsE_.n.GetPlayerPed(_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.selectedfriend) then
                               if (_x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) and _FiVe_SeNsE_.n.IsPedShooting(_FiVe_SeNsE_.n.PlayerPedId()) then
                                   if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckaimbot then 
                                       if _FiVe_SeNsE_.n.HasEntityClearLosToEntity(_FiVe_SeNsE_.n.PlayerPedId(), C, 19) then 
                                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeadsaimbot then 
                                               if _FiVe_SeNsE_.n.IsEntityDead(a) then 
                                                   _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 50.0, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), true, true, 1000)
                                               else
                                                   _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 50.0, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), true, true, 1000)	
                                               end
                                           else
                                               if _FiVe_SeNsE_.n.IsEntityDead(a) then 
                                               else
                                                   _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 50.0, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), true, true, 1000)
                                               end
                                           end
                                       else
                                       end
                                   else
                                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeadsaimbot then 
                                           if _FiVe_SeNsE_.n.IsEntityDead(a) then 
                                               _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 50.0, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), true, true, 1000)
                                           else
                                               _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 50.0, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), true, true, 1000)
                                           end
                                       else
                                           if _FiVe_SeNsE_.n.IsEntityDead(a) then 
                                           else
                                               _FiVe_SeNsE_.n.ShootSingleBulletBetweenCoords(f.x + c.x, f.y + c.y, f.z + c.z, f.x, f.y, f.z, 50.0, false, _FiVe_SeNsE_.n.GetHashKey('WEAPON_HEAVYSNIPER'), _FiVe_SeNsE_.n.PlayerPedId(), true, true, 1000)
                                           end
                                       end
                                   end
   
                               end
                           end
                       end
                   end
               end
           end
       end
   
   
           
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.exlpoammo then 
               local shoot, position = _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord(_FiVe_SeNsE_.n.PlayerPedId())
               if shoot then
                   _FiVe_SeNsE_.n.AddExplosion(position.x, position.y, position.z, 7, 250.0, true, false, 0)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.shockwavegun then 
               local shoot, position = _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord(_FiVe_SeNsE_.n.PlayerPedId())
               if shoot then
                   _FiVe_SeNsE_.n.AddExplosion(position.x, position.y, position.z, 70, 250.0, false, true, 0)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodeloop then
               for k, v in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                   local position = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(v))
                   _FiVe_SeNsE_.n.AddExplosion(position, _FiVe_SeNsE_.ThisIsSliders[46].value, 100.0, true, false, 1.0)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DeleteGun then
               local Shooted, Coords = _FiVe_SeNsE_.n.GetEntityPlayerIsFreeAimingAt(_FiVe_SeNsE_.n.PlayerId())
               if Shooted then
                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 24) then
                       _FiVe_SeNsE_.n.SetEntityAsMissionEntity(Coords)
                       _FiVe_SeNsE_.n.DeleteEntity(Coords)
                   end
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Oneshot then
               _FiVe_SeNsE_.n.SetPlayerWeaponDamageModifier(_FiVe_SeNsE_.n.PlayerPedId(), 5.0)
               _FiVe_SeNsE_.n.SetPlayerMeleeWeaponDamageModifier(_FiVe_SeNsE_.n.PlayerPedId(), 5.0)
           else
               _FiVe_SeNsE_.n.SetPlayerWeaponDamageModifier(_FiVe_SeNsE_.n.PlayerPedId(), 1.0)
               _FiVe_SeNsE_.n.SetPlayerMeleeWeaponDamageModifier(_FiVe_SeNsE_.n.PlayerPedId(), 1.0)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hiteffect then
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               local hit, coord = _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord(p)				
               if not _FiVe_SeNsE_.n.HasNamedPtfxAssetLoaded("core") then						
                   _FiVe_SeNsE_.n.RequestNamedPtfxAsset("core")
               end	
               if hit then 
                   _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("core")							
                   _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_electrical_box",coord.x, coord.y, coord.z,0,0,0, 1.0,0,0,0)	
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hitmarker then 
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               local bool, entity = _FiVe_SeNsE_.n.GetEntityPlayerIsFreeAimingAt(p)
               if entity then
                   if _FiVe_SeNsE_.n.IsPedShooting(p) then  
                       _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tinsert(_FiVe_SeNsE_.hitsound, {x = 0.5, y = 0.5, timer = _FiVe_SeNsE_.n.GetGameTimer()})
                   end
               end
               if not _FiVe_SeNsE_.n.HasStreamedTextureDictLoaded('helicopterhud') then 
                   _FiVe_SeNsE_.n.RequestStreamedTextureDict('helicopterhud', true)
               end
               for k, v in  _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.hitsound) do 
                   _FiVe_SeNsE_.n.DrawSprite('helicopterhud', 'hud_target',  v.x, v.y, 0.023, 0.023*1.85, 45.0, 255, 255, 255, 255)
                   if _FiVe_SeNsE_.n.GetGameTimer() - v.timer >= 250 then 
                       _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tremove(_FiVe_SeNsE_.hitsound, k)
                   end
               end
           end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.hitsoundlol then
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               local bool, entity = _FiVe_SeNsE_.n.GetEntityPlayerIsFreeAimingAt(p)
               if entity then
                   if _FiVe_SeNsE_.n.IsPedShooting(p) then  
                       local hitsoundlol = _FiVe_SeNsE_.n.CreateDui("https://www.myinstants.com/media/sounds/neverlose.mp3", 1, 1)
                       _FiVe_SeNsE_.n.DestroyDui(hitsoundlol)
                   end
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.noreaload then 
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               if _FiVe_SeNsE_.n.IsPedReloading(p) then 
                   _FiVe_SeNsE_.n.RefillAmmoInstantly(p)
                   --PedSkipNextReloading(p)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.teleportgun then 
               local bool, coord = _FiVe_SeNsE_.n.GetPedLastWeaponImpactCoord(_FiVe_SeNsE_.n.PlayerPedId())
               if bool then 
                   _FiVe_SeNsE_.n.SetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), coord)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.infiniteAmmunation then 
               local p = _FiVe_SeNsE_.n.PlayerPedId()
               if _FiVe_SeNsE_.n.IsPedShooting(p) then 
                   _FiVe_SeNsE_.n.AddAmmoToPed(p, _FiVe_SeNsE_.n.GetSelectedPedWeapon(p), 1)
               end
           end
   
   
           --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeZombieSpawning then
               local myCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
               local zombietable = {"s_m_m_marine_01", "s_m_y_marine_01", "a_m_m_mexcntry_01","a_m_m_polynesian_01","a_m_m_skidrow_01","a_m_y_genstreet_01","a_m_y_genstreet_02","a_m_y_stlat_01","csb_ramp_hic","a_m_m_fatlatin_01","a_m_m_rurmeth_01","a_m_m_hillbilly_02","a_m_m_hillbilly_01","s_m_y_prisoner_01","s_m_y_prismuscl_01","a_m_m_salton_01","a_m_y_salton_01",}
               local randomzombie = (zombietable[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#zombietable)])
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(randomzombie)) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(randomzombie))
               end
               for i = 1, 2 do 
                   _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey(randomzombie), myCoords.x + 80 , myCoords.y + 80, myCoords.z, 0.0, false, true)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeBoss then
               local myCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("ig_bankman")) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("ig_bankman"))
               end
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("mp_m_bogdangoon")) then 
                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("mp_m_bogdangoon"))
               end
               for i = 1, 2 do
               _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey("ig_bankman"), myCoords.x + 80, myCoords.y + 80, myCoords.z, 0.0, false, true)
               _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey("mp_m_bogdangoon"), myCoords.x + 80, myCoords.y + 80, myCoords.z, 0.0, false, true)
           end
       end
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.GlifeMinions then
               local myCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("s_m_y_marine_02")) then 
                       _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("s_m_y_marine_02"))
               end
               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey("s_m_y_marine_03")) then 
                       _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey("s_m_y_marine_03"))
               end
                   for i = 1, 2 do
                   _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey("s_m_y_marine_02"), myCoords.x + 80, myCoords.y + 80, myCoords.z, 0.0, false, true)
                   _FiVe_SeNsE_.n.CreatePed(4, _FiVe_SeNsE_.n.GetHashKey("s_m_y_marine_03"), myCoords.x + 80, myCoords.y + 80, myCoords.z, 0.0, false, true)
               end
           end]]
   
           --_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TestGlifecarspawn = function()
       --		local myCoords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId())
           --	_FiVe_SeNsE_.n.CreateVehicle("dababycar", myCoords, 1, 1, 1)
       --	end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.ESXStealMoney then
               for i, player in  _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
                   local id = _FiVe_SeNsE_.n.GetPlayerServerId(player)
                   local amount = _FiVe_SeNsE_.ThisIsSliders[47].value
                   _FiVe_SeNsE_.n._ud_wait(20)
                   TriggerServerEvent("esx_inventoryhud:tradePlayerItem",id,_FiVe_SeNsE_.n.GetPlayerServerId(_FiVe_SeNsE_.n.PlayerId()),"item_money","",amount)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.alwaysWheelie then 
               local ped = _FiVe_SeNsE_.n.PlayerPedId()
               if _FiVe_SeNsE_.n.IsPedInAnyVehicle(ped) then
                   _FiVe_SeNsE_.n.SetVehicleWheelieState(_FiVe_SeNsE_.n.GetVehiclePedIsIn(ped), 129)
               end
           end
       
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.teleportertosky then
           local lib = 'anim@arena@celeb@flat@paired@no_props@'
           local lib2 = 'missfinale_c2mcs_1'
           local lib3 = 'nm'
           local anim1 = 'piggyback_c_player_a'
           local anim2 = 'piggyback_c_player_b'
           local distans = -0.0
           local distans2 = 0.0
           local height = 0.45
           local spin = 0.0
           local length = 1
           local controlFlagMe = 49
           local controlFlagTarget = 33
           local animFlagTarget = 1
   
   
           for _, i in  _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do
               if i ~= _FiVe_SeNsE_.n.PlayerId() then
                       TriggerServerEvent('cmg2_animations:sync', i, lib, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint(1030.45, -913.93, 2694.71)
                       _FiVe_SeNsE_.n._ud_wait(20)
                       TriggerServerEvent('cmg2_animations:sync', i, lib2, lib3, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint(1030.45, -913.93, 2694.71)
                       _FiVe_SeNsE_.n._ud_wait(20)
                       TriggerServerEvent('cmg3_animations:sync', i, lib, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint(1030.45, -913.93, 2694.71)
                       _FiVe_SeNsE_.n._ud_wait(20)
                       TriggerServerEvent('cmg3_animations:sync', i, lib2, lib2, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint(1030.45, -913.93, 2694.71)
                       _FiVe_SeNsE_.n._ud_wait(20)
                       TriggerServerEvent('cmg3_animations1:sync', i, lib, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget, attachFlag)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint(1030.45, -913.93, 2694.71)
                       _FiVe_SeNsE_.n._ud_wait(20)
                       TriggerServerEvent('cmg3_animations1:sync', i, lib2, lib2, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget, attachFlag)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint(1030.45, -913.93, 2694.71)
                       _FiVe_SeNsE_.n._ud_wait(20)
                       TriggerServerEvent('CarryPeople:sync', i, lib2, lib3, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint(1030.45, -913.93, 2694.71)
                       _FiVe_SeNsE_.n._ud_wait(20)
                       TriggerServerEvent('CarryPeople:sync', i, lib, anim1, anim2, distans, distans2, height, _FiVe_SeNsE_.n.GetPlayerServerId(i), length, spin, controlFlagMe, controlFlagTarget, animFlagTarget)
                       _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.TeleportToCertainPoint(1030.45, -913.93, 2694.71)
                       _FiVe_SeNsE_.n._ud_wait(20)
                       TriggerServerEvent("cmg2_animations:stop", _FiVe_SeNsE_.n.GetPlayerServerId(i))
                       TriggerServerEvent("cmg2_animations:stop", _FiVe_SeNsE_.n.GetPlayerServerId(i))
                       TriggerServerEvent("cmg3_animations:stop", _FiVe_SeNsE_.n.GetPlayerServerId(i))
                       TriggerServerEvent("cmg3_animations:stop", _FiVe_SeNsE_.n.GetPlayerServerId(i))
                       TriggerServerEvent("cmg3_animations1:stop", _FiVe_SeNsE_.n.GetPlayerServerId(i))
                       TriggerServerEvent("cmg3_animations1:stop", _FiVe_SeNsE_.n.GetPlayerServerId(i))
                       TriggerServerEvent("CarryPeople:stop", _FiVe_SeNsE_.n.GetPlayerServerId(i))
                       TriggerServerEvent("CarryPeople:stop", _FiVe_SeNsE_.n.GetPlayerServerId(i))
                   end
               end
           end
   
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall._ud_invisiblevehicle and _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false) ~= 0 then
               _FiVe_SeNsE_.n.SetEntityVisible(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false), false)
           else
               _FiVe_SeNsE_.n.SetEntityVisible(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false), true)
           end 
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Bunnyhopvehicle and _FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false) ~= 0 then
               if _FiVe_SeNsE_.n.IsControlJustPressed(1, 22) then
                   _FiVe_SeNsE_.n.ApplyForceToEntity(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), 0), 3, 0.0, 0.0, 9.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
               end
           end 
       
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.driftmode and _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.PlayerPedId()) then
               if _FiVe_SeNsE_.n.IsControlPressed(0, 21) then
                   _FiVe_SeNsE_.n.SetVehicleReduceGrip(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId()), true)
               else
                   _FiVe_SeNsE_.n.SetVehicleReduceGrip(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId()), false)
               end
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.forceengine then 
               _FiVe_SeNsE_.n.SetVehicleEngineOn(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), false), true, true, true)
           end
   
           --[[if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.EasyHandling then 
               _FiVe_SeNsE_.n.SetVehicleGravityAmount(_FiVe_SeNsE_.n.GetVehiclePedIsIn(_FiVe_SeNsE_.n.PlayerPedId(), 0), _FiVe_SeNsE_.ThisIsSliders[35].value)
           end]]
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.blips then
               local plist = _FiVe_SeNsE_.n.GetActivePlayers()
               for i = 1, #plist do
                   local id = plist[i]
                   local ped = _FiVe_SeNsE_.n.GetPlayerPed(id)
                   if ped ~= _FiVe_SeNsE_.n.PlayerPedId() then
                       local playerblip = _FiVe_SeNsE_.n.GetBlipFromEntity(ped)
   
                       if not _FiVe_SeNsE_.n.DoesBlipExist(playerblip) then
                           playerblip = _FiVe_SeNsE_.n.AddBlipForEntity(ped)
                           _FiVe_SeNsE_.n.SetBlipSprite(playerblip, 126)
                           _FiVe_SeNsE_.n.ShowHeadingIndicatorOnBlip(playerblip, true)
                           _FiVe_SeNsE_.n.SetBlipNameToPlayerName(playerblip, id)
                           _FiVe_SeNsE_.n.SetBlipScale(playerblip, 0.80)
                           _FiVe_SeNsE_.n.SetBlipColour(playerblip, 49)
                       else
                           local vehicle = _FiVe_SeNsE_.n.GetVehiclePedIsIn(ped, false)
                           local blipshit = _FiVe_SeNsE_.n.GetBlipSprite(playerblip)
                           local model = _FiVe_SeNsE_.n.GetEntityModel(vehicle)
                           if _FiVe_SeNsE_.n.GetEntityHealth(ped) == 0 then
                               if blipshit ~= 429 then
                                   _FiVe_SeNsE_.n.SetBlipSprite(playerblip, 429)
                                   _FiVe_SeNsE_.n.SetBlipColour(playerblip, 37)
                                   _FiVe_SeNsE_.n.ShowHeadingIndicatorOnBlip(playerblip, true)
                                   _FiVe_SeNsE_.n.SetBlipScale(playerblip, 0.80)
                               end
                           elseif vehicle then
                               local blippd = _FiVe_SeNsE_.n.GetBlipSprite(playerblip)
                               local vehiclehash = _FiVe_SeNsE_.n.GetVehicleClass(vehicle)
                               if
                                   vehiclehash == _FiVe_SeNsE_.n.GetHashKey("police") or model == _FiVe_SeNsE_.n.GetHashKey("police2") or
                                       model == _FiVe_SeNsE_.n.GetHashKey("police3") or
                                       model == _FiVe_SeNsE_.n.GetHashKey("sheriff2") or
                                       model == _FiVe_SeNsE_.n.GetHashKey("sheriff") or
                                       model == _FiVe_SeNsE_.n.GetHashKey("policeold2") or
                                       model == _FiVe_SeNsE_.n.GetHashKey("fbi") or
                                       model == _FiVe_SeNsE_.n.GetHashKey("fbi2")
                                then
                                   if blippd ~= 60 then
                                       _FiVe_SeNsE_.n.SetBlipSprite(playerblip, 60)
                                       _FiVe_SeNsE_.n.SetBlipColour(playerblip, 26)
                                       _FiVe_SeNsE_.n.SetBlipScale(playerblip, 0.80)
                                       _FiVe_SeNsE_.n.ShowHeadingIndicatorOnBlip(playerblip, true)
                                   end
   
                                   if _FiVe_SeNsE_.n.IsPauseMenuActive() then
                                       _FiVe_SeNsE_.n.SetBlipAlpha(playerblip, 255)
                                   else
                                       local x1, y1 = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), true))
                                       local x2, y2 = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(id), true))
                                       local distance = (_FiVe_SeNsE_._shit_ThisMathematicShit._ud_floor(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_abs(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
   
                                       if distance < 0 then
                                           distance = 0
                                       elseif distance > 255 then
                                           distance = 255
                                       end
                                       _FiVe_SeNsE_.n.SetBlipAlpha(playerblip, distance)
                                       _FiVe_SeNsE_.n.SetBlipRotation(playerblip, _FiVe_SeNsE_._shit_ThisMathematicShit._ud_ceil(_FiVe_SeNsE_.n.GetEntityHeading(vehicle)))
                                   end
                               end
                           end
                       end
                   end
               end
           elseif not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.blips then
               local plist = _FiVe_SeNsE_.n.GetActivePlayers()
               for i = 1, #plist do
                   local id = plist[i]
                   local ped = _FiVe_SeNsE_.n.GetPlayerPed(id)
                   local playerblip = _FiVe_SeNsE_.n.GetBlipFromEntity(ped)
                   local playerblipDead = _FiVe_SeNsE_.n.GetBlipFromEntity(ped)
                   local playerblipPolice = _FiVe_SeNsE_.n.GetBlipFromEntity(ped)
                   if _FiVe_SeNsE_.n.DoesBlipExist(playerblip) then
                       _FiVe_SeNsE_.n.RemoveBlip(playerblip)
                   end
               end
           end
   
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slowMotion then 
               _FiVe_SeNsE_.n.SetTimeScale(_FiVe_SeNsE_.ThisIsSliders[2].value)
           elseif not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.slowMotion then
               _FiVe_SeNsE_.n.SetTimeScale(1.0)
           end
   
           
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimlockfov then 
               if not _FiVe_SeNsE_.n.HasStreamedTextureDictLoaded("mpmissmarkers256") then 
                   _FiVe_SeNsE_.n.RequestStreamedTextureDict("mpmissmarkers256", true)
               end
               _FiVe_SeNsE_.n.DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, _FiVe_SeNsE_.ThisIsSliders[20].value, _FiVe_SeNsE_.ThisIsSliders[20].value * 1.8 ,0.0,0,0,0,_FiVe_SeNsE_.ThisIsSliders[21].value)
           end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.drawaimbotfov then 
               if not _FiVe_SeNsE_.n.HasStreamedTextureDictLoaded("mpmissmarkers256") then 
                   _FiVe_SeNsE_.n.RequestStreamedTextureDict("mpmissmarkers256", true)
               end
               _FiVe_SeNsE_.n.DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, _FiVe_SeNsE_.ThisIsSliders[39].value, _FiVe_SeNsE_.ThisIsSliders[39].value * 1.8 ,0.0,0,0,0,_FiVe_SeNsE_.ThisIsSliders[40].value)
           end
   
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.aimlock then
               
               for C in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumeratePeds() do
                   for i = 1, #_FiVe_SeNsE_.n.GetActivePlayers() do
                       local otherpos = _FiVe_SeNsE_.n.GetPedBoneCoords(C, 31086, 0.0, 0.0, 0.0)
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetpeds then 
                           R = C
                       else
                           R = _FiVe_SeNsE_.n.IsPedAPlayer(C)
                       end
                       local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetEntityCoords(C))
                       local _, _x, _y = _FiVe_SeNsE_.n.GetScreenCoordFromWorldCoord(x, y, z)
                       local FOV = _FiVe_SeNsE_.ThisIsSliders[20].value
                       local selfpos, rot = _FiVe_SeNsE_.n.GetFinalRenderedCamCoord(), _FiVe_SeNsE_.n.GetEntityRotation(_FiVe_SeNsE_.n.PlayerPedId(), 2)
                       local angleX, angleY, angleZ = (otherpos - selfpos).x, (otherpos - selfpos).y, (otherpos - selfpos).z
                       local roll, pitch, yaw = -_FiVe_SeNsE_._shit_ThisMathematicShit._ud_deg(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_atan2(angleX, angleY)) - rot.z, _FiVe_SeNsE_._shit_ThisMathematicShit._ud_deg(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_atan2(angleZ, #_FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(angleX, angleY, 0.0))), 1.0
                       local roll = _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.lerp(_FiVe_SeNsE_.ThisIsSliders[22].value, 0.0, roll) 
                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.linetotarget and _FiVe_SeNsE_.n.IsAimCamActive() and C then 
                           local weapon = _FiVe_SeNsE_.n.GetCurrentPedWeaponEntityIndex(_FiVe_SeNsE_.n.PlayerPedId())
                           _FiVe_SeNsE_.n.DrawLine(_FiVe_SeNsE_.n.GetEntityCoords(weapon), _FiVe_SeNsE_.n.GetFinalRenderedCamCoord() + (_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(_FiVe_SeNsE_.n.GetGameplayCamRot(2)) * 100), 255, 255, 255, 255)
                       end
                       if C ~= _FiVe_SeNsE_.n.PlayerPedId() and _FiVe_SeNsE_.n.IsEntityOnScreen(C) and R then
                           if C ~= _FiVe_SeNsE_.friends[_FiVe_SeNsE_.n.GetPlayerServerId(_FiVe_SeNsE_.n.GetActivePlayers()[i])] then
                               if (_x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2) then
                                   if _FiVe_SeNsE_.n.IsAimCamActive() then
                                       if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.vischeckaim then 
                                           if _FiVe_SeNsE_.n.HasEntityClearLosToEntity(_FiVe_SeNsE_.n.PlayerPedId(), C, 19) then 
                                               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeads then 
                                                   if _FiVe_SeNsE_.n.IsEntityDead(C) then 
                                                       _FiVe_SeNsE_.n.SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                                   else
                                                       _FiVe_SeNsE_.n.SetGameplayCamRelativeRotation(roll, pitch, yaw)	
                                                   end
                                               else
                                                   if _FiVe_SeNsE_.n.IsEntityDead(C) then 
                                                   else
                                                       _FiVe_SeNsE_.n.SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                                   end
                                               end
                                           else
                                           end
                                       else
                                           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.targetdeads then 
                                               if _FiVe_SeNsE_.n.IsEntityDead(C) then 
                                                   _FiVe_SeNsE_.n.SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                               else
                                                   _FiVe_SeNsE_.n.SetGameplayCamRelativeRotation(roll, pitch, yaw)	
                                               end
                                           else
                                               if _FiVe_SeNsE_.n.IsEntityDead(C) then 
                                               else
                                                   _FiVe_SeNsE_.n.SetGameplayCamRelativeRotation(roll, pitch, yaw)
                                               end
                                           end
                                       end
                                   end				
                               end
                           
                       end	
                   end
               end
           end
       
   end
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.crosshair then 
               local r, g, b = _FiVe_SeNsE_.ThisIsSliders[26].value, _FiVe_SeNsE_.ThisIsSliders[27].value, _FiVe_SeNsE_.ThisIsSliders[28].value
               if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.crosshairOutline then 
                   _FiVe_SeNsE_.n.DrawRect(0.5 - _FiVe_SeNsE_.ThisIsSliders[23].value - ((_FiVe_SeNsE_.ThisIsSliders[24].value * 1.8) / 2) , 0.5 , _FiVe_SeNsE_.ThisIsSliders[24].value * 1.8  + 0.001, (_FiVe_SeNsE_.ThisIsSliders[25].value) + 0.0018, 0, 0, 0, 255)
                   _FiVe_SeNsE_.n.DrawRect(0.5 + _FiVe_SeNsE_.ThisIsSliders[23].value + ((_FiVe_SeNsE_.ThisIsSliders[24].value * 1.8) / 2), 0.5 , _FiVe_SeNsE_.ThisIsSliders[24].value * 1.8  + 0.001, (_FiVe_SeNsE_.ThisIsSliders[25].value) + 0.0018 , 0, 0, 0, 255)
                   _FiVe_SeNsE_.n.DrawRect(0.5, 0.5 - _FiVe_SeNsE_.ThisIsSliders[23].value - 0.0018 - ((_FiVe_SeNsE_.ThisIsSliders[24].value * 2.8) / 2), (_FiVe_SeNsE_.ThisIsSliders[25].value) / 1.8  + 0.001 , _FiVe_SeNsE_.ThisIsSliders[24].value * 2.8 + 0.0018, 0, 0, 0, 255)
                   _FiVe_SeNsE_.n.DrawRect(0.5, 0.5 + _FiVe_SeNsE_.ThisIsSliders[23].value + 0.0018 + ((_FiVe_SeNsE_.ThisIsSliders[24].value * 2.8) / 2), (_FiVe_SeNsE_.ThisIsSliders[25].value) / 1.8  + 0.001 , _FiVe_SeNsE_.ThisIsSliders[24].value * 2.8 + 0.0018, 0, 0, 0, 255)
               end
               _FiVe_SeNsE_.n.DrawRect(0.5 - _FiVe_SeNsE_.ThisIsSliders[23].value - ((_FiVe_SeNsE_.ThisIsSliders[24].value * 1.8) / 2) , 0.5 , _FiVe_SeNsE_.ThisIsSliders[24].value * 1.8, (_FiVe_SeNsE_.ThisIsSliders[25].value), r, g, b, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5 + _FiVe_SeNsE_.ThisIsSliders[23].value + ((_FiVe_SeNsE_.ThisIsSliders[24].value * 1.8) / 2), 0.5 , _FiVe_SeNsE_.ThisIsSliders[24].value * 1.8, (_FiVe_SeNsE_.ThisIsSliders[25].value) , r, g, b, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5 - _FiVe_SeNsE_.ThisIsSliders[23].value - 0.0018 - ((_FiVe_SeNsE_.ThisIsSliders[24].value * 2.8) / 2), (_FiVe_SeNsE_.ThisIsSliders[25].value) / 1.8 , _FiVe_SeNsE_.ThisIsSliders[24].value * 2.8, r, g, b, 255)
               _FiVe_SeNsE_.n.DrawRect(0.5, 0.5 + _FiVe_SeNsE_.ThisIsSliders[23].value + 0.0018 + ((_FiVe_SeNsE_.ThisIsSliders[24].value * 2.8) / 2), (_FiVe_SeNsE_.ThisIsSliders[25].value) / 1.8 , _FiVe_SeNsE_.ThisIsSliders[24].value * 2.8, r, g, b, 255)
              end
       end
   end)
   
   
   _FiVe_SeNsE_.n._ud_thr(function()
       while _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled do 
           _FiVe_SeNsE_.n._ud_wait(0)
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Spectate then
               local spectate_cam = spectate_cam
               if not spectate_cam ~= nil then
                   spectate_cam = _FiVe_SeNsE_.n.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
               end
               _FiVe_SeNsE_.n.RenderScriptCams(1, 0, 0, 1, 1)
               _FiVe_SeNsE_.n.SetCamActive(spectate_cam, true)
               local coords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               _FiVe_SeNsE_.n.SetCamCoord(spectate_cam, coords.x, coords.y, coords.z + 3)
   
               local offsetRotX = 0.0
               local offsetRotY = 0.0
               local offsetRotZ = 0.0
   
               _FiVe_SeNsE_.n.DisableControlAction(0, 32, true) -- W
               _FiVe_SeNsE_.n.DisableControlAction(0, 31, true) -- S
               _FiVe_SeNsE_.n.DisableControlAction(0, 30, true) -- D
               _FiVe_SeNsE_.n.DisableControlAction(0, 34, true) -- A
   
               local weapondelay = 0
   
               while _FiVe_SeNsE_.n.DoesCamExist(spectate_cam) do
                   _FiVe_SeNsE_.n._ud_wait(0)
                   if not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Spectate then
                       _FiVe_SeNsE_.n.DestroyCam(spectate_cam, false)
                       _FiVe_SeNsE_.n.ClearTimecycleModifier()
                       _FiVe_SeNsE_.n.RenderScriptCams(false, false, 0, 1, 0)
                       _FiVe_SeNsE_.n.FreezeEntityPosition(_FiVe_SeNsE_.n.GetPlayerPed(-1), false)
                       _FiVe_SeNsE_.n.SetFocusEntity(_FiVe_SeNsE_.n.GetPlayerPed(-1))
                       break
                   end
   
                   local playerPed = _FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)
                   local playerRot = _FiVe_SeNsE_.n.GetEntityRotation(playerPed, 2)
   
                   local rotX = playerRot.x
                   local rotY = playerRot.y
                   local rotZ = playerRot.z
   
                   offsetRotX = offsetRotX - (_FiVe_SeNsE_.n.GetDisabledControlNormal(1, 2) * 8.0)
                   offsetRotZ = offsetRotZ - (_FiVe_SeNsE_.n.GetDisabledControlNormal(1, 1) * 8.0)
   
                   if (offsetRotX > 90.0) then
                       offsetRotX = 90.0
                   elseif (offsetRotX < -90.0) then
                       offsetRotX = -90.0
                   end
   
                   if (offsetRotY > 90.0) then
                       offsetRotY = 90.0
                   elseif (offsetRotY < -90.0) then
                       offsetRotY = -90.0
                   end
   
                   if (offsetRotZ > 360.0) then
                       offsetRotZ = offsetRotZ - 360.0
                   elseif (offsetRotZ < -360.0) then
                       offsetRotZ = offsetRotZ + 360.0
                   end
   
                   local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetCamCoord(spectate_cam))
                   local coords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)) + (_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(_FiVe_SeNsE_.n.GetCamRot(spectate_cam, 2)) * (0.5 * 1.5))
   
   
                   _FiVe_SeNsE_.n.SetCamCoord(spectate_cam, coords.x + 2.5, coords.y + 1.5, coords.z + 2 )
   
                   if not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Displayed then
                       _FiVe_SeNsE_.n.SetFocusPosAndVel(_FiVe_SeNsE_.n.GetCamCoord(spectate_cam).x,_FiVe_SeNsE_.n.GetCamCoord(spectate_cam).y,_FiVe_SeNsE_.n.GetCamCoord(spectate_cam).z,0.0,0.0,0.0) 
                       _FiVe_SeNsE_.n.SetCamRot(spectate_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                   end
               end
           end
   
           --_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.R = true
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetGameplayFov then
               local gameplay_fov = gameplay_fov
               if not gameplay_fov ~= nil then
                   gameplay_fov = _FiVe_SeNsE_.n.CreateCam("DEFAULT_SCRIPTED_Camera", 1)
               end
               _FiVe_SeNsE_.n.RenderScriptCams(true, true, 700, 1, 1)
               _FiVe_SeNsE_.n.SetCamActive(gameplay_fov, true)
               local coords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer))
               _FiVe_SeNsE_.n.SetCamCoord(gameplay_fov, coords.x, coords.y, coords.z + 3)
   
               local offsetRotX = 0.0
               local offsetRotY = 0.0
               local offsetRotZ = 0.0
   
               _FiVe_SeNsE_.n.DisableControlAction(0, 32, true) -- W
               _FiVe_SeNsE_.n.DisableControlAction(0, 31, true) -- S
               _FiVe_SeNsE_.n.DisableControlAction(0, 30, true) -- D
               _FiVe_SeNsE_.n.DisableControlAction(0, 34, true) -- A
   
               local weapondelay = 0
   
               while _FiVe_SeNsE_.n.DoesCamExist(gameplay_fov) do
                   _FiVe_SeNsE_.n._ud_wait(0)
                   if not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.SetGameplayFov then
                       _FiVe_SeNsE_.n.DestroyCam(gameplay_fov, false)
                       _FiVe_SeNsE_.n.ClearTimecycleModifier()
                       _FiVe_SeNsE_.n.RenderScriptCams(false, true, 700, 1, 1)
                       _FiVe_SeNsE_.n.FreezeEntityPosition(_FiVe_SeNsE_.n.GetPlayerPed(-1), false)
                       _FiVe_SeNsE_.n.SetFocusEntity(_FiVe_SeNsE_.n.GetPlayerPed(-1))
                       break
                   end
   
                   _FiVe_SeNsE_.n.SetCamFov(gameplay_fov, _FiVe_SeNsE_.ThisIsSliders[93].value+50.0)
   
   
                   offsetRotX = offsetRotX - (_FiVe_SeNsE_.n.GetDisabledControlNormal(1, 2) * 8.0)
                   offsetRotZ = offsetRotZ - (_FiVe_SeNsE_.n.GetDisabledControlNormal(1, 1) * 8.0)
   
                   if (offsetRotX > 90.0) then
                       offsetRotX = 90.0
                   elseif (offsetRotX < -90.0) then
                       offsetRotX = -90.0
                   end
   
                   if (offsetRotY > 90.0) then
                       offsetRotY = 90.0
                   elseif (offsetRotY < -90.0) then
                       offsetRotY = -90.0
                   end
   
                   if (offsetRotZ > 360.0) then
                       offsetRotZ = offsetRotZ - 360.0
                   elseif (offsetRotZ < -360.0) then
                       offsetRotZ = offsetRotZ + 360.0
                   end
   
                   local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetCamCoord(gameplay_fov))
                   local coords = _FiVe_SeNsE_.n.GetEntityCoords(_FiVe_SeNsE_.n.GetPlayerPed(bettersecurity._shitkurva_ThisIsshitwithall.selectedplayer)) + (_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(_FiVe_SeNsE_.n.GetCamRot(gameplay_fov, 2)) * (0.5 * 1.5))
   
   
                   if _FiVe_SeNsE_.n.IsAimCamActive() then 
                       _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.002, 0.002*1.8, 1, 1, 1, 255)
                       _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.001, 0.001*1.8, 255, 255, 255, 255)
                   end
   
                   _FiVe_SeNsE_.n.SetCamCoord(gameplay_fov, _FiVe_SeNsE_.n.GetGameplayCamCoord())
   
                   if not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Displayed then
                       _FiVe_SeNsE_.n.SetFocusPosAndVel(_FiVe_SeNsE_.n.GetCamCoord(gameplay_fov).x,_FiVe_SeNsE_.n.GetCamCoord(gameplay_fov).y,_FiVe_SeNsE_.n.GetCamCoord(gameplay_fov).z,0.0,0.0,0.0) 
                       _FiVe_SeNsE_.n.SetCamRot(gameplay_fov, _FiVe_SeNsE_.n.GetGameplayCamRot(2), 2)
                   end
               end
           end
   
   
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Freecam then
               if not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Displayed then
                   local camera = _FiVe_SeNsE_.n.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                   _FiVe_SeNsE_.n.RenderScriptCams(true, true, 700, 1, 1)
                   _FiVe_SeNsE_.n.SetCamActive(camera, true)
                   _FiVe_SeNsE_.n.SetCamCoord(camera, _FiVe_SeNsE_.n.GetGameplayCamCoord())
                   local offsetRotX = _FiVe_SeNsE_.n.GetGameplayCamRot(2).x
                   local offsetRotY = _FiVe_SeNsE_.n.GetGameplayCamRot(2).y
                   local offsetRotZ = _FiVe_SeNsE_.n.GetGameplayCamRot(2).z
                   
                   
                   while _FiVe_SeNsE_.n.DoesCamExist(camera) do
                       _FiVe_SeNsE_.n._ud_wait(0)
                       _FiVe_SeNsE_.n.DisableAllControlActions(0)
                       local currentmode = _FiVe_SeNsE_.freecam.modes[_FiVe_SeNsE_.freecam.mode]
                       local camera_rot = _FiVe_SeNsE_.n.GetCamRot(camera, 2)
                       local coords = _FiVe_SeNsE_.n.GetCamCoord(camera)
                       local adjustedRotation = {x = (_FiVe_SeNsE_._shit_ThisMathematicShit._ud_pi / 180) * _FiVe_SeNsE_.n.GetCamRot(camera,0).x, y = (_FiVe_SeNsE_._shit_ThisMathematicShit._ud_pi / 180) * _FiVe_SeNsE_.n.GetCamRot(camera,0).y, z = (_FiVe_SeNsE_._shit_ThisMathematicShit._ud_pi / 180) * _FiVe_SeNsE_.n.GetCamRot(camera,0).z 	}	
                       local direction = {x = -_FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(adjustedRotation.z) * _FiVe_SeNsE_._shit_ThisMathematicShit._ud_abs(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_cos(adjustedRotation.x)), y = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_cos(adjustedRotation.z) * _FiVe_SeNsE_._shit_ThisMathematicShit._ud_abs(_FiVe_SeNsE_._shit_ThisMathematicShit._ud_cos(adjustedRotation.x)), z = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_sin(adjustedRotation.x)}	
                       local cameraRotation = _FiVe_SeNsE_.n.GetCamRot(camera,0)
                       local cameraCoord = _FiVe_SeNsE_.n.GetCamCoord(camera)	
                       local distance = 5000.0
                       local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}	
                       local a, b, coords, d, entity = _FiVe_SeNsE_.n.GetShapeTestResult(_FiVe_SeNsE_.n.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
                       _FiVe_SeNsE_.n.SetCamFov(camera, _FiVe_SeNsE_.ThisIsSliders[16].value)
                       
                       -------------------------------------------------------------------------------------------------------------------------------------------------
                       if not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Freecam then
                           _FiVe_SeNsE_.n.DestroyCam(camera, false)
                           _FiVe_SeNsE_.n.ClearTimecycleModifier()
                           _FiVe_SeNsE_.n.RenderScriptCams(false, true, 700, 1, 0)
                           _FiVe_SeNsE_.n.FreezeEntityPosition(_FiVe_SeNsE_.n.GetPlayerPed(-1), false)
                           _FiVe_SeNsE_.n.SetFocusEntity(_FiVe_SeNsE_.n.GetPlayerPed(-1))
                           break;
                       end
                       if not _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.Displayed then
                           local playerPed = _FiVe_SeNsE_.n.GetPlayerPed(-1)
                           local playerRot = _FiVe_SeNsE_.n.GetEntityRotation(playerPed, 2)
   
                   
                           local rotX = playerRot.x
                           local rotY = playerRot.y
                           local rotZ = playerRot.z
                   
                           offsetRotX = offsetRotX - (_FiVe_SeNsE_.n.GetDisabledControlNormal(1, 2) * _FiVe_SeNsE_.ThisIsSliders[18].value)
                           offsetRotZ = offsetRotZ - (_FiVe_SeNsE_.n.GetDisabledControlNormal(1, 1) * _FiVe_SeNsE_.ThisIsSliders[18].value)
                   
                           if (offsetRotX > 90.0) then 
                               offsetRotX = 90.0 
                           elseif (offsetRotX < -90.0) then 
                               offsetRotX = -90.0 
                           end
                   
                           if (offsetRotY > 90.0) then 
                               offsetRotY = 90.0 
                           elseif (offsetRotY < -90.0) then 
                               offsetRotY = -90.0 
                           end
                   
                           if (offsetRotZ > 360.0) then 
                               offsetRotZ = offsetRotZ - 360.0 
                           elseif (offsetRotZ < -360.0) then 
                               offsetRotZ = offsetRotZ + 360.0 
                           end
   
                           local x, y, z = _FiVe_SeNsE_._shitfuck_ThisTableShit._ud_tunpack(_FiVe_SeNsE_.n.GetCamCoord(camera))
                           local Vector = _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(x, y, z)
                           local vecX, vecY, vecZ = _FiVe_SeNsE_.n.GetCamMatrix(camera)
                           local CurrentSpeed = _FiVe_SeNsE_.ThisIsSliders[17].value
   
                           if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 36) then 
                               CurrentSpeed = CurrentSpeed / 15 
                           end
   
                           if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 21) then 
                               CurrentSpeed = CurrentSpeed * 3 
                           end
   
                           if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 32) then  
                               _FiVe_SeNsE_.n.SetCamCoord(camera, _FiVe_SeNsE_.n.GetCamCoord(camera) + (_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(_FiVe_SeNsE_.n.GetCamRot(camera, 2)) * ((CurrentSpeed))))
                           elseif _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 33) then 
                               _FiVe_SeNsE_.n.SetCamCoord(camera, _FiVe_SeNsE_.n.GetCamCoord(camera) - (_FiVe_SeNsE_._shitkurva_ThisIsshitwithall.RotationToDirection(_FiVe_SeNsE_.n.GetCamRot(camera, 2)) * ((CurrentSpeed))))
                           elseif _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 22) then 
                               _FiVe_SeNsE_.n.SetCamCoord(camera, x, y, z + (CurrentSpeed))
                           elseif _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 34) then 
                               Vector = Vector - vecX * (CurrentSpeed) 
                               _FiVe_SeNsE_.n.SetCamCoord(camera, Vector, y, z)
                           elseif _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 9) then 
                               Vector = Vector + vecX * (CurrentSpeed) 
                               _FiVe_SeNsE_.n.SetCamCoord(camera, Vector, y, z) 
                           end  
   
                           local cx, cy, cz = _FiVe_SeNsE_._shitlol_ThisStringShit._ud_format("%.".. 1 .."f", coords.x), _FiVe_SeNsE_._shitlol_ThisStringShit._ud_format("%.".. 1 .."f", coords.y), _FiVe_SeNsE_._shitlol_ThisStringShit._ud_format("%.".. 1 .."f", coords.z)
                           local resX, resY = _FiVe_SeNsE_.n.GetActiveScreenResolution()
                           _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.009, 3/resY, 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 3/resX, 0.009*_FiVe_SeNsE_.n.GetAspectRatio(), 0, 0, 0, 255)
                           _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 0.008, 1/resY, 255, 255, 255, 255)
                           _FiVe_SeNsE_.n.DrawRect(0.5, 0.5, 1/resX, 0.008*_FiVe_SeNsE_.n.GetAspectRatio(), 255, 255, 255, 255)
   
                           if currentmode == "Freeze Entity" then
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 68) then
                                       _FiVe_SeNsE_.freecam.freezer = not _FiVe_SeNsE_.freecam.freezer
                                       _FiVe_SeNsE_.n.FreezeEntityPosition(entity, _FiVe_SeNsE_.freecam.freezer)
                                       if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                           if _FiVe_SeNsE_.n.IsDisabledControlPressed(0, 69) then
                                               _FiVe_SeNsE_.freecam.freezer = not _FiVe_SeNsE_.freecam.freezer
                                               _FiVe_SeNsE_.n.FreezeEntityPosition(entity, _FiVe_SeNsE_.freecam.freezer)
                                           end
                                       end
                                   end
                               end
                           end
   
   
                           if currentmode == "Tree Spawner" then
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 68) then
                                       local tree = {"prop_tree_lficus_05", "prop_palm_sm_01f", "prop_tree_eng_oak_01"}
                                       local Proptree = (tree[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#tree)])
                                       _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(Proptree),coords.x,coords.y,coords.z,true,true,true)
                                       _FiVe_SeNsE_.n.FreezeEntityPosition(Proptree, true)
                                   end
                               end
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                       local tree = {"prop_tree_lficus_05", "prop_palm_sm_01f", "prop_tree_eng_oak_01"}
                                       local Proptree = (tree[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#tree)])
                                       _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(Proptree),coords.x,coords.y,coords.z,true,true,true)
                                       _FiVe_SeNsE_.n.FreezeEntityPosition(Proptree, true)
                                   end
                               end
                           end
   
                           if currentmode == "Terrorist Attack" then
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                               if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey('mp_m_freemode_01')) then
                                   _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey('mp_m_freemode_01'))
                               end
                               -- CREATE PED
                               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                               local ped = _FiVe_SeNsE_.n.CreatePed(5, _FiVe_SeNsE_.n.GetHashKey('mp_m_freemode_01'), coords.x,coords.y,coords.z - 0.5,true,true)
                                       _FiVe_SeNsE_.n.SetPedDefaultComponentVariation(ped)
                                       _FiVe_SeNsE_.n.SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 1, 115, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 3, 4, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 11, 12, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 8, 15, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 4, 56, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 6, 34, 0, 2)
                                       _FiVe_SeNsE_.n.GiveWeaponToPed(ped, _FiVe_SeNsE_.n.GetHashKey("WEAPON_ASSAULTRIFLE"), 200, 1, 1)
                                   for k, i in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do 
                                       _FiVe_SeNsE_.n.TaskCombatPed(ped, _FiVe_SeNsE_.n.GetPlayerPed(i), 0, 16)
                                   end
                               _FiVe_SeNsE_.n._ud_thr(function()
                                   _FiVe_SeNsE_.n._ud_wait(_FiVe_SeNsE_.ThisIsSliders[129].value)
                                   _FiVe_SeNsE_.n.AddExplosion(_FiVe_SeNsE_.n.GetEntityCoords(ped), 34, 500.0, true, false, false, false)
                               end)
                           end
                               if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 68) then 
                                   local ped = _FiVe_SeNsE_.n.CreatePed(5, _FiVe_SeNsE_.n.GetHashKey('mp_m_freemode_01'), coords.x,coords.y,coords.z - 0.5,true,true)
                                       _FiVe_SeNsE_.n.SetPedDefaultComponentVariation(ped)
                                       _FiVe_SeNsE_.n.SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 1, 115, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 3, 4, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 11, 12, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 8, 15, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 4, 56, 0, 2)
                                       _FiVe_SeNsE_.n.SetPedComponentVariation(ped, 6, 34, 0, 2)
                                       _FiVe_SeNsE_.n.GiveWeaponToPed(ped, _FiVe_SeNsE_.n.GetHashKey("WEAPON_ASSAULTRIFLE"), 200, 1, 1)
                                       for k, i in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do 
                                       _FiVe_SeNsE_.n.TaskCombatPed(ped, _FiVe_SeNsE_.n.GetPlayerPed(i), 0, 16)
                                       end
                                   _FiVe_SeNsE_.n._ud_thr(function()
                                       _FiVe_SeNsE_.n._ud_wait(_FiVe_SeNsE_.ThisIsSliders[129].value)
                                       _FiVe_SeNsE_.n.AddExplosion(_FiVe_SeNsE_.n.GetEntityCoords(ped), 34, 500.0, true, false, false, false)
                                   end)
                               end
                           end
                       end
   
                           if currentmode == "Map Fucker" then
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 68) then
                                       local props = {
                                           "hw1_lod_08_09_16_17_18",
                                           "cs4_lod_01_slod3",
                                           "dt1_11_dt1_tower_lod",
                                           "cs1_lod3_terrain_slod3_01",
                                           "dt1_19_lspd02_lod"
                                       }
                                       local Prop = (props[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#props)])
                                       _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                   end
                               end
                                   if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                       if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                           local props = {
                                               "hw1_lod_08_09_16_17_18",
                                               "cs4_lod_01_slod3",
                                               "dt1_11_dt1_tower_lod",
                                               "cs1_lod3_terrain_slod3_01",
                                               "dt1_19_lspd02_lod"
                                           }
                                           local Prop = (props[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#props)])
                                           _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                       end
                                   end
                               end
   
   
                           if currentmode == "Prop Spawner" then
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 68) then
                                       local smallprops = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                                       local Prop = (smallprops[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#smallprops)])
                                       _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                       _FiVe_SeNsE_.n.FreezeEntityPosition(Prop, true)
                                   end
                               end
                           if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                   local smallprops = {"apa_mp_h_yacht_bed_01","bkr_prop_biker_bblock_hump_01","bkr_prop_printmachine_4rollerp_st","csx_coastbigroc03_","ce_xr_ctr2","csx_coastrok3_","ex_prop_crate_elec_sc","ex_prop_crate_clothing_sc","gr_prop_gr_basepart","gr_prop_gr_cnc_01a","gr_prop_gr_ramproof_gate","gr_prop_gr_target_small_04a","gr_prop_gr_target_small_01b","gr_prop_inttruck_carmod_01","hei_prop_carrier_jet","imp_prop_covered_vehicle_07a","imp_prop_flatbed_ramp","lf_house_09_","lf_house_08_","lf_house_05_","lf_house_10_","lf_house_11_","prop_haybailer_01","prop_phonebox_04","dt1_23_dt1_scaffold","prop_parking_hut_2","prop_dumpster_01a","prop_rub_carwreck_7","apa_mp_h_stn_chairarm_02","apa_mp_h_stn_chairarm_03","apa_mp_h_kit_kitchen_01_a","apa_mp_h_str_avunitm_01","apa_prop_flag_czechrep","bkr_prop_bkr_cashpile_07","bkr_prop_meth_chiller_01a","bkr_prop_prtmachine_dryer_spin",}
                                   local Prop = (smallprops[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#smallprops)])
                                   _FiVe_SeNsE_.n.CreateObject(_FiVe_SeNsE_.n.GetHashKey(Prop),coords.x,coords.y,coords.z,true,true,true)
                                   _FiVe_SeNsE_.n.FreezeEntityPosition(Prop, true)
                               end
                           end
                       end
   
                           if currentmode == "Ped Spawner" then
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 68) then
                                       local pedTable = {"s_m_y_armymech_01","s_m_y_blackops_01","s_m_m_marine_01","s_m_y_blackops_03","s_m_y_blackops_02"}
                                       local randomPed = (pedTable[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#pedTable)])
                                       if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(randomPed)) then 
                                           _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(randomPed))
                                       end 										_FiVe_SeNsE_.n._ud_wait(5)
                                           local ped = _FiVe_SeNsE_.n.CreatePed(3,_FiVe_SeNsE_.n.GetHashKey(randomPed),coords.x,coords.y,coords.z - 0.5,true,true)
                                           _FiVe_SeNsE_.n.SetEntityInvincible(ped, true)
                                           _FiVe_SeNsE_.n.GiveWeaponToPed(ped, _FiVe_SeNsE_.n.GetHashKey("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                           for k, i in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do 
                                           _FiVe_SeNsE_.n.TaskCombatPed(ped, _FiVe_SeNsE_.n.GetPlayerPed(i), 0, 16)
                                           end
                                       end
                                   end			
                                   if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                       if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                           local pedTable = {"s_m_y_armymech_01","s_m_y_blackops_01","s_m_m_marine_01","s_m_y_blackops_03","s_m_y_blackops_02"}
                                           local randomPed = (pedTable[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#pedTable)])
                                           if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(randomPed)) then 
                                               _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(randomPed))
                                           end 										
                                           _FiVe_SeNsE_.n._ud_wait(5)
                                               local ped = _FiVe_SeNsE_.n.CreatePed(3, _FiVe_SeNsE_.n.GetHashKey(randomPed),coords.x,coords.y,coords.z - 0.5,true,true)
                                               _FiVe_SeNsE_.n.SetEntityInvincible(ped, true)
                                               _FiVe_SeNsE_.n.GiveWeaponToPed(ped, _FiVe_SeNsE_.n.GetHashKey("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                               for k, i in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do 
                                               _FiVe_SeNsE_.n.TaskCombatPed(ped, _FiVe_SeNsE_.n.GetPlayerPed(i), 0, 16)
                                               end
                                           end
                                       end
                                   end
                               
   
                           if currentmode == "Animal Spawner" then
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 68) then
                                       local animalTable = {"a_c_boar","a_c_dolphin","a_c_killerwhale","a_c_retriever","a_c_pig","a_c_cow","a_c_humpback"}
                                       local animal = (animalTable[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#animalTable)])
                                       if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(animal)) then 
                                           _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(animal))
                                       end 
                                       _FiVe_SeNsE_.n.CreatePed(3, _FiVe_SeNsE_.n.GetHashKey(animal),coords.x,coords.y,coords.z,true,true)
                                   end
                               end
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                   if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                       local animalTable = {"a_c_boar","a_c_dolphin","a_c_killerwhale","a_c_retriever","a_c_pig","a_c_cow","a_c_humpback"}
                                       local animal = (animalTable[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#animalTable)])
                                       if not _FiVe_SeNsE_.n.HasModelLoaded(_FiVe_SeNsE_.n.GetHashKey(animal)) then 
                                           _FiVe_SeNsE_.n.RequestModel(_FiVe_SeNsE_.n.GetHashKey(animal))
                                       end 
                                       _FiVe_SeNsE_.n.RequestModel(animal)
                                       _FiVe_SeNsE_.n.CreatePed(3,_FiVe_SeNsE_.n.GetHashKey(animal),coords.x,coords.y,coords.z,true,true)
                                   end
                               end
                           end
   
                           if currentmode == "Particle Spawner" then
                           if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                       _FiVe_SeNsE_.n.RequestNamedPtfxAsset("scr_rcbarry2")
                                       _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("scr_rcbarry2")
                                       _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",coords,0.0,0.0,0.0,21.0,false,false,false)
   
                                       _FiVe_SeNsE_.n.RequestNamedPtfxAsset("core")
                                       _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("core")
                                       _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coords,0.0,0.0,0.0,21.0,false,false,false)
                                   end
                               if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                   if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 68) then 
                                       _FiVe_SeNsE_.n.RequestNamedPtfxAsset("scr_rcbarry2")
                                       _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("scr_rcbarry2")
                                       _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears",coords,0.0,0.0,0.0,21.0,false,false,false)
   
                                       _FiVe_SeNsE_.n.RequestNamedPtfxAsset("core")
                                       _FiVe_SeNsE_.n.UseParticleFxAssetNextCall("core")
                                       _FiVe_SeNsE_.n.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coords,0.0,0.0,0.0,21.0,false,false,false)
                                   end
                               end
                           end
                       end
   
                           if currentmode == "Fast and Furious" then
                               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                   if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then
                                       local vehs = {"sultanrs","blista","zentorno","adder","turismo","deviant","thrax","vamos",} 
                                       local hash = _FiVe_SeNsE_.n.GetHashKey(vehs[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#vehs)])
                                       if not _FiVe_SeNsE_.n.HasModelLoaded(hash) then 
                                           _FiVe_SeNsE_.n.RequestModel(hash)
                                       end
                                       
                                       local veh = _FiVe_SeNsE_.n.CreateVehicle(hash, coords, 1, 1, 1)
                                       _FiVe_SeNsE_.n.SetVehicleEngineOn(veh, true, true, true)
                                       _FiVe_SeNsE_.n.SetEntityRotation(veh, _FiVe_SeNsE_.n.GetCamRot(camera, 2), 0.0, _FiVe_SeNsE_.n.GetCamRot(camera, 2), 0.0, true)
                                       _FiVe_SeNsE_.n.SetVehicleForwardSpeed(veh, 500.0)
                                   end
                               end
                           end
   
   
   
                           if currentmode == "Teleport" then
                               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                   if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                       _FiVe_SeNsE_.n.SetEntityCoords(_FiVe_SeNsE_.n.PlayerPedId(), coords)
                                   end
                               end
                           end
   
                           if currentmode == "Vehicle Spawner" then
                               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                   if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                       local vehicles = {"adder", "sultanrs", "bati"}
                                       local hash = _FiVe_SeNsE_.n.GetHashKey(vehicles[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#vehicles)])
                                       if not _FiVe_SeNsE_.n.HasModelLoaded(hash) then 
                                           _FiVe_SeNsE_.n.RequestModel(hash)
                                       end
                                       local veh = _FiVe_SeNsE_.n.CreateVehicle(hash, coords, 1, 1, 1)
                                   end
                               end
   
                               if _FiVe_SeNsE_.n.IsDisabledControlPressed(1, 68) then 
                                   if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                       local vehicles = {"adder", "sultanrs", "bati"}
                                       local hash = _FiVe_SeNsE_.n.GetHashKey(vehicles[_FiVe_SeNsE_._shit_ThisMathematicShit._ud_random(#vehicles)])
                                       if not _FiVe_SeNsE_.n.HasModelLoaded(hash) then 
                                           _FiVe_SeNsE_.n.RequestModel(hash)
                                       end
                                       local veh = _FiVe_SeNsE_.n.CreateVehicle(hash, coords, 1, 1, 1)
                                   end
                               end
                           end
   
   
                           if currentmode == "Entity Deleter" then
                               if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(0, 69) then 
                                   if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) and not _FiVe_SeNsE_.menu.open then 
                                       if _FiVe_SeNsE_.n.DoesEntityExist(entity) and not _FiVe_SeNsE_.n.IsPedAPlayer(entity) then
                                           _FiVe_SeNsE_.n.DeleteEntity(entity)
                                       end
                                   end
                               end
                           end
                           
                           if coords ~= _FiVe_SeNsE_._shit_ThisMathematicShit._ud_vectorthree(0, 0, 0) then 
                               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText("[<FONT COLOR='#8dbc26'>fivesense~s~] ".. currentmode ..", x: "..cx.. ' y: '..cy.. ' z: '.. cz, 0.5, 0.97, 0.34, true, 4, true)
                           else
                               _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.DrawText("[<FONT COLOR='#8dbc26'>fivesense~s~] ".. currentmode ..", x: Not Found! y: Not Found! z: Not Found! ", 0.5, 0.97, 0.34, true, 4, true)
                           end
                       
                           
   
                           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(1, 14) then
                               _FiVe_SeNsE_.freecam.mode = _FiVe_SeNsE_.freecam.mode + 1
                               if _FiVe_SeNsE_.freecam.mode > #_FiVe_SeNsE_.freecam.modes then
                                   _FiVe_SeNsE_.freecam.mode = 1
                               end
                           end
       
                           if _FiVe_SeNsE_.n.IsDisabledControlJustPressed(1, 15) then
                               _FiVe_SeNsE_.freecam.mode = _FiVe_SeNsE_.freecam.mode - 1
                               if _FiVe_SeNsE_.freecam.mode < 1 then
                                   _FiVe_SeNsE_.freecam.mode = #_FiVe_SeNsE_.freecam.modes
                               end
                           end
   
   
                           _FiVe_SeNsE_.n.SetFocusPosAndVel(_FiVe_SeNsE_.n.GetCamCoord(camera).x, _FiVe_SeNsE_.n.GetCamCoord(camera).y, _FiVe_SeNsE_.n.GetCamCoord(camera).z, 0.0, 0.0, 0.0)
                           _FiVe_SeNsE_.n.SetCamRot(camera, offsetRotX, offsetRotY, offsetRotZ, 2)	
                       end			
                   end	
               end
           end
       end	
   end)
   
   _FiVe_SeNsE_.n._ud_thr(function()
       while _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.menuenabled do 
           _FiVe_SeNsE_.n._ud_wait(500)
   
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.explodeallcars then 
               for vehicle in _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.enumerateVehicles() do 
                   local coords = _FiVe_SeNsE_.n.GetEntityCoords(vehicle)
                   _FiVe_SeNsE_.n.AddExplosion(coords.x, coords.y, coords.z, 1, 10000.0, true, false, 0.0)
               end
           end
           
           
           if _FiVe_SeNsE_._shitkurva_ThisIsshitwithall.kickallplayersfromcar and _FiVe_SeNsE_.n.IsPedInAnyVehicle(_FiVe_SeNsE_.n.GetPlayerPed(-1), true)  then 
               for _, ped in _FiVe_SeNsE_._shit_ThisMathematicShit._ud_Ppairs(_FiVe_SeNsE_.n.GetActivePlayers()) do 
                   _FiVe_SeNsE_.n.ClearPedTasksImmediately(_FiVe_SeNsE_.n.GetPlayerPed(ped))
               end 
           end
       end
   end)	
end)