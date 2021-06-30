--[[
    Have fun with this paste :) 

    ~xanax#3242
]]


--GLife Bypass
--[[Citizen.CreateThread(function()
    while true do
        reportEvent = nil
        reportEvent2 = nil
        Citizen.Wait(500)
    end
end)]]
-- I'm gonna leave the function shit here for now --
local HashFucker = function(value)
    return Citizen.InvokeNative(0xD24D37CC275948CC, tostring(value), Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end
-- shit that is needed to stay ud --
local Lumia1 = {
    TR = {},
    rE = {
        LumThread = Citizen.CreateThread,
        LumWait = Citizen.Wait,
        LumInv = Citizen.InvokeNative,
        LumRRA = Citizen.ReturnResultAnyway,
        LumI = Citizen.PointerValueInt,
        LumPVV = Citizen.PointerValueVector,
        LumRAF = Citizen.ResultAsFloat,
        LumRAS = Citizen.ResultAsString,
        LumRAL = Citizen.ResultAsLong,
        LumRAV = Citizen.ResultAsVector,
        LumRAI = Citizen.ResultAsInteger,
        LumHash = function(hash)
            if _G.type(hash) == 'string' then
                return HashFucker(hash)
            end
            return hash
        end,
        LumPVF = Citizen.PointerValueFloat,
        LumRAO = Citizen.ResultAsObject,
        LumII = Citizen.PointerValueIntInitialized,
        LumToString = tostring,
        LumToNum = tonumber,
        LumMath = {
            LumCeli = math.ceil,
            LumFloor = math.floor,
            LumSin = math.sin,
            LumRad = math.rad,
            LumAbs = math.abs,
            LumCos = math.cos,
            LumPi = math.pi,
            LumSqrt = math.sqrt,
            LumRand = math.random,
        },
        LumString = {
            LumUpper = string.upper,
            LumLower = string.lower,
            LumFind = string.find,
            LumSub = string.sub,
            LumGsub = string.gsub,
            LumChar = string.char,
        },
        LumTable = {
            LumPack = table.pack,
            LumInsert = table.insert,
            LumUnPack = table.unpack,
            LumSort = table.sort,
            LumRemove = table.remove,
            LumMsgPack = msgpack.pack,
            LumMsgUnpack = msgpack.unpack
        },
    },
    Keys = {
        ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56,
        ["F10"] = 57, ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
        ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245,
        ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18, ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9,
        ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182, ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26,
        ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22,
        ["RIGHTCTRL"] = 70, ["HOME"] = 213, ["INSERT"] = 121, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,["LEFT"] = 174,
        ["RIGHT"] = 175, ["UP"] = 172, ["DOWN"] = 173, ["NENTER"] = 201, ["MWHEELUP"] = 15, ["MWHEELDOWN"] = 14, ["N4"] = 108, ["N5"] = 110, ["N6"] = 107,
        ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 111, ["N9"] = 118,["MOUSE1"] = 24, ["MOUSE2"] = 25, ["MOUSE3"] = 348
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
-- simply a native table --
local LumiaN = {
    natives = {
        BigCheckerino = function() --Big meme lolololol
            return Lumia1.rE.LumInv(0xEB014D1CC, "menu_Lumia", Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        DrawRect = function(x, y, w, h, r, g, b, a)
            return Lumia1.rE.LumInv(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
        end,
        IsDisabledControlJustReleased = function(a, b)
            return Lumia1.rE.LumInv(0x305C8DCD79DA8B0F, a, b, Lumia1.rE.LumRRA())
        end,
        SetMouseCursorActiveThisFrame = function()
            return Lumia1.rE.LumInv(0xAAE7CE1D63167423)
        end,
        DisableAllControlActions = function(a)
            return Lumia1.rE.LumInv(0x5F4B6931816E599B, a)
        end,
        GetActiveScreenResolution = function()
            return Lumia1.rE.LumInv(0x873C9F3104101DD3, Lumia1.rE.LumI(), Lumia1.rE.LumI())
        end,
        GetNuiCursorPosition = function()
            return Lumia1.rE.LumInv(0xbdba226f, Lumia1.rE.LumI(), Lumia1.rE.LumI())
        end,
        SetTextFont = function(font)
            return Lumia1.rE.LumInv(0x66E0276CC5F6B9DA, font)
        end,
        SetTextScale = function(scale, scale1)
            return Lumia1.rE.LumInv(0x07C837F9A01C34C9, scale, scale1)
        end,
        SetTextCentre = function(align)
            return Lumia1.rE.LumInv(0xC02F4DBFB51D988B, align)
        end,
        SetTextColour = function(r, g, b, a)
            return Lumia1.rE.LumInv(0xBE6B23FFA53FB442, r, g, b, a)
        end,
        BeginTextCommandDisplayText = function(text)
            return Lumia1.rE.LumInv(0x25FBB336DF1804CB, Lumia1.rE.LumToString(text))
        end,
        AddTextComponentSubstringPlayerName = function(text)
            return Lumia1.rE.LumInv(0x6C188BE134E074AA, Lumia1.rE.LumToString(text))
        end,
        EndTextCommandDisplayText = function(x, y)
            return Lumia1.rE.LumInv(0xCD015E5BB0D96A57, x, y)
        end,
        IsDisabledControlPressed = function(a, b)
            return Lumia1.rE.LumInv(0xE2587F8CBBD87B1D, a, b, Lumia1.rE.LumRRA())
        end,
        SetMouseCursorSprite = function(a)
            return Lumia1.rE.LumInv(0x8DB8CFFD58B62552, a)
        end,
        PlaySoundFrontend = function(soundId, audioName, audioRef, p3)
            return Lumia1.rE.LumInv(0x67C540AA08E4A6F5, soundId, Lumia1.rE.LumToString(audioName), Lumia1.rE.LumToString(audioRef), p3)
        end,
        BeginTextCommandWidth = function(text)
            return Lumia1.rE.LumInv(0x54CE8AC98E120CAB, Lumia1.rE.LumToString(text))
        end,
        EndTextCommandGetWidth = function(font)
            return Lumia1.rE.LumInv(0x85F061DA64ED2F67, font, Lumia1.rE.LumRAF())
        end,
        HasStreamedTextureDictLoaded = function(dict)
            return Lumia1.rE.LumInv(0x0145F696AAAAD2E4, Lumia1.rE.LumToString(dict), Lumia1.rE.LumRRA())
        end,
        RequestStreamedTextureDict = function(dict)
            return Lumia1.rE.LumInv(0xDFA2EF8E04127DD5, Lumia1.rE.LumToString(dict))
        end,
        DrawSprite = function(dict, name, x, y, w, h, heading, r, g, b, a)
            return Lumia1.rE.LumInv(0xE7FFAE5EBF23D890, Lumia1.rE.LumToString(dict), Lumia1.rE.LumToString(name), x, y, w, h, heading, r, g, b, a)
        end,
        GetDuiHandle = function(duiObject)
            return Lumia1.rE.LumInv(0x1655d41d, duiObject, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAS())
        end,
        CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle)
            return Lumia1.rE.LumInv(0xb135472b, txd, txn, Lumia1.rE.LumToString(duiHandle), Lumia1.rE.LumRRA(), Lumia1.rE.LumRAL())
        end,
        CreateRuntimeTxd = function(name)
            return Lumia1.rE.LumInv(0x1f3ac778, Lumia1.rE.LumToString(name), Lumia1.rE.LumRRA(), Lumia1.rE.LumRAL())
        end,
        CreateDui = function(url, width, height)
            return Lumia1.rE.LumInv(0x23eaf899, Lumia1.rE.LumToString(url), width, height, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAL())
        end,
        SetEntityHealth = function(entity,health)
            return Lumia1.rE.LumInv(0x6B76DC1F3AE6E6A3, entity, health)
        end,
        TriggerServerEventInternal = function(eventName, eventPayload, payloadlength)
            return Lumia1.rE.LumInv(0x7FDD1128, Lumia1.rE.LumToString(eventName), Lumia1.rE.LumToString(eventPayload), payloadlength)
        end,
        TriggerEventInternal = function(eventName, eventPayload, payloadlength)
            return Lumia1.rE.LumInv(0x91310870, Lumia1.rE.LumToString(eventName), Lumia1.rE.LumToString(eventPayload), payloadlength)
        end,
        StopScreenEffect = function(effectName)
            return Lumia1.rE.LumInv(0x068E835A1D0DC0E3, Lumia1.rE.LumToString(effectName))
        end,
        ClearPedBloodDamage = function(ped)
            return Lumia1.rE.LumInv(0x8FE22675A5A45817, ped)
        end,
        GetEntityCoords = function(entity)
            return Lumia1.rE.LumInv(0x3FEF770D40960D5A, entity, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAV())
        end,
        PlayerPedId = function()
            return Lumia1.rE.LumInv(0xD80958FC74E988A6, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetPlayerPed = function(id)
            return Lumia1.rE.LumInv(0x43A66C31C68491C0, id, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        NetworkResurrectLocalPlayer = function(p0, p1, p2, p3, p4, p5)
            return Lumia1.rE.LumInv(0xEA23C49EAA83ACFB, p0, p1, p2, p3, p4, p5)
        end,
        SetEntityCoordsNoOffset = function(entity, X, Y, Z, p4, p5, p6)
            return Lumia1.rE.LumInv(0x239A3351AC1DA385, entity, X, Y, Z, p4, p5, p6)
        end,
        AddArmourToPed = function(ped, amount)
            return Lumia1.rE.LumInv(0x5BA652A0CD14DF2F, ped, amount)
        end,
        SetPlayerInvincible = function(ped, toggle)
            return Lumia1.rE.LumInv(0x239528EACDC3E7DE, ped, toggle)
        end,
        SetEntityInvincible = function(ped, toggle)
            return Lumia1.rE.LumInv(0x3882114BDE571AD4, ped, toggle)
        end,
        SetEntityVisible = function(p0, p1, p2)
            return Lumia1.rE.LumInv(0xEA1C610A04DB6BBB, p0, p1, p2)
        end,
        SetRunSprintMultiplierForPlayer = function(player, multiplier)
            return Lumia1.rE.LumInv(0x6DB47AA77FD94E09, player, multiplier)
        end,
        SetPedMoveRateOverride = function(ped, value)
            return Lumia1.rE.LumInv(0x085BF80FA50A39D1, ped, value)
        end,
        ResetPlayerStamina = function(player)
            return Lumia1.rE.LumInv(0xA6F312FCCE9C1DFE, player)
        end,
        SetSuperJumpThisFrame = function(player)
            return Lumia1.rE.LumInv(0x57FFF03E423A4C0B, player, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        PlayerId = function()
            return Lumia1.rE.LumInv(0x4F8644AF03D0E0D6, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        RequestModel = function(model)
            return Lumia1.rE.LumInv(0x963D27A58DF860AC, Lumia1.rE.LumHash(model))
        end,
        HasModelLoaded = function(model)
            return Lumia1.rE.LumInv(0x98A4EB5D89A0C952, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        SetPlayerModel = function(player, model)
            return Lumia1.rE.LumInv(0x00A1CADD00108836, player, Lumia1.rE.LumHash(model))
        end,
        SetModelAsNoLongerNeeded = function(model)
            return Lumia1.rE.LumInv(0xE532F5D78798DAAB, Lumia1.rE.LumHash(model))
        end,
        SetPedHeadBlendData = function(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
            return Lumia1.rE.LumInv(0x9414E18B9434C2FE, ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
        end,
        SetPedHeadOverlay = function(ped, overlayID, index, opacity)
            return Lumia1.rE.LumInv(0x48F44967FA05CC1E, ped, overlayID, index, opacity)
        end,
        SetPedHeadOverlayColor = function(ped, overlayID, colorType, colorID, secondColorID)
            return Lumia1.rE.LumInv(0x497BF74A7B9CB952, ped, overlayID, colorType, colorID, secondColorID)
        end,
        SetPedComponentVariation = function(ped, componentId, drawableId, textureId, paletteId)
            return Lumia1.rE.LumInv(0x262B14F48D29DE80, ped, componentId, drawableId, textureId, paletteId)
        end,
        SetPedHairColor = function(ped, colorID, highlightColorID)
            return Lumia1.rE.LumInv(0x4CFFC65454C93A49, ped, colorID, highlightColorID)
        end,
        SetPedPropIndex = function(ped, componentId, drawableId, TextureId, attach)
            return Lumia1.rE.LumInv(0x93376B65A266EB5F, ped, componentId, drawableId, TextureId, attach)
        end,
        SetPedDefaultComponentVariation = function(ped)
            return Lumia1.rE.LumInv(0x45EEE61580806D63, ped)
        end,
        CreateCam = function(camName, p1)
            return Lumia1.rE.LumInv(0xC3981DCE61D9E13F, Lumia1.rE.LumToString(camName), p1, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        RenderScriptCams = function(render, ease, easeTime, p3, p4)
            return Lumia1.rE.LumInv(0x07E5B515DB0636FC, render, ease, camera, p3, p4)
        end,
        SetCamActive = function(cam, active)
            return Lumia1.rE.LumInv(0x026FB97D0A425F84, cam, active)
        end,
        SetFocusEntity = function(entity)
            return Lumia1.rE.LumInv(0x198F77705FA0931D, entity)
        end,
        GetControlNormal = function(inputGroup, control)
            return Lumia1.rE.LumInv(0xEC3C9B8D5327B563, inputGroup, control, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAF())
        end,
        GetDisabledControlNormal = function(p0, p1)
            return Lumia1.rE.LumInv(0x11E65974A982637C, p0, p1, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAF())
        end,
        GetEntityRotation = function(entity, p1)
            return Lumia1.rE.LumInv(0xAFBD61CC738D9EB9, entity, p1, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAV())
        end,
        SetCamRot = function(cam, rotX, rotY, rotZ, p4)
            return Lumia1.rE.LumInv(0x85973643155D0B07, cam, rotX, rotY, rotZ, p4)
        end,
        GetGroundZFor_3dCoord = function(x, y, z)
            return Lumia1.rE.LumInv(0xC906A7DAB05C8D2B, x, y, z, Lumia1.rE.LumPVF(), Lumia1.rE.LumRRA())
        end,
        GetOffsetFromEntityInWorldCoords = function(entity, xOffset, yOffset, zOffset)
            return Lumia1.rE.LumInv(0x1899F328B0E12848, entity, xOffset, yOffset, zOffset, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAV())
        end,
        SetCamCoord = function(cam, posX, posY, posZ)
            return Lumia1.rE.LumInv(0x4D41783FB745E42E, cam, posX, posY, posZ)
        end,
        ClearFocus = function()
            return Lumia1.rE.LumInv(0x31B73D1EA9F01DA2)
        end,
        AddTextEntry = function(entryKey, entryText)
            return Lumia1.rE.LumInv(0x32ca01c3, Lumia1.rE.LumToString(entryKey), Lumia1.rE.LumToString(entryText))
        end,
        DisplayOnscreenKeyboard = function(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength)
            return Lumia1.rE.LumInv(0x00DC833F2568DBF6, p0, Lumia1.rE.LumToString(windowTitle), Lumia1.rE.LumToString(p2), Lumia1.rE.LumToString(defaultText), Lumia1.rE.LumToString(defaultConcat1), Lumia1.rE.LumToString(defaultConcat2), Lumia1.rE.LumToString(defaultConcat3), maxInputLength)
        end,
        UpdateOnscreenKeyboard = function()
            return Lumia1.rE.LumInv(0x0CF2B696BBF945AE, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetOnscreenKeyboardResult = function()
            return Lumia1.rE.LumInv(0x8362B09B91893647, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAS())
        end,
        EnableAllControlActions = function(index)
            return Lumia1.rE.LumInv(0xA5FFE9B05F199DE7, index)
        end,
        GetActivePlayers = function()
            return Lumia1.rE.LumTable.LumMsgUnpack(Lumia1.rE.LumInv(0xcf143fb9, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAO()))
        end,
        GetPlayerServerId = function(a)
            return Lumia1.rE.LumInv(0x4d97bcc7, a, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetPlayerName = function(playerSrc)
            return Lumia1.rE.LumInv(0x6D0DE6A7B5DA71F8, playerSrc, Lumia1.rE.LumRAS())
        end,
        DestroyCam = function(cam)
            return Lumia1.rE.LumInv(0x865908C81A2C22E9, cam)
        end,
        ClearTimecycleModifier = function()
            return Lumia1.rE.LumInv(0x0F07E7745A236711)
        end,
        IsModelValid = function(model)
            return Lumia1.rE.LumInv(0xC0296A2EDF545E92, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsModelAVehicle = function(model)
            return Lumia1.rE.LumInv(0x19AAC8F07BFEC53E, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        CreateVehicle = function(modelHash, x, y, z, heading, networkHandle, vehiclehandle)
            return Lumia1.rE.LumInv(0xAF35D0D2583051B0, modelHash, x, y, z, heading, networkHandle, vehiclehandle, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetPedIntoVehicle = function(ped, vehicle, seatIndex)
            return Lumia1.rE.LumInv(0xF75B0D629E1C063D, ped, vehicle, seatIndex)
        end,
        CreateObject = function(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic)
            return Lumia1.rE.LumInv(0x509D5878EB39E842, modelHash, x, y, z, isNetwork, netMissionEntity, dynamic, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        ShootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
            return Lumia1.rE.LumInv(0x867654CBC7606F2C, x1, y1, z1, x2, y2, z2, damage, p7, Lumia1.rE.LumHash(weaponHash), ownerPed, isAudible, isInvisible, speed)
        end,
        RequestNamedPtfxAsset = function(assetName)
            return Lumia1.rE.LumInv(0xB80D8756B4668AB6, Lumia1.rE.LumToString(assetName))
        end,
        HasNamedPtfxAssetLoaded = function(assetName)
            return Lumia1.rE.LumInv(0x8702416E512EC454, Lumia1.rE.LumToString(assetName), Lumia1.rE.LumRRA())
        end,
        UseParticleFxAsset = function(name)
            return Lumia1.rE.LumInv(0x6C38AF3693A69A91, Lumia1.rE.LumToString(name))
        end,
        StartNetworkedParticleFxNonLoopedAtCoord = function(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
            return Lumia1.rE.LumInv(0xF56B8137DF10135D, Lumia1.rE.LumToString(effectName), xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, Lumia1.rE.LumRRA())
        end,
        AttachEntityToEntity = function(entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
            return Lumia1.rE.LumInv(0x6B9BBD38AB0796DF, entity1, entity2, boneIndex, x, y, z, xRot, yRot, zRot, p9, isRel, ignoreUpVec, allowRotation, unk, p14)
        end,
        GetPedBoneIndex = function(ped, boneId)
            return Lumia1.rE.LumInv(0x3F428D08BE5AAE31, ped, boneId, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        IsPedInAnyVehicle = function(ped, atGetIn)
            return Lumia1.rE.LumInv(0x997ABD671D25CA0B, ped, atGetIn, Lumia1.rE.LumRRA())
        end,
        GetVehiclePedIsUsing = function(ped)
            return Lumia1.rE.LumInv(0x6094AD011A2EA87D, ped, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetVehicleMaxNumberOfPassengers = function(vehicle)
            return Lumia1.rE.LumInv(0xA7C4F2C6E744A550, vehicle, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        IsVehicleSeatFree = function(vehicle, seatIndex)
            return Lumia1.rE.LumInv(0x22AC59A870E6A669, vehicle, seatIndex, Lumia1.rE.LumRRA())
        end,
        GetVehiclePedIsIn = function(ped, lastVehicle)
            return Lumia1.rE.LumInv(0x9A9112A0FE9A4713, ped, getLastVehicle, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        DisablePlayerFiring = function(player, toggle)
            return Lumia1.rE.LumInv(0x5E6CC07646BBEAB8, player, toggle)
        end,
        ClearPedTasks = function(ped)
            return Lumia1.rE.LumInv(0xE1EF3C1216AFF2CD, ped)
        end,
        ClearPedTasksImmediately = function(ped)
            return Lumia1.rE.LumInv(0xAAA34F8A7CB32098, ped)
        end,
        CreatePed = function(pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck)
            return Lumia1.rE.LumInv(0xD49F9B0955C367DE, pedType, modelHash, x, y, z, heading, isNetwork, thisScriptCheck, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        FreezeEntityPosition = function(entity, toggle)
            return Lumia1.rE.LumInv(0x428CA6DBD1094446, entity, toggle)
        end,
        AddRope = function(x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, p10, p11, p12, rigid, p14, breakWhenShot, unkPtr)
            return Lumia1.rE.LumInv(0xE832D760399EB220, x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, p10, p11, p12, rigid, p14, breakWhenShot, Lumia1.rE.LumII(unkPtr), Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetPedCanRagdoll = function(ped, toggle)
            return Lumia1.rE.LumInv(0xB128377056A54E2A, ped, toggle)
        end,
        ClearPedSecondaryTask = function(ped)
            return Lumia1.rE.LumInv(0x176CECF6F920D707, ped)
        end,
        TaskSetBlockingOfNonTemporaryEvents = function(ped, toggle)
            return Lumia1.rE.LumInv(0x90D2156198831D69, ped, toggle)
        end,
        SetPedFleeAttributes = function(ped, p1, p2)
            return Lumia1.rE.LumInv(0x70A2D1137C8ED7C9, ped, p1, p2)
        end,
        SetPedCombatAttributes = function(ped, attributeIndex, p2)
            return Lumia1.rE.LumInv(0x9F7794730795E019, ped, attributeIndex, p2)
        end,
        SetPedSeeingRange = function(ped, value)
            return Lumia1.rE.LumInv(0xF29CF591C4BF6CEE, ped, value)
        end,
        SetPedHearingRange = function(ped, value)
            return Lumia1.rE.LumInv(0x33A8F7F7D5F7F33C, ped, value)
        end,
        SetPedAlertness = function(ped, value)
            return Lumia1.rE.LumInv(0xDBA71115ED9941A6, ped, value)
        end,
        SetPedKeepTask = function(ped, toggle)
            return Lumia1.rE.LumInv(0x971D38760FBC02EF, ped, toggle)
        end,
        IsDisabledControlJustPressed = function(index, control)
            return Lumia1.rE.LumInv(0x91AEF906BCA88877, index, control, Lumia1.rE.LumRRA())
        end,
        IsDisabledControlReleased = function(inputGroup, control)
	        return Lumia1.rE.LumInv(0xFB6C4072E9A32E92, inputGroup, control, Lumia1.rE.LumRRA())
        end,
        SetVehicleModKit = function(vehicle, modKit)
            return Lumia1.rE.LumInv(0x1F2AA07F00B3217A, vehicle, modKit)
        end,
        GetNumVehicleMods = function(vehicle, modType)
            return Lumia1.rE.LumInv(0xE38E9162A2500646, vehicle, modType, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetModTextLabel = function(vehicle, modType, modValue)
            return Lumia1.rE.LumInv(0x8935624F8C5592CC, vehicle, modType, modValue, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAS())
        end,
        GetLabelText = function(labelName)
            return Lumia1.rE.LumInv(0x7B5280EBA9840C72, Lumia1.rE.LumToString(labelName), Lumia1.rE.LumRRA(), Lumia1.rE.LumRAS())
        end,
        SetVehicleMod = function(vehicle, modType, modIndex, customTires)
            return Lumia1.rE.LumInv(0x6AF0636DDEDCB6DD, vehicle, modType, modIndex, customTires)
        end,
        ToggleVehicleMod = function(vehicle, modType, toggle)
            return Lumia1.rE.LumInv(0x2A1F4F37F95BAD08, vehicle, modType, toggle)
        end,
        SetVehicleGravityAmount = function(vehicle, gravity)
            return Lumia1.rE.LumInv(0x1a963e58, vehicle, gravity)
        end,
        SetVehicleForwardSpeed = function(vehicle, speed)
            return Lumia1.rE.LumInv(0xAB54A438726D25D5, vehicle, speed)
        end,
        SetVehicleNumberPlateText = function(vehicle, plateText)
            return Lumia1.rE.LumInv(0x95A88F0B409CDA47, vehicle, Lumia1.rE.LumToString(plateText))
        end,
        DoesEntityExist = function(entity)
            return Lumia1.rE.LumInv(0x7239B21A38F536BA, entity, Lumia1.rE.LumRRA())
        end,
        GetVehicleColours = function(vehicle)
            return Lumia1.rE.LumInv(0xA19435F193E081AC, vehicle, Lumia1.rE.LumI(), Lumia1.rE.LumI())
        end,
        GetVehicleExtraColours = function(vehicle)
            return Lumia1.rE.LumInv(0x3BC4245933A166F7, vehicle, Lumia1.rE.LumI(), Lumia1.rE.LumI())
        end,
        DoesExtraExist = function(vehicle, extraId)
            return Lumia1.rE.LumInv(0x1262D55792428154, vehicle, extraId, Lumia1.rE.LumRRA())
        end,
        IsVehicleExtraTurnedOn = function(vehicle, extraId)
            return Lumia1.rE.LumInv(0xD2E6822DBFD6C8BD, vehicle, extraId, Lumia1.rE.LumRRA())
        end,
        GetEntityModel = function(entity)
            return Lumia1.rE.LumInv(0x9F47B058362C84B5, entity, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetVehicleWheelType = function(vehicle)
            return Lumia1.rE.LumInv(0xB3ED1BFB4BE636DC, vehicle, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetVehicleWindowTint = function(vehicle)
            return Lumia1.rE.LumInv(0x0EE21293DAD47C95, vehicle, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        IsVehicleNeonLightEnabled = function(vehicle, index)
            return Lumia1.rE.LumInv(0x8C4B92553E4766A5, vehicle, index, Lumia1.rE.LumRRA())
        end,
        GetVehicleNeonLightsColour = function(vehicle)
            return Lumia1.rE.LumInv(0x7619EEE8C886757F, vehicle, Lumia1.rE.LumI(), Lumia1.rE.LumI(), Lumia1.rE.LumI())
        end,
        GetVehicleTyreSmokeColor = function(vehicle)
            return Lumia1.rE.LumInv(0xB635392A4938B3C3, vehicle, Lumia1.rE.LumI(), Lumia1.rE.LumI(), Lumia1.rE.LumI())
        end,
        GetVehicleMod = function(vehicle, modType)
            return Lumia1.rE.LumInv(0x772960298DA26FDB, vehicle, modType, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        IsToggleModOn = function(vehicle, modType)
            return Lumia1.rE.LumInv(0x84B233A8C8FC8AE7, vehicle, modType, Lumia1.rE.LumRRA())
        end,
        GetVehicleLivery = function(vehicle)
            return Lumia1.rE.LumInv(0x2BB9230590DA5E8A, vehicle, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetVehicleFixed = function(vehicle)
            return Lumia1.rE.LumInv(0x115722B1B9C14C1C, vehicle)
        end,
        SetVehicleLightsMode = function(vehicle, p1)
            return Lumia1.rE.LumInv(0x1FD09E7390A74D54, vehicle, p1)
        end,
        SetVehicleLights = function(vehicle, p1)
            return Lumia1.rE.LumInv(0x34E710FF01247C5A, vehicle, p1)
        end,
        SetVehicleBurnout = function(vehicle, toggle)
            return Lumia1.rE.LumInv(0xFB8794444A7D60FB, vehicle, toggle)
        end,
        SetVehicleEngineHealth = function(vehicle, health)
            return Lumia1.rE.LumInv(0x45F6D8EEF34ABEF1, vehicle, health)
        end,
        SetVehicleFuelLevel = function(vehicle, level)
            return Lumia1.rE.LumInv(0xba970511, vehicle, level)
        end,
        SetVehicleOilLevel = function(vehicle, level)
            return Lumia1.rE.LumInv(0x90d1cad1, vehicle, level)
        end,
        SetVehicleDirtLevel = function(vehicle, dirtLevel)
            return Lumia1.rE.LumInv(0x79D3B596FE44EE8B, vehicle, dirtLevel)
        end,
        SetVehicleOnGroundProperly = function(vehicle)
            return Lumia1.rE.LumInv(0x49733E92263139D1, vehicle, Lumia1.rE.LumRRA())
        end,
        SetEntityAsMissionEntity = function(entity, value, p2)
            return Lumia1.rE.LumInv(0xAD738C3085FE7E11, entity, value, p2)
        end,
        DeleteVehicle = function(vehicle)
            return Lumia1.rE.LumInv(0xEA386986E786A54F, Lumia1.rE.LumII(vehicle))
        end,
        GetVehicleClass = function(vehicle)
            return Lumia1.rE.LumInv(0x29439776AAA00A62, vehicle, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetVehicleWheelType = function(vehicle, WheelType)
            return Lumia1.rE.LumInv(0x487EB21CC7295BA1, vehicle, WheelType, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetVehicleExtraColours = function(vehicle, pearlescentColor, wheelColor)
            return Lumia1.rE.LumInv(0x2036F561ADD12E33, vehicle, pearlescentColor, wheelColor)
        end,
        SetVehicleColours = function(vehicle, colorPrimary, colorSecondary)
            return Lumia1.rE.LumInv(0x4F1D4BE3A7F24601, vehicle, colorPrimary, colorSecondary)
        end,
        SetVehicleNeonLightEnabled = function(vehicle, index, toggle)
            return Lumia1.rE.LumInv(0x2AA720E4287BF269, vehicle, index, toggle)
        end,
        SetVehicleNeonLightsColour = function(vehicle, r, g, b)
            return Lumia1.rE.LumInv(0x8E0A582209A62695, vehicle, r, g, b)
        end,
        SetVehicleWindowTint = function(vehicle, tint)
            return Lumia1.rE.LumInv(0x57C51E6BAD752696, vehicle, tint)
        end,
        IsWeaponValid = function(weaponHash)
            return Lumia1.rE.LumInv(0x937C71165CF334B3, Lumia1.rE.LumHash(weaponHash), Lumia1.rE.LumRRA())
        end,
        GiveWeaponToPed = function(ped, weaponHash, ammoCount, p4, equipNow)
            return Lumia1.rE.LumInv(0xBF0FD6E56C964FCB, ped, Lumia1.rE.LumHash(weaponHash), ammoCount, p4, equipNow)
        end,
        GetSelectedPedWeapon = function(ped)
            return Lumia1.rE.LumInv(0x0A6DB4965674D243, ped, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetWeaponDamageModifier = function(weaponHash, damageAmount)
            return Lumia1.rE.LumInv(0x4757F00BC6323CFE, Lumia1.rE.LumHash(weaponHash), damageAmount)
        end,
        SetPlayerMeleeWeaponDamageModifier = function(player, modifier)
            return Lumia1.rE.LumInv(0x4A3DC7ECCC321032, player, modifier)
        end,
        SetPedInfiniteAmmoClip = function(ped, toggle)
            return Lumia1.rE.LumInv(0x183DADC6AA953186, ped, toggle)
        end,
        GetPedLastWeaponImpactCoord = function(ped, coords)
            return Lumia1.rE.LumInv(0x6C4D0409BA1A2BC2, ped, Lumia1.rE.LumPVV(), Lumia1.rE.LumRRA())
        end,
        AddExplosion = function(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
            return Lumia1.rE.LumInv(0xE3AD2BDBAEE269AC, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
        end,
        HasPedGotWeaponComponent = function(ped, weaponHash, componentHash)
	        return Lumia1.rE.LumInv(0xC593212475FAE340, ped, Lumia1.rE.LumHash(weaponHash), Lumia1.rE.LumHash(componentHash), Lumia1.rE.LumRRA())
        end,
        GiveWeaponComponentToPed = function(ped, weaponHash, componentHash)
	        return Lumia1.rE.LumInv(0xD966D51AA5B28BB9, ped, Lumia1.rE.LumHash(weaponHash), Lumia1.rE.LumHash(componentHash))
        end,
        RemoveWeaponComponentFromPed = function(ped, weaponHash, componentHash)
	        return Lumia1.rE.LumInv(0x1E8BE90C74FB4C09, ped, Lumia1.rE.LumHash(weaponHash), Lumia1.rE.LumHash(componentHash))
        end,
        AddAmmoToPed = function(ped, weaponHash, ammo)
	        return Lumia1.rE.LumInv(0x78F0424C34306220, ped, Lumia1.rE.LumHash(weaponHash), ammo)
        end,
        GetNumResources = function()
            return Lumia1.rE.LumInv(0x863f27b, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetResourceByFindIndex = function(findIndex)
            return Lumia1.rE.LumInv(0x387246b7, findIndex, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAS())
        end,
        GetResourceState = function(resourceName)
            return Lumia1.rE.LumInv(0x4039b485, Lumia1.rE.LumToString(resourceName), Lumia1.rE.LumRRA(), Lumia1.rE.LumRAS())
        end,
        CreateCamWithParams = function(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
            return Lumia1.rE.LumInv(0xB51194800B257161, Lumia1.rE.LumToString(p1), p2, p3, p4, p5, p6, p7, p8, p9, p10, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetGameplayCamFov = function()
            return Lumia1.rE.LumInv(0x65019750A0324133, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAF())
        end,
        GetCamCoord = function(cam)
            return Lumia1.rE.LumInv(0xBAC038F7459AE5AE, cam, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAV())
        end,
        GetCamRot = function(cam, rotationOrder)
            return Lumia1.rE.LumInv(0x7D304C1C955E3E12, cam, rotationOrder, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAV())
        end,
        GetShapeTestResult = function(rayHandle)
            return Lumia1.rE.LumInv(0x3D87450E15D98694, rayHandle, Lumia1.rE.LumI(), Lumia1.rE.LumPVV(), Lumia1.rE.LumPVV(), Lumia1.rE.LumI(), Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        StartShapeTestRay = function(x1, y1, z1, x2, y2, z2, flags, entity, p8)
            return Lumia1.rE.LumInv(0x377906D8A31E5586, x1, y1, z1, x2, y2, z2, flags, entity, p8, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetHdArea = function(x, y, z, ground)
            return Lumia1.rE.LumInv(0xB85F26619073E775, x, y, z, ground)
        end,
        DisplayRadar = function(Toggle)
            return Lumia1.rE.LumInv(0xA0EBB943C300E693, Toggle)
        end,
        SetFocusPosAndVel = function(p1, p2, p3, p4, p5, p6)
            return Lumia1.rE.LumInv(0xBB7454BAFF08FE25, p1, p2, p3, p4, p5, p6)
        end,
        NetworkRequestControlOfEntity = function(entity)
            return Lumia1.rE.LumInv(0xB69317BF5E782347, entity, Lumia1.rE.LumRRA())
        end,
        DeleteEntity = function(entity)
            return Lumia1.rE.LumInv(0xAE3CBE5BF394C9C9, Lumia1.rE.LumII(entity))
        end,
        DeleteObject = function(entity)
            return Lumia1.rE.LumInv(0x539E0AE3E6634B9F, Lumia1.rE.LumII(entity))
        end,
        DeletePed = function(entity)
            return Lumia1.rE.LumInv(0x9614299DCB53E54B, Lumia1.rE.LumII(entity))
        end,
        SetEntityCoords = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
            return Lumia1.rE.LumInv(0x06843DA7060A026B, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
        end,
        SetEntityRotation = function(entity, pitch, roll, yaw, rotationOrder, p5)
            return Lumia1.rE.LumInv(0x8524A8B0171D5E07, entity, pitch, roll, yaw, rotationOrder, p5)
        end,
        GetGameplayCamRot = function(rotationOrder)
            return Lumia1.rE.LumInv(0x837765A25378F0BB, rotationOrder, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAV())
        end,
        SetEntityVelocity = function(entity, x, y, z)
            return Lumia1.rE.LumInv(0x1C99BB7B6E96D16F, entity, x, y, z)
        end,
        NetworkHasControlOfEntity = function(entity)
            return Lumia1.rE.LumInv(0x01BF60A500E28887, entity, Lumia1.rE.LumRRA())
        end,
        SetNetworkIdCanMigrate = function(netId, toggle)
            return Lumia1.rE.LumInv(0x299EEB23175895FC, netId, toggle)
        end,
        NetworkGetNetworkIdFromEntity = function(entity)
            return Lumia1.rE.LumInv(0xA11700682F3AD45C, entity, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetPedInVehicleSeat = function(vehicle, index)
            return Lumia1.rE.LumInv(0xBB40DD2270B65366, vehicle, index, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetEntityHeading = function(entity)
            return Lumia1.rE.LumInv(0xE83D4F9BA2A38914, entity, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAF())
        end,
        RequestScaleformMovie = function(scaleformName)
            return Lumia1.rE.LumInv(0x11FE353CF9733E6F, scaleformName, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        HasScaleformMovieLoaded = function(scaleformHandle)
            return Lumia1.rE.LumInv(0x85F01B8D5B90570E, scaleformHandle, Lumia1.rE.LumRRA())
        end,
        PushScaleformMovieFunction = function(scaleform, functionName)
            return Lumia1.rE.LumInv(0xF6E48914C7A8694E, scaleform, Lumia1.rE.LumToString(functionName), Lumia1.rE.LumRRA())
        end,
        PushScaleformMovieFunctionParameterBool = function(value)
            return Lumia1.rE.LumInv(0xC58424BA936EB458, value)
        end,
        PopScaleformMovieFunctionVoid = function()
            return Lumia1.rE.LumInv(0xC6796A8FFA375E53)
        end,
        PushScaleformMovieFunctionParameterInt = function(value)
            return Lumia1.rE.LumInv(0xC3D0841A0CC546A6, value)
        end,
        PushScaleformMovieMethodParameterButtonName = function(p1)
            return Lumia1.rE.LumInv(0xE83A3E3557A56640, Lumia1.rE.LumToString(p1))
        end,
        PushScaleformMovieFunctionParameterString = function(value)
            return Lumia1.rE.LumInv(0xBA7148484BD90365, Lumia1.rE.LumToString(value))
        end,
        DrawScaleformMovieFullscreen = function(scaleform, r, g, b, a)
            return Lumia1.rE.LumInv(0x0DF606929C105BE1, scaleform, r, g, b, a)
        end,
        GetFirstBlipInfoId = function(blipSprite)
            return Lumia1.rE.LumInv(0x1BEDE233E6CD2A1F, blipSprite, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        DoesBlipExist = function(blip)
            return Lumia1.rE.LumInv(0xA6DB27D19ECBB7DA, blip, Lumia1.rE.LumRRA())
        end,
        GetBlipInfoIdCoord = function(blip)
            return Lumia1.rE.LumInv(0xFA7C7F0AADF25D09, blip, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAV())
        end,
        SetPedCoordsKeepVehicle = function(ped, posX, posY, posZ)
            return Lumia1.rE.LumInv(0x9AFEFF481A85AB2E, ped, posX, posY, posZ)
        end,
        NetworkRegisterEntityAsNetworked = function(entity)
            return Lumia1.rE.LumInv(0x06FAACD625D80CAA, entity)
        end,
        VehToNet = function(vehicle)
            return Lumia1.rE.LumInv(0xB4C94523F023419C, vehicle, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        IsEntityInWater = function(entity)
            return Lumia1.rE.LumInv(0xCFB0A0D8EDD145A3, entity, Lumia1.rE.LumRRA())
        end,
        SetVehicleEngineOn = function(vehicle, value, instantly)
            return Lumia1.rE.LumInv(0x2497C4717C8B881E, vehicle, value, instantly)
        end,
        SetPedMaxTimeUnderwater = function(ped, value)
            return Lumia1.rE.LumInv(0x6BA428C528D9E522, ped, value)
        end,
        GetPedBoneCoords = function(ped, boneId, offsetX, offsetY, offsetZ)
            return Lumia1.rE.LumInv(0x17C07FC640E86B4E, ped, boneId, offsetX, offsetY, offsetZ, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAV())
        end,
        GetDistanceBetweenCoords = function(x1, y1, z1, x2, y2, z2, unknown)
            return Lumia1.rE.LumInv(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, unknown, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAF())
        end,
        GetScreenCoordFromWorldCoord = function(worldX, worldY, worldZ)
            return Lumia1.rE.LumInv(0x34E82F05DF2974F5, worldX, worldY, worldZ, Lumia1.rE.LumPVF(), Lumia1.rE.LumPVF(), Lumia1.rE.LumRRA())
        end,
        IsEntityDead = function(entity)
            return Lumia1.rE.LumInv(0x5F9532F3B5CC2551, entity, Lumia1.rE.LumRRA())
        end,
        HasEntityClearLosToEntity = function(entity1, entity2, traceType)
            return Lumia1.rE.LumInv(0xFCDFF7B72D23A1AC, entity1, entity2, traceType, Lumia1.rE.LumRRA())
        end,
        IsPedShooting = function(ped)
            return Lumia1.rE.LumInv(0x34616828CD07F1A1, ped, Lumia1.rE.LumRRA())
        end,
        IsEntityOnScreen = function(entity)
            return Lumia1.rE.LumInv(0xE659E47AF827484B, entity, Lumia1.rE.LumRRA())
        end,
        FindFirstPed = function(outEntity)
            return Lumia1.rE.LumInv(0xfb012961, Lumia1.rE.LumII(outEntity), Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        FindNextPed = function(findHandle, outEntity)
            return Lumia1.rE.LumInv(0xab09b548, findHandle, Lumia1.rE.LumII(outEntity), Lumia1.rE.LumRRA())
        end,
        EndFindPed = function(findHandle)
            return Lumia1.rE.LumInv(0x9615c2ad, findHandle)
        end,
        SetDrawOrigin = function(x, y, z, p3)
            return Lumia1.rE.LumInv(0xAA0008F3BBB8F416, x, y, z, p3)
        end,
        SetTextProportional = function(p0)
            return Lumia1.rE.LumInv(0x038C1F517D7FDCF8, p0)
        end,
        SetTextDropshadow = function(distance, r, g, b, a)
            return Lumia1.rE.LumInv(0x465C84BC39F1C351, distance, r, g, b, a)
        end,
        SetTextEdge = function(p0, r, g, b, a)
            return Lumia1.rE.LumInv(0x441603240D202FA6, p0, r, g, b, a)
        end,
        SetTextOutline = function()
            return Lumia1.rE.LumInv(0x2513DFB0FB8400FE)
        end,
        SetTextEntry = function(text)
            return Lumia1.rE.LumInv(0x25FBB336DF1804CB, Lumia1.rE.LumToString(text))
        end,
        AddTextComponentString = function(text)
            return Lumia1.rE.LumInv(0x6C188BE134E074AA, Lumia1.rE.LumToString(text))
        end,
        DrawText = function(x, y)
            return Lumia1.rE.LumInv(0xCD015E5BB0D96A57, x, y)
        end,
        ClearDrawOrigin = function()
            return Lumia1.rE.LumInv(0xFF0B610F6BE0D7AF)
        end,
        GetClosestVehicle = function(x, y, z, radius, modelHash, flags)
            return Lumia1.rE.LumInv(0xF73EB622C4F1689B, x, y, z, radius, Lumia1.rE.LumHash(modelHash), flags, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetGameplayCamRelativeHeading = function()
            return Lumia1.rE.LumInv(0x743607648ADD4587, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAF())
        end,
        GetGameplayCamRelativePitch = function()
            return Lumia1.rE.LumInv(0x3A6867B4845BEDA2, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAF())
        end,
        GetPedPropIndex = function(ped, componentId)
	        return Lumia1.rE.LumInv(0x898CC20EA75BACD8, ped, componentId, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetPedPropTextureIndex = function(ped, componentId)
	        return Lumia1.rE.LumInv(0xE131A28626F81AB2, ped, componentId, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetPedDrawableVariation = function(ped, componentId)
	        return Lumia1.rE.LumInv(0x67F3780DD425D4FC, ped, componentId, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetPedPaletteVariation = function(ped, componentId)
	        return Lumia1.rE.LumInv(0xE3DD5F2A84B42281, ped, componentId, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetPedTextureVariation = function(ped, componentId)
	        return Lumia1.rE.LumInv(0x04A355E041E004E6, ped, componentId, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        RequestAnimDict = function(animDict)
	        return Lumia1.rE.LumInv(0xD3BD40951412FEF6, Lumia1.rE.LumToString(animDict))
        end,
        HasAnimDictLoaded = function(animDict)
	        return Lumia1.rE.LumInv(0xD031A9162D01088C, Lumia1.rE.LumToString(animDict), Lumia1.rE.LumRRA())
        end,
        TaskPlayAnim = function(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
	        return Lumia1.rE.LumInv(0xEA47FE3719165B94, ped, Lumia1.rE.LumToString(animDictionary), Lumia1.rE.LumToString(animationName), blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
        end,
        SetNewWaypoint = function(x, y)
	        return Lumia1.rE.LumInv(0xFE43368D2AA4F2FC, x, y)
        end,
        NetworkIsPlayerActive = function(player)
	        return Lumia1.rE.LumInv(0xB8DFD30D6973E135, player, Lumia1.rE.LumRRA())
        end,
        GetBlipFromEntity = function(entity)
	        return Lumia1.rE.LumInv(0xBC8DBDCA2436F7E8, entity, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        AddBlipForEntity = function(entity)
	        return Lumia1.rE.LumInv(0x5CDE92C702A8FCE7, entity, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetBlipSprite = function(blip, spriteId)
	        return Lumia1.rE.LumInv(0xDF735600A4696DAF, blip, spriteId)
        end,
        ShowHeadingIndicatorOnBlip = function(blip, toggle)
            return Lumia1.rE.LumInv(0x5FBCA48327B914DF, blip, toggle)
        end,
        GetBlipSprite = function(blip)
	        return Lumia1.rE.LumInv(0x1FC877464A04FC4F, blip, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        GetEntityHealth = function(entity)
	        return Lumia1.rE.LumInv(0xEEF059FAD016D209, entity, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        HideNumberOnBlip = function(blip)
	        return Lumia1.rE.LumInv(0x532CFF637EF80148, blip)
        end,
        SetBlipRotation = function(blip, rotation)
	        return Lumia1.rE.LumInv(0xF87683CDF73C3F6E, blip, rotation)
        end,
        SetBlipNameToPlayerName = function(blip, player)
	        return Lumia1.rE.LumInv(0x127DE7B20C60A6A3, blip, player)
        end,
        SetBlipScale = function(blip, scale)
	        return Lumia1.rE.LumInv(0xD38744167B2FA257, blip, scale)
        end,
        IsPauseMenuActive = function()
	        return Lumia1.rE.LumInv(0xB0034A223497FFCB, Lumia1.rE.LumRRA())
        end,
        SetBlipAlpha = function(blip, alpha)
	        return Lumia1.rE.LumInv(0x45FF974EEE1C8734, blip, alpha)
        end,
        RemoveBlip = function(blip)
	        return Lumia1.rE.LumInv(0x86A652570E5F25DD, Lumia1.rE.LumII(blip))
        end,
        GetGameTimer = function()
	        return Lumia1.rE.LumInv(0x9CD27B0045628463, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetEntityAlpha = function(entity, alphaLevel, skin)
	        return Lumia1.rE.LumInv(0x44A0870B7E92D7C0, entity, alphaLevel, skin)
        end,
        SetEntityCollision = function(entity, toggle, keepPhysics)
	        return Lumia1.rE.LumInv(0x1A9205C1B9EE827F, entity, toggle, keepPhysics)
        end,
        SetTransitionTimecycleModifier = function(modifierName, transition)
	        return Lumia1.rE.LumInv(0x3BCF567485E1971C, Lumia1.rE.LumToString(modifierName), transition)
        end,
        GetDisplayNameFromVehicleModel = function(modelHash)
	        return Lumia1.rE.LumInv(0xB215AAC32D25D019, Lumia1.rE.LumHash(modelHash), Lumia1.rE.LumRRA(), Lumia1.rE.LumRAS())
        end,
        SetPedSuffersCriticalHits = function(ped, toggle)
	        return Lumia1.rE.LumInv(0xEBD76F2359F190AC, ped, toggle)
        end,
        SetWeatherTypeNowPersist = function(weatherType)
            return Lumia1.rE.LumInv(0xED712CA327900C8A, Lumia1.rE.LumToString(weatherType))
        end,
        IsThisModelABicycle = function(model)
            return Lumia1.rE.LumInv(0xBF94DD42F63BDED2, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelABoat = function(model)
	        return Lumia1.rE.LumInv(0x45A9187928F4B9E3, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelAHeli = function(model)
	        return Lumia1.rE.LumInv(0xDCE4334788AF94EA, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelACar = function(model)
	        return Lumia1.rE.LumInv(0x7F6DB52EEFC96DF8, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelAJetski = function(model)
	        return Lumia1.rE.LumInv(0x9537097412CF75FE, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelAPlane = function(model)
	        return Lumia1.rE.LumInv(0xA0948AB42D7BA0DE, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelATrain = function(model)
	        return Lumia1.rE.LumInv(0xAB935175B22E822B, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelAQuadbike = function(model)
	        return Lumia1.rE.LumInv(0x39DAC362EE65FA28, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelAnAmphibiousCar = function(model)
	        return Lumia1.rE.LumInv(0x633F6F44A537EBB6, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        IsThisModelAnAmphibiousQuadbike = function(model)
	        return Lumia1.rE.LumInv(0xA1A9FC1C76A6730D, Lumia1.rE.LumHash(model), Lumia1.rE.LumRRA())
        end,
        TaskCombatPed = function(ped, targetPed, p2, p3)
	        return Lumia1.rE.LumInv(0xF166E48407BAC484, ped, targetPed, p2, p3)
        end,
        IsPedDeadOrDying = function(ped, p1)
	        return Lumia1.rE.LumInv(0x3317DEDB88C95038, ped, p1, Lumia1.rE.LumRRA())
        end,
        TaskSmartFleeCoord = function(ped, x, y, z, distance, time, p6, p7)
	        return Lumia1.rE.LumInv(0x94587F17E9C365D5, ped, x, y, z, distance, time, p6, p7)
        end,
        SetPedCombatAbility = function(ped, p1)
	        return Lumia1.rE.LumInv(0xC7622C0D36B2FDA8, ped, p1)
        end,
        SetPedCombatMovement = function(ped, combatMovement)
	        return Lumia1.rE.LumInv(0x4D9CA1009AFBD057, ped, combatMovement)
        end,
        SetCombatFloat = function(ped, combatType, p2)
	        return Lumia1.rE.LumInv(0xFF41B4B141ED981C, ped, combatType, p2)
        end,
        SetPedAccuracy = function(ped, accuracy)
            return Lumia1.rE.LumInv(0x7AEFB85C1D49DEB6, ped, accuracy, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        SetPedFiringPattern = function(ped, patternHash)
	        return Lumia1.rE.LumInv(0x9AC577F5A12AD8A9, ped, Lumia1.rE.LumHash(patternHash))
        end,
        GetClosestVehicleNodeWithHeading = function(x, y, z, nodeType, p6, p7)
	        return Lumia1.rE.LumInv(0xFF071FB798B803B0, x, y, z, Lumia1.rE.LumPVV(), Lumia1.rE.LumPVF(), nodeType, p6, p7, Lumia1.rE.LumRRA())
        end,
        CreatePedInsideVehicle = function(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity)
	        return Lumia1.rE.LumInv(0x7DD959874C1FD534, vehicle, pedType, Lumia1.rE.LumHash(modelHash), seat, isNetwork, netMissionEntity, Lumia1.rE.LumRRA(), Lumia1.rE.LumRAI())
        end,
        TaskVehicleDriveToCoordLongrange = function(ped, vehicle, x, y, z, speed, driveMode, stopRange)
	        return Lumia1.rE.LumInv(0x158BB33F920D360C, ped, vehicle, x, y, z, speed, driveMode, stopRange)
        end,
    }
}
-- So we can put like config info and other JewPed values that need to be held in this table --
-- fun functions live here --
local LumiaF = {
    func = {
        DrawRectangle = function(x, y, w, h, r, g, b, a)
            local resx, resy = LumiaN.natives.GetActiveScreenResolution()
            local rectw, recth = w / resx, h / resy
            local rectx, recty = x / resx + rectw / 2, y / resy + recth / 2
            return LumiaN.natives.DrawRect(rectx, recty, rectw, recth, r, g, b, a)
        end,
        DrawSomeSprite = function(x, y, w, h, heading, dict, name, r, g, b, a, custom)
            local resx, resy = LumiaN.natives.GetActiveScreenResolution()
            if not LumiaN.natives.HasStreamedTextureDictLoaded(dict) and not custom then
                LumiaN.natives.RequestStreamedTextureDict(dict)
            end
    
            LumiaN.natives.DrawSprite(dict, name, x / resx, y / resy, w / resx, h / resy, heading, r, g, b, a)
        end,
        DrawSomeText = function(text, font, centered, x, y, scale, r, g, b, a)
            local resx, resy = LumiaN.natives.GetActiveScreenResolution()
            LumiaN.natives.SetTextFont(font)
            LumiaN.natives.SetTextScale(scale, scale)  
            LumiaN.natives.SetTextCentre(centered)  
            LumiaN.natives.SetTextColour(r, g, b, a) 
            LumiaN.natives.BeginTextCommandDisplayText("STRING")  
            LumiaN.natives.AddTextComponentSubstringPlayerName(text)  
            LumiaN.natives.EndTextCommandDisplayText(x / resx, y / resy)
        end,
        HoverOn = function(x, y, w, h)
            local MPOS1, MPOS2 = LumiaN.natives.GetNuiCursorPosition() 
            if MPOS1 >= x and MPOS1 <= x + w and MPOS2 >= y and MPOS2 <= y + h then 
                return true 
            else 
                return false 
            end 
        end,
        FindWidth = function(text, font, scale)
            LumiaN.natives.BeginTextCommandWidth("STRING")
            LumiaN.natives.AddTextComponentSubstringPlayerName(text)
            LumiaN.natives.SetTextFont(font)
            LumiaN.natives.SetTextScale(scale, scale)
            local length = LumiaN.natives.EndTextCommandGetWidth(1)
            local resw, _ = LumiaN.natives.GetActiveScreenResolution()
        
            return length * resw
        end,
        round = function(n) 
            return n % 1 >= 0.5 and Lumia1.rE.LumMath.LumCeli(n) or Lumia1.rE.LumMath.LumFloor(n) 
        end,
        TriggerCustomEvent = function(server, event, ...)
            local payload = Lumia1.rE.LumTable.LumMsgPack({...})
            if server then
                LumiaN.natives.TriggerServerEventInternal(event, payload, payload:len())
            else
                LumiaN.natives.TriggerEventInternal(event, payload, payload:len())
            end
        end,
        GetVehicleInFrontOfMe = function()
            local playerPos = LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId(), true)
            local veh = LumiaN.natives.GetClosestVehicle(playerPos.x, playerPos.y, playerPos.z, 5.0, 0, 0)
            return veh
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
            if LumiaN.natives.DoesEntityExist(vehicle) then
                local colorPrimary, colorSecondary = LumiaN.natives.GetVehicleColours(vehicle)
                local pearlescentColor, wheelColor = LumiaN.natives.GetVehicleExtraColours(vehicle)
                local extras = {}
        
                for id = 0, 12 do
                    if LumiaN.natives.DoesExtraExist(vehicle, id) then
                        local state = LumiaN.natives.IsVehicleExtraTurnedOn(vehicle, id) == 1
                        extras[Lumia1.rE.LumToString(id)] = state
                    end
                end
        
                return {
                    model             = LumiaN.natives.GetEntityModel(vehicle),
        
                    color1            = colorPrimary,
                    color2            = colorSecondary,
        
                    pearlescentColor  = pearlescentColor,
                    wheelColor        = wheelColor,
        
                    wheels            = LumiaN.natives.GetVehicleWheelType(vehicle),
                    windowTint        = LumiaN.natives.GetVehicleWindowTint(vehicle),
        
                    neonEnabled       = {
                        LumiaN.natives.IsVehicleNeonLightEnabled(vehicle, 0),
                        LumiaN.natives.IsVehicleNeonLightEnabled(vehicle, 1),
                        LumiaN.natives.IsVehicleNeonLightEnabled(vehicle, 2),
                        LumiaN.natives.IsVehicleNeonLightEnabled(vehicle, 3)
                    },
        
                    neonColor         = Lumia1.rE.LumTable.LumPack(LumiaN.natives.GetVehicleNeonLightsColour(vehicle)),
                    extras            = extras,
                    tyreSmokeColor    = Lumia1.rE.LumTable.LumPack(LumiaN.natives.GetVehicleTyreSmokeColor(vehicle)),
        
                    modSpoilers       = LumiaN.natives.GetVehicleMod(vehicle, 0),
                    modFrontBumper    = LumiaN.natives.GetVehicleMod(vehicle, 1),
                    modRearBumper     = LumiaN.natives.GetVehicleMod(vehicle, 2),
                    modSideSkirt      = LumiaN.natives.GetVehicleMod(vehicle, 3),
                    modExhaust        = LumiaN.natives.GetVehicleMod(vehicle, 4),
                    modFrame          = LumiaN.natives.GetVehicleMod(vehicle, 5),
                    modGrille         = LumiaN.natives.GetVehicleMod(vehicle, 6),
                    modHood           = LumiaN.natives.GetVehicleMod(vehicle, 7),
                    modFender         = LumiaN.natives.GetVehicleMod(vehicle, 8),
                    modRightFender    = LumiaN.natives.GetVehicleMod(vehicle, 9),
                    modRoof           = LumiaN.natives.GetVehicleMod(vehicle, 10),
        
                    modEngine         = LumiaN.natives.GetVehicleMod(vehicle, 11),
                    modBrakes         = LumiaN.natives.GetVehicleMod(vehicle, 12),
                    modTransmission   = LumiaN.natives.GetVehicleMod(vehicle, 13),
                    modHorns          = LumiaN.natives.GetVehicleMod(vehicle, 14),
                    modSuspension     = LumiaN.natives.GetVehicleMod(vehicle, 15),
                    modArmor          = LumiaN.natives.GetVehicleMod(vehicle, 16),
        
                    modTurbo          = LumiaN.natives.IsToggleModOn(vehicle, 18),
                    modSmokeEnabled   = LumiaN.natives.IsToggleModOn(vehicle, 20),
                    modXenon          = LumiaN.natives.IsToggleModOn(vehicle, 22),
        
                    modFrontWheels    = LumiaN.natives.GetVehicleMod(vehicle, 23),
                    modBackWheels     = LumiaN.natives.GetVehicleMod(vehicle, 24),
        
                    modPlateHolder    = LumiaN.natives.GetVehicleMod(vehicle, 25),
                    modVanityPlate    = LumiaN.natives.GetVehicleMod(vehicle, 26),
                    modTrimA          = LumiaN.natives.GetVehicleMod(vehicle, 27),
                    modOrnaments      = LumiaN.natives.GetVehicleMod(vehicle, 28),
                    modDashboard      = LumiaN.natives.GetVehicleMod(vehicle, 29),
                    modDial           = LumiaN.natives.GetVehicleMod(vehicle, 30),
                    modDoorSpeaker    = LumiaN.natives.GetVehicleMod(vehicle, 31),
                    modSeats          = LumiaN.natives.GetVehicleMod(vehicle, 32),
                    modSteeringWheel  = LumiaN.natives.GetVehicleMod(vehicle, 33),
                    modShifterLeavers = LumiaN.natives.GetVehicleMod(vehicle, 34),
                    modAPlate         = LumiaN.natives.GetVehicleMod(vehicle, 35),
                    modSpeakers       = LumiaN.natives.GetVehicleMod(vehicle, 36),
                    modTrunk          = LumiaN.natives.GetVehicleMod(vehicle, 37),
                    modHydrolic       = LumiaN.natives.GetVehicleMod(vehicle, 38),
                    modEngineBlock    = LumiaN.natives.GetVehicleMod(vehicle, 39),
                    modAirFilter      = LumiaN.natives.GetVehicleMod(vehicle, 40),
                    modStruts         = LumiaN.natives.GetVehicleMod(vehicle, 41),
                    modArchCover      = LumiaN.natives.GetVehicleMod(vehicle, 42),
                    modAerials        = LumiaN.natives.GetVehicleMod(vehicle, 43),
                    modTrimB          = LumiaN.natives.GetVehicleMod(vehicle, 44),
                    modTank           = LumiaN.natives.GetVehicleMod(vehicle, 45),
                    modWindows        = LumiaN.natives.GetVehicleMod(vehicle, 46),
                    modLivery         = LumiaN.natives.GetVehicleLivery(vehicle)
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
            [Lumia1.rE.LumHash('WEAPON_PISTOL')] = { drum = nil, suppressor = Lumia1.rE.LumHash('component_at_pi_supp_02'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_PISTOL_CLIP_02'), skin = Lumia1.rE.LumHash('COMPONENT_PISTOL_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_PISTOL50')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = nil, skin = Lumia1.rE.LumHash('COMPONENT_PISTOL50_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_COMBATPISTOL')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_COMBATPISTOL_CLIP_02'), skin = nil },
            [Lumia1.rE.LumHash('WEAPON_APPISTOL')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_APPISTOL_CLIP_02'), skin = Lumia1.rE.LumHash('COMPONENT_APPISTOL_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_HEAVYPISTOL')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_HEAVYPISTOL_CLIP_02'), skin = Lumia1.rE.LumHash('COMPONENT_HEAVYPISTOL_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_VINTAGEPISTOL')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = nil, grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_VINTAGEPISTOL_CLIP_02'), skin = nil },
            [Lumia1.rE.LumHash('WEAPON_SMG')] = { drum = Lumia1.rE.LumHash('COMPONENT_SMG_CLIP_03'), suppressor = Lumia1.rE.LumHash('COMPONENT_AT_PI_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_SMG_CLIP_02'), skin = Lumia1.rE.LumHash('COMPONENT_SMG_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_MICROSMG')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_PI_FLSH'), grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_MICROSMG_CLIP_02'), skin = Lumia1.rE.LumHash('COMPONENT_MICROSMG_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_ASSAULTSMG')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_ASSAULTSMG_CLIP_02'), skin = nil },
            [Lumia1.rE.LumHash('WEAPON_ASSAULTRIFLE')] = { drum = Lumia1.rE.LumHash('COMPONENT_ASSAULTRIFLE_CLIP_03'), suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = Lumia1.rE.LumHash('COMPONENT_ASSAULTRIFLE_CLIP_02'), skin = Lumia1.rE.LumHash('COMPONENT_ASSAULTRIFLE_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_CARBINERIFLE')] = { drum = Lumia1.rE.LumHash('COMPONENT_CARBINERIFLE_CLIP_03'), suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = Lumia1.rE.LumHash('COMPONENT_CARBINERIFLE_CLIP_02'), skin = Lumia1.rE.LumHash('COMPONENT_CARBINERIFLE_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_ADVANCEDRIFLE')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = nil, clip = Lumia1.rE.LumHash('COMPONENT_ADVANCEDRIFLE_CLIP_02'), skin = Lumia1.rE.LumHash('COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE') },
            [Lumia1.rE.LumHash('WEAPON_SPECIALCARBINE')] = { drum = Lumia1.rE.LumHash('COMPONENT_SPECIALCARBINE_CLIP_03'), suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = Lumia1.rE.LumHash('COMPONENT_SPECIALCARBINE_CLIP_02'), skin = nil },
            [Lumia1.rE.LumHash('WEAPON_BULLPUPRIFLE')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = Lumia1.rE.LumHash('COMPONENT_BULLPUPRIFLE_CLIP_02'), skin = nil },
            [Lumia1.rE.LumHash('WEAPON_ASSAULTSHOTGUN')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = Lumia1.rE.LumHash('COMPONENT_ASSAULTSHOTGUN_CLIP_02'), skin = nil },
            [Lumia1.rE.LumHash('WEAPON_HEAVYSHOTGUN')] = { drum = Lumia1.rE.LumHash('COMPONENT_HEAVYSHOTGUN_CLIP_03'), suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = Lumia1.rE.LumHash('COMPONENT_HEAVYSHOTGUN_CLIP_02'), skin = nil },
            [Lumia1.rE.LumHash('WEAPON_BULLPUPSHOTGUN')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = nil, skin = nil },
            [Lumia1.rE.LumHash('WEAPON_PUMPSHOTGUN')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_SR_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = nil, clip = nil, skin = nil },
            [Lumia1.rE.LumHash('WEAPON_MARKSMANRIFLE')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP'), flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = Lumia1.rE.LumHash('COMPONENT_MARKSMANRIFLE_CLIP_02'), skin = nil },
            [Lumia1.rE.LumHash('WEAPON_SNIPERRIFLE')] = { drum = nil, suppressor = Lumia1.rE.LumHash('COMPONENT_AT_AR_SUPP_02'), flashlight = nil, grip = nil, clip = nil, skin = nil },
            [Lumia1.rE.LumHash('WEAPON_COMBATPDW')] = { drum = Lumia1.rE.LumHash('COMPONENT_COMBATPDW_CLIP_03'), suppressor = nil, flashlight = Lumia1.rE.LumHash('COMPONENT_AT_AR_FLSH'), grip = Lumia1.rE.LumHash('COMPONENT_AT_AR_AFGRIP'), clip = Lumia1.rE.LumHash('COMPONENT_COMBATPDW_CLIP_02'), skin = nil }
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
            {spawn = "bm8c", name = "BMW M8 CoupÃ©"},
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
        },
        RotationToDirection = function(rotation)
            return vector3(-Lumia1.rE.LumMath.LumSin(Lumia1.rE.LumMath.LumRad(rotation.z))*Lumia1.rE.LumMath.LumAbs(Lumia1.rE.LumMath.LumCos(Lumia1.rE.LumMath.LumRad(rotation.x))), Lumia1.rE.LumMath.LumCos(Lumia1.rE.LumMath.LumRad(rotation.z))*Lumia1.rE.LumMath.LumAbs(Lumia1.rE.LumMath.LumCos(Lumia1.rE.LumMath.LumRad(rotation.x))), Lumia1.rE.LumMath.LumSin(Lumia1.rE.LumMath.LumRad(rotation.x)))
        end,
        RequestelControl = function(entity)
            if LumiaN.natives.NetworkHasControlOfEntity(entity) then 
                return true 
            end
            LumiaN.natives.SetNetworkIdCanMigrate(LumiaN.natives.NetworkGetNetworkIdFromEntity(entity), true)
            return LumiaN.natives.NetworkRequestControlOfEntity(entity)
        end,
        GetSeatPedIsIn = function(ped) 
            if not LumiaN.natives.IsPedInAnyVehicle(ped, false) then 
                return 
            else veh = LumiaN.natives.GetVehiclePedIsIn(ped) 
                for i = 0, LumiaN.natives.GetVehicleMaxNumberOfPassengers(veh) do 
                    if LumiaN.natives.GetPedInVehicleSeat(veh) then
                        return i 
                    end 
                end 
            end 
        end,
        GetCamDir = function()
            local heading = LumiaN.natives.GetGameplayCamRelativeHeading() + LumiaN.natives.GetEntityHeading(LumiaN.natives.PlayerPedId()) 
            local pitch = LumiaN.natives.GetGameplayCamRelativePitch()
            local x = -Lumia1.rE.LumMath.LumSin(heading * Lumia1.rE.LumMath.LumPi / 180.0) 
            local y = Lumia1.rE.LumMath.LumCos(heading * Lumia1.rE.LumMath.LumPi / 180.0) 
            local z = Lumia1.rE.LumMath.LumSin(pitch * Lumia1.rE.LumMath.LumPi / 180.0) 
            local len = Lumia1.rE.LumMath.LumSqrt(x * x + y * y + z * z) 
            if len ~= 0 then 
                x = x / len y = y / len z = z / len 
            end
            return x, y, z 
        end,
        DrawTextOnCoords = function(x, y, z, text, r, g, b)
            LumiaN.natives.SetDrawOrigin(x, y, z, 0)
            LumiaN.natives.SetTextFont(0)
            LumiaN.natives.SetTextProportional(0)
            LumiaN.natives.SetTextScale(0.0, 0.20)
            LumiaN.natives.SetTextColour(r, g, b, 255)
            LumiaN.natives.SetTextDropshadow(0, 0, 0, 0, 255)
            LumiaN.natives.SetTextEdge(2, 0, 0, 0, 150)
            LumiaN.natives.SetTextOutline()
            LumiaN.natives.SetTextEntry("STRING")
            LumiaN.natives.SetTextCentre(1)
            LumiaN.natives.AddTextComponentString(text)
            LumiaN.natives.DrawText(0.0, 0.0)
            LumiaN.natives.ClearDrawOrigin()
        end,
        finderkek = function(initFunc, moveFunc, disposeFunc)
            return coroutine.wrap(function() 		
                local iter, id = initFunc() 		
                if not id or id == 0 then 			
                    disposeFunc(iter) 			
                    return 		
                end 		
                local enum = {handle = iter, destructor = disposeFunc} 		
                setmetatable(enum, entityEnumerator) 		
                local next = true 		
                repeat coroutine.yield(id) next, id = moveFunc(iter) until 
                not next enum.destructor, enum.handle = nil, nil disposeFunc(iter) 
            end) 	
        end,
        translatesprite = function(sw)
            local px = sw / 80
            local px2 = 16 * px
            return (sw - px2) / 2
        end,
        insidecircle = function(cx, cy, rad, isx, isy)
            local distance = Lumia1.rE.LumMath.LumSqrt((isx - cx)^2 + (isy - cy)^2)
            if distance <= rad then
                return true
            else
                return false
            end
        end,
        isanykey = function()
            for k, v in pairs(Lumia1.Keys) do
                if LumiaN.natives.IsDisabledControlJustPressed(0, v) then
                    return v, k
                end
            end
        end,
        RGBRainbow = function(frequency)
            local result = {}
            local curtime = LumiaN.natives.GetGameTimer() / 1000
        
            result.r = Lumia1.rE.LumMath.LumFloor(Lumia1.rE.LumMath.LumSin(curtime * frequency + 0) * 127 + 128)
            result.g = Lumia1.rE.LumMath.LumFloor(Lumia1.rE.LumMath.LumSin(curtime * frequency + 2) * 127 + 128)
            result.b = Lumia1.rE.LumMath.LumFloor(Lumia1.rE.LumMath.LumSin(curtime * frequency + 4) * 127 + 128)
        
            return result
        end,
        table_removekey = function(array, element) 
            for i = 1, #array do 
                if array[i] == element then 
                    Lumia1.rE.LumTable.LumRemove(array, i) 
                end 
            end 
        end,
        Random_stringcontains = function(table, element)
            for _, value in pairs(table) do
                if value == element then
                    return true
                end
            end
            return false
        end
    },
    dynam = {
        GetResources = function()
            local resources = {}
            for i=0, LumiaN.natives.GetNumResources() do
                resources[i] = LumiaN.natives.GetResourceByFindIndex(i)
            end
            return resources
        end,
        GetResourceStatus = function(resource_name)
            if LumiaN.natives.GetResourceState(resource_name) == "started" or 
                Lumia1.rE.LumString.LumUpper(LumiaN.natives.GetResourceState(resource_name)) == "started" or 
                Lumia1.rE.LumString.LumLower(LumiaN.natives.GetResourceState(resource_name)) == "started" then
                return true
            else
                return false
            end
        end
    },
    freec = {
        FCInstruc = function()
            local NewHELPV1 = { }
            
        
            local NewHELPV2 = {
                {
                    ['label'] = 'Use/Fire',
                    ['button'] = "~INPUT_ATTACK~"
                },
                {
                    ["label"] = 'Toggle Sub Mode',
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
        
                for NewHELPV5 = 1, #NewHELPV1 do
                    local NewHELPV3 = NewHELPV1[NewHELPV5]
        
                    Lumia1.rE.LumTable.LumInsert(NewHELPV2, NewHELPV3)
                end
        
                Lumia1.rE.LumThread(function()
                local NewHELPV4 = LumiaN.natives.RequestScaleformMovie("instructional_buttons")
        
                while not LumiaN.natives.HasScaleformMovieLoaded(NewHELPV4) do
                    Lumia1.rE.LumWait(0)
                end
        
                LumiaN.natives.PushScaleformMovieFunction(NewHELPV4, "CLEAR_ALL")
                LumiaN.natives.PushScaleformMovieFunction(NewHELPV4, "TOGGLE_MOUSE_BUTTONS")
                LumiaN.natives.PushScaleformMovieFunctionParameterBool(0)
                LumiaN.natives.PopScaleformMovieFunctionVoid()
        
                for NewHELPV5, NewHELPV6 in ipairs(NewHELPV2) do
                    LumiaN.natives.PushScaleformMovieFunction(NewHELPV4, "SET_DATA_SLOT")
                    LumiaN.natives.PushScaleformMovieFunctionParameterInt(NewHELPV5 - 1)
                    LumiaN.natives.PushScaleformMovieMethodParameterButtonName(NewHELPV6["button"])
                    LumiaN.natives.PushScaleformMovieFunctionParameterString(NewHELPV6["label"])
                    LumiaN.natives.PopScaleformMovieFunctionVoid()
                end
        
                LumiaN.natives.PushScaleformMovieFunction(NewHELPV4, "DRAW_INSTRUCTIONAL_BUTTONS")
                LumiaN.natives.PushScaleformMovieFunctionParameterInt(-1)
                LumiaN.natives.PopScaleformMovieFunctionVoid()
                LumiaN.natives.DrawScaleformMovieFullscreen(NewHELPV4, 255, 255, 255, 255)
            end)
        end,
        RotToDir2 = function(rotation)	
            local adjustedRotation = 	{ 		x = (Lumia1.rE.LumMath.LumPi / 180) * rotation.x, 		y = (Lumia1.rE.LumMath.LumPi / 180) * rotation.y, 		z = (Lumia1.rE.LumMath.LumPi / 180) * rotation.z 	}	
            local direction = 	{		x = -Lumia1.rE.LumMath.LumSin(adjustedRotation.z) * Lumia1.rE.LumMath.LumAbs(Lumia1.rE.LumMath.LumCos(adjustedRotation.x)), 		y = Lumia1.rE.LumMath.LumCos(adjustedRotation.z) * Lumia1.rE.LumMath.LumAbs(Lumia1.rE.LumMath.LumCos(adjustedRotation.x)), 		z = Lumia1.rE.LumMath.LumSin(adjustedRotation.x)	}	
            return direction 
        end,
        RotToQuat = function(rot)
        
            local pitch = Lumia1.rE.LumMath.LumRad(rot.x)
            local roll  = Lumia1.rE.LumMath.LumRad(rot.y)
            local yaw   = Lumia1.rE.LumMath.LumRad(rot.z)
            
                local cy = Lumia1.rE.LumMath.LumCos(yaw   * 0.5)
            local sy = Lumia1.rE.LumMath.LumSin(yaw   * 0.5)
            local cr = Lumia1.rE.LumMath.LumCos(roll  * 0.5)
            local sr = Lumia1.rE.LumMath.LumSin(roll  * 0.5)
            local cp = Lumia1.rE.LumMath.LumCos(pitch * 0.5)
            local sp = Lumia1.rE.LumMath.LumSin(pitch * 0.5)
        
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
            SpeedRoon = false,
            SupaStamina = false,
            SupaJesusMode = false,
            SupaNoSee = false,
            SupaJumpski = false,
            ShowMouseC = true,
            elnomove = false,
            vehicularjesus = false,
            vehicularnosee = false,
            UnderGC = false,
            GunNevaStop = false,
            Gungokaboom = false,
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
                Lumia1.rE.LumHash('prop_water_ramp_03'),
                Lumia1.rE.LumHash('prop_container_03b'),
                Lumia1.rE.LumHash('v_res_d_dildo_f')
            },
            proplarge = {
                Lumia1.rE.LumHash('ap1_lod_slod4'),
                Lumia1.rE.LumHash('dt1_11_slod1'),
                Lumia1.rE.LumHash('po1_sh1_sunk_lod')
            },
            propcustom = {
                Lumia1.rE.LumHash('v_res_d_dildo_f')
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
            OpenKb = -1,
            OpenKn = -1,
            OpenKalpha = 0
        },
        dienow,
        aimbotfov = 140,
        AbDist = 300,
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
        openmenbind,
        aimbotbind,
        ButtonScale,
        SubMenuScale,
        FreeCamScale,
        PointerScale,
        aimbotfriend = {},
    },
    NotiQ = {
        text = {},
        timeout = {},
    },
    DSR = {},
}
-- I guess we can put all menu functions here ex. Button, CheckBox, Combo boxes? --
local LumiaM = {
    Mfunc = {
        Button = function(text, menoffset, yoff, xoff1)        
            local x 
            local y
            local xoff = xoff1 or 0
            local clicked1 = LumiaN.natives.IsDisabledControlPressed(0, Lumia1.Keys['MOUSE1'])
            local clicked2 = LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1'])
            local tw = LumiaF.func.round(LumiaF.func.FindWidth(text, 4, LumiaF.config.ButtonScale))
    
            if menoffset == 1 then
                x = LumiaF.config.MainX + 20 + xoff
                y = LumiaF.config.MainY + 50 + yoff
            elseif menoffset == 2 then
                x = LumiaF.config.MainX + 20 + xoff
                y = LumiaF.config.MainY + LumiaF.config.Men2Y + 90 + yoff
            elseif menoffset == 3 then
                x = LumiaF.config.MainX + 20 + xoff
                y = LumiaF.config.MainY + LumiaF.config.Men3Y + 130 + yoff
            elseif menoffset == 4 then
                x = LumiaF.config.MainX + 20 + xoff
                y = LumiaF.config.MainY + LumiaF.config.Men4Y + 170 + yoff
            elseif menoffset == 5 then
                x = LumiaF.config.MainX + 20 + xoff
                y = LumiaF.config.MainY + LumiaF.config.Men5Y + 210 + yoff
            end
           
            if clicked1 and LumiaF.func.HoverOn(x, y + 2.5, tw, 15) then
                LumiaF.func.DrawSomeText(text, 4, false, x, y, LumiaF.config.ButtonScale, 0, 0, 0, 255)
            else
                LumiaF.func.DrawSomeText(text, 4, false, x, y, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                --LumiaF.func.DrawRectangle(x,y + 2.5,tw,15,255,255,255,150)
            end
    
            if clicked2 and LumiaF.func.HoverOn(x, y + 2.5, tw, 15) then
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                return true
            else
                return
            end
            return false
        end,
        CheckBox = function(text, toggle, callback, menoffset, yoff, xoff1)
            local x 
            local y
            local clicked1 = LumiaN.natives.IsDisabledControlPressed(0, Lumia1.Keys['MOUSE1'])
            local clicked2 = LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1'])
            local tw = LumiaF.func.round(LumiaF.func.FindWidth(text, 4, LumiaF.config.ButtonScale)) + 15
            local xoff = xoff1 or 0
            if menoffset == 1 then
                x = LumiaF.config.MainX + 35 + xoff
                y = LumiaF.config.MainY + 50 + yoff
            elseif menoffset == 2 then
                x = LumiaF.config.MainX + 35 + xoff
                y = LumiaF.config.MainY + LumiaF.config.Men2Y + 90 + yoff
            elseif menoffset == 3 then
                x = LumiaF.config.MainX + 35 + xoff
                y = LumiaF.config.MainY + LumiaF.config.Men3Y + 130 + yoff
            elseif menoffset == 4 then
                x = LumiaF.config.MainX + 35 + xoff
                y = LumiaF.config.MainY + LumiaF.config.Men4Y + 170 + yoff
            elseif menoffset == 5 then
                x = LumiaF.config.MainX + 35 + xoff
                y = LumiaF.config.MainY + LumiaF.config.Men5Y + 210 + yoff
            end
           
            if clicked1 and LumiaF.func.HoverOn(x - 15, y + 2.5, tw, 15) then
                LumiaF.func.DrawSomeText(text, 4, false, x, y - 0.40, LumiaF.config.ButtonScale, 0, 0, 0, 255)
            else
                LumiaF.func.DrawSomeText(text, 4, false, x, y - 0.40, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            end
        
            if clicked2 and LumiaF.func.HoverOn(x - 15, y + 2.5, tw, 15) then
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                toggle = not toggle
                if callback then 
                    callback(toggle) 
                end
                return true
            end
            
            if toggle then
                LumiaF.func.DrawSomeSprite(x - 6.5, y + 10.5 - 1, 25, 25, 0.0, "mpleaderboard", "leaderboard_votetick_icon", LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            else  
                LumiaF.func.DrawRectangle(x - 11.5, y + 5 - 0.5, 11, 11, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            end
            return false
        end,
        ComboBox = function(text, items, currentIndex, selectedIndex, callback, menoffset, yoff, xoff)
            local x 
            local y
            local itemsCount = #items
            local selectedItem = items[currentIndex]
            local clicked1 = LumiaN.natives.IsDisabledControlPressed(0, Lumia1.Keys['MOUSE1'])
            local clicked2 = LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1'])
            local tw1 = LumiaF.func.round(LumiaF.func.FindWidth(text, 4, LumiaF.config.ButtonScale))
            local tw = LumiaF.func.round(LumiaF.func.FindWidth(selectedItem, 4, LumiaF.config.ButtonScale))
            local clickedleft = LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1']) 
            local clickedright = LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1'])
            local clickedleft2 = LumiaN.natives.IsDisabledControlPressed(0, Lumia1.Keys['MOUSE1']) 
            local clickedright2 = LumiaN.natives.IsDisabledControlPressed(0, Lumia1.Keys['MOUSE1'])
            local xon = xoff or 0
            if menoffset == 1 then
                x = LumiaF.config.MainX + 35 + xon
                y = LumiaF.config.MainY + 50 + yoff
            elseif menoffset == 2 then
                x = LumiaF.config.MainX + 35 + xon
                y = LumiaF.config.MainY + LumiaF.config.Men2Y + 90 + yoff
            elseif menoffset == 3 then
                x = LumiaF.config.MainX + 35 + xon
                y = LumiaF.config.MainY + LumiaF.config.Men3Y + 130 + yoff
            elseif menoffset == 4 then
                x = LumiaF.config.MainX + 35 + xon
                y = LumiaF.config.MainY + LumiaF.config.Men4Y + 170 + yoff
            elseif menoffset == 5 then
                x = LumiaF.config.MainX + 35 + xon
                y = LumiaF.config.MainY + LumiaF.config.Men5Y + 210 + yoff
            end
            if itemsCount > 1 then
                selectedItem = Lumia1.rE.LumToString(selectedItem)
            end
            LumiaF.func.DrawSomeText(text, 4, false, x - 14, y - 0.40, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            --LumiaF.func.DrawRectangle(x + tw1 - 17 + 2,y + 5,10,12,255,255,255,150) --left clicker test
            --LumiaF.func.DrawRectangle(x + tw1 - 17 + tw + 12,y + 5,10,12,255,255,255,150) --right clicker test
            --LumiaF.func.DrawRectangle(x + tw1 - 2, y + 3.5, tw - 5, 15,255,255,255,150) --text clicker test
            if clicked2 and LumiaF.func.HoverOn(x + tw1 - 2, y + 3.5, tw - 5, 15) then
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                return true
            end
            if clicked1 and LumiaF.func.HoverOn(x + tw1 - 2, y + 3.5, tw - 5, 15) then
                LumiaF.func.DrawSomeText(Lumia1.rE.LumToString(selectedItem), 4, false, x + tw1 - 4, y + 0.4, LumiaF.config.ButtonScale, 0, 0, 0, 255)
            else
                LumiaF.func.DrawSomeText(Lumia1.rE.LumToString(selectedItem), 4, false, x + tw1 - 4, y + 0.4, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            end
            if clickedleft2 and LumiaF.func.HoverOn(x + tw1 - 17 + 2,y + 5,10,12) then
                LumiaF.func.DrawSomeText('â†', 0, false, x + tw1 - 17, y - 0.20, LumiaF.config.ButtonScale, 0, 0, 0, 255)
            else
                LumiaF.func.DrawSomeText('â†', 0, false, x + tw1 - 17, y - 0.20, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            end
            if clickedright2 and LumiaF.func.HoverOn(x + tw1 - 17 + tw + 12,y + 5,10,12) then
                LumiaF.func.DrawSomeText("â†’", 0, false, x + tw1 - 17 + tw + 12, y - 0.50, LumiaF.config.ButtonScale, 0, 0, 0, 255)
            else
                LumiaF.func.DrawSomeText("â†’", 0, false, x + tw1 - 17 + tw + 12, y - 0.50, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            end
            selectedIndex = currentIndex
            callback(currentIndex, selectedIndex)
        
            if clickedleft and LumiaF.func.HoverOn(x + tw1 - 17 + 2,y + 5,10,12) then
                if currentIndex > 1 then 
                    currentIndex = currentIndex - 1 
                end
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
            elseif clickedright and LumiaF.func.HoverOn(x + tw1 - 17 + tw + 12,y + 5,10,12) then
                if currentIndex < itemsCount then 
                    currentIndex = currentIndex + 1 
                end
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
            else
                currentIndex = selectedIndex
            end
        
            callback(currentIndex, selectedIndex)
            return false
        end,
        KeyboardInput = function(textEntry, exampleText, maxStringLenght)
            LumiaN.natives.AddTextEntry('FMMC_KEY_TIP1', textEntry..':')
            LumiaN.natives.DisplayOnscreenKeyboard(1, 'FMMC_KEY_TIP1', '', exampleText, '', '', '', maxStringLenght)
            LumiaN.natives.DisableAllControlActions(0)
            while LumiaN.natives.UpdateOnscreenKeyboard() ~= 1 and LumiaN.natives.UpdateOnscreenKeyboard() ~= 2 do
                LumiaF.config.opennow = false
                Lumia1.rE.LumWait(0)
            end
        
            if LumiaN.natives.UpdateOnscreenKeyboard() ~= 2 then
                local result = LumiaN.natives.GetOnscreenKeyboardResult()
                Lumia1.rE.LumWait(500)
                LumiaN.natives.EnableAllControlActions(0)
                LumiaF.config.opennow = true
                return result
            else
                Lumia1.rE.LumWait(500)
                LumiaN.natives.EnableAllControlActions(0)
                LumiaF.config.opennow = true
                return nil
            end
        end,
        DrawNotification = function(text, spd)
            local baboon = true
            local baboon2 = true
            local fadeaway = 255
            local x, y2 = LumiaN.natives.GetActiveScreenResolution()
            local scale = LumiaF.config.FreeCamScale
            local y = 0.0
            local notilen = LumiaF.func.round(LumiaF.func.FindWidth(text, 4, scale))
            local notibox = notilen + 20
            local stop = x - notibox
            local xoff = 2.0 + (notilen / 2)
            local tout1 = ((x + xoff) - stop)
            local tout2 = tout1 + 200
            Lumia1.rE.LumThread(function()
                while baboon do
                    LumiaF.func.DrawSomeText(text, 4, true, x + xoff, 300 + y, scale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, fadeaway)
                    LumiaF.func.DrawRectangle(x - 10,300,notibox,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, fadeaway)
                    Lumia1.rE.LumWait(0)
                end
            end)
            Lumia1.rE.LumTable.LumInsert(LumiaF.NotiQ.timeout, tout2)
            Lumia1.rE.LumThread(function()
                while baboon do
                    if baboon2 then    
                        x = x - 25
                        Lumia1.rE.LumWait(10)
                    end
                    if x <= stop then
                        baboon2 = false
                        Lumia1.rE.LumWait(spd)
                        for i = 1, 10 do
                            fadeaway = fadeaway - 25
                            x = x + 25
                            Lumia1.rE.LumWait(10)
                        end
                        baboon = false
                    end
                    Lumia1.rE.LumWait(0)
                end
            end)
        end,
        ShowNotification = function(text, x, scale, y)
            Lumia1.rE.LumTable.LumInsert(LumiaF.NotiQ.text, text)
        end
    },
    dynam = {
        Conde_GetTrigger = function(d)
            local script;
            local s, l;
            local condeisneeker, condeisneeker2;
            if not d.noparam then
                if LumiaF.dynam.GetResourceStatus(d.resource) then else return end
                script = LoadResourceFile(d.resource, d.file);
                if script == nil or script == "nil" or script:len() <= 0 then return end
                s, l = Lumia1.rE.LumString.LumFind(script, '%b""' .. d.lookfor)
                if s == nil then 
                    s, l = Lumia1.rE.LumString.LumFind(script, "%b''" .. d.lookfor)
                    if s == nil then
                        return
                    end
                end
                local script2 = Lumia1.rE.LumString.LumSub(script, s, l)
                local trigger_done, _ = Lumia1.rE.LumString.LumGsub(script2, d.lookfor, "")
                local condemistake, useless = Lumia1.rE.LumString.LumGsub(trigger_done, "'", '')
                local condemistakes, uselesss = Lumia1.rE.LumString.LumGsub(condemistake, '"', '')
                Lumia1.TR[Lumia1.rE.LumToString(d.name)] = condemistakes;
            else
                if LumiaF.dynam.GetResourceStatus(d.resource) then else return end
                script = LoadResourceFile(d.resource, d.file);
                if script == nil or script == "nil" or script:len() <= 0 then return end
                s, l = Lumia1.rE.LumString.LumFind(script, d.lookfor)
                if s == nil then
                    return
                else
                    condeisneeker, condeisneeker2 = Lumia1.rE.LumString.LumFind(script, 'TriggerServerEvent%b()', l)
                    if condeisneeker == nil then
                        return
                    end
                    local scriptneeker = Lumia1.rE.LumString.LumSub(script, condeisneeker, condeisneeker2)
                    local condelicksmylescock, uselesssss = Lumia1.rE.LumString.LumGsub(scriptneeker, 'TriggerServerEvent', "")
                    local condelicksmylescock1, uselessssss = Lumia1.rE.LumString.LumGsub(condelicksmylescock, "'", "")
                    local condelicksmylescock2, uselesssssss = Lumia1.rE.LumString.LumGsub(condelicksmylescock1, '"', "")
                    local condelicksmylescock3, uselessssssss = Lumia1.rE.LumString.LumGsub(condelicksmylescock2, '%(', "")
                    local condelicksmylescock4, uselesssssssss = Lumia1.rE.LumString.LumGsub(condelicksmylescock3, '%)', "")
                    Lumia1.TR[Lumia1.rE.LumToString(d.name)] = condelicksmylescock4;
                end
            end
            print("---------------")
            print(d.name)
            print(Lumia1.TR[Lumia1.rE.LumToString(d.name)])
        end
    },
    freec = {
        RayCastCam = function(distance)	
            local cameraRotation = LumiaN.natives.GetCamRot(LumiaF.config.camf,0)
            local cameraCoord = LumiaN.natives.GetCamCoord(LumiaF.config.camf)	
            local direction = LumiaF.freec.RotToDir2(cameraRotation)	
            local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}	
            local a, b, c, d, e = LumiaN.natives.GetShapeTestResult(LumiaN.natives.StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
            return b, c, e 
        end,
        CamFwdVect = function(camf)			
            local coords  = LumiaN.natives.GetCamCoord(camf)			
            local rot     = LumiaN.natives.GetCamRot(camf,0)			  
            return LumiaF.freec.RotToQuat(rot) * vector3(0.0, 1.0, 0.0)			
        end,
        CamRightVect = function(camf)			
            local coords  = LumiaN.natives.GetCamCoord(camf)			
            local rot     = LumiaN.natives.GetCamRot(camf,0)			
            local qrot    = quat(0.0, vector3(rot.x, rot.y, rot.z))			  
            return LumiaF.freec.RotToQuat(rot) * vector3(1.0, 0.0, 0.0)			
        end,
        FreeCamToggle = function()			
            if LumiaF.config.camf == nil then							
                local coords = LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId(), true)
                LumiaF.config.camf = LumiaN.natives.CreateCamWithParams('DEFAULT_SCRIPTED_CAMERA', coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, LumiaN.natives.GetGameplayCamFov(), false, 0)				
                LumiaN.natives.SetCamActive(LumiaF.config.camf, true)				
                LumiaN.natives.RenderScriptCams(true, false, 0, 0, 0)	
                IONFCH = true
            else				
                local pedcoords = LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId(), true)				
                local coords = LumiaN.natives.GetCamCoord(LumiaF.config.camf)								
                LumiaF.config.camf = nil							
                LumiaN.natives.SetCamActive(LumiaF.config.camf, false)						   				
                LumiaN.natives.RenderScriptCams(false, false, 0, true, false)				
                LumiaN.natives.DestroyCam(LumiaF.config.camf, false)				
                LumiaN.natives.SetFocusEntity(LumiaN.natives.PlayerPedId())
                IONFCH = false
            end			
        end,
    },
    FunFunc = {
        ElGetUpNow = function()
            LumiaN.natives.StopScreenEffect("DeathFailOut")
            LumiaN.natives.SetEntityHealth(LumiaN.natives.PlayerPedId(-1), 200)
            LumiaN.natives.ClearPedBloodDamage(LumiaN.natives.GetPlayerPed(-1))
            local coords = LumiaN.natives.GetEntityCoords(LumiaN.natives.GetPlayerPed(-1))
            LumiaN.natives.SetEntityCoordsNoOffset(LumiaN.natives.PlayerPedId(), coords.x, coords.y, coords.z, false, false, false, true)
            LumiaN.natives.NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
            LumiaF.func.TriggerCustomEvent(false, 'playerSpawned', coords.x, coords.y, coords.z)
            LumiaN.natives.ClearPedBloodDamage(LumiaN.natives.PlayerPedId())
        end,
        ElSomeHealth = function()
            LumiaN.natives.SetEntityHealth(LumiaN.natives.PlayerPedId(), 200)
        end,
        ElSomeArmor = function()
            LumiaN.natives.AddArmourToPed(LumiaN.natives.PlayerPedId(), 100)
        end,
        ElCleanMe = function()
            LumiaN.natives.ClearPedBloodDamage()
        end,
        ElSuicideMe = function()
            LumiaN.natives.SetEntityHealth(LumiaN.natives.PlayerPedId(), 0)
        end,
        PreMadeFit1 = function()	
            local pedid = LumiaN.natives.PlayerId()
            local characterModel = Lumia1.rE.LumHash('mp_m_freemode_01')	
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
            LumiaN.natives.RequestModel(characterModel)		
            
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(50)		
            end
                    
            LumiaN.natives.SetPlayerModel(pedid, characterModel)		
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)		
            LumiaN.natives.SetPedHeadBlendData(LumiaN.natives.GetPlayerPed(-1),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(LumiaN.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 2, ears_1,ears_2, 2)			
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 6,watches_1,watches_2, 2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)
        end,
        PreMadeFit2 = function()	
            local pedid = LumiaN.natives.PlayerId()	
            local characterModel = Lumia1.rE.LumHash('mp_m_freemode_01')	
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
            
            LumiaN.natives.RequestModel(characterModel)		
           
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(50)		
            end		
            LumiaN.natives.SetPlayerModel(pedid, characterModel)		
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)   		
            LumiaN.natives.SetPedHeadBlendData(LumiaN.natives.GetPlayerPed(-1),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(LumiaN.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)			
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)	
        end,
        PreMadeFit3 = function()
            local pedid = LumiaN.natives.PlayerId()	
            local characterModel = Lumia1.rE.LumHash('mp_m_freemode_01')	
            local face = 2	
            local skin = 1	
            local beard_1 = 10	
            local beard_2 = 10	
            local beard_3 = 1	
            local beard_4 = 1	
            local eyebrows_1 = 2	
            local eyebrows_2 = 10	
            local eyebrows_3 = 1	
            local eyebrows_4 = 1	
            local hair_1 = 3	
            local hair_2 = 0	
            local hair_color_1 = 1	
            local hair_color_2 = 1	
            local tshirt_1 = 33	
            local tshirt_2 = 2	
            local torso_1 = 29	
            local torso_2 = 2	
            local decals_1 = 0	
            local decals_2 = 0	
            local arms = 20	
            local pants_1 = 24	
            local pants_2 = 2	
            local shoes_1 = 20	
            local shoes_2 = 0	
            local mask_1 = 0	
            local mask_2 = 0	
            local bproof_1 = 0	
            local bproof_2 = 0	
            local chain_1 = 26	
            local chain_2 = 12	
            local helmet_1 = -1	
            local helmet_2 = 0	
            local glasses_1 = 7	
            local glasses_2 = 0	
            local watches_1 = 3	
            local watches_2 = 0	
            local ears_1 = -1	
            local ears_2 = 0        
            
            LumiaN.natives.RequestModel(characterModel)		
            
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(50)		
            end		
            
            LumiaN.natives.SetPlayerModel(pedid, characterModel)		
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)		
            LumiaN.natives.SetPedHeadBlendData(LumiaN.natives.GetPlayerPed(-1),face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(LumiaN.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 2, ears_1,ears_2, 2)			
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 6,watches_1,watches_2, 2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)
        end,
        kylersunset = function()
            local pedid = LumiaN.natives.PlayerId()
            local characterModel = Lumia1.rE.LumHash('mp_m_freemode_01')	
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
        
            LumiaN.natives.RequestModel(characterModel)		
            
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(50)		
            end
                    
            LumiaN.natives.SetPlayerModel(pedid, characterModel)		
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)		
            LumiaN.natives.SetPedHeadBlendData(LumiaN.natives.GetPlayerPed(-1),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(LumiaN.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 2, ears_1,ears_2, 2)			
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 6,watches_1,watches_2, 2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)
        end,
        chadsunset = function()
            local pedid = LumiaN.natives.PlayerId()	
            local characterModel = Lumia1.rE.LumHash('mp_m_freemode_01')	     
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
            
            LumiaN.natives.RequestModel(characterModel)		
           
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(50)		
            end		
            LumiaN.natives.SetPlayerModel(pedid, characterModel)		
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)   		
            LumiaN.natives.SetPedHeadBlendData(LumiaN.natives.GetPlayerPed(-1),face, face1, face2, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(LumiaN.natives.GetPlayerPed(-1), 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(LumiaN.natives.GetPlayerPed(-1), 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(LumiaN.natives.GetPlayerPed(-1),hair_color_1,hair_color_2)			
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(LumiaN.natives.GetPlayerPed(-1), 8,tshirt_1,tshirt_2, 2)
        end,
        CloneDaFit = function(target)
            local me = LumiaN.natives.GetPlayerPed(-1)
            local ped = LumiaN.natives.GetPlayerPed(target)
            local hat = LumiaN.natives.GetPedPropIndex(ped, 0)
            local hat_texture = LumiaN.natives.GetPedPropTextureIndex(ped, 0)
            local glasses = LumiaN.natives.GetPedPropIndex(ped, 1)
            local glasses_texture = LumiaN.natives.GetPedPropTextureIndex(ped, 1)
            local ear = LumiaN.natives.GetPedPropIndex(ped, 2)
            local ear_texture = LumiaN.natives.GetPedPropTextureIndex(ped, 2)
            local watch = LumiaN.natives.GetPedPropIndex(ped, 6)
            local watch_texture = LumiaN.natives.GetPedPropTextureIndex(ped, 6)
            local wrist = LumiaN.natives.GetPedPropIndex(ped, 7)
            local wrist_texture = LumiaN.natives.GetPedPropTextureIndex(ped, 7)
            local head_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 0)
            local head_palette = LumiaN.natives.GetPedPaletteVariation(ped, 0)
            local head_texture = LumiaN.natives.GetPedTextureVariation(ped, 0)
            local beard_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 1)
            local beard_palette = LumiaN.natives.GetPedPaletteVariation(ped, 1)
            local beard_texture = LumiaN.natives.GetPedTextureVariation(ped, 1)
            local hair_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 2)
            local hair_palette = LumiaN.natives.GetPedPaletteVariation(ped, 2)
            local hair_texture = LumiaN.natives.GetPedTextureVariation(ped, 2)
            local torso_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 3)
            local torso_palette = LumiaN.natives.GetPedPaletteVariation(ped, 3)
            local torso_texture = LumiaN.natives.GetPedTextureVariation(ped, 3)
            local legs_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 4)
            local legs_palette = LumiaN.natives.GetPedPaletteVariation(ped, 4)
            local legs_texture = LumiaN.natives.GetPedTextureVariation(ped, 4)
            local hands_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 5)
            local hands_palette = LumiaN.natives.GetPedPaletteVariation(ped, 5)
            local hands_texture = LumiaN.natives.GetPedTextureVariation(ped, 5)
            local foot_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 6)
            local foot_palette = LumiaN.natives.GetPedPaletteVariation(ped, 6)
            local foot_texture = LumiaN.natives.GetPedTextureVariation(ped, 6)
            local acc1_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 7)
            local acc1_palette = LumiaN.natives.GetPedPaletteVariation(ped, 7)
            local acc1_texture = LumiaN.natives.GetPedTextureVariation(ped, 7)
            local acc2_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 8)
            local acc2_palette = LumiaN.natives.GetPedPaletteVariation(ped, 8)
            local acc2_texture = LumiaN.natives.GetPedTextureVariation(ped, 8)
            local acc3_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 9)
            local acc3_palette = LumiaN.natives.GetPedPaletteVariation(ped, 9)
            local acc3_texture = LumiaN.natives.GetPedTextureVariation(ped, 9)
            local mask_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 10)
            local mask_palette = LumiaN.natives.GetPedPaletteVariation(ped, 10)
            local mask_texture = LumiaN.natives.GetPedTextureVariation(ped, 10)
            local aux_drawable = LumiaN.natives.GetPedDrawableVariation(ped, 11)
            local aux_palette = LumiaN.natives.GetPedPaletteVariation(ped, 11) 	
            local aux_texture = LumiaN.natives.GetPedTextureVariation(ped, 11)
            LumiaN.natives.SetPedPropIndex(me, 0, hat, hat_texture, 1)
            LumiaN.natives.SetPedPropIndex(me, 1, glasses, glasses_texture, 1)
            LumiaN.natives.SetPedPropIndex(me, 2, ear, ear_texture, 1)
            LumiaN.natives.SetPedPropIndex(me, 6, watch, watch_texture, 1)
            LumiaN.natives.SetPedPropIndex(me, 7, wrist, wrist_texture, 1)
            LumiaN.natives.SetPedComponentVariation(me, 0, head_drawable, head_texture, head_palette)
            LumiaN.natives.SetPedComponentVariation(me, 1, beard_drawable, beard_texture, beard_palette)
            LumiaN.natives.SetPedComponentVariation(me, 2, hair_drawable, hair_texture, hair_palette)
            LumiaN.natives.SetPedComponentVariation(me, 3, torso_drawable, torso_texture, torso_palette)
            LumiaN.natives.SetPedComponentVariation(me, 4, legs_drawable, legs_texture, legs_palette)
            LumiaN.natives.SetPedComponentVariation(me, 5, hands_drawable, hands_texture, hands_palette)
            LumiaN.natives.SetPedComponentVariation(me, 6, foot_drawable, foot_texture, foot_palette)
            LumiaN.natives.SetPedComponentVariation(me, 7, acc1_drawable, acc1_texture, acc1_palette)
            LumiaN.natives.SetPedComponentVariation(me, 8, acc2_drawable, acc2_texture, acc2_palette)
            LumiaN.natives.SetPedComponentVariation(me, 9, acc3_drawable, acc3_texture, acc3_palette)
            LumiaN.natives.SetPedComponentVariation(me, 10, mask_drawable, mask_texture, mask_palette)
            LumiaN.natives.SetPedComponentVariation(me, 11, aux_drawable, aux_texture, aux_palette)
        end,
        argunr = function()
            local pedid = LumiaN.natives.PlayerId()	
            local characterModel = Lumia1.rE.LumHash('a_m_m_hasjew_01')
            local helmet_1 = 0	
            local helmet_2 = 0
            LumiaN.natives.RequestModel(characterModel)
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(50)
            end
            LumiaN.natives.SetPlayerModel(pedid, characterModel)		
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)
            LumiaN.natives.SetPedPropIndex(LumiaN.natives.GetPlayerPed(-1), 0, helmet_1 ,helmet_2 , 2)
        end,
        specnow = function(ped)
            local pped = LumiaN.natives.GetPlayerPed(ped)
            local cam = LumiaN.natives.CreateCam('DEFAULT_SCRIPTED_Camera', 1)
            LumiaN.natives.RenderScriptCams(1, 0, 0, 1, 1)
            LumiaN.natives.SetCamActive(cam, true)
            LumiaN.natives.SetFocusEntity(pped)
            Lumia1.rE.LumThread(function()
                local offsetRotX = 0.0
                local offsetRotY = 0.0
                local offsetRotZ = 0.0
                local currOffset = vec3(0.0, -4.0, 3.0)
                while LumiaF.config.specfornow do
                    Lumia1.rE.LumWait(0)
                if LumiaF.config.opennow then
                    offsetRotX = offsetRotX - (LumiaN.natives.GetControlNormal(1, 2) * 8.0)
                    offsetRotZ = offsetRotZ - (LumiaN.natives.GetControlNormal(1, 1) * 8.0)
                else
                    offsetRotX = offsetRotX - (LumiaN.natives.GetDisabledControlNormal(1, 2) * 8.0)
                    offsetRotZ = offsetRotZ - (LumiaN.natives.GetDisabledControlNormal(1, 1) * 8.0)
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
                    local rot = LumiaN.natives.GetEntityRotation(pped)
                    LumiaN.natives.SetCamRot(cam, rot.x + offsetRotX, rot.y + offsetRotY, rot.z + offsetRotZ, 2)
                    
                    local offset = offsetRotZ / 18.0
                    if offset > 10.5 then 
                        offset = offset - 21
                    elseif offset < -10.5 then
                        offset = offset + 21
                    end
    
                    local height = (offsetRotX / 10.0) * -1
                    local coords = LumiaN.natives.GetEntityCoords(pped)
                    local success, groundz = LumiaN.natives.GetGroundZFor_3dCoord(coords.x, coords.y, coords.z)
                    local customforward = 0.0
    
                    if success then
                        if LumiaN.natives.GetOffsetFromEntityInWorldCoords(pped, 0.0, 0.0, height).z - groundz < 0.0 then
                            customforward = height * -1
                            if customforward > 1.75 then customforward = 1.75 end
                            height = (groundz - LumiaN.natives.GetEntityCoords(pped).z)
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
                            LumiaN.natives.SetCamCoord(cam, LumiaN.natives.GetOffsetFromEntityInWorldCoords(pped, 3.0 - (offset - 7.5), (-4.5 + customforward) + offset, height))
                        else
                            LumiaN.natives.SetCamCoord(cam, LumiaN.natives.GetOffsetFromEntityInWorldCoords(pped, 3.0, (-4.5 + customforward) + offset, height))
                        end
                    else
                        if offset < -3.0 then
                            if offset < -7.5 then
                                LumiaN.natives.SetCamCoord(cam, LumiaN.natives.GetOffsetFromEntityInWorldCoords(pped, -3.0 - (offset + 7.5), (-4.5 + customforward) - offset, height))
                            else
                                LumiaN.natives.SetCamCoord(cam, LumiaN.natives.GetOffsetFromEntityInWorldCoords(pped, -3.0, (-4.5 + customforward) - offset, height))
                            end
                        else
                            if offset > 0.0 then
                                LumiaN.natives.SetCamCoord(cam, LumiaN.natives.GetOffsetFromEntityInWorldCoords(pped, offset, (-4.5 + customforward) + offset, height))
                            else
                                LumiaN.natives.SetCamCoord(cam, LumiaN.natives.GetOffsetFromEntityInWorldCoords(pped, offset, (-4.5 + customforward) - offset, height))
                            end
                        end
                    end
                end
                LumiaN.natives.ClearFocus()
            end)
        end,
        TeleportToPlayer = function(target)
            local ped = LumiaN.natives.GetPlayerPed(target)
            local pos = LumiaN.natives.GetEntityCoords(ped)
            if LumiaN.natives.IsPedInAnyVehicle(ped, false) then
                local vehicle = LumiaN.natives.GetVehiclePedIsUsing(ped)
	            local seats = LumiaN.natives.GetVehicleMaxNumberOfPassengers(vehicle)
                for i = 0, seats do
		            if LumiaN.natives.IsVehicleSeatFree(vehicle, i) then
			            LumiaN.natives.SetPedIntoVehicle(LumiaN.natives.PlayerPedId(), vehicle, i)
			            break
		            end
	            end
            else
                LumiaN.natives.SetEntityCoordsNoOffset(LumiaN.natives.PlayerPedId(), pos.x, pos.y, pos.z, false, false, false, true)
            end
        end,
        cagerino = function(player)
            local stupidped = LumiaN.natives.GetPlayerPed(player)
            local pedloc = LumiaN.natives.GetEntityCoords(stupidped, false)
            local obj = 'prop_doghouse_01'
            local objh = Lumia1.rE.LumHash(obj)
            local bobject = LumiaN.natives.CreateObject(objh, pedloc.x, pedloc.y, pedloc.z, true, false, true)
            LumiaN.natives.SetEntityInvincible(bobject, true)
        end,
        goboom = function(player)
            local stupidped = LumiaN.natives.GetPlayerPed(player)
            local pedloc = LumiaN.natives.GetEntityCoords(stupidped, false)
            local obj = 'prop_gas_tank_01a'
            local objh = Lumia1.rE.LumHash(obj)
            if not LumiaN.natives.HasModelLoaded(objh) then
                Lumia1.rE.LumWait(10)
                LumiaN.natives.RequestModel(objh)
            else
                local obhc = LumiaN.natives.CreateObject(objh, pedloc.x, pedloc.y, pedloc.z, true, false, true)
                local rot = LumiaN.natives.GetEntityRotation(obhc)
                local direct = LumiaF.func.RotationToDirection(rot)
                local obloc = LumiaN.natives.GetEntityCoords(obhc, false)
                LumiaN.natives.SetEntityVisible(obhc, false)
                if LumiaN.natives.DoesEntityExist(obhc) then           
                    for i = 1, 10 do
                        LumiaN.natives.ShootSingleBulletBetweenCoords((obloc.x + direct.x), (obloc.y + direct.y), (obloc.z + obloc.z), obloc.x, obloc.y, obloc.z, 100.0, false, `WEAPON_PISTOL`, LumiaN.natives.PlayerPedId(), true, false, 1000.0)
                    end
                end
            end
        end,
        lagmen = function(player)
            local gox_dict = "core"					
            local stupidped = LumiaN.natives.GetPlayerPed(player)
            local pedloc = LumiaN.natives.GetEntityCoords(stupidped, false)
        
            LumiaN.natives.RequestNamedPtfxAsset(gox_dict)					
            while not LumiaN.natives.HasNamedPtfxAssetLoaded(gox_dict) do						
                Lumia1.rE.LumWait(10)				
            end
            
            for i = 1, 1000 do
                LumiaN.natives.UseParticleFxAsset(gox_dict)
                LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_light_amber",pedloc.x,pedloc.y,pedloc.z,0,0,0,100.0,0,0,0)							
                LumiaN.natives.UseParticleFxAsset(gox_dict)							
                LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_backfire",pedloc.x,pedloc.y,pedloc.z,0,0,0,100.0,0,0,0)							
                LumiaN.natives.UseParticleFxAsset(gox_dict)							
                LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun",pedloc.x,pedloc.y,pedloc.z,0,0,0,100.0,0,0,0)							
                LumiaN.natives.UseParticleFxAsset(gox_dict)							
                LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_respray_smoke",pedloc.x,pedloc.y,pedloc.z,0,0,0,100.0,0,0,0)							
            end
        end,
        ball = function(player)
            local stupidped = LumiaN.natives.GetPlayerPed(player)						
            local IONOBJ = "stt_prop_stunt_soccer_ball"						
            local IONOBJH = Lumia1.rE.LumHash(IONOBJ)						
            local IONCOBJ = LumiaN.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)						
            if LumiaN.natives.IsPedInAnyVehicle(stupidped, false) then
                LumiaN.natives.AttachEntityToEntity(IONCOBJ, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 0, -1.0, 0.0, 0.0, 0, false, false, false, false, 1, true)
            else
                LumiaN.natives.AttachEntityToEntity(IONCOBJ, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            end
        end,
        ctreemen = function(player)
            local stupidped = LumiaN.natives.GetPlayerPed(player)						
            local IONOBJ = "prop_xmas_tree_int"						
            local IONOBJH = Lumia1.rE.LumHash(IONOBJ)						
            local IONCOBJ = LumiaN.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)						
            LumiaN.natives.AttachEntityToEntity(IONCOBJ, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
        end,
        ferris = function(player)
            local stupidped = LumiaN.natives.GetPlayerPed(player)
            local IONOBJ = "prop_Ld_ferris_wheel"						
            local IONOBJH = Lumia1.rE.LumHash(IONOBJ)						
            local IONCOBJ = LumiaN.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)
            if LumiaN.natives.IsPedInAnyVehicle(stupidped, false) then						
                LumiaN.natives.AttachEntityToEntity(IONCOBJ, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            else
                LumiaN.natives.AttachEntityToEntity(IONCOBJ, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            end
        end,
        barge = function(player)
            local stupidped = LumiaN.natives.GetPlayerPed(player)
            local IONOBJ = "prop_lev_des_barge_02"						
            local IONOBJH = Lumia1.rE.LumHash(IONOBJ)						
            local IONCOBJ = LumiaN.natives.CreateObject(IONOBJH, 0, 0, 0, true, true, true)						
            if LumiaN.natives.IsPedInAnyVehicle(stupidped, false) then
                LumiaN.natives.AttachEntityToEntity(IONCOBJ, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            else    
                LumiaN.natives.AttachEntityToEntity(IONCOBJ, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
            end
        end,
        swaz = function(player)
            local stupidped = LumiaN.natives.GetPlayerPed(player)
            local object = Lumia1.rE.LumHash('prop_container_03a')							
            local x, y, z = Lumia1.rE.LumTable.LumUnPack(GetEntityCoords(stupidped, true))							
            local IONCOBJ = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ1 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ2 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ3 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ4 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ5 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ6 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ7 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ8 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ9 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ10 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ11 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ12 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ13 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ14 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)
            local IONCOBJ15 = LumiaN.natives.CreateObject(object, x, y, z, true, true, true)							
            if LumiaN.natives.IsPedInAnyVehicle(stupidped, false) then
                LumiaN.natives.AttachEntityToEntity(IONCOBJ,  LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, 0.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ1, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, 5.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ2, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -0.5, 15.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ3, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -0.5, 20.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ4, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, -4.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ5, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, -9.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ6, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -9.5, 19.5, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ7, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -9.5, 13.5, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ8, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -0.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ9, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, -0.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ10, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, -5.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ11, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, -10.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ12, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, 0.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ13, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0.0, 5.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ14, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 8.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
				Lumia1.rE.LumWait(100)							
				LumiaN.natives.AttachEntityToEntity(IONCOBJ15, LumiaN.natives.GetVehiclePedIsIn(stupidped, false), 0, 0, 8.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)
            else
                LumiaN.natives.AttachEntityToEntity(IONCOBJ, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0.0, 0.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ1, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0.0, 5.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ2, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, -0.5, 15.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ3, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, -0.5, 20.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ4, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0.0, -4.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ5, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0.0, -9.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ6, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, -9.5, 19.5, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ7, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, -9.5, 13.5, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ8, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, -0.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ9, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, -0.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ10, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0.0, -5.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ11, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0.0, -10.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ12, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0.0, 0.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ13, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0.0, 5.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ14, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, 8.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)							
                Lumia1.rE.LumWait(100)							
                LumiaN.natives.AttachEntityToEntity(IONCOBJ15, stupidped, LumiaN.natives.GetPedBoneIndex(stupidped, 0), 0, 8.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)
            end
        end,
        spawnvehicle = function(ModelName)
            if ModelName and LumiaN.natives.IsModelValid(ModelName) and LumiaN.natives.IsModelAVehicle(ModelName) then
              LumiaN.natives.RequestModel(ModelName)
              while not LumiaN.natives.HasModelLoaded(ModelName) do
                Lumia1.rE.LumWait(0)
              end
              local veh = LumiaN.natives.CreateVehicle(Lumia1.rE.LumHash(ModelName), LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId()), LumiaN.natives.GetEntityHeading(LumiaN.natives.PlayerPedId()), true, true)
              LumiaN.natives.SetPedIntoVehicle(LumiaN.natives.PlayerPedId(), veh, -1)
            else
              print("Invalid")
            end
        end,
        realkkk = function()
            local objh = Lumia1.rE.LumHash('prop_tree_olive_cr2')
            local tree = LumiaN.natives.CreateObject(objh, 105.519, -1940.525, 18.503, true, false, true)
            local characterModel = Lumia1.rE.LumHash('mp_m_freemode_01')
            LumiaN.natives.RequestModel(characterModel)		
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(50)		
            end
            local pedc = LumiaN.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 99.874, -1939.423, 19.803, 270.0, true, false)
            local pedc1 = LumiaN.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 100.417, -1938.018, 19.803, 236.226, true, false)
            local pedc2 = LumiaN.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 101.363, -1936.819, 19.803, 223.971, true, false)
            local pedc3 = LumiaN.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 102.748, -1936.815, 19.803, 179.659, true, false)
            local pedc4 = LumiaN.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 100.337, -1940.852, 19.803, 297.803, true, false)
            local hped = LumiaN.natives.CreatePed('PED_TYPE_NETWORK_PLAYER', characterModel, 103.160, -1939.648, 21.803, 45.745, true, false)
        
            local CrossModel = Lumia1.rE.LumHash('prop_fncwood_14a')
            local createC = LumiaN.natives.CreateObject(CrossModel, 104.690, -1938.063, 20.003, true, false, true)
            local createC1 = LumiaN.natives.CreateObject(CrossModel, 104.690, -1938.063, 19.603, true, false, true)
            local createC2 = LumiaN.natives.CreateObject(CrossModel, 104.690, -1938.063, 20.503, true, false, true)
            local createC3 = LumiaN.natives.CreateObject(CrossModel, 104.690, -1938.063, 20.503, true, false, true)
            LumiaN.natives.AttachEntityToEntity(createC, createC3, 0.0, 0.0, 0.4, 0.5, 90.0, 0.0, false, false, false, 0.0, true)
            LumiaN.natives.FreezeEntityPosition(createC, true)
            LumiaN.natives.FreezeEntityPosition(createC1, true)
            LumiaN.natives.FreezeEntityPosition(createC2, true)
        
            LumiaN.natives.AddRope(103.160, -1939.648, 26.803, 0.0, 0.0, 0.0, 2.0, 4, 2.0, 1.0, 0.0, false, false, false, 5.0, false)
        
            -- Outfit
        
            local characterModel = Lumia1.rE.LumHash('mp_m_freemode_01')	
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
                
            LumiaN.natives.RequestModel(characterModel)		
                    
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(500)		
            end
                
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)		
            LumiaN.natives.SetPedHeadBlendData(pedc,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(pedc, 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc, 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(pedc, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc, 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(pedc, 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(pedc,hair_color_1,hair_color_2)		
            LumiaN.natives.SetPedPropIndex(pedc, 2, ears_1,ears_2, 2)			
            LumiaN.natives.SetPedPropIndex(pedc, 6,watches_1,watches_2, 2)		
            LumiaN.natives.SetPedPropIndex(pedc, 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(pedc, 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc, 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc, 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc, 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc, 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc, 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc, 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc, 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc, 8,tshirt_1,tshirt_2, 2)
            
            LumiaN.natives.SetPedHeadBlendData(pedc1,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(pedc1, 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc1, 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(pedc1, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc1, 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(pedc1,hair_color_1,hair_color_2)		
            LumiaN.natives.SetPedPropIndex(pedc1, 2, ears_1,ears_2, 2)			
            LumiaN.natives.SetPedPropIndex(pedc1, 6,watches_1,watches_2, 2)		
            LumiaN.natives.SetPedPropIndex(pedc1, 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(pedc1, 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc1, 8,tshirt_1,tshirt_2, 2)
        
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)		
            LumiaN.natives.SetPedHeadBlendData(pedc2,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(pedc2, 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc2, 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(pedc2, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc2, 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(pedc2,hair_color_1,hair_color_2)		
            LumiaN.natives.SetPedPropIndex(pedc2, 2, ears_1,ears_2, 2)			
            LumiaN.natives.SetPedPropIndex(pedc2, 6,watches_1,watches_2, 2)		
            LumiaN.natives.SetPedPropIndex(pedc2, 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(pedc2, 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc2, 8,tshirt_1,tshirt_2, 2)
        
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)		
            LumiaN.natives.SetPedHeadBlendData(pedc3,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(pedc3, 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc3, 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(pedc3, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc3, 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(pedc3,hair_color_1,hair_color_2)		
            LumiaN.natives.SetPedPropIndex(pedc3, 2, ears_1,ears_2, 2)			
            LumiaN.natives.SetPedPropIndex(pedc3, 6,watches_1,watches_2, 2)		
            LumiaN.natives.SetPedPropIndex(pedc3, 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(pedc3, 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc3, 8,tshirt_1,tshirt_2, 2)
        
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)		
            LumiaN.natives.SetPedHeadBlendData(pedc4,face, face, face, skin, skin, skin, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(pedc4, 1,	beard_1,(beard_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc4, 1, 1,beard_3,beard_4)		
            LumiaN.natives.SetPedHeadOverlay(pedc4, 2,	eyebrows_1,(eyebrows_2 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(pedc4, 2, 1,eyebrows_3,eyebrows_4)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 2,hair_1,hair_2, 2)        
            LumiaN.natives.SetPedHairColor(pedc4,hair_color_1,hair_color_2)		
            LumiaN.natives.SetPedPropIndex(pedc4, 2, ears_1,ears_2, 2)			
            LumiaN.natives.SetPedPropIndex(pedc4, 6,watches_1,watches_2, 2)		
            LumiaN.natives.SetPedPropIndex(pedc4, 1, glasses_1 , glasses_2 , 2)		
            LumiaN.natives.SetPedPropIndex(pedc4, 0, helmet_1 ,helmet_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 7, chain_1, chain_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 9,bproof_1, bproof_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 1,mask_1,mask_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 6, shoes_1,shoes_2 , 2)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 4,pants_1,pants_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 3, arms, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 11, torso_1 ,torso_2, 2)		
            LumiaN.natives.SetPedComponentVariation(pedc4, 8,tshirt_1,tshirt_2, 2)
        
            LumiaN.natives.SetModelAsNoLongerNeeded(characterModel)		
            LumiaN.natives.SetPedHeadBlendData(hped,face1, face1, face1, skin1, skin1, skin1, 1.0, 1.0, 1.0, true)		
            LumiaN.natives.SetPedHeadOverlay(hped, 1,	beard_11,(beard_21 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(hped, 1, 1,beard_31,beard_41)		
            LumiaN.natives.SetPedHeadOverlay(hped, 2,	eyebrows_11,(eyebrows_21 / 10) + 0.0)		
            LumiaN.natives.SetPedHeadOverlayColor(hped, 2, 1,eyebrows_31,eyebrows_41)		
            LumiaN.natives.SetPedComponentVariation(hped, 2,hair_11,hair_21, 2)        
            LumiaN.natives.SetPedHairColor(hped,hair_color_11,hair_color_21)		
            LumiaN.natives.SetPedPropIndex(hped, 2, ears_11,ears_21, 2)			
            LumiaN.natives.SetPedPropIndex(hped, 6,watches_11,watches_21, 2)		
            LumiaN.natives.SetPedPropIndex(hped, 1, glasses_11 , glasses_21 , 2)		
            LumiaN.natives.SetPedPropIndex(hped, 0, helmet_11 ,helmet_21 , 2)		
            LumiaN.natives.SetPedComponentVariation(hped, 7, chain_11, chain_21, 2)		
            LumiaN.natives.SetPedComponentVariation(hped, 9,bproof_11, bproof_21 , 2)		
            LumiaN.natives.SetPedComponentVariation(hped, 1,mask_11,mask_21, 2)		
            LumiaN.natives.SetPedComponentVariation(hped, 6, shoes_11,shoes_21 , 2)		
            LumiaN.natives.SetPedComponentVariation(hped, 4,pants_11,pants_21, 2)		
            LumiaN.natives.SetPedComponentVariation(hped, 3, arms1, 0, 2)		
            LumiaN.natives.SetPedComponentVariation(hped, 11, torso_11 ,torso_21, 2)		
            LumiaN.natives.SetPedComponentVariation(hped, 8,tshirt_11,tshirt_21, 2)
        
        
            LumiaN.natives.FreezeEntityPosition(tree, true)
            LumiaN.natives.FreezeEntityPosition(pedc, true)
            LumiaN.natives.FreezeEntityPosition(pedc1, true)
            LumiaN.natives.FreezeEntityPosition(pedc2, true)
            LumiaN.natives.FreezeEntityPosition(pedc3, true)
            LumiaN.natives.FreezeEntityPosition(pedc4, true)
            LumiaN.natives.FreezeEntityPosition(hped, true)
        
            LumiaN.natives.SetEntityInvincible(pedc, true)
            LumiaN.natives.SetEntityInvincible(pedc1, true)
            LumiaN.natives.SetEntityInvincible(pedc2, true)
            LumiaN.natives.SetEntityInvincible(pedc3, true)
            LumiaN.natives.SetEntityInvincible(pedc4, true)
            LumiaN.natives.SetEntityInvincible(hped, true)
        
            LumiaN.natives.SetPedCanRagdoll(pedc, false)
            LumiaN.natives.SetPedCanRagdoll(pedc1, false)
            LumiaN.natives.SetPedCanRagdoll(pedc2, false)
            LumiaN.natives.SetPedCanRagdoll(pedc3, false)
            LumiaN.natives.SetPedCanRagdoll(pedc4, false)
            LumiaN.natives.SetPedCanRagdoll(hped, false)
        
            LumiaN.natives.ClearPedTasks(pedc)
            LumiaN.natives.ClearPedSecondaryTask(pedc)
            LumiaN.natives.TaskSetBlockingOfNonTemporaryEvents(pedc, true)
            LumiaN.natives.SetPedFleeAttributes(pedc, 0, 0)
            LumiaN.natives.SetPedCombatAttributes(pedc, 17, 1)
            LumiaN.natives.SetPedSeeingRange(pedc, 0.0)
            LumiaN.natives.SetPedHearingRange(pedc, 0.0)
            LumiaN.natives.SetPedAlertness(pedc, 0)
            LumiaN.natives.SetPedKeepTask(pedc, true)
        
            LumiaN.natives.ClearPedTasks(pedc1)
            LumiaN.natives.ClearPedSecondaryTask(pedc1)
            LumiaN.natives.TaskSetBlockingOfNonTemporaryEvents(pedc1, true)
            LumiaN.natives.SetPedFleeAttributes(pedc1, 0, 0)
            LumiaN.natives.SetPedCombatAttributes(pedc1, 17, 1)
            LumiaN.natives.SetPedSeeingRange(pedc1, 0.0)
            LumiaN.natives.SetPedHearingRange(pedc1, 0.0)
            LumiaN.natives.SetPedAlertness(pedc1, 0)
            LumiaN.natives.SetPedKeepTask(pedc1, true)
        
            LumiaN.natives.ClearPedTasks(pedc2)
            LumiaN.natives.ClearPedSecondaryTask(pedc2)
            LumiaN.natives.TaskSetBlockingOfNonTemporaryEvents(pedc2, true)
            LumiaN.natives.SetPedFleeAttributes(pedc2, 0, 0)
            LumiaN.natives.SetPedCombatAttributes(pedc2, 17, 1)
            LumiaN.natives.SetPedSeeingRange(pedc2, 0.0)
            LumiaN.natives.SetPedHearingRange(pedc2, 0.0)
            LumiaN.natives.SetPedAlertness(pedc2, 0)
            LumiaN.natives.SetPedKeepTask(pedc2, true)
        
            LumiaN.natives.ClearPedTasks(pedc3)
            LumiaN.natives.ClearPedSecondaryTask(pedc3)
            LumiaN.natives.TaskSetBlockingOfNonTemporaryEvents(pedc3, true)
            LumiaN.natives.SetPedFleeAttributes(pedc3, 0, 0)
            LumiaN.natives.SetPedCombatAttributes(pedc3, 17, 1)
            LumiaN.natives.SetPedSeeingRange(pedc3, 0.0)
            LumiaN.natives.SetPedHearingRange(pedc3, 0.0)
            LumiaN.natives.SetPedAlertness(pedc3, 0)
            LumiaN.natives.SetPedKeepTask(pedc3, true)
        
            LumiaN.natives.ClearPedTasks(pedc4)
            LumiaN.natives.ClearPedSecondaryTask(pedc4)
            LumiaN.natives.TaskSetBlockingOfNonTemporaryEvents(pedc4, true)
            LumiaN.natives.SetPedFleeAttributes(pedc4, 0, 0)
            LumiaN.natives.SetPedCombatAttributes(pedc4, 17, 1)
            LumiaN.natives.SetPedSeeingRange(pedc4, 0.0)
            LumiaN.natives.SetPedHearingRange(pedc4, 0.0)
            LumiaN.natives.SetPedAlertness(pedc4, 0)
            LumiaN.natives.SetPedKeepTask(pedc4, true)
        
            LumiaN.natives.ClearPedTasks(hped)
            LumiaN.natives.ClearPedSecondaryTask(hped)
            LumiaN.natives.TaskSetBlockingOfNonTemporaryEvents(hped, true)
            LumiaN.natives.SetPedFleeAttributes(hped, 0, 0)
            LumiaN.natives.SetPedCombatAttributes(hped, 17, 1)
            LumiaN.natives.SetPedSeeingRange(hped, 0.0)
            LumiaN.natives.SetPedHearingRange(hped, 0.0)
            LumiaN.natives.SetPedAlertness(hped, 0)
            LumiaN.natives.SetPedKeepTask(hped, true) 
        
        end,
        Fixerino = function(vehicle)
            local vehicle = vehicle
            if vehicle == 0 then return false end
            LumiaN.natives.SetVehicleFixed(vehicle)
            LumiaN.natives.SetVehicleLightsMode(vehicle, 0)
            LumiaN.natives.SetVehicleLights(vehicle, 0)
            LumiaN.natives.SetVehicleBurnout(vehicle, false)
            LumiaN.natives.SetVehicleEngineHealth(vehicle, 1000.0)
            LumiaN.natives.SetVehicleFuelLevel(vehicle, 100.0)
            LumiaN.natives.SetVehicleOilLevel(vehicle, 100.0)
            return true
        end,
        Shinemecar = function(vehicle)
	        LumiaN.natives.SetVehicleDirtLevel(vehicle, 0.0)
        end,
        unflipmeman = function(vehicle)
            local vehicle = vehicle
            if vehicle == 0 then return false end
            return LumiaN.natives.SetVehicleOnGroundProperly(vehicle)
        end,
        elvroomvroom = function(vehicle)
            local vehicles
            if vehicle == 0 then
                vehicles = LumiaF.func.GetVehicleInFrontOfMe()
            end
            LumiaN.natives.SetPedIntoVehicle(LumiaN.natives.PlayerPedId(), vehicles, -1)
        end,
        nomorecar = function(vehicle)
	        local vehicle = vehicle
	        if vehicle == 0 then 
		        return false 
	        end
	        LumiaN.natives.SetEntityAsMissionEntity(vehicle, true, true)
	        LumiaN.natives.DeleteVehicle(vehicle)
	        return true
        end,
        Swapdaplate = function(vehicle, plateText)
            if vehicle ~= 0 then 
                LumiaN.natives.SetVehicleNumberPlateText(vehicle, plateText) 
                return true
            end
        
            return false
        end,
        chosecolorchange = function(p1, color)
            local colorPrimary, colorSecondary = LumiaN.natives.GetVehicleColours(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
            local _, wheelColor = LumiaN.natives.GetVehicleExtraColours(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
            if p1 == 1 then
                LumiaN.natives.SetVehicleColours(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), color, colorSecondary)
            elseif p1 == 2 then
                LumiaN.natives.SetVehicleColours(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), colorPrimary, color)
            elseif p1 == 3 then
                LumiaN.natives.SetVehicleExtraColours(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), color, wheelColor)
            end
        end,
        attachmentyaya = function(type)
            if LumiaF.func.Weparraymen[LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1))] and LumiaF.func.Weparraymen[LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1))][type] then        
                if not LumiaN.natives.HasPedGotWeaponComponent(LumiaN.natives.GetPlayerPed(-1), LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1)), LumiaF.func.Weparraymen[LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1))][type]) then			
                    LumiaN.natives.GiveWeaponComponentToPed(LumiaN.natives.GetPlayerPed(-1), LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1)), LumiaF.func.Weparraymen[LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1))][type])			
                    print("Attachment Equiped!")
                    return 1
                else            
                    LumiaN.natives.RemoveWeaponComponentFromPed(LumiaN.natives.GetPlayerPed(-1), LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1)), LumiaF.func.Weparraymen[LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1))][type])			
                    print("Attachment Removed!")
                    return 2
                end   
            else
                print("This Attachment Doesnt Fit on Your Weapon")
                return 3
            end 
        end,
        TeleToWP = function()
            local Waypointy = LumiaN.natives.GetFirstBlipInfoId(8) 
            if LumiaN.natives.DoesBlipExist(Waypointy) then          
                local WaypointyC = LumiaN.natives.GetBlipInfoIdCoord(Waypointy)       
                for NewH = 1, 1000 do            
                    LumiaN.natives.SetPedCoordsKeepVehicle(LumiaN.natives.PlayerPedId(), WaypointyC["x"], WaypointyC["y"], NewH + 0.0)            
                    local GroundZ, zPos = LumiaN.natives.GetGroundZFor_3dCoord(WaypointyC["x"], WaypointyC["y"], NewH + 0.0)            
                    if GroundZ then                
                        LumiaN.natives.SetPedCoordsKeepVehicle(LumiaN.natives.PlayerPedId(), WaypointyC["x"], WaypointyC["y"], NewH + 0.0)                
                        break            
                    end            
                    Lumia1.rE.LumWait(0)
                end
            end
        end,
        TeleToC = function(x, y, z)
            LumiaN.natives.SetPedCoordsKeepVehicle(LumiaN.natives.PlayerPedId(), x, y, z)
        end,
        ShootP = function(weph, player, dmg)
            local stupidped = LumiaN.natives.GetPlayerPed(player)
            local rot = LumiaN.natives.GetEntityRotation(stupidped)
            local direct = LumiaF.func.RotationToDirection(rot)
            local TargetCoords = LumiaN.natives.GetPedBoneCoords(stupidped, 31086, 0, 0, 0) 
            LumiaN.natives.ShootSingleBulletBetweenCoords((TargetCoords.x + direct.x), (TargetCoords.y + direct.y), (TargetCoords.z + direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, dmg, false, Lumia1.rE.LumHash(weph), PlayerPedId(), false, false, 1000.0)
        end,
        RamP = function(player, v)
            Lumia1.rE.LumThread(function()
                local stupidped = LumiaN.natives.GetPlayerPed(player) 
                local model = Lumia1.rE.LumHash(v)
                LumiaN.natives.RequestModel(model)
                while not LumiaN.natives.HasModelLoaded(model) do
                    Lumia1.rE.LumWait(10)
                end
                local offset = LumiaN.natives.GetOffsetFromEntityInWorldCoords(stupidped, 0, -10.0, 0)
                if LumiaN.natives.HasModelLoaded(model) then
                    local vehicle = LumiaN.natives.CreateVehicle(model, offset.x, offset.y, offset.z, LumiaN.natives.GetEntityHeading(stupidped), true, true)
                    LumiaN.natives.NetworkRegisterEntityAsNetworked(LumiaN.natives.VehToNet(vehicle))
                    LumiaN.natives.SetVehicleForwardSpeed(vehicle, 60.0)
                end
            end)
        end,
        FindThePederinos = function()
            return LumiaF.func.finderkek(LumiaN.natives.FindFirstPed, LumiaN.natives.FindNextPed, LumiaN.natives.EndFindPed)
        end,
        CrossHairFC = function(tog)
            local sx, sy = LumiaN.natives.GetActiveScreenResolution()
            if tog then
                LumiaF.func.DrawRectangle((sx / 2) - 1,(sy / 2) - 9.5,2.5,20,LumiaF.config.CPrimary.r, LumiaF.config.CPrimary.g, LumiaF.config.CPrimary.b, LumiaF.config.CPrimary.a)
                LumiaF.func.DrawRectangle((sx / 2) - 9.5,(sy / 2) - 1,20,2.5,LumiaF.config.CPrimary.r, LumiaF.config.CPrimary.g, LumiaF.config.CPrimary.b, LumiaF.config.CPrimary.a)
            else
                LumiaF.func.DrawRectangle((sx / 2) - 1,(sy / 2) - 9.5,2.5,20,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                LumiaF.func.DrawRectangle((sx / 2) - 9.5,(sy / 2) - 1,20,2.5,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
            end
        end,
        FCObjectSpoon = function(coordsx, coordsy, coordsz, rotation, rotation1, rotation2, placer, obj)
            local temp
            if obj ~= nil then
                if not placer then
                    if LumiaF.config.SlaveStore.newpropski ~= obj or not LumiaN.natives.DoesEntityExist(LumiaF.config.SlaveStore.propski) then
                        LumiaN.natives.SetEntityAsMissionEntity(LumiaF.config.SlaveStore.propski)						
                        LumiaN.natives.DeleteEntity(LumiaF.config.SlaveStore.propski)
                        LumiaN.natives.DeleteObject(LumiaF.config.SlaveStore.propski)
                        if LumiaN.natives.IsModelValid(obj) then    
                            while not LumiaN.natives.HasModelLoaded(obj) do
                                LumiaN.natives.RequestModel(obj)
                                Lumia1.rE.LumWait(10)
                            end
                        else
                            --print(''..obj..' is not a model!')
                        end
                        LumiaF.config.SlaveStore.propski = LumiaN.natives.CreateObject(obj, coordsx, coordsy, coordsz, false, true, true)
                        LumiaF.config.SlaveStore.newpropski = obj
                    else
                        LumiaN.natives.SetEntityAlpha(LumiaF.config.SlaveStore.propski, 210, true)
                        LumiaN.natives.SetEntityCoords(LumiaF.config.SlaveStore.propski, coordsx, coordsy, coordsz, false, false, false, false)
                        LumiaN.natives.SetEntityRotation(LumiaF.config.SlaveStore.propski, rotation1, rotation2, rotation, 2, true)
                        LumiaN.natives.SetEntityCollision(LumiaF.config.SlaveStore.propski, false, false)
                    end
                else
                    temp = LumiaN.natives.CreateObject(obj, coordsx, coordsy, coordsz, true, true, true)
                    LumiaN.natives.SetEntityRotation(temp, rotation1, rotation2, rotation, 2, true)
                    LumiaN.natives.SetEntityAsMissionEntity(LumiaF.config.SlaveStore.propski)						
                    LumiaN.natives.DeleteEntity(LumiaF.config.SlaveStore.propski)
                    LumiaN.natives.DeleteObject(LumiaF.config.SlaveStore.propski)
                    LumiaF.config.SlaveStore.propski = nil
                    LumiaF.config.SlaveStore.placeski = false
                end
            end
        end,
        sendhit = function(method, ped, hitc, isgod, isexploade, wep, target, vehicle, vehicle1)
            local ped2;
            if ped == 100 then
                ped2 = 'mp_m_freemode_01'
            else
                ped2 = ped
            end
            local characterModel = Lumia1.rE.LumHash(ped2)
            --load ped in
            LumiaN.natives.RequestModel(characterModel)		        
            while not LumiaN.natives.HasModelLoaded(characterModel) do			
                Lumia1.rE.LumWait(50)		
            end
            -- parse varibles
            local targetped = LumiaN.natives.GetPlayerPed(target)
            local targetloc = LumiaN.natives.GetEntityCoords(targetped, false)
            --start hit
            if method == 1 then
                local _, zcord = LumiaN.natives.GetGroundZFor_3dCoord(targetloc.x + 5.0, targetloc.y + 5.0, targetloc.z, 0)
                local pedc = LumiaN.natives.CreatePed(4, characterModel, targetloc.x + 5.0, targetloc.y + 5.0, zcord, 0.0, true, false)
                if ped == 100 then
                    LumiaN.natives.SetPedDefaultComponentVariation(pedc)
                    LumiaN.natives.SetPedComponentVariation(pedc, 6, 6, 0, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 4, 21, 0, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 11, 15, 2, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 8, 15, 1, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 9, 16, 2, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 3, 15, 0, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 1, 115, 6, 0)
                    LumiaN.natives.SetPedHeadBlendData(pedc,2,1,3,19,2,1,2,5,2,false)
                end
                LumiaN.natives.GiveWeaponToPed(pedc, Lumia1.rE.LumHash(wep), 200, false, true)
                LumiaN.natives.TaskCombatPed(pedc, targetped, 0, 16)
                if isgod then
                    LumiaN.natives.SetEntityInvincible(pedc, true)
                end
                Lumia1.rE.LumThread(function()
                    while true do
                        if target == nil then
                            print('no target')
                            return
                        else
                            if LumiaN.natives.IsPedDeadOrDying(targetped, 1) then
                                if not LumiaN.natives.IsPedDeadOrDying(pedc, 1) then
                                    if isexploade then
                                        local finalloc = LumiaN.natives.GetEntityCoords(pedc, false)
                                        LumiaN.natives.SetEntityInvincible(pedc, false)
                                        LumiaN.natives.AddExplosion(finalloc.x, finalloc.y, finalloc.z, 2, 100000.0, true, false, 0)
                                        return
                                    end
                                    local finalloc = LumiaN.natives.GetEntityCoords(pedc, false)
                                    LumiaN.natives.TaskSmartFleeCoord(pedc, finalloc.x, finalloc.y, finalloc.z, 1000.0, 1000.0, false, false)
                                    return
                                else
                                    return
                                end
                            else
                                LumiaN.natives.SetPedCombatAbility(pedc, 2)
                                LumiaN.natives.SetPedCombatMovement(pedc, 3)
                                LumiaN.natives.SetCombatFloat(pedc, 0, 2.0)
                                LumiaN.natives.SetCombatFloat(pedc, 1, 6.0)
                                LumiaN.natives.SetCombatFloat(pedc, 3, 0.5)
                                LumiaN.natives.SetCombatFloat(pedc, 4, 2.0)
                                LumiaN.natives.SetCombatFloat(pedc, 5, 2.0)
                                LumiaN.natives.SetCombatFloat(pedc, 11, 2.0)
                                LumiaN.natives.SetCombatFloat(pedc, 13, 0.01)
                                LumiaN.natives.SetCombatFloat(pedc, 14, 0.01)
                                LumiaN.natives.SetPedAccuracy(pedc, hitc)
                                LumiaN.natives.SetPedFiringPattern(pedc, -957453492)
                                LumiaN.natives.SetPedInfiniteAmmoClip(pedc, true)
                            end
                        end
                        Lumia1.rE.LumWait(0)
                    end
                end)
            elseif method == 2 then
                local dict = "anim@mp_player_intupperfinger"
                LumiaN.natives.RequestAnimDict(dict)
                local _, zcord = LumiaN.natives.GetGroundZFor_3dCoord(targetloc.x + 5.0, targetloc.y + 5.0, targetloc.z, 0)
                local pedc = LumiaN.natives.CreatePed(4, characterModel, targetloc.x + 5.0, targetloc.y + 5.0, zcord, 0.0, true, false)
                LumiaN.natives.TaskCombatPed(pedc, targetped, 0, 16)
                if isgod then
                    LumiaN.natives.SetEntityInvincible(pedc, true)
                end
                if ped == 100 then
                    LumiaN.natives.SetPedDefaultComponentVariation(pedc)
                    LumiaN.natives.SetPedComponentVariation(pedc, 6, 6, 0, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 4, 21, 0, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 11, 15, 2, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 8, 15, 1, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 9, 16, 2, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 3, 15, 0, 0)
                    LumiaN.natives.SetPedComponentVariation(pedc, 1, 115, 6, 0)
                    LumiaN.natives.SetPedHeadBlendData(pedc,2,1,3,19,2,1,2,5,2,false)
                end
                Lumia1.rE.LumThread(function()
                    while true do
                        if target == nil then
                            print('no target')
                            return
                        else
                            while not LumiaN.natives.HasAnimDictLoaded(dict) do
                                Lumia1.rE.LumWait(10)
                            end
                            local pedcords = LumiaN.natives.GetEntityCoords(pedc, false)
                            local targetloc = LumiaN.natives.GetEntityCoords(targetped, false)
                            local distancetok = LumiaN.natives.GetDistanceBetweenCoords(pedcords.x, pedcords.y, pedcords.z, targetloc.x, targetloc.y, targetloc.z, false)
                            if distancetok <= 1.7 then
                                LumiaN.natives.ClearPedTasks(pedc)
                                LumiaN.natives.ClearPedTasksImmediately(pedc)
                                LumiaN.natives.TaskPlayAnim(pedc, dict, "idle_a_fp", 8.0, 8.0, -1, 50, 0, false, false, false)
                                Lumia1.rE.LumWait(500)
                                LumiaN.natives.SetEntityInvincible(pedc, false)
                                LumiaN.natives.AddExplosion(pedcords.x, pedcords.y, pedcords.z, 2, 100000.0, true, false, 0)
                                return
                            end
                        end
                        Lumia1.rE.LumWait(0)
                    end
                end)
            elseif method == 3 then
                local targetloc = LumiaN.natives.GetEntityCoords(targetped, false)
                local randx = targetloc.x + Lumia1.rE.LumMath.LumRand(50, 75)
                local randy = targetloc.y + Lumia1.rE.LumMath.LumRand(50, 75)
                local _, zcord = LumiaN.natives.GetGroundZFor_3dCoord(randx, randy, targetloc.z, 0)
                local nodepos, vec, heading = LumiaN.natives.GetClosestVehicleNodeWithHeading(randx, randy, zcord, 1, 3.0, 0)
                while not LumiaN.natives.HasModelLoaded(Lumia1.rE.LumHash(vehicle)) do
                    LumiaN.natives.RequestModel(Lumia1.rE.LumHash(vehicle))
                    Lumia1.rE.LumWait(10)
                end
                local vehc = LumiaN.natives.CreateVehicle(Lumia1.rE.LumHash(vehicle), vec.x, vec.y, zcord, heading, true, false)
                local pedc = LumiaN.natives.CreatePedInsideVehicle(vehc, 4, characterModel, -1, true, false)
                if isgod then
                    LumiaN.natives.SetEntityInvincible(pedc, true)
                    LumiaN.natives.SetEntityInvincible(vehc, true)
                end
                LumiaN.natives.TaskVehicleDriveToCoordLongrange(pedc, vehc, targetloc.x, targetloc.y, targetloc.z, 200.0, 2883621, 5)
                LumiaN.natives.GiveWeaponToPed(pedc, Lumia1.rE.LumHash(wep), 200, false, true)
                LumiaN.natives.TaskCombatPed(pedc, targetped, 0, 16)
                LumiaN.natives.SetPedCombatAttributes(pedc, 2, true)
                LumiaN.natives.SetPedCombatAttributes(pedc, 3, false)
                LumiaN.natives.SetPedCombatAbility(pedc, 2)
                LumiaN.natives.SetPedCombatMovement(pedc, 3)
                LumiaN.natives.SetCombatFloat(pedc, 0, 2.0)
                LumiaN.natives.SetCombatFloat(pedc, 1, 6.0)
                LumiaN.natives.SetCombatFloat(pedc, 3, 0.5)
                LumiaN.natives.SetCombatFloat(pedc, 4, 2.0)
                LumiaN.natives.SetCombatFloat(pedc, 5, 2.0)
                LumiaN.natives.SetCombatFloat(pedc, 11, 2.0)
                LumiaN.natives.SetCombatFloat(pedc, 13, 0.01)
                LumiaN.natives.SetCombatFloat(pedc, 14, 0.01)
                LumiaN.natives.SetPedAccuracy(pedc, hitc)
                LumiaN.natives.SetPedFiringPattern(pedc, -957453492)
                Lumia1.rE.LumThread(function()
                    while true do
                        if LumiaN.natives.IsPedDeadOrDying(targetped, 1) then
                            if not LumiaN.natives.IsPedDeadOrDying(pedc, 1) then
                                if isexploade then
                                    local finalloc = LumiaN.natives.GetEntityCoords(pedc, false)
                                    LumiaN.natives.SetEntityInvincible(pedc, false)
                                    LumiaN.natives.AddExplosion(finalloc.x, finalloc.y, finalloc.z, 2, 100000.0, true, false, 0)
                                    return
                                end
                                LumiaN.natives.ClearPedTasks(pedc)
                                LumiaN.natives.TaskVehicleDriveToCoordLongrange(pedc, vehc, -558.2048, -2869.4, 8.888, 200.0, 2883621, 5)
                                return
                            else
                                return
                            end
                        else
                            local targetloc = LumiaN.natives.GetEntityCoords(targetped, false)
                            local targetpedloc = LumiaN.natives.GetEntityCoords(pedc, false)
                            --SetNewWaypoint(targetpedloc.x, targetpedloc.y)
                            LumiaN.natives.TaskVehicleDriveToCoordLongrange(pedc, vehc, targetloc.x, targetloc.y, targetloc.z, 200.0, 2883621, 5)
                            LumiaN.natives.TaskCombatPed(pedc, targetped, 0, 16)
                            LumiaN.natives.SetPedInfiniteAmmoClip(pedc, true)
                            Lumia1.rE.LumWait(100)
                        end
                        Lumia1.rE.LumWait(0)
                    end
                end)
            elseif method == 4 then
                local targetloc = LumiaN.natives.GetEntityCoords(targetped, false)
                local randx = targetloc.x + Lumia1.rE.LumMath.LumRand(150, 175)
                local randy = targetloc.y + Lumia1.rE.LumMath.LumRand(150, 175)
                local _, zcord = LumiaN.natives.GetGroundZFor_3dCoord(randx, randy, targetloc.z, 0)
                local nodepos, vec, heading = LumiaN.natives.GetClosestVehicleNodeWithHeading(randx, randy, zcord, 1, 3.0, 0)
                while not LumiaN.natives.HasModelLoaded(Lumia1.rE.LumHash(vehicle1)) do
                    LumiaN.natives.RequestModel(Lumia1.rE.LumHash(vehicle1))
                    Lumia1.rE.LumWait(10)
                end
                local vehc = LumiaN.natives.CreateVehicle(Lumia1.rE.LumHash(vehicle1), vec.x, vec.y, zcord, heading, true, false)
                local peddrive = LumiaN.natives.CreatePedInsideVehicle(vehc, 4, characterModel, -1, true, false)
                local pedp1 = LumiaN.natives.CreatePedInsideVehicle(vehc, 4, characterModel, 0, true, false)
                local pedp2 = LumiaN.natives.CreatePedInsideVehicle(vehc, 4, characterModel, 1, true, false)
                local pedp3 = LumiaN.natives.CreatePedInsideVehicle(vehc, 4, characterModel, 2, true, false)
                LumiaN.natives.SetEntityInvincible(vehc, true)
                if isgod then
                    LumiaN.natives.SetEntityInvincible(peddrive, true)
                    LumiaN.natives.SetEntityInvincible(pedp1, true)
                    LumiaN.natives.SetEntityInvincible(pedp2, true)
                    LumiaN.natives.SetEntityInvincible(pedp3, true)
                end
                LumiaN.natives.TaskVehicleDriveToCoordLongrange(peddrive, vehc, targetloc.x, targetloc.y, targetloc.z, 200.0, 2883621, 5)
                --ped 1
                LumiaN.natives.GiveWeaponToPed(peddrive, Lumia1.rE.LumHash(wep), 200, false, true)
                LumiaN.natives.TaskCombatPed(peddrive, targetped, 0, 16)
                LumiaN.natives.SetPedCombatAttributes(peddrive, 2, true)
                LumiaN.natives.SetPedCombatAttributes(peddrive, 3, false)
                LumiaN.natives.SetPedCombatAbility(peddrive, 2)
                LumiaN.natives.SetPedCombatMovement(peddrive, 3)
                LumiaN.natives.SetCombatFloat(peddrive, 0, 2.0)
                LumiaN.natives.SetCombatFloat(peddrive, 1, 6.0)
                LumiaN.natives.SetCombatFloat(peddrive, 3, 0.5)
                LumiaN.natives.SetCombatFloat(peddrive, 4, 2.0)
                LumiaN.natives.SetCombatFloat(peddrive, 5, 2.0)
                LumiaN.natives.SetCombatFloat(peddrive, 11, 2.0)
                LumiaN.natives.SetCombatFloat(peddrive, 13, 0.01)
                LumiaN.natives.SetCombatFloat(peddrive, 14, 0.01)
                LumiaN.natives.SetPedAccuracy(peddrive, hitc)
                LumiaN.natives.SetPedFiringPattern(peddrive, -957453492)
                --ped 2
                LumiaN.natives.GiveWeaponToPed(pedp1, Lumia1.rE.LumHash(wep), 200, false, true)
                LumiaN.natives.TaskCombatPed(pedp1, targetped, 0, 16)
                LumiaN.natives.SetPedCombatAttributes(pedp1, 2, true)
                LumiaN.natives.SetPedCombatAttributes(pedp1, 3, false)
                LumiaN.natives.SetPedCombatAbility(pedp1, 2)
                LumiaN.natives.SetPedCombatMovement(pedp1, 3)
                LumiaN.natives.SetCombatFloat(pedp1, 0, 2.0)
                LumiaN.natives.SetCombatFloat(pedp1, 1, 6.0)
                LumiaN.natives.SetCombatFloat(pedp1, 3, 0.5)
                LumiaN.natives.SetCombatFloat(pedp1, 4, 2.0)
                LumiaN.natives.SetCombatFloat(pedp1, 5, 2.0)
                LumiaN.natives.SetCombatFloat(pedp1, 11, 2.0)
                LumiaN.natives.SetCombatFloat(pedp1, 13, 0.01)
                LumiaN.natives.SetCombatFloat(pedp1, 14, 0.01)
                LumiaN.natives.SetPedAccuracy(pedp1, hitc)
                LumiaN.natives.SetPedFiringPattern(pedc, -957453492)
                --ped 3
                LumiaN.natives.GiveWeaponToPed(pedp2, Lumia1.rE.LumHash(wep), 200, false, true)
                LumiaN.natives.TaskCombatPed(pedp2, targetped, 0, 16)
                LumiaN.natives.SetPedCombatAttributes(pedp2, 2, true)
                LumiaN.natives.SetPedCombatAttributes(pedp2, 3, false)
                LumiaN.natives.SetPedCombatAbility(pedp2, 2)
                LumiaN.natives.SetPedCombatMovement(pedp2, 3)
                LumiaN.natives.SetCombatFloat(pedp2, 0, 2.0)
                LumiaN.natives.SetCombatFloat(pedp2, 1, 6.0)
                LumiaN.natives.SetCombatFloat(pedp2, 3, 0.5)
                LumiaN.natives.SetCombatFloat(pedp2, 4, 2.0)
                LumiaN.natives.SetCombatFloat(pedp2, 5, 2.0)
                LumiaN.natives.SetCombatFloat(pedp2, 11, 2.0)
                LumiaN.natives.SetCombatFloat(pedp2, 13, 0.01)
                LumiaN.natives.SetCombatFloat(pedp2, 14, 0.01)
                LumiaN.natives.SetPedAccuracy(pedp2, hitc)
                LumiaN.natives.SetPedFiringPattern(pedp2, -957453492)
                --ped 4
                LumiaN.natives.GiveWeaponToPed(pedp3, Lumia1.rE.LumHash(wep), 200, false, true)
                LumiaN.natives.TaskCombatPed(pedp3, targetped, 0, 16)
                LumiaN.natives.SetPedCombatAttributes(pedp3, 2, true)
                LumiaN.natives.SetPedCombatAttributes(pedp3, 3, false)
                LumiaN.natives.SetPedCombatAbility(pedp3, 2)
                LumiaN.natives.SetPedCombatMovement(pedp3, 3)
                LumiaN.natives.SetCombatFloat(pedp3, 0, 2.0)
                LumiaN.natives.SetCombatFloat(pedp3, 1, 6.0)
                LumiaN.natives.SetCombatFloat(pedp3, 3, 0.5)
                LumiaN.natives.SetCombatFloat(pedp3, 4, 2.0)
                LumiaN.natives.SetCombatFloat(pedp3, 5, 2.0)
                LumiaN.natives.SetCombatFloat(pedp3, 11, 2.0)
                LumiaN.natives.SetCombatFloat(pedp3, 13, 0.01)
                LumiaN.natives.SetCombatFloat(pedp3, 14, 0.01)
                LumiaN.natives.SetPedAccuracy(pedp3, hitc)
                LumiaN.natives.SetPedFiringPattern(pedp3, -957453492)
                Lumia1.rE.LumThread(function()
                    while true do
                        if LumiaN.natives.IsPedDeadOrDying(targetped, 1) then
                            if not LumiaN.natives.IsPedDeadOrDying(peddrive, 1) then
                                if isexploade then
                                    local finalloc = LumiaN.natives.GetEntityCoords(peddrive, false)
                                    LumiaN.natives.SetEntityInvincible(vehc, false)
                                    LumiaN.natives.SetEntityInvincible(peddrive, false)
                                    LumiaN.natives.SetEntityInvincible(pedp1, false)
                                    LumiaN.natives.SetEntityInvincible(pedp2, false)
                                    LumiaN.natives.SetEntityInvincible(pedp3, false)
                                    LumiaN.natives.AddExplosion(finalloc.x, finalloc.y, finalloc.z, 2, 100000.0, true, false, 0)
                                    return
                                end
                                LumiaN.natives.ClearPedTasks(peddrive)
                                LumiaN.natives.ClearPedTasks(pedp1)
                                LumiaN.natives.ClearPedTasks(pedp2)
                                LumiaN.natives.ClearPedTasks(pedp3)
                                LumiaN.natives.TaskVehicleDriveToCoordLongrange(peddrive, vehc, -558.2048, -2869.4, 8.888, 200.0, 2883621, 5)
                                return
                            else
                                return
                            end
                        else
                            if LumiaN.natives.IsPedDeadOrDying(pedp1, 1) and LumiaN.natives.IsPedDeadOrDying(pedp2, 1) and LumiaN.natives.IsPedDeadOrDying(pedp3, 1) then
                                LumiaN.natives.ClearPedTasksImmediately(peddrive)
                                return
                            elseif LumiaN.natives.IsPedDeadOrDying(peddrive, 1) then
                                return
                            end
                            local targetloc = LumiaN.natives.GetEntityCoords(targetped, false)
                            local targetpedloc = LumiaN.natives.GetEntityCoords(peddrive, false)
                            --SetNewWaypoint(targetpedloc.x, targetpedloc.y)
                            LumiaN.natives.TaskVehicleDriveToCoordLongrange(peddrive, vehc, targetloc.x, targetloc.y, targetloc.z, 200.0, 2883621, 5)
                            LumiaN.natives.TaskCombatPed(peddrive, targetped, 0, 16)
                            LumiaN.natives.TaskCombatPed(pedp1, targetped, 0, 16)
                            LumiaN.natives.TaskCombatPed(pedp2, targetped, 0, 16)
                            LumiaN.natives.TaskCombatPed(pedp3, targetped, 0, 16)
                            LumiaN.natives.SetPedInfiniteAmmoClip(peddrive, true)
                            LumiaN.natives.SetPedInfiniteAmmoClip(pedp1, true)
                            LumiaN.natives.SetPedInfiniteAmmoClip(pedp2, true)
                            LumiaN.natives.SetPedInfiniteAmmoClip(pedp3, true)
                            Lumia1.rE.LumWait(100)
                        end
                        Lumia1.rE.LumWait(0)
                    end
                end)
            end
        end
    }
}
-- Dynamic Triggers --
local LumiaTRE = {
    {
    resource = 'esx_vangelico_robbery',
    resourcelooklike = 'vangelico',
    file = 'client/esx_vangelico_robbery_cl.lua',
    lookfor = 'ClearPedTasksImmediately.GetPlayerPed.-1..',
    name = 'vangelico_get',
    noparam = true
    },
    {
    resource = 'esx_vangelico_robbery',
    resourcelooklike = 'vangelico',
    file = 'client/esx_vangelico_robbery_cl.lua',
    lookfor = 'FreezeEntityPosition.playerPed, false.',
    name = 'vangelico_sell',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'CokeField\' then",
    name = 'coke_feild',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'CokeProcessing\' then",
    name = 'coke_process',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'CokeDealer\' then",
    name = 'coke_sell',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'MethField\' then",
    name = 'meth_field',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'MethProcessing\' then",
    name = 'meth_process',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'MethDealer\' then",
    name = 'meth_sell',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'WeedField\' then",
    name = 'weed_field',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'WeedProcessing\' then",
    name = 'weed_process',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'WeedDealer\' then",
    name = 'weed_sell',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'OpiumField\' then",
    name = 'opium_field',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'OpiumProcessing\' then",
    name = 'opium_process',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "elseif CurrentAction == \'OpiumDealer\' then",
    name = 'opium_sell',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "CurrentAction = nil",
    name = 'stop_feild_coke',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "estCoke",
    name = 'stop_process_coke',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "sformCoke",
    name = 'stop_sell_coke',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "stopSell",
    name = 'stop_feild_meth',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "tMeth",
    name = 'stop_process_meth',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "sformMeth",
    name = 'stop_sell_meth',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "stopSellM",
    name = 'stop_feild_weed',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "vestWeed",
    name = 'stop_process_weed',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "ransformWeed",
    name = 'stop_sell_weed',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "stopSellW",
    name = 'stop_feild_opium',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "stopHarvest",
    name = 'stop_process_opium',
    noparam = true
    },
    {
    resource = "esx_illegal_drugs",
    resourcelooklike = 'drugs',
    file = 'client/esx_illegal_drugs_cl.lua',
    lookfor = "formOpium",
    name = 'stop_sell_opium',
    noparam = true
    },
    {
    resource = "esx_dmvschool",
    resourcelooklike = "dmvschool",
    file = "client/main.lua",
    lookfor = ", Config.Prices%b[]",
    name = "dmv_pay",
    noparam = false,
    },
    {
    resource = "esx_dmvschool",
    resourcelooklike = "dmvschool",
    file = "client/main.lua",
    lookfor = ", %b''",
    name = "dmv_getlicense",
    noparam = false,
    },
  
    {
    resource = "esx_ambulancejob",
    resourcelooklike = "ambulancejob",
    file = "client/main.lua",
    lookfor = ", function%b() ESX = obj end",
    name = "esx",
    noparam = false,
    },
    {
    resource = "gcphone",
    file = "client/twitter.lua",
    resourcelooklike = "phone",
    lookfor = ", data.username or '', data.password or '', data.message",
    name = "gcphone_posttweet",
    noparam = false,
    },
    {
    resource = "gcphone",
    file = "client/twitter.lua",
    resourcelooklike = "phone",
    lookfor = ", data.username, data.password, data.avatarUrl",
    name = "gcphone_createtwiteracc",
    noparam = false,
    },
    
    {
    resource = "gcphone",
    file = "client/twitter.lua",
    resourcelooklike = "phone",
    lookfor = ", data.username, data.password",
    name = "gcphone_logintwitteracc",
    noparam = false,
    },
    {
    resource = "esx_vehicleshop",
    resourcelooklike = "vehiclejob",
    file = "client/main.lua",
    lookfor = ", vehicleProps",
    name = "vehicleshop_ownedveh",
    noparam = false,
    },
    {
    resource = "esx_policejob",
    resourcelooklike = "policej",
    file = "client/main.lua",
    lookfor = ", GetPlayerServerId%b(),",
    name = "police_exploit",
    noparam = false,
    },
    {
    resource = 'CarryPeople',
    resourcelooklike = 'carry',
    file = 'cl_carry.lua',
    lookfor = ", closestPlayer,",
    name = 'carry_exploit',
    noparam = false,
    },
    
    {
    resource = 'CarryPeople',
    resourcelooklike = 'carry',
    file = 'cl_carry.lua',
    lookfor = ",target",
    name = 'carrypeople_stop',
    noparam = false,
    },
    {
    resource = 'esx-qalle-jail',
    resourcelooklike = 'qalle',
    file = 'client/client.lua',
    lookfor = ", function%(newJailTime%)",
    name = 'qalle_jailer',
    noparam = false,
    },
    {
    resource = 'esx_policejob',
    resourcelooklike = 'policej',
    file = 'client/main.lua',
    lookfor = ", player, c",
    name = 'community',
    noparam = false,
    },
    {
    resource = "esx_truckerjob",
    resourcelooklike = "truckerjob",
    file = "client/main.lua",
    lookfor = ", amount",
    name = "truckerjob_pay",
    noparam = false,
    },
    {
    resource = "gopostal_job",
    resourcelooklike = 'gopostal',
    file = "client/cl.lua",
    lookfor = ", currentJobPay",
    name = 'gopostal_pay',
    noparam = false,
    },
    {
    resource = 'esx-qalle-jail',
    resourcelooklike = 'jail',
    file = 'client/client.lua',
    lookfor = ", jailTime%)",
    name = 'qalle_unjail',
    noparam = false,
    },
    {
    resource = "esx_status",
    resourcelooklike = "status",
    file = "client/main.lua",
    lookfor = ", function%(name, val%)",
    name = "esx_status_refillstatus",
    noparam = false,
    },
    {
    resource = "esx_policejob",
    resourcelooklike = "policejob",
    file = "client/main.lua",
    lookfor = ", GetPlayerServerId%b(), \'society_police\', _U%b(), data.current.amount",
    name = "send_bill",
    noparam = false,
    },
    {
    resource = "ESX_CommunityService",
    resourcelooklike = "CommunityService",
    file = "client/main.lua",
    lookfor = ", function%(source%)",
    name = "communityservice_finishservice",
    noparam = false,
    },
    
    {
    resource = "esx_garbagejob",
    resourcelooklike = "garbagejob",
    file = "client/main.lua",
    lookfor = ", amount%)",
    name = "garbagejob_pay",
    noparam = false,
    },
    {
    resource = "TakeHostage",
    resourcelooklike = "hostage",
    file = 'cl_takehostage.lua',
    lookfor = ", closestPlayer,",
    name = "Hostage_Exploit",
    noparam = false,
    },
    {
    resource = 'esx_moneywash',
    resourcelooklike = 'wash',
    file = 'client/main.lua',
    lookfor = ", amount, zone",
    name = "Money_Wash",
    noparam = false,
    },
    {
    resource = "esx_moneywash",
    resourcelooklike = 'wash',
    file = 'config.lua',
    lookfor = "%] = %{",
    name = 'Money_Wash_Zone',
    noparam = false
    },
    {
    resource = 'esx_moneywash',
    resourcelooklike = 'wash',
    file = 'client/main.lua',
    lookfor = ", amount",
    name = "Money_Wash_Old",
    noparam = false,
    },
    {
    resource = 'esx_kashacters',
    resourcelooklike = 'kashacters',
    file = 'client/main.lua',
    lookfor = ", data.charid%)",
    name = 'delete_DB',
    noparam = false
    },
}
-- I guess combos need their own table bc they are gay --
local LumiaC = {
    dynam = {
        UpdateAllTriggers = function()
            Lumia1.rE.LumThread(function()
                local allresources = LumiaF.dynam.GetResources();
                for k, v in pairs(LumiaTRE) do
                    for i = 0, #allresources do
                        local script = Lumia1.rE.LumString.LumLower(allresources[i]);
                        if Lumia1.rE.LumString.LumFind(script, v.resourcelooklike) and LumiaF.dynam.GetResourceStatus(allresources[i]) then
                            v.resource = allresources[i];
                        end
                    end
                end
                Lumia1.rE.LumWait(100)
                for k, v in pairs(LumiaTRE) do
                    LumiaM.dynam.Conde_GetTrigger(v)
                    Lumia1.rE.LumWait(123)
                end
            end)
        end
    },
    freec = {
        HandleFC = function()			
            local camCoords       = LumiaN.natives.GetCamCoord(LumiaF.config.camf)			
            local right, forward  = LumiaM.freec.CamRightVect(LumiaF.config.camf), LumiaM.freec.CamFwdVect(LumiaF.config.camf)			
            local speedMultiplier = nil			
            LumiaN.natives.SetHdArea(camCoords.x, camCoords.y, camCoords.z, 50.0)			
            if LumiaN.natives.IsDisabledControlPressed(0, 21) then					
                speedMultiplier = 5.0				
            elseif LumiaN.natives.IsDisabledControlPressed(0, 36) then					
                speedMultiplier = 0.025				
            else					
                speedMultiplier = 0.25				
            end			
            local IONKCH = LumiaN.natives.UpdateOnscreenKeyboard() == 0			
            if LumiaN.natives.IsDisabledControlPressed(0, 32) and not IONKCH then					
                local newCamPos = camCoords + forward * speedMultiplier					
                LumiaN.natives.SetCamCoord(LumiaF.config.camf, newCamPos.x, newCamPos.y, newCamPos.z)				
            end							
            if LumiaN.natives.IsDisabledControlPressed(0, 33) and not IONKCH then					
                local newCamPos = camCoords + forward * -speedMultiplier					
                LumiaN.natives.SetCamCoord(LumiaF.config.camf, newCamPos.x, newCamPos.y, newCamPos.z)				
            end							
            if LumiaN.natives.IsDisabledControlPressed(0, 34) and not IONKCH then					
                local newCamPos = camCoords + right * -speedMultiplier					
                LumiaN.natives.SetCamCoord(LumiaF.config.camf, newCamPos.x, newCamPos.y, newCamPos.z)				
            end							
            if LumiaN.natives.IsDisabledControlPressed(0, 30) and not IONKCH then					
                local newCamPos = camCoords + right * speedMultiplier					
                LumiaN.natives.SetCamCoord(LumiaF.config.camf, newCamPos.x, newCamPos.y, newCamPos.z)				
            end			
            local xMagnitude = LumiaN.natives.GetDisabledControlNormal(0, 1);			
            local yMagnitude = LumiaN.natives.GetDisabledControlNormal(0, 2);			
            local camRot     = LumiaN.natives.GetCamRot(LumiaF.config.camf, 0)			
            local x = camRot.x - yMagnitude * 10			
            local y = camRot.y			
            local z = camRot.z - xMagnitude * 10			
            if x < -75.0 then					
                x = -75.0				
            end							
            if x > 100.0 then					
                x = 100.0				
            end			
            LumiaN.natives.SetCamRot(LumiaF.config.camf, x, y, z, 0)			
        end  
    },
    Qopt = {
        items = {'Health', 'Armor', 'Clean', 'Revive', 'Suicide'},
        values = {LumiaM.FunFunc.ElSomeHealth, LumiaM.FunFunc.ElSomeArmor, LumiaM.FunFunc.ElCleanMe, LumiaM.FunFunc.ElGetUpNow, LumiaM.FunFunc.ElSuicideMe},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    AObj = {
        items = {'Soccer Ball', 'Christmas Tree', 'Ferris Wheel', 'Barge', 'Swastika'},
        values = {LumiaM.FunFunc.ball, LumiaM.FunFunc.ctreemen, LumiaM.FunFunc.ferris, LumiaM.FunFunc.barge, LumiaM.FunFunc.swaz},
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
        items = {'Default Danny', 'Jew Ped', 'Muscle Man', 'Bouncer', 'Union Depository Worker', 'Crazy Arab (Works In Some Servers)'},
        values = {'mp_m_freemode_01', 'a_m_m_hasjew_01', -636391810, -1613485779, -520477356, 100},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    VQopt = {
        items = {'Repair', 'Clean', 'Flip', 'Drive', 'Delete'},
        values = {LumiaM.FunFunc.Fixerino, LumiaM.FunFunc.Shinemecar, LumiaM.FunFunc.unflipmeman, LumiaM.FunFunc.elvroomvroom, LumiaM.FunFunc.nomorecar},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt = {
        items = {'Vehicle Options', 'Los Santos Customs'},
        values = {false, true},
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
    Mopt4 = {
        items = {'Visual', 'Server Fucker', 'Dynamic Triggers', 'Keybinds', 'Settings'},
        values = {1, 2, 3, 4, 5},
        currentItemIndex = 1,
        selectedItemIndex = 1
    },
    Mopt5 = {
        items = {'General', 'General Trolling', 'Advanced Trolling', 'Send A Hit'},
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
        values = {Lumia1.Colors.White, Lumia1.Colors.Blue, Lumia1.Colors.ElectricB, Lumia1.Colors.MintG, Lumia1.Colors.LimeG, Lumia1.Colors.Yellow, Lumia1.Colors.GoldenShower, Lumia1.Colors.Orange, Lumia1.Colors.Red, Lumia1.Colors.PonyPink, Lumia1.Colors.HotPink, Lumia1.Colors.Purple, Lumia1.Colors.Blacklight},
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
-- Texture Importing --
local RandomStringGen = function(length) 
    local res = '';
    length = length or 20;
    for _i = 1, length do
        local _abc = Lumia1.rE.LumString.LumChar(Lumia1.rE.LumMath.LumRand(97, 122))
        if (Lumia1.rE.LumMath.LumRand(1, 3) == 1 ) then
            _abc = Lumia1.rE.LumString.LumUpper(_abc)
        end
        res = res .. _abc
    end
    if LumiaF.func.Random_stringcontains(LumiaF.DSR, res) then
        print("Repeated string, generating again.")
        return RandomStringGen(length)
    end
    Lumia1.rE.LumTable.LumInsert(LumiaF.DSR, res)
    return res
end
local NeekerMan = RandomStringGen(Lumia1.rE.LumMath.LumRand(10, 15));
local NeekerMan1 = RandomStringGen(Lumia1.rE.LumMath.LumRand(10, 15));
local TickyR1 = RandomStringGen(Lumia1.rE.LumMath.LumRand(10, 15));
local TickyR2 = RandomStringGen(Lumia1.rE.LumMath.LumRand(10, 15));
local TDict = LumiaN.natives.CreateRuntimeTxd(NeekerMan)
local TDict2 = LumiaN.natives.CreateRuntimeTxd(NeekerMan1)
local dui = LumiaN.natives.GetDuiHandle(LumiaN.natives.CreateDui('https://i.imgur.com/e5nowXb.png', 255, 255))
LumiaN.natives.CreateRuntimeTextureFromDuiHandle(TDict, TickyR1, dui)
local dui2 = LumiaN.natives.GetDuiHandle(LumiaN.natives.CreateDui('https://i.imgur.com/SmUsZY3.png', 255, 255))
LumiaN.natives.CreateRuntimeTextureFromDuiHandle(TDict2, TickyR2, dui2)
-- Big Check If Has Sub --
if --[[LumiaN.natives.BigCheckerino() == 1 ill comment this shit out for you :) ]] true then
    -- Dynamic Scaling --
    local sx, sy = LumiaN.natives.GetActiveScreenResolution()
    if sy <= 720 then
        LumiaF.config.ButtonScale = 0.35
        LumiaF.config.PointerScale = 0.40
        LumiaF.config.SubMenuScale = 0.58
        LumiaF.config.FreeCamScale = 0.63
        LumiaF.config.MainX = (sx / 2) - 75
        LumiaF.config.MainY = (sy / 2) - 50
    elseif sy <= 900 and sy <= 1023 then
        LumiaF.config.ButtonScale = 0.30
        LumiaF.config.PointerScale = 0.35
        LumiaF.config.SubMenuScale = 0.50
        LumiaF.config.FreeCamScale = 0.55
        LumiaF.config.MainX = (sx / 2) - 75
        LumiaF.config.MainY = (sy / 2) - 50
    elseif sy <= 1024 and sy <= 1999 then
        LumiaF.config.ButtonScale = 0.25
        LumiaF.config.PointerScale = 0.30
        LumiaF.config.SubMenuScale = 0.45
        LumiaF.config.FreeCamScale = 0.50
        LumiaF.config.MainX = (sx / 2) - 75
        LumiaF.config.MainY = (sy / 2) - 50
    elseif sy <= 1200 and sy <= 1049 then
        LumiaF.config.ButtonScale = 0.20
        LumiaF.config.PointerScale = 0.25
        LumiaF.config.SubMenuScale = 0.35
        LumiaF.config.FreeCamScale = 0.40
        LumiaF.config.MainX = (sx / 2) - 75
        LumiaF.config.MainY = (sy / 2) - 50
    elseif sy <= 1050 and sy <= 1079 then
        LumiaF.config.ButtonScale = 0.25
        LumiaF.config.PointerScale = 0.30
        LumiaF.config.SubMenuScale = 0.40
        LumiaF.config.FreeCamScale = 0.45
        LumiaF.config.MainX = (sx / 2) - 75
        LumiaF.config.MainY = (sy / 2) - 50
    elseif sy <= 1080 and sy <= 1439 then
        LumiaF.config.ButtonScale = 0.25
        LumiaF.config.PointerScale = 0.30
        LumiaF.config.SubMenuScale = 0.40
        LumiaF.config.FreeCamScale = 0.45
        LumiaF.config.MainX = (sx / 2) - 75
        LumiaF.config.MainY = (sy / 2) - 50
    elseif sy <= 1440 and sy <= 2159 then
        LumiaF.config.ButtonScale = 0.20
        LumiaF.config.PointerScale = 0.25
        LumiaF.config.SubMenuScale = 0.30
        LumiaF.config.FreeCamScale = 0.35
        LumiaF.config.MainX = (sx / 2) - 75
        LumiaF.config.MainY = (sy / 2) - 50
    elseif sy >= 2160 then
        LumiaF.config.ButtonScale = 0.10
        LumiaF.config.PointerScale = 0.12
        LumiaF.config.SubMenuScale = 0.17
        LumiaF.config.FreeCamScale = 0.20
        LumiaF.config.MainX = (sx / 2) - 75
        LumiaF.config.MainY = (sy / 2) - 50
    end
    -- Dynamic Triggers Updating --
    LumiaC.dynam.UpdateAllTriggers()
    -- Unlock Menu --
    LumiaF.config.dienow = true
    LumiaF.config.openkeydefine = true
    LumiaF.config.breathon = true
else
    -- Yell At User --
    print('Trying To Inject Without A Sub? Doesnt make sense unless its a leak!')
    -- Lock Menu --
    LumiaF.config.dienow = false
    LumiaF.config.openkeydefine = false
    LumiaF.config.breathon = false
end
-- Choose Open Key --
Lumia1.rE.LumThread(function()
    while LumiaF.config.dienow do
        if LumiaF.config.openkeydefine then
            LumiaF.config.Keybinds.OpenKn = 'Press Any Key'
            local key, keyname = LumiaF.func.isanykey()
            if key ~= nil then
                LumiaF.config.Keybinds.OpenKb = key
                LumiaF.config.Keybinds.OpenKn = keyname
                Lumia1.rE.LumWait(1000)
                LumiaF.config.openkeydefine = false
            end   
        end
        if LumiaN.natives.IsDisabledControlJustPressed(0, LumiaF.config.Keybinds.OpenKb) then
            LumiaF.config.opennow = not LumiaF.config.opennow
        end
        Lumia1.rE.LumWait(0)
    end
end)
-- Choose Open Key (Breathing Effect) --
Lumia1.rE.LumThread(function()
    while LumiaF.config.openkeydefine do
        if LumiaF.config.Keybinds.OpenKn == 'Press Any Key' then
            if LumiaF.config.breathon then
                Lumia1.rE.LumWait(20)
                LumiaF.config.Keybinds.OpenKalpha = LumiaF.config.Keybinds.OpenKalpha + 10
                if LumiaF.config.Keybinds.OpenKalpha >= 250 then
                    LumiaF.config.breathon = false
                end
            else
                Lumia1.rE.LumWait(20)
                LumiaF.config.Keybinds.OpenKalpha = LumiaF.config.Keybinds.OpenKalpha - 10
                if LumiaF.config.Keybinds.OpenKalpha <= 5 then
                    LumiaF.config.breathon = true
                end
            end
        else
            LumiaF.config.Keybinds.OpenKalpha = 255
        end
        Lumia1.rE.LumWait(1)
    end
end)
-- Menu Thread --
Lumia1.rE.LumThread(function()
    while LumiaF.config.dienow do
        if LumiaF.config.openkeydefine then
            local sx, sy = LumiaN.natives.GetActiveScreenResolution()
            LumiaF.func.DrawRectangle((sx / 2) - 75, (sy / 2) - 50, 150, 30, LumiaF.config.CPrimary.r, LumiaF.config.CPrimary.g, LumiaF.config.CPrimary.b, LumiaF.config.CPrimary.a)
            LumiaF.func.DrawRectangle((sx / 2) - 75, (sy / 2) - 22.5, 150, 45, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
            LumiaF.func.DrawSomeText('Set Open Key', 4, false, (sx / 2) - 43, (sy / 2) - 50, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a) 
            LumiaF.func.DrawSomeText(LumiaF.config.Keybinds.OpenKn, 4, true, (sx / 2), (sy / 2) - 15, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.Keybinds.OpenKalpha)  
        end 
        if LumiaF.config.opennow then
            
            local x, y = LumiaN.natives.GetNuiCursorPosition()
            LumiaF.config.Men1Y = 0
            LumiaF.config.Men2Y = 0
            LumiaF.config.Men3Y = 0
            LumiaF.config.Men4Y = 0
            LumiaF.config.Men5Y = 0
            LumiaF.config.offset1 = 15
            LumiaF.config.offset2 = 10
            LumiaF.config.offset3 = 10
            LumiaF.config.offset4 = 10
            LumiaF.config.offset5 = 10
 
                --SELF
            if LumiaF.config.Men1T then
                LumiaF.config.offset1 = LumiaF.config.offset1 + 195 -- 10 + last button offset
                LumiaF.config.Men2Y = LumiaF.config.Men2Y + LumiaF.config.offset1
                LumiaF.config.Men3Y = LumiaF.config.Men3Y + LumiaF.config.offset1
                LumiaF.config.Men4Y = LumiaF.config.Men4Y + LumiaF.config.offset1
                LumiaF.config.Men5Y = LumiaF.config.Men5Y + LumiaF.config.offset1
                LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + 60, 255, LumiaF.config.offset1, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                if LumiaM.Mfunc.ComboBox('Quick Options', LumiaC.Qopt.items, LumiaC.Qopt.currentItemIndex, LumiaC.Qopt.selectedItemIndex, function(currentIndex, selectedIndex)
                    LumiaC.Qopt.currentItemIndex = currentIndex 
                    LumiaC.Qopt.selectedItemIndex = selectedIndex
                end, 1, 10) then LumiaC.Qopt.values[LumiaC.Qopt.selectedItemIndex]() local QoptSelected = LumiaC.Qopt.items[LumiaC.Qopt.selectedItemIndex]; if QoptSelected == 'Health' then  LumiaM.Mfunc.ShowNotification('Refilled ~g~Health') elseif QoptSelected == 'Armor' then LumiaM.Mfunc.ShowNotification('Refilled ~b~Armor') elseif QoptSelected == 'Clean' then LumiaM.Mfunc.ShowNotification('~g~Cleaned ~w~Ped') elseif QoptSelected == 'Revive' then LumiaM.Mfunc.ShowNotification('You Have Been ~g~Revived') elseif QoptSelected == 'Suicide' then LumiaM.Mfunc.ShowNotification('You Have Commited ~r~Suicide') end end
                if LumiaM.Mfunc.CheckBox('Godmode', LumiaF.config.features.SupaJesusMode, function(enabled) LumiaF.config.features.SupaJesusMode = enabled end, 1, 30) then
                    if LumiaF.config.features.SupaJesusMode then LumiaM.Mfunc.ShowNotification('Godmode ~g~ON') else LumiaM.Mfunc.ShowNotification('Godmode ~r~OFF') end
                end
                if LumiaM.Mfunc.CheckBox('No Ragdoll', LumiaF.config.features.noragmen, function(enabled) LumiaF.config.features.noragmen = enabled end, 1, 50) then if LumiaF.config.features.noragmen then LumiaM.Mfunc.ShowNotification('No Rag Doll ~g~ON') else LumiaM.Mfunc.ShowNotification('No Rag Doll ~r~OFF') end end
                if LumiaM.Mfunc.CheckBox('No Criticals', LumiaF.config.features.nocritsmen, function(enabled) LumiaF.config.features.nocritsmen = enabled end, 1, 70) then 
                    if LumiaF.config.features.nocritsmen then LumiaM.Mfunc.ShowNotification('No Criticals ~g~ON') else LumiaM.Mfunc.ShowNotification('No Criticals ~r~OFF') end
                end
                if LumiaM.Mfunc.CheckBox('Invisiblity', LumiaF.config.features.SupaNoSee, function(enabled) LumiaF.config.features.SupaNoSee = enabled end, 1, 90) then
                    if LumiaF.config.features.SupaNoSee then LumiaM.Mfunc.ShowNotification('Invisiblity ~g~ON') else LumiaM.Mfunc.ShowNotification('Invisiblity ~r~OFF') end 
                end
                if LumiaM.Mfunc.CheckBox('Super Run', LumiaF.config.features.SupaRoon, function(enabled) LumiaF.config.features.SupaRoon = enabled end, 1, 110) then
                    if LumiaF.config.features.SupaRoon then LumiaM.Mfunc.ShowNotification('Super Run ~g~ON') else LumiaM.Mfunc.ShowNotification('Super Run ~r~OFF') end 
                end
                if LumiaM.Mfunc.CheckBox('Super Jump', LumiaF.config.features.SupaJumpski, function(enabled) LumiaF.config.features.SupaJumpski = enabled end, 1, 130) then
                    if LumiaF.config.features.SupaJumpski then LumiaM.Mfunc.ShowNotification('Super Jump ~g~ON') else LumiaM.Mfunc.ShowNotification('Super Jump ~r~OFF') end 
                end
                if LumiaM.Mfunc.CheckBox('Infinite Stamina', LumiaF.config.features.SupaStamina, function(enabled) LumiaF.config.features.SupaStamina = enabled end, 1, 150) then
                    if LumiaF.config.features.SupaStamina then LumiaM.Mfunc.ShowNotification('Infinite Stamina ~g~ON') else LumiaM.Mfunc.ShowNotification('Infinite Stamina ~r~OFF') end 
                end
                if LumiaM.Mfunc.CheckBox('Noclip', LumiaF.config.features.Noclip, function(enabled) LumiaF.config.features.Noclip = enabled end, 1, 170) then
                    if LumiaF.config.features.Noclip then
                        LumiaM.Mfunc.ShowNotification('Noclip ~g~ON') 
						LumiaN.natives.SetEntityVisible(LumiaN.natives.PlayerPedId(), false, false)
                    else
                        LumiaM.Mfunc.ShowNotification('Noclip ~r~OFF')  
						LumiaN.natives.SetEntityRotation(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.PlayerPedId(), 0), LumiaN.natives.GetGameplayCamRot(2), 2, 1)
						LumiaN.natives.SetEntityVisible(LumiaN.natives.PlayerPedId(), true, false)
						LumiaN.natives.SetEntityVisible(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.PlayerPedId(), 0), true, false)
					end
                end
                if LumiaM.Mfunc.CheckBox('Freecam', LumiaF.config.features.ToggleFreeCam, function(enabled) LumiaF.config.features.ToggleFreeCam = enabled end, 1, 190) then
                    if LumiaF.config.features.ToggleFreeCam then LumiaM.freec.FreeCamToggle() LumiaM.Mfunc.ShowNotification('Freecam ~g~ON') else LumiaM.freec.FreeCamToggle() LumiaM.Mfunc.ShowNotification('Freecam ~r~OFF') end
                end
                if LumiaM.Mfunc.Button('Teleport To Waypoint', 1, 10, 140) then
                    local Waypointy = LumiaN.natives.GetFirstBlipInfoId(8) 
                    if LumiaN.natives.DoesBlipExist(Waypointy) then
                        LumiaM.FunFunc.TeleToWP()
                        LumiaM.Mfunc.ShowNotification('~g~Teleported ~w~To Waypoint!')
                    else
                        LumiaM.Mfunc.ShowNotification('You Must Place A ~r~Waypoint')
                    end
                end
                if LumiaM.Mfunc.Button('Teleport To Coords', 1, 30, 140) then
                    local x = LumiaM.Mfunc.KeyboardInput('X Coord (ex: 125.234)', '', 15)
                    local y = LumiaM.Mfunc.KeyboardInput('Y Coord (ex: 125.234)', '', 15)
                    local z = LumiaM.Mfunc.KeyboardInput('Z Coord (ex: 125.234)', '', 15)
                    LumiaM.FunFunc.TeleToC(Lumia1.rE.LumToNum(x), Lumia1.rE.LumToNum(y), Lumia1.rE.LumToNum(z))
                    LumiaM.Mfunc.ShowNotification('~g~Teleported ~w~To Coords!')
                end
                if LumiaM.Mfunc.Button('Preset Outfit 1', 1, 50, 140) then
                    LumiaM.FunFunc.PreMadeFit1()
                    LumiaM.Mfunc.ShowNotification('Outfit 1 Has Been ~g~Equipt')
                end
                if LumiaM.Mfunc.Button('Preset Outfit 2', 1, 70, 140) then
                    LumiaM.FunFunc.PreMadeFit2()
                    LumiaM.Mfunc.ShowNotification('Outfit 2 Has Been ~g~Equipt')
                end
                if LumiaM.Mfunc.Button('Preset Outfit 3', 1, 90, 140) then
                    LumiaM.FunFunc.PreMadeFit3()
                    LumiaM.Mfunc.ShowNotification('Outfit 3 Has Been ~g~Equipt')
                end
                if LumiaM.Mfunc.Button('Kyler Sunset', 1, 110, 140) then
                    LumiaM.FunFunc.kylersunset()
                    LumiaM.Mfunc.ShowNotification('You Are Now ~g~Kyler Sunset')
                    LumiaM.Mfunc.ShowNotification('Tubeuler Dude!')
                end
                if LumiaM.Mfunc.Button('Chad Sunset', 1, 130, 140) then
                    LumiaM.FunFunc.chadsunset()
                    LumiaM.Mfunc.ShowNotification('You Are Now ~g~Chad Sunset')
                    LumiaM.Mfunc.ShowNotification('Thats Rad!')
                end
                if LumiaM.Mfunc.Button('Arjun Ranch', 1, 150, 140) then
                    LumiaM.FunFunc.argunr()
                    LumiaM.Mfunc.ShowNotification('You Are Now ~g~Arjun')
                end
                if LumiaM.Mfunc.Button('Default Ped', 1, 170, 140) then
                    LumiaN.natives.SetPedDefaultComponentVariation(LumiaN.natives.PlayerPedId())
                    LumiaM.Mfunc.ShowNotification('Your Outfit Has Been ~g~Reset')
                end
            end
                --ONLINE PLAYER LIST
            if LumiaF.config.Men2T then
                LumiaF.func.DrawRectangle(LumiaF.config.MainX + 260, LumiaF.config.MainY + 60 + LumiaF.config.Men2Y, 200, 40, LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                LumiaF.func.DrawSomeText('Online Player List', 4, false, LumiaF.config.MainX + 304, LumiaF.config.MainY + LumiaF.config.Men2Y + 65, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                
                LumiaF.config.Men2tOff = -7
                LumiaF.config.Men2mbOff = 0
                local playerlist = LumiaN.natives.GetActivePlayers()
                if LumiaF.config.SelecOP == nil then
                    LumiaF.config.SelecOP = playerlist[1]
                end
                Lumia1.rE.LumTable.LumSort(playerlist, function(a, b)
                    return (LumiaN.natives.GetPlayerServerId(a) < LumiaN.natives.GetPlayerServerId(b))
                end)
                for i = 1, #playerlist do
                    local currPlayer = playerlist[i]
                    LumiaF.config.Men2tOff = LumiaF.config.Men2tOff + 17
                    LumiaF.config.Men2mbOff = LumiaF.config.Men2mbOff + 17.3
                    if LumiaM.Mfunc.Button('ID: ' .. LumiaN.natives.GetPlayerServerId(currPlayer) .. '  ' .. LumiaN.natives.GetPlayerName(currPlayer) .. '', 2, LumiaF.config.Men2tOff, 255) then
                        LumiaF.config.SelecOP = currPlayer
                        LumiaM.Mfunc.ShowNotification('You Selected: ~g~'.. LumiaN.natives.GetPlayerName(currPlayer) ..'')
                    end
                end
                LumiaF.func.DrawRectangle(LumiaF.config.MainX + 260, LumiaF.config.MainY + 100 + LumiaF.config.Men2Y, 200, LumiaF.config.Men2mbOff, LumiaF.config.CSecondary2.r, LumiaF.config.CSecondary2.g, LumiaF.config.CSecondary2.b, LumiaF.config.CSecondary2.a)
            end
                --ONLINE OPTIONS
            if LumiaF.config.Men2T then                
                LumiaF.func.DrawSomeText('Selected Player: ' .. LumiaN.natives.GetPlayerName(LumiaF.config.SelecOP) .. '', 4, false, LumiaF.config.MainX + 10, LumiaF.config.MainY + LumiaF.config.Men2Y + 100, LumiaF.config.PointerScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                if LumiaM.Mfunc.ComboBox('', LumiaC.Mopt5.items, LumiaC.Mopt5.currentItemIndex, LumiaC.Mopt5.selectedItemIndex, function(currentIndex, selectedIndex)
                    LumiaC.Mopt5.currentItemIndex = currentIndex 
                    LumiaC.Mopt5.selectedItemIndex = selectedIndex
                end, 2, 30) then end
                if LumiaC.Mopt5.values[LumiaC.Mopt5.selectedItemIndex] == 1 then
                    LumiaF.config.offset2 = LumiaF.config.offset2 + 135
                    LumiaF.config.Men3Y = LumiaF.config.Men3Y + LumiaF.config.offset2
                    LumiaF.config.Men4Y = LumiaF.config.Men4Y + LumiaF.config.offset2
                    LumiaF.config.Men5Y = LumiaF.config.Men5Y + LumiaF.config.offset2
                    LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men2Y + 100, 255, LumiaF.config.offset2, LumiaF.config.CSecondary2.r, LumiaF.config.CSecondary2.g, LumiaF.config.CSecondary2.b, LumiaF.config.CSecondary2.a)
                    if LumiaM.Mfunc.CheckBox('Spectate', LumiaF.config.specfornow, function(enabled) LumiaF.config.specfornow = enabled end, 2, 50) then
                        if LumiaF.config.specfornow then
                            LumiaM.FunFunc.specnow(LumiaF.config.SelecOP)
                            LumiaM.Mfunc.ShowNotification('You Are Now ~g~Spectating')
                        else
                            LumiaN.natives.DestroyCam(cam)
                            LumiaN.natives.ClearTimecycleModifier()
                            LumiaN.natives.RenderScriptCams(false, false, 0, 1, 0)
                            LumiaM.Mfunc.ShowNotification('You Have Stopped ~r~Spectating')
                        end                    
                    end
                    if LumiaM.Mfunc.CheckBox('Create Waypoint to Player', LumiaF.config.features.wptoselp, function(enabled) LumiaF.config.features.wptoselp = enabled end, 2, 70) then 
                        if LumiaF.config.features.wptoselp then
                            LumiaM.Mfunc.ShowNotification('You Are Now ~g~Tracking This Player')
                        else
                            LumiaM.Mfunc.ShowNotification('You Stopped ~r~Tracking This Player')
                        end
                        Lumia1.rE.LumThread(function()
                            while LumiaF.config.features.wptoselp do Lumia1.rE.LumWait(500)
                                local ped = LumiaN.natives.GetPlayerPed(LumiaF.config.SelecOP)
                                local coords = LumiaN.natives.GetEntityCoords(ped, false)
                                LumiaN.natives.SetNewWaypoint(coords.x, coords.y)
                            end
                        end)
                    end
                    if LumiaM.Mfunc.Button('Teleport To Player', 2, 90) then
                        LumiaM.FunFunc.TeleportToPlayer(LumiaF.config.SelecOP)
                        LumiaM.Mfunc.ShowNotification('~g~Teleported ~w~To The Selected Player')
                    end
                    if LumiaM.Mfunc.Button('Clone Outfit', 2, 110) then
                        LumiaM.FunFunc.CloneDaFit(LumiaF.config.SelecOP)
                        LumiaM.Mfunc.ShowNotification('You Are Now ~g~This Player')
                    end
                    
                    if LumiaM.Mfunc.Button('Give Weapon To Player', 2, 130) then
                        local stupidped = LumiaN.natives.GetPlayerPed(LumiaF.config.SelecOP)			
                        local wepnamegay = LumiaM.Mfunc.KeyboardInput('Weapon Name', 'weapon_', 100)		
                        local ammogay = LumiaM.Mfunc.KeyboardInput('Ammo Count', '', 1000)
                        if wepnamegay and LumiaN.natives.IsWeaponValid(wepnamegay) then
                            if Lumia1.rE.LumToNum(ammogay) >= 200 then
                                ammogay = 200
                            end
                            LumiaM.Mfunc.ShowNotification('You Have Given This Player An ~g~'.. Lumia1.rE.LumString.LumUpper(wepnamegay) ..'')			
                            LumiaN.natives.GiveWeaponToPed(stupidped, Lumia1.rE.LumHash(wepnamegay), Lumia1.rE.LumToNum(ammogay), false, false)				
                        else
                            LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(wepnamegay) ..' ~w~Is Not A Valid Weapon!')
                        end
                    end
                elseif LumiaC.Mopt5.values[LumiaC.Mopt5.selectedItemIndex] == 2 then
                    LumiaF.config.offset2 = LumiaF.config.offset2 + 195
                    LumiaF.config.Men3Y = LumiaF.config.Men3Y + LumiaF.config.offset2
                    LumiaF.config.Men4Y = LumiaF.config.Men4Y + LumiaF.config.offset2
                    LumiaF.config.Men5Y = LumiaF.config.Men5Y + LumiaF.config.offset2
                    LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men2Y + 100, 255, LumiaF.config.offset2, LumiaF.config.CSecondary2.r, LumiaF.config.CSecondary2.g, LumiaF.config.CSecondary2.b, LumiaF.config.CSecondary2.a)
                    if LumiaM.Mfunc.ComboBox('Attach Shit', LumiaC.AObj.items, LumiaC.AObj.currentItemIndex, LumiaC.AObj.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.AObj.currentItemIndex = currentIndex 
                        LumiaC.AObj.selectedItemIndex = selectedIndex
                    end, 2, 50) then 
                        LumiaC.AObj.values[LumiaC.AObj.selectedItemIndex](LumiaF.config.SelecOP)
                        LumiaM.Mfunc.ShowNotification('You Have ~r~Attached ~w~Something To The Player')
                    end
                    if LumiaM.Mfunc.CheckBox('Freeze', LumiaF.config.features.elnomove, function(enabled) LumiaF.config.features.elnomove = enabled end, 2, 70) then
                        if LumiaF.config.features.elnomove then LumiaM.Mfunc.ShowNotification('You Have ~b~Froze ~w~The Selected Player') else LumiaM.Mfunc.ShowNotification('You Have ~r~Unfroze ~w~The Selected Player') end
                    end
                    if LumiaM.Mfunc.CheckBox('Taze (Loop)', LumiaF.config.features.tazeloopselp, function(enabled) LumiaF.config.features.tazeloopselp = enabled end, 2, 90) then 
                        if LumiaF.config.features.tazeloopselp then LumiaM.Mfunc.ShowNotification('You Are ~y~Tazing ~w~The Selected Player') else LumiaM.Mfunc.ShowNotification('You Have Stopped ~y~Tazing ~w~The Selected Player') end
                    end
                    if LumiaM.Mfunc.CheckBox('UD Explode (Loop)', LumiaF.config.features.boomloopselp, function(enabled) LumiaF.config.features.boomloopselp = enabled end, 2, 110) then 
                        if LumiaF.config.features.boomloopselp then LumiaM.Mfunc.ShowNotification('You Are ~r~Exploading ~w~The Selected Player') else LumiaM.Mfunc.ShowNotification('You Have Stopped ~r~Exploading ~w~The Selected Player') end
                    end
                    if LumiaM.Mfunc.Button('Cage Player (UD)', 2, 130) then
                        LumiaM.FunFunc.cagerino(LumiaF.config.SelecOP)
                        LumiaM.Mfunc.ShowNotification('You ~g~Caged ~w~The Selected Player')
                    end
                    if LumiaM.Mfunc.Button('UD Explode (Semi-Reliable)', 2, 150) then
                        LumiaM.FunFunc.goboom(LumiaF.config.SelecOP)
                        LumiaM.Mfunc.ShowNotification('You Have ~r~Exploded ~w~The Selected Player')
                    end
                    if LumiaM.Mfunc.Button('Jew Rape Player', 2, 170) then
                        LumiaM.Mfunc.ShowNotification('You Have ~g~Jew Raped ~w~The Selected Player')
                        local jewtable = {'a_m_m_hasjew_01', 'a_m_y_hasjew_01'}
                        local ped = LumiaF.config.SelecOP
                        while not LumiaN.natives.HasModelLoaded('a_m_y_hasjew_01') do
                            LumiaN.natives.RequestModel('a_m_y_hasjew_01')
                            Lumia1.rE.LumWait(0)
                        end
                        while not LumiaN.natives.HasModelLoaded('a_m_m_hasjew_01') do
                            LumiaN.natives.RequestModel('a_m_m_hasjew_01')
                            Lumia1.rE.LumWait(0)
                        end
                        while not LumiaN.natives.HasAnimDictLoaded('rcmpaparazzo_2') do
                            LumiaN.natives.RequestAnimDict('rcmpaparazzo_2')
                            Lumia1.rE.LumWait(0)
                        end
                            if LumiaN.natives.IsPedInAnyVehicle(LumiaN.natives.GetPlayerPed(ped), true) then
                                local veh = LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(ped), true)
                                    if not LumiaN.natives.NetworkHasControlOfEntity(veh) then
                                        LumiaN.natives.NetworkRequestControlOfEntity(veh)
                                        Lumia1.rE.LumWait(0)
                                    end
                                LumiaN.natives.SetEntityAsMissionEntity(veh, true, true)
                                LumiaN.natives.DeleteVehicle(veh)
                                LumiaN.natives.DeleteEntity(veh)
                            end
                            local Spacing = -0.2
                        for k, v in pairs(jewtable) do
                            local x, y, z = Lumia1.rE.LumTable.LumUnPack(LumiaN.natives.GetEntityCoords(LumiaN.natives.GetPlayerPed(ped), true))
                            local JewPed = LumiaN.natives.CreatePed(4, Lumia1.rE.LumHash(v), x, y, z, 0.0, true, false)
                            LumiaN.natives.SetEntityAsMissionEntity(JewPed, true, true)
                            LumiaN.natives.AttachEntityToEntity(JewPed, LumiaN.natives.GetPlayerPed(ped), 4103, 11816, Spacing, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                            LumiaN.natives.ClearPedTasks(LumiaN.natives.GetPlayerPed(ped))
                            LumiaN.natives.TaskPlayAnim(LumiaN.natives.GetPlayerPed(ped), 'rcmpaparazzo_2', 'shag_loop_poppy', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                            LumiaN.natives.SetPedKeepTask(JewPed)
                            LumiaN.natives.TaskPlayAnim(JewPed, 'rcmpaparazzo_2', 'shag_loop_a', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                            LumiaN.natives.SetEntityInvincible(JewPed, true)
                            Spacing = Spacing - 0.4
                        end
                    end
                    
                    if LumiaM.Mfunc.Button('Lag The Player', 2, 190) then
                        LumiaM.FunFunc.lagmen(LumiaF.config.SelecOP)
                        LumiaM.Mfunc.ShowNotification("You Have ~r~Fucked ~w~The Selected Player's PC")
                    end
                elseif LumiaC.Mopt5.values[LumiaC.Mopt5.selectedItemIndex] == 3 then
                    LumiaF.config.offset2 = LumiaF.config.offset2 + 135
                    LumiaF.config.Men3Y = LumiaF.config.Men3Y + LumiaF.config.offset2
                    LumiaF.config.Men4Y = LumiaF.config.Men4Y + LumiaF.config.offset2
                    LumiaF.config.Men5Y = LumiaF.config.Men5Y + LumiaF.config.offset2
                    LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men2Y + 100, 255, LumiaF.config.offset2, LumiaF.config.CSecondary2.r, LumiaF.config.CSecondary2.g, LumiaF.config.CSecondary2.b, LumiaF.config.CSecondary2.a)
                    if LumiaM.Mfunc.Button('Shoot Gun: ', 2, 50) then
                        local textie = LumiaM.Mfunc.KeyboardInput('Weapon Name', 'weapon_', 100)
                        if textie and LumiaN.natives.IsWeaponValid(textie) then
                            LumiaM.Mfunc.ShowNotification('You Have Set The Weapon To: '.. Lumia1.rE.LumString.LumUpper(textie).. '')
                            LumiaF.config.shootselwep = textie
                        else
                            LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Valid Weapon!')
                        end
                    end
                    if LumiaM.Mfunc.Button('Damage: ', 2, 67) then
                        local dmgtextie = LumiaM.Mfunc.KeyboardInput('Damage Amount (EX: 100.0)', '', 5)
                        if Lumia1.rE.LumToNum(dmgtextie) >= 10001 then
                            LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(dmgtextie) ..' ~w~Damage Is Too High!')
                        else
                            LumiaM.Mfunc.ShowNotification('The Damage Has Been Set To: '.. Lumia1.rE.LumString.LumUpper(dmgtextie) ..'')
                            LumiaF.config.shootseldmg = Lumia1.rE.LumToNum(dmgtextie)
                        end
                    end
                    LumiaF.func.DrawSomeText('' .. Lumia1.rE.LumString.LumUpper(LumiaF.config.shootselwep) .. '', 4, false, LumiaF.config.MainX + 68, LumiaF.config.MainY + LumiaF.config.Men2Y + 140, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    LumiaF.func.DrawSomeText('' .. Lumia1.rE.LumString.LumUpper(LumiaF.config.shootseldmg) .. '', 4, false, LumiaF.config.MainX + 60, LumiaF.config.MainY + LumiaF.config.Men2Y + 157, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    if LumiaM.Mfunc.Button('Shoot Player', 2, 84) then
                        LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Shot The Selected Player')
                        LumiaM.FunFunc.ShootP(LumiaF.config.shootselwep, LumiaF.config.SelecOP, LumiaF.config.shootseldmg)
                    end
                    if LumiaM.Mfunc.Button('Ram Vehicle: ', 2, 110) then
                        local vtextie = LumiaM.Mfunc.KeyboardInput('Vehicle', '', 100)
                        if vtextie and LumiaN.natives.IsModelAVehicle(vtextie) then
                            LumiaM.Mfunc.ShowNotification('You Have Set The Vehicle To: '.. Lumia1.rE.LumString.LumUpper(vtextie).. '')
                            LumiaF.config.ramselveh = vtextie
                        else
                            LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(vtextie) ..' ~w~Is Not A Vehicle!')
                        end
                    end
                    LumiaF.func.DrawSomeText('' .. LumiaF.config.ramselveh .. '', 4, false, LumiaF.config.MainX + 76, LumiaF.config.MainY + LumiaF.config.Men2Y + 200, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    if LumiaM.Mfunc.Button('Ram Player', 2, 127) then
                        LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Rammed The Selected Player')
                        LumiaM.FunFunc.RamP(LumiaF.config.SelecOP, LumiaF.config.ramselveh)
                    end
                
                elseif LumiaC.Mopt5.values[LumiaC.Mopt5.selectedItemIndex] == 4 then
                    local hitmany = 50
                    LumiaF.config.offset2 = LumiaF.config.offset2 + 190
                    LumiaF.config.Men3Y = LumiaF.config.Men3Y + LumiaF.config.offset2
                    LumiaF.config.Men4Y = LumiaF.config.Men4Y + LumiaF.config.offset2
                    LumiaF.config.Men5Y = LumiaF.config.Men5Y + LumiaF.config.offset2
                    LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men2Y + 100, 255, LumiaF.config.offset2, LumiaF.config.CSecondary2.r, LumiaF.config.CSecondary2.g, LumiaF.config.CSecondary2.b, LumiaF.config.CSecondary2.a)
                    if LumiaM.Mfunc.ComboBox('Hit Method', LumiaC.HitMethod.items, LumiaC.HitMethod.currentItemIndex, LumiaC.HitMethod.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.HitMethod.currentItemIndex = currentIndex 
                        LumiaC.HitMethod.selectedItemIndex = selectedIndex
                    end, 2, hitmany) then end
                        hitmany = hitmany + 20
                    -- if driveby car 70
                    if LumiaC.HitMethod.values[LumiaC.HitMethod.selectedItemIndex] == 3 then
                        if LumiaM.Mfunc.Button("Hit Man's Car: ", 2, hitmany) then
                            local textie = LumiaM.Mfunc.KeyboardInput('Car Model', '', 100)
                            if textie and LumiaN.natives.IsModelValid(textie) and LumiaN.natives.IsModelAVehicle(textie) then
                                if not LumiaN.natives.IsThisModelABicycle(textie) and not LumiaN.natives.IsThisModelABoat(textie) and not LumiaN.natives.IsThisModelAHeli(textie) and not LumiaN.natives.IsThisModelAJetski(textie) and not LumiaN.natives.IsThisModelAPlane(textie) and not LumiaN.natives.IsThisModelATrain(textie) then
                                    LumiaM.Mfunc.ShowNotification('You Have Set The Vehicle To: '.. Lumia1.rE.LumString.LumUpper(textie).. '')
                                    LumiaF.config.hitmancar = textie
                                else
                                    LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Car or Bike!')
                                end
                            else
                                LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Vehicle!')
                            end
                        end
                        LumiaF.func.DrawSomeText('' .. Lumia1.rE.LumString.LumUpper(LumiaF.config.hitmancar) .. '', 4, false, LumiaF.config.MainX + 82, LumiaF.config.MainY + LumiaF.config.Men2Y + 90 + hitmany, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        hitmany = hitmany + 20
                    end
                    -- if flyby heli 70
                    if LumiaC.HitMethod.values[LumiaC.HitMethod.selectedItemIndex] == 4 then
                        if LumiaM.Mfunc.Button("Hit Man's Heli: ", 2, hitmany) then
                            local textie = LumiaM.Mfunc.KeyboardInput('Heli Model', '', 100)
                            if textie and LumiaN.natives.IsModelValid(textie) and LumiaN.natives.IsModelAVehicle(textie) then
                                if not LumiaN.natives.IsThisModelABicycle(textie) and not LumiaN.natives.IsThisModelABoat(textie) and not LumiaN.natives.IsThisModelACar(textie) and not LumiaN.natives.IsThisModelAJetski(textie) and not LumiaN.natives.IsThisModelAPlane(textie) and not LumiaN.natives.IsThisModelATrain(textie) and not LumiaN.natives.IsThisModelAQuadbike(textie) and not LumiaN.natives.IsThisModelAnAmphibiousCar(textie) and not LumiaN.natives.IsThisModelAnAmphibiousQuadbike(textie) then
                                    LumiaM.Mfunc.ShowNotification('You Have Set The Vehicle To: '.. Lumia1.rE.LumString.LumUpper(textie).. '')
                                    LumiaF.config.hitmanheli = textie
                                else
                                    LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Helicopter!')
                                end
                            else
                                LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Vehicle!')
                            end
                        end
                        LumiaF.func.DrawSomeText('' .. Lumia1.rE.LumString.LumUpper(LumiaF.config.hitmanheli) .. '', 4, false, LumiaF.config.MainX + 82, LumiaF.config.MainY + LumiaF.config.Men2Y + 90 + hitmany, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        hitmany = hitmany + 20
                    end
                    -- ped type 90
                    if LumiaM.Mfunc.ComboBox("Hit Man's Ped", LumiaC.HitManModle.items, LumiaC.HitManModle.currentItemIndex, LumiaC.HitManModle.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.HitManModle.currentItemIndex = currentIndex 
                        LumiaC.HitManModle.selectedItemIndex = selectedIndex
                    end, 2, hitmany) then end
                    hitmany = hitmany + 20
                    if LumiaC.HitMethod.values[LumiaC.HitMethod.selectedItemIndex] ~= 2 then
                        -- ped weapon 110
                        if LumiaM.Mfunc.Button("Hit Man's Gun: ", 2, hitmany) then
                            local textie = LumiaM.Mfunc.KeyboardInput('Weapon Name', 'weapon_', 100)
                            if textie and LumiaN.natives.IsWeaponValid(textie) then
                                LumiaM.Mfunc.ShowNotification('You Have Set The Weapon To: '.. Lumia1.rE.LumString.LumUpper(textie).. '')
                                LumiaF.config.hitmangun = textie
                            else
                                LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(textie) ..' ~w~Is Not A Valid Weapon!')
                            end
                        end
                        LumiaF.func.DrawSomeText('' .. Lumia1.rE.LumString.LumUpper(LumiaF.config.hitmangun) .. '', 4, false, LumiaF.config.MainX + 82, LumiaF.config.MainY + LumiaF.config.Men2Y + 90 + hitmany, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        hitmany = hitmany + 20
                        -- ped accuracy 130
                        if LumiaM.Mfunc.Button("Hit Man's Accuracy: ", 2, hitmany) then
                            local textie = LumiaM.Mfunc.KeyboardInput('Hit Man Accuracy 0-100', '', 3)
                            if Lumia1.rE.LumToNum(textie) and Lumia1.rE.LumToNum(textie) >= 0 and Lumia1.rE.LumToNum(textie) <= 100 then
                                LumiaM.Mfunc.ShowNotification('The Accuracy Has Been Set To: '.. Lumia1.rE.LumString.LumUpper(textie) ..'') 
                                LumiaF.config.hitmanac = textie
                            else
                                LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(textie) ..' ~w~Accuracy Is Too High!')
                            end
                        end
                        LumiaF.func.DrawSomeText('' .. LumiaF.config.hitmanac .. '', 4, false, LumiaF.config.MainX + 103, LumiaF.config.MainY + LumiaF.config.Men2Y + 90 + hitmany, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        hitmany = hitmany + 20
                    end
                        -- godmode? 150
                    if LumiaM.Mfunc.CheckBox('Hit Man Is God', LumiaF.config.features.hitmangod, function(enabled) LumiaF.config.features.hitmangod = enabled end, 2, hitmany) then 
                        if LumiaF.config.features.hitmangod then LumiaM.Mfunc.ShowNotification('The Hit Man Will Now Be In ~b~God Mode') else LumiaM.Mfunc.ShowNotification('The Hit Man Will Not Be In ~b~God Mode') end
                    end
                    hitmany = hitmany + 20
                    if LumiaC.HitMethod.values[LumiaC.HitMethod.selectedItemIndex] ~= 2 then    
                        -- ped exploads on death? 170
                        if LumiaM.Mfunc.CheckBox('Hit Man Explodes On Kill', LumiaF.config.features.hitmanexpload, function(enabled) LumiaF.config.features.hitmanexpload = enabled end, 2, hitmany) then 
                            if LumiaF.config.features.hitmanexpload then LumiaM.Mfunc.ShowNotification('The Hit Man Will Now ~r~Expload ~w~On Death') else LumiaM.Mfunc.ShowNotification('The Hit Man Will Not ~r~Expload ~w~On Death') end
                        end
                        hitmany = hitmany + 20
                    end
                        -- send da hit button 190
                    if LumiaM.Mfunc.Button('Send Hit', 2, hitmany) then
                        LumiaM.Mfunc.ShowNotification('You Have ~g~Sent The Hit')
                        LumiaM.FunFunc.sendhit(LumiaC.HitMethod.values[LumiaC.HitMethod.selectedItemIndex], LumiaC.HitManModle.values[LumiaC.HitManModle.selectedItemIndex], LumiaF.config.hitmanac, LumiaF.config.features.hitmangod, LumiaF.config.features.hitmanexpload, LumiaF.config.hitmangun, LumiaF.config.SelecOP, LumiaF.config.hitmancar, LumiaF.config.hitmanheli)
                    end
                    hitmany = hitmany + 20
                end
            end
                --VEHICLE OPTIONS
            if LumiaF.config.Men3T then
                LumiaF.config.offset3 = LumiaF.config.offset3 + 215
                LumiaF.config.Men4Y = LumiaF.config.Men4Y + LumiaF.config.offset3
                LumiaF.config.Men5Y = LumiaF.config.Men5Y + LumiaF.config.offset3
                LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men3Y + 140, 255, LumiaF.config.offset3, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                
                if LumiaM.Mfunc.ComboBox(' ', LumiaC.Mopt.items, LumiaC.Mopt.currentItemIndex, LumiaC.Mopt.selectedItemIndex, function(currentIndex, selectedIndex)
                    LumiaC.Mopt.currentItemIndex = currentIndex 
                    LumiaC.Mopt.selectedItemIndex = selectedIndex
                end, 3, 10, -20) then end
                
                if LumiaC.Mopt.values[LumiaC.Mopt.selectedItemIndex] then
                    if LumiaM.Mfunc.ComboBox('', LumiaC.Mopt2.items, LumiaC.Mopt2.currentItemIndex, LumiaC.Mopt2.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.Mopt2.currentItemIndex = currentIndex 
                        LumiaC.Mopt2.selectedItemIndex = selectedIndex
                    end, 3, 30) then end
                    if LumiaC.Mopt2.values[LumiaC.Mopt2.selectedItemIndex] then
                        local curvopt1 = curvopt
                        LumiaF.config.vehoff = 30
                        LumiaF.config.vehoff1 = -10
                        LumiaF.config.vehoff2 = 30
                        LumiaF.config.vehoff3 = -10
                        LumiaF.config.vehoff4 = -10
                        if LumiaN.natives.IsPedInAnyVehicle(LumiaN.natives.GetPlayerPed(-1), false) then
                            if curvopt1 == nil then
                                for i, mod in pairs(LumiaF.func.elModlister) do
                                    LumiaN.natives.SetVehicleModKit(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0)
                                    local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), mod.id)
                                    local installed = LumiaF.func.VehProperties(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
                                    local isbikeyea = LumiaN.natives.GetVehicleClass(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
                                    if isbikeyea == 8 then
                                        if modCount > 0 or mod.id == 100 or mod.id == 101 then
                                            LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                            if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                                LumiaF.config.vehoff1 = 180
                                                LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                                LumiaF.config.vehoff = LumiaF.config.vehoff4
                                            elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                                LumiaF.config.vehoff1 = 110
                                                LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                                LumiaF.config.vehoff = LumiaF.config.vehoff3
                                            elseif LumiaF.config.vehoff > 170 then
                                                LumiaF.config.vehoff1 = 50
                                                LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                                LumiaF.config.vehoff = LumiaF.config.vehoff2
                                            end
                                            if LumiaM.Mfunc.Button(mod.name, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                                curvopt = mod.name
                                                LumiaM.Mfunc.ShowNotification('Modifing ~g~'..mod.name..'')
                                            end
                                        end
                                    else
                                        if modCount > 0 or mod.id == 100 or mod.id == 101 or mod.id == 102 then
                                            LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                            if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                                LumiaF.config.vehoff1 = 180
                                                LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                                LumiaF.config.vehoff = LumiaF.config.vehoff4
                                            elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                                LumiaF.config.vehoff1 = 110
                                                LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                                LumiaF.config.vehoff = LumiaF.config.vehoff3
                                            elseif LumiaF.config.vehoff > 170 then
                                                LumiaF.config.vehoff1 = 50
                                                LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                                LumiaF.config.vehoff = LumiaF.config.vehoff2
                                            end
                                            if LumiaM.Mfunc.Button(mod.name, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                                curvopt = mod.name
                                                LumiaM.Mfunc.ShowNotification('Modifing ~g~'..mod.name..'')
                                                for i = 0, 1000, 1 do
                                                    Lumia1.rE.LumTable.LumRemove(LumiaC.WChanger1.items)
                                                    Lumia1.rE.LumTable.LumRemove(LumiaC.WColor.items)
                                                    Lumia1.rE.LumTable.LumRemove(LumiaC.WColor.values)
                                                    refresh = false
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif curvopt1 == 'Front Bumper' then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 1)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 1, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 70 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 70
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 1, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == 'Rear Bumper' then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 2)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 2, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 2, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end    
                            elseif curvopt1 == 'Spoilers' then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 130 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 200
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 70 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 130
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 70
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                    
                                end
                            elseif curvopt1 == "Hood" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 7)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 7, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 80 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 80
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 7, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil  
                                end
                            elseif curvopt1 == "Side Skirt" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 3)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 3, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 3, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Exhaust" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 4)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 4, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 4, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Frame" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 5)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 5, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 5, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Grille" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 6)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 6, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 6, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Fender" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 8)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 8, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 8, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Right Fender" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 9)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 9, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 9, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Roof" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 10)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 10, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 10, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Trunk" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 37)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 37, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 37, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Horns" then
                                for j = 0, 51, 1 do
                                    Lumia1.rE.LumTable.LumInsert(LumiaC.HornyHorn.items, LumiaF.func.GetHornName(j))
                                end
                                if LumiaM.Mfunc.ComboBox('Horns', LumiaC.HornyHorn.items, LumiaC.HornyHorn.currentItemIndex, LumiaC.HornyHorn.selectedItemIndex, function(currentIndex, selectedIndex)
                                    LumiaC.HornyHorn.currentItemIndex = currentIndex 
                                    LumiaC.HornyHorn.selectedItemIndex = selectedIndex
                                end, 3, 50) then LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 14, LumiaC.HornyHorn.selectedItemIndex - 1) LumiaM.Mfunc.ShowNotification('Applied Upgrade!') end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Vanity Plates" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 26)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 26, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 26, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil          
                                end
                            elseif curvopt1 == "Trim" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 27)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 27, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 27, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Ornaments" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 28)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 28, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 28, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Dashboard" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 29)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 29, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 29, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Dial" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 30)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 30, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 30, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil    
                                end
                            elseif curvopt1 == "Door Speaker" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 31)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 31, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 31, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil               
                                end
                            elseif curvopt1 == "Seats" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 32)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 32, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 32, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                               
                                end
                            elseif curvopt1 == "Steering Wheel" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 33)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 33, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 28, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Shifter Leavers" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 34)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 34, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 34, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil               
                                end
                            elseif curvopt1 == "Plaques" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 35)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 35, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 35, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                           
                                end
                            elseif curvopt1 == "Speakers" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 36)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 36, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 36, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                                
                                end
                            elseif curvopt1 == "Hydraulics" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 38)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 38, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 38, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil    
                                end
                            elseif curvopt1 == "Engine Block" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 39)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 39, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 39, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil    
                                end
                            elseif curvopt1 == "Air Filter" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 40)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 40, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 40, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil            
                                end
                            elseif curvopt1 == "Struts" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 41)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 41, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 41, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                 
                                end                         
                            elseif curvopt1 == "Arch Cover" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 42)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 42, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 42, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil   
                                end   
                            elseif curvopt1 == "Aerials" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 43)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 43, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 43, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil      
                                end   
                            elseif curvopt1 == "Trim 2" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 44)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 44, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 44, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                               
                                end
                            elseif curvopt1 == "Tank" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 45)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 45, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 45, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == "Windows" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 46)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 46, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 50 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 50
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 46, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end
                            elseif curvopt1 == "Livery" then
                                local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 48)
                                for j = 0, modCount, 1 do
                                    local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 48, j)
                                    LumiaF.config.vehoff = LumiaF.config.vehoff + 20
                                    if LumiaF.config.vehoff1 == 110 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 180
                                        LumiaF.config.vehoff4 = LumiaF.config.vehoff4 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff4
                                    elseif LumiaF.config.vehoff1 == 90 and LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 110
                                        LumiaF.config.vehoff3 = LumiaF.config.vehoff3 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff3
                                    elseif LumiaF.config.vehoff > 170 then
                                        LumiaF.config.vehoff1 = 90
                                        LumiaF.config.vehoff2 = LumiaF.config.vehoff2 + 20
                                        LumiaF.config.vehoff = LumiaF.config.vehoff2
                                    end
                                    if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                        namerino = 'Stock'
                                    else
                                        namerino = LumiaN.natives.GetLabelText(modName)
                                    end
                                    if LumiaM.Mfunc.Button(namerino, 3, LumiaF.config.vehoff, LumiaF.config.vehoff1) then
                                        LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 48, j)
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')      
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil                           
                                end
                            elseif curvopt1 == "Wheels" then
                                local isbikeyea = LumiaN.natives.GetVehicleClass(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
                                if isbikeyea == 8 then
                                    for i, paint in pairs(LumiaF.func.colorsClassic) do
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.WColor.items, paint.name)
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.WColor.values, paint.id)
                                    end
                                    local refresh = true
                                    LumiaN.natives.SetVehicleWheelType(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 6)
                                    local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 23)
                                    for j = 0, modCount, 1 do
                                        local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 23, j)
                                        if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                            namerino = 'Stock'
                                        else
                                            namerino = LumiaN.natives.GetLabelText(modName)
                                        end
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.WChanger1.items2, namerino)
                                    end
                                    if refresh then
                                        if LumiaM.Mfunc.ComboBox('Front Wheel', LumiaC.WChanger1.items2, LumiaC.WChanger1.currentItemIndex, LumiaC.WChanger1.selectedItemIndex, function(currentIndex, selectedIndex)
                                            LumiaC.WChanger1.currentItemIndex = currentIndex 
                                            LumiaC.WChanger1.selectedItemIndex = selectedIndex
                                        end, 3, 50) then LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 23, LumiaC.WChanger1.selectedItemIndex - 1) LumiaM.Mfunc.ShowNotification('Applied Upgrade!') end
                                        if LumiaM.Mfunc.ComboBox('Rear Wheel', LumiaC.WChanger1.items2, LumiaC.WChanger1.currentItemIndex2, LumiaC.WChanger1.selectedItemIndex2, function(currentIndex, selectedIndex)
                                            LumiaC.WChanger1.currentItemIndex2 = currentIndex 
                                            LumiaC.WChanger1.selectedItemIndex2 = selectedIndex
                                        end, 3, 70) then LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 24, LumiaC.WChanger1.selectedItemIndex2 - 1) end
                                        if LumiaM.Mfunc.ComboBox('Color', LumiaC.WColor.items, LumiaC.WColor.currentItemIndex, LumiaC.WColor.selectedItemIndex, function(currentIndex, selectedIndex)
                                            LumiaC.WColor.currentItemIndex = currentIndex 
                                            LumiaC.WColor.selectedItemIndex = selectedIndex
                                        end, 3, 90) then LumiaN.natives.SetVehicleExtraColours(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), nil, LumiaC.WColor.values[LumiaC.WColor.selectedItemIndex]) LumiaM.Mfunc.ShowNotification('Applied Upgrade!') end
                                    end
                                else
                                    local refresh = true
                                    if LumiaM.Mfunc.ComboBox('Wheel Type', LumiaC.WChanger.items, LumiaC.WChanger.currentItemIndex, LumiaC.WChanger.selectedItemIndex, function(currentIndex, selectedIndex)
                                        LumiaC.WChanger.currentItemIndex = currentIndex 
                                        LumiaC.WChanger.selectedItemIndex = selectedIndex
                                    end, 3, 50) then LumiaN.natives.SetVehicleWheelType(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), LumiaC.WChanger.values[LumiaC.WChanger.selectedItemIndex]) LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                        local modCount = LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 23)
                                        for i = 0, 1000, 1 do
                                            Lumia1.rE.LumTable.LumRemove(LumiaC.WChanger1.items)
                                            Lumia1.rE.LumTable.LumRemove(LumiaC.WColor.items)
                                            Lumia1.rE.LumTable.LumRemove(LumiaC.WColor.values)
                                            refresh = false
                                        end
                                    for j = 0, modCount, 1 do
                                        local modName = LumiaN.natives.GetModTextLabel(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 23, j)
                                        if LumiaN.natives.GetLabelText(modName) == 'NULL' then
                                            namerino = 'Stock'
                                        else
                                            namerino = LumiaN.natives.GetLabelText(modName)
                                        end
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.WChanger1.items, namerino)
                                    end
                                    for i, paint in pairs(LumiaF.func.colorsClassic) do
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.WColor.items, paint.name)
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.WColor.values, paint.id)
                                    end
                                    end
                                    if refresh then
                                        local pearlescentColor, wheelColor = LumiaN.natives.GetVehicleExtraColours(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
                                        if LumiaM.Mfunc.ComboBox('Wheels', LumiaC.WChanger1.items, LumiaC.WChanger1.currentItemIndex, LumiaC.WChanger1.selectedItemIndex, function(currentIndex, selectedIndex)
                                            LumiaC.WChanger1.currentItemIndex = currentIndex 
                                            LumiaC.WChanger1.selectedItemIndex = selectedIndex
                                        end, 3, 70) then LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 23, LumiaC.WChanger1.selectedItemIndex - 1) LumiaM.Mfunc.ShowNotification('Applied Upgrade!') end
                                        if LumiaM.Mfunc.ComboBox('Color', LumiaC.WColor.items, LumiaC.WColor.currentItemIndex, LumiaC.WColor.selectedItemIndex, function(currentIndex, selectedIndex)
                                            LumiaC.WColor.currentItemIndex = currentIndex 
                                            LumiaC.WColor.selectedItemIndex = selectedIndex
                                        end, 3, 90) then LumiaN.natives.SetVehicleExtraColours(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), pearlescentColor, LumiaC.WColor.values[LumiaC.WColor.selectedItemIndex]) LumiaM.Mfunc.ShowNotification('Applied Upgrade!') end
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == 'Respray' then
                                if LumiaM.Mfunc.Button('Refresh Colors', 3, 40, 160) then
                                    for i, classic in pairs(LumiaF.func.colorsClassic) do
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.ReColor.clasic, classic.name)
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.ReColor.clasicval, classic.id)
                                    end
                                    for i, matte in pairs(LumiaF.func.colorsMatte) do
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.ReColor.matte, matte.name)
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.ReColor.matteval, matte.id)
                                    end
                                    for i, metal in pairs(LumiaF.func.colorsMetal) do
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.ReColor.metal, metal.name)
                                        Lumia1.rE.LumTable.LumInsert(LumiaC.ReColor.metalval, metal.id)
                                    end
                                end
                                if LumiaM.Mfunc.ComboBox('Classic Colors', LumiaC.ReColor.clasic, LumiaC.ReColor.CIIc, LumiaC.ReColor.SIIc, function(currentIndex, selectedIndex)
                                    LumiaC.ReColor.CIIc = currentIndex 
                                    LumiaC.ReColor.SIIc = selectedIndex
                                end, 3, 50) then 
                                    local input = LumiaM.Mfunc.KeyboardInput("1 = Primary, 2 = Secondary, 3 = Pearlescent", "", 1)
                                    LumiaM.Mfunc.ShowNotification('Changed Color!')
                                    LumiaM.FunFunc.chosecolorchange(Lumia1.rE.LumToNum(input), LumiaC.ReColor.clasicval[LumiaC.ReColor.SIIc])
                                end
                                if LumiaM.Mfunc.ComboBox('Matte Colors', LumiaC.ReColor.matte, LumiaC.ReColor.CIImat, LumiaC.ReColor.SIImat, function(currentIndex, selectedIndex)
                                    LumiaC.ReColor.CIImat = currentIndex 
                                    LumiaC.ReColor.SIImat = selectedIndex
                                end, 3, 70) then 
                                    local input = LumiaM.Mfunc.KeyboardInput("1 = Primary, 2 = Secondary, 3 = Pearlescent", "", 1)
                                    LumiaM.Mfunc.ShowNotification('Changed Color!')
                                    LumiaM.FunFunc.chosecolorchange(Lumia1.rE.LumToNum(input), LumiaC.ReColor.matteval[LumiaC.ReColor.SIImat])
                                end
                                if LumiaM.Mfunc.ComboBox('Metals', LumiaC.ReColor.metal, LumiaC.ReColor.CIImet, LumiaC.ReColor.SIImet, function(currentIndex, selectedIndex)
                                    LumiaC.ReColor.CIImet = currentIndex 
                                    LumiaC.ReColor.SIImet = selectedIndex
                                end, 3, 90) then 
                                    local input = LumiaM.Mfunc.KeyboardInput("1 = Primary, 2 = Secondary, 3 = Pearlescent", "", 1)
                                    LumiaM.Mfunc.ShowNotification('Changed Color!')
                                    LumiaM.FunFunc.chosecolorchange(Lumia1.rE.LumToNum(input), LumiaC.ReColor.metalval[LumiaC.ReColor.SIImet])
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil
                                end
                            elseif curvopt1 == 'Lights' then
                                local vprop = LumiaF.func.VehProperties(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
                                local ismoto = LumiaN.natives.GetVehicleClass(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
                                if LumiaM.Mfunc.CheckBox('Xenon Lights', vprop['modXenon'], function(enabled) vprop['modXenon'] = enabled end, 3, 50) then
                                    LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                    if vprop['modXenon'] then
                                        LumiaN.natives.ToggleVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 22, true)
                                    else
                                        LumiaN.natives.ToggleVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 22, false)
                                    end
                                end
                                if ismoto == 8 then
                                else
                                    if LumiaM.Mfunc.CheckBox('Neon Lights', LumiaF.config.features.UnderGC, function(enabled) LumiaF.config.features.UnderGC = enabled end, 3, 70) then
                                        LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                        if LumiaF.config.features.UnderGC then
                                            LumiaN.natives.SetVehicleNeonLightEnabled(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0, true)
                                            LumiaN.natives.SetVehicleNeonLightEnabled(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 1, true)
                                            LumiaN.natives.SetVehicleNeonLightEnabled(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 2, true)
                                            LumiaN.natives.SetVehicleNeonLightEnabled(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 3, true)
                                        else
                                            LumiaN.natives.SetVehicleNeonLightEnabled(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0, false)
                                            LumiaN.natives.SetVehicleNeonLightEnabled(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 1, false)
                                            LumiaN.natives.SetVehicleNeonLightEnabled(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 2, false)
                                            LumiaN.natives.SetVehicleNeonLightEnabled(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 3, false)
                                        end
                                    end                                    
                                    if LumiaF.config.features.UnderGC then
                                        if LumiaM.Mfunc.ComboBox('Neon Colors', LumiaC.UnderGC.items, LumiaC.UnderGC.currentItemIndex, LumiaC.UnderGC.selectedItemIndex, function(currentIndex, selectedIndex)
                                            LumiaC.UnderGC.currentItemIndex = currentIndex 
                                            LumiaC.UnderGC.selectedItemIndex = selectedIndex
                                        end, 3, 90) then LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                            local r,g,b = Lumia1.rE.LumTable.LumUnPack(LumiaC.UnderGC.values[LumiaC.UnderGC.selectedItemIndex])
                                            LumiaN.natives.SetVehicleNeonLightsColour(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), r, g, b)
                                        end
                                    end
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end
                            elseif curvopt1 == 'Tints' then
                                if LumiaM.Mfunc.Button('None', 3, 50) then
                                    LumiaN.natives.SetVehicleWindowTint(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 4)
                                    LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if LumiaM.Mfunc.Button('Stock', 3, 70) then
                                    LumiaN.natives.SetVehicleWindowTint(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0)
                                    LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if LumiaM.Mfunc.Button('Light Smoke', 3, 90) then
                                    LumiaN.natives.SetVehicleWindowTint(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 3)
                                    LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if LumiaM.Mfunc.Button('Dark Smoke', 3, 110) then
                                    LumiaN.natives.SetVehicleWindowTint(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 2)
                                    LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if LumiaM.Mfunc.Button('Limo', 3, 130) then
                                    LumiaN.natives.SetVehicleWindowTint(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 1)
                                    LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if LumiaM.Mfunc.Button('Green', 3, 150) then
                                    LumiaN.natives.SetVehicleWindowTint(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 5)
                                    LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                                end
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end
                            else
                                if LumiaM.Mfunc.Button('Back', 3, 20, 175) then
                                    curvopt = nil 
                                end
                            end
                        else
                            LumiaF.func.DrawSomeText('Get In A Car Retard!', 4, false, LumiaF.config.MainX + 17, LumiaF.config.MainY + LumiaF.config.Men3Y + 190, LumiaF.config.PointerScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        end
                    else
                        if LumiaN.natives.IsPedInAnyVehicle(LumiaN.natives.GetPlayerPed(-1), false) then
                            local vprop = LumiaF.func.VehProperties(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
                            if LumiaM.Mfunc.ComboBox('Engine', LumiaC.EngUp.items, LumiaC.EngUp.currentItemIndex, LumiaC.EngUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                LumiaC.EngUp.currentItemIndex = currentIndex
                                LumiaC.EngUp.selectedItemIndex = selectedIndex
                            end, 3, 52.5) then
                                LumiaN.natives.SetVehicleModKit(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0)
                                LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 11, LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 11) - LumiaC.EngUp.values[LumiaC.EngUp.selectedItemIndex], false)
                                LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                            end
                            if LumiaM.Mfunc.ComboBox('Transmission', LumiaC.TransUp.items, LumiaC.TransUp.currentItemIndex, LumiaC.TransUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                LumiaC.TransUp.currentItemIndex = currentIndex 
                                LumiaC.TransUp.selectedItemIndex = selectedIndex
                            end, 3, 72.5) then
                                LumiaN.natives.SetVehicleModKit(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0) 
                                LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 13, LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 13) - LumiaC.TransUp.values[LumiaC.TransUp.selectedItemIndex], false)
                                LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                            end
                            if LumiaM.Mfunc.ComboBox('Brakes', LumiaC.BrakeUp.items, LumiaC.BrakeUp.currentItemIndex, LumiaC.BrakeUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                LumiaC.BrakeUp.currentItemIndex = currentIndex 
                                LumiaC.BrakeUp.selectedItemIndex = selectedIndex
                            end, 3, 92.5) then
                                LumiaN.natives.SetVehicleModKit(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0) 
                                LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 12, LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 12) - LumiaC.BrakeUp.values[LumiaC.BrakeUp.selectedItemIndex], false)
                                LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                            end
                            if LumiaM.Mfunc.ComboBox('Suspension', LumiaC.SusUp.items, LumiaC.SusUp.currentItemIndex, LumiaC.SusUp.selectedItemIndex, function(currentIndex, selectedIndex)
                                LumiaC.SusUp.currentItemIndex = currentIndex
                                LumiaC.SusUp.selectedItemIndex = selectedIndex
                            end, 3, 112.5) then
                                LumiaN.natives.SetVehicleModKit(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 0) 
                                LumiaN.natives.SetVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 15, LumiaN.natives.GetNumVehicleMods(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 15) - LumiaC.SusUp.values[LumiaC.SusUp.selectedItemIndex], false)
                                LumiaM.Mfunc.ShowNotification('Applied Upgrade!')
                            end
                            if LumiaM.Mfunc.CheckBox('Turbo Tuning', vprop['modTurbo'], function(enabled) vprop['modTurbo'] = enabled end, 3, 132.5) then
                                LumiaM.Mfunc.ShowNotification('Applied Upgrade!') 
                                if vprop['modTurbo'] then
                                    LumiaN.natives.ToggleVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 18, true)
                                else
                                    LumiaN.natives.ToggleVehicleMod(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 18, false)
                                end
                            end
                        else
                            LumiaF.func.DrawSomeText('Get In A Car Retard', 4, false, LumiaF.config.MainX + 17, LumiaF.config.MainY + LumiaF.config.Men3Y + 190, LumiaF.config.PointerScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        end
                    end
                
                else
                    if LumiaM.Mfunc.ComboBox('Quick Options', LumiaC.VQopt.items, LumiaC.VQopt.currentItemIndex, LumiaC.VQopt.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.VQopt.currentItemIndex = currentIndex 
                        LumiaC.VQopt.selectedItemIndex = selectedIndex
                    end, 3, 30) then 
                        LumiaC.VQopt.values[LumiaC.VQopt.selectedItemIndex](LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false)) if LumiaC.VQopt.items[LumiaC.VQopt.selectedItemIndex] == 'Repair' then LumiaM.Mfunc.ShowNotification('You Have Succesfuly ~g~Repaired ~w~Your Vehicle') elseif LumiaC.VQopt.items[LumiaC.VQopt.selectedItemIndex] == 'Clean' then LumiaM.Mfunc.ShowNotification('You Have Succesfuly ~g~Cleaned ~w~Your Vehicle') elseif LumiaC.VQopt.items[LumiaC.VQopt.selectedItemIndex] == 'Flip' then LumiaM.Mfunc.ShowNotification('You Have Succesfuly ~g~Fliped ~w~Your Vehicle') elseif LumiaC.VQopt.items[LumiaC.VQopt.selectedItemIndex] == 'Drive' then LumiaM.Mfunc.ShowNotification('You Are Now ~g~Driving ~w~Your Vehicle') elseif LumiaC.VQopt.items[LumiaC.VQopt.selectedItemIndex] == 'Delete' then LumiaM.Mfunc.ShowNotification('You Have Succesfuly ~g~Deleted ~w~Your Vehicle') end
                    end
                    if LumiaM.Mfunc.Button('Spawn A Car', 3, 50) then
                        local ModelName = LumiaM.Mfunc.KeyboardInput("Enter Vehicle Spawn Name", "", 100)
                        if LumiaN.natives.IsModelValid(ModelName) then
                            LumiaM.Mfunc.ShowNotification('You Have Succesfuly Spawned: '.. Lumia1.rE.LumString.LumUpper(ModelName) ..'')
                            LumiaM.FunFunc.spawnvehicle(ModelName)
                        else
                            LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(ModelName) ..' ~w~Is Not A Vehicle!')
                        end
                    end
                    if LumiaM.Mfunc.Button('Custom Car Finder', 3, 70) then
                        LumiaM.Mfunc.ShowNotification('Check Console For ~g~Cars')
                        print("----------- Car Finder -----------")
                        for k, v in pairs(LumiaF.func.CustomVs) do
                            if LumiaN.natives.IsModelValid(v.spawn) then
                                print('Name: '..v.name..'', 'Spawn: '..v.spawn..'')
                            end
                        end
                        print('----------------------------------')
                    end
                    if LumiaM.Mfunc.Button('Change Plate Text', 3, 90) then
                        local plateText = LumiaM.Mfunc.KeyboardInput("Enter new plate text", "", 8)
                        LumiaM.Mfunc.ShowNotification('You Have ~g~Succesfuly ~w~Set The Plate Text Too: '.. Lumia1.rE.LumString.LumUpper(plateText) ..'')
                        LumiaM.FunFunc.Swapdaplate(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), plateText)
                    end
                    if LumiaM.Mfunc.CheckBox('Vehicle Godmode', LumiaF.config.features.vehicularjesus, function(enabled) LumiaF.config.features.vehicularjesus = enabled end, 3, 110) then 
                        if LumiaF.config.features.vehicularjesus then LumiaM.Mfunc.ShowNotification('Vehicle Godmode ~g~ON') else LumiaM.Mfunc.ShowNotification('Vehicle Godmode ~r~OFF') end
                    end
                    if LumiaM.Mfunc.CheckBox('Make Vehicle Invisible', LumiaF.config.features.vehicularnosee, function(enabled) LumiaF.config.features.vehicularnosee = enabled end, 3, 130) then 
                        if LumiaF.config.features.vehicularnosee then LumiaM.Mfunc.ShowNotification('Vehicle Invisibility ~g~ON') else LumiaM.Mfunc.ShowNotification('Vehicle Invisibility ~r~OFF') end
                    end
                    if LumiaM.Mfunc.CheckBox('Under Water Car', LumiaF.config.features.UnderWaterCar, function(enabled) LumiaF.config.features.UnderWaterCar = enabled end, 3, 150) then 
                        if LumiaF.config.features.UnderWaterCar then LumiaM.Mfunc.ShowNotification('Under Water Car ~g~ON') else LumiaM.Mfunc.ShowNotification('Under Water Car ~r~OFF') end
                    end
                    if LumiaM.Mfunc.CheckBox('Kewl Plate Man', LumiaF.config.features.kewlplaterino, function(enabled) LumiaF.config.features.kewlplaterino = enabled end, 3, 170) then if LumiaF.config.features.kewlplaterino then LumiaM.Mfunc.ShowNotification('Kewl Plate ~g~ON') else LumiaM.Mfunc.ShowNotification('Kewl Plate ~r~OFF') end Lumia1.rE.LumThread(function() while LumiaF.config.features.kewlplaterino do LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "LUMIA MEN") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "UMIA MENU") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "MIA MENU ") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "IA MENU L") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "A MENU LU") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), " MENU LUM") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "MENU LUMI") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "ENU LUMIA") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "NU LUMIA ") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), "U LUMIA M") Lumia1.rE.LumWait(200) LumiaN.natives.SetVehicleNumberPlateText(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), " LUMIA ME") Lumia1.rE.LumWait(200) end end) end
                    if LumiaM.Mfunc.CheckBox('EZ Handeling', LumiaF.config.features.ezdrove, function(enabled) LumiaF.config.features.ezdrove = enabled end, 3, 190) then 
                        if LumiaF.config.features.ezdrove then LumiaM.Mfunc.ShowNotification('EZ Handeling ~g~ON') else LumiaM.Mfunc.ShowNotification('EZ Handeling ~r~OFF') end
                    end
                    if LumiaM.Mfunc.CheckBox('Speed Boosters Man', LumiaF.config.features.SpedBoostman, function(enabled) LumiaF.config.features.SpedBoostman = enabled end, 3, 210) then 
                        if LumiaF.config.features.SpedBoostman then LumiaM.Mfunc.ShowNotification('Speed Boosters ~g~ON') else LumiaM.Mfunc.ShowNotification('Speed Boosters ~r~OFF') end
                    end
                end
            end
                --WEAPON OPTIONS
            if LumiaF.config.Men4T then
                LumiaF.config.offset4 = LumiaF.config.offset4 + 155
                LumiaF.config.Men5Y = LumiaF.config.Men5Y + LumiaF.config.offset4
                LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men4Y + 180, 255, LumiaF.config.offset4, LumiaF.config.CSecondary2.r, LumiaF.config.CSecondary2.g, LumiaF.config.CSecondary2.b, LumiaF.config.CSecondary2.a)
                if LumiaM.Mfunc.ComboBox('', LumiaC.Mopt3.items, LumiaC.Mopt3.currentItemIndex, LumiaC.Mopt3.selectedItemIndex, function(currentIndex, selectedIndex)
                    LumiaC.Mopt3.currentItemIndex = currentIndex 
                    LumiaC.Mopt3.selectedItemIndex = selectedIndex
                end, 4, 10, -10) then end
                if LumiaC.Mopt3.values[LumiaC.Mopt3.selectedItemIndex] then
                    if LumiaM.Mfunc.Button('Weapon Spawner', 4, 30) then
                        local stupidped = LumiaN.natives.PlayerPedId()				
                        local wepnamegay = LumiaM.Mfunc.KeyboardInput('Weapon Name', 'weapon_', 100)		
                        local ammogay = LumiaM.Mfunc.KeyboardInput('Ammo Count', '', 1000)
                        if wepnamegay and LumiaN.natives.IsWeaponValid(wepnamegay) then
                            LumiaM.Mfunc.ShowNotification('You Have ~g~Succsesfuly ~w~Spawned: '.. Lumia1.rE.LumString.LumUpper(wepnamegay) .. ' With '.. Lumia1.rE.LumString.LumUpper(ammogay) ..' Bullets')					
                            LumiaN.natives.GiveWeaponToPed(stupidped, Lumia1.rE.LumHash(wepnamegay), Lumia1.rE.LumToNum(ammogay), false, false)				
                        else
                            LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(wepnamegay) ..' ~w~Is Not A Valid Weapon!')
                        end
                    end
                    if LumiaM.Mfunc.Button('Refill Ammo', 4, 50) then
                        LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Refilled Your ~b~Ammo')
                        LumiaN.natives.AddAmmoToPed(LumiaN.natives.PlayerPedId(), LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.GetPlayerPed(-1)), 250)
                    end
                    if LumiaM.Mfunc.CheckBox('Infinate Ammo', LumiaF.config.features.GunNevaStop, function(enabled) LumiaF.config.features.GunNevaStop = enabled end, 4, 70) then if LumiaF.config.features.GunNevaStop then LumiaM.Mfunc.ShowNotification('Infinate Ammo ~g~ON') else LumiaM.Mfunc.ShowNotification('Infinate Ammo ~r~OFF') end end
                    if LumiaM.Mfunc.CheckBox('Explosive Ammo', LumiaF.config.features.Gungokaboom, function(enabled) LumiaF.config.features.Gungokaboom = enabled end, 4, 90) then if LumiaF.config.features.Gungokaboom then LumiaM.Mfunc.ShowNotification('Explosive Ammo ~g~ON') else LumiaM.Mfunc.ShowNotification('Explosive Ammo ~r~OFF') end end
                    if LumiaM.Mfunc.CheckBox('Teleport Gun', LumiaF.config.features.GunGoMoverino, function(enabled) LumiaF.config.features.GunGoMoverino = enabled end, 4, 110) then if LumiaF.config.features.GunGoMoverino then LumiaM.Mfunc.ShowNotification('Teleport Gun ~g~ON') else LumiaM.Mfunc.ShowNotification('Teleport Gun ~r~OFF') end end
                    if LumiaM.Mfunc.ComboBox('Weapon Attachments', LumiaC.Attachmentyea.items, LumiaC.Attachmentyea.currentItemIndex, LumiaC.Attachmentyea.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.Attachmentyea.currentItemIndex = currentIndex
                        LumiaC.Attachmentyea.selectedItemIndex = selectedIndex
                    end, 4, 130) then if LumiaM.FunFunc.attachmentyaya(LumiaC.Attachmentyea.values[LumiaC.Attachmentyea.selectedItemIndex]) == 1 then LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Added Attachment') elseif LumiaM.FunFunc.attachmentyaya(LumiaC.Attachmentyea.values[LumiaC.Attachmentyea.selectedItemIndex]) == 2 then LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Removed Attachment') elseif LumiaM.FunFunc.attachmentyaya(LumiaC.Attachmentyea.values[LumiaC.Attachmentyea.selectedItemIndex]) == 3 then LumiaM.Mfunc.ShowNotification("This Attachment ~r~Doesnt Fit ~w~This Weapon") end end
                    if LumiaM.Mfunc.ComboBox('Damage Multiplier', LumiaC.DmgMultiTasker.items, LumiaC.DmgMultiTasker.currentItemIndex, LumiaC.DmgMultiTasker.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.DmgMultiTasker.currentItemIndex = currentIndex
                        LumiaC.DmgMultiTasker.selectedItemIndex = selectedIndex
                    end, 4, 150) then LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Changed The Damage Multiplier') end
                else
                    if LumiaM.Mfunc.CheckBox('Aimbot', LumiaF.config.features.AimbotM, function(enabled) LumiaF.config.features.AimbotM = enabled end, 4, 30) then if LumiaF.config.features.AimbotM then LumiaM.Mfunc.ShowNotification('Master Aimbot Switch ~g~ON') else LumiaM.Mfunc.ShowNotification('Master Aimbot Switch ~r~OFF') end end
                    if LumiaF.config.features.AimbotM then
                        -- Whitelist
                        LumiaF.func.DrawRectangle(LumiaF.config.MainX + 260, LumiaF.config.MainY + 140 + LumiaF.config.Men4Y, 200, 40, LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        LumiaF.func.DrawSomeText('Aimbot White List', 4, false, LumiaF.config.MainX + 304, LumiaF.config.MainY + LumiaF.config.Men4Y + 145, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.config.Men2tOff = -7
                        LumiaF.config.Men2mbOff = 0
                        local playerlist = LumiaN.natives.GetActivePlayers()
                        if LumiaF.config.SelecOP == nil then
                            LumiaF.config.SelecOP = playerlist[1]
                        end
                        Lumia1.rE.LumTable.LumSort(playerlist, function(a, b)
                            return (LumiaN.natives.GetPlayerServerId(a) < LumiaN.natives.GetPlayerServerId(b))
                        end)
                        for i = 1, #playerlist do
                            local currPlayer = playerlist[i]
                            LumiaF.config.Men2tOff = LumiaF.config.Men2tOff + 17
                            LumiaF.config.Men2mbOff = LumiaF.config.Men2mbOff + 17.3
                            if LumiaM.Mfunc.Button('ID: ' .. LumiaN.natives.GetPlayerServerId(currPlayer) .. '  ' .. LumiaN.natives.GetPlayerName(currPlayer) .. '', 4, LumiaF.config.Men2tOff, 270) then
                                if not LumiaF.func.Random_stringcontains(LumiaF.config.aimbotfriend, LumiaN.natives.GetPlayerServerId(currPlayer)) then
                                    Lumia1.rE.LumTable.LumInsert(LumiaF.config.aimbotfriend, LumiaN.natives.GetPlayerServerId(currPlayer))
                                else
                                    LumiaF.func.table_removekey(LumiaF.config.aimbotfriend, LumiaN.natives.GetPlayerServerId(currPlayer))
                                end
                                LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Added A Player To The Aimbot Whitelist')
                            end
                            if LumiaF.func.Random_stringcontains(LumiaF.config.aimbotfriend, LumiaN.natives.GetPlayerServerId(currPlayer)) then
                                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 35 + 255 - 6.5, LumiaF.config.MainY + LumiaF.config.Men4Y + 170 + LumiaF.config.Men2tOff + 10.5 - 0.5, 25, 25, 0.0, "mpleaderboard", "leaderboard_votetick_icon", LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            end
                        end
                        LumiaF.func.DrawRectangle(LumiaF.config.MainX + 260, LumiaF.config.MainY + 180 + LumiaF.config.Men4Y, 200, LumiaF.config.Men2mbOff, LumiaF.config.CSecondary2.r, LumiaF.config.CSecondary2.g, LumiaF.config.CSecondary2.b, LumiaF.config.CSecondary2.a)
                        -- Whitelist end
                        if LumiaM.Mfunc.CheckBox('Target Peds', LumiaF.config.features.ABTargetPed, function(enabled) LumiaF.config.features.ABTargetPed = enabled end, 4, 50) then if LumiaF.config.features.ABTargetPed then LumiaM.Mfunc.ShowNotification('The Aimbot ~g~Will Now ~w~Target Peds') else LumiaM.Mfunc.ShowNotification('The Aimbot ~r~Will Not ~w~Target Peds') end end
                        if LumiaM.Mfunc.CheckBox('Target Players', LumiaF.config.features.ABTargetPlayers, function(enabled) LumiaF.config.features.ABTargetPlayers = enabled end, 4, 70) then if LumiaF.config.features.ABTargetPlayers then LumiaM.Mfunc.ShowNotification('The Aimbot ~g~Will Now ~w~Target Players') else LumiaM.Mfunc.ShowNotification('The Aimbot ~r~Will Not ~w~Target Players') end end
                        if LumiaM.Mfunc.CheckBox('Needs Line Of Sight', LumiaF.config.features.ABNeedLOS, function(enabled) LumiaF.config.features.ABNeedLOS = enabled end, 4, 90) then if LumiaF.config.features.ABNeedLOS then LumiaM.Mfunc.ShowNotification('The Aimbot ~g~Will Now ~w~Need Line Of Sight') else LumiaM.Mfunc.ShowNotification('The Aimbot ~r~Will Not ~w~Need Line Of Sight') end end
                        if LumiaM.Mfunc.CheckBox('Draw Fov', LumiaF.config.features.ABDrawFOV, function(enabled) LumiaF.config.features.ABDrawFOV = enabled end, 4, 110) then if LumiaF.config.features.ABDrawFOV then LumiaM.Mfunc.ShowNotification('Draw FOV ~g~ON') else LumiaM.Mfunc.ShowNotification('Draw FOV ~r~OFF') end end
                        if LumiaM.Mfunc.CheckBox('Draw Target', LumiaF.config.features.ABDrawT, function(enabled) LumiaF.config.features.ABDrawT = enabled end, 4, 130) then if LumiaF.config.features.ABDrawT then LumiaM.Mfunc.ShowNotification('Draw Target ~g~ON') else LumiaM.Mfunc.ShowNotification('Draw Target ~r~OFF') end end
                        if LumiaM.Mfunc.Button('Set Fov:', 4, 30, 100) then
                            LumiaF.config.aimbotfov = LumiaM.Mfunc.KeyboardInput('FOV (ONLY NUMBERS)', '', 100)
                            LumiaM.Mfunc.ShowNotification('The FOV Has Been ~g~Succsesfuly ~w~Set To: '.. LumiaF.config.aimbotfov ..'')
                        end
                        if LumiaM.Mfunc.Button('Distance:', 4, 50, 100) then
                            LumiaF.config.AbDist = LumiaM.Mfunc.KeyboardInput('Distace (ONLY NUMBERS)', '', 100)
                            LumiaM.Mfunc.ShowNotification('The Distace Has Been ~g~Succsesfuly ~w~Set To: '.. LumiaF.config.AbDist ..'')
                        end
                        LumiaF.func.DrawSomeText(LumiaF.config.aimbotfov, 4, false, LumiaF.config.MainX + 65 + 90, LumiaF.config.MainY + LumiaF.config.Men4Y + 200, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawSomeText(LumiaF.config.AbDist, 4, false, LumiaF.config.MainX + 67 + 95, LumiaF.config.MainY + LumiaF.config.Men4Y + 220, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        if LumiaF.config.Keybinds.aimbotKn == -1 then LumiaF.config.Keybinds.aimbotKn = 'NONE' end
                        if LumiaM.Mfunc.ComboBox('Target Bone', LumiaC.ABBone.items, LumiaC.ABBone.currentItemIndex, LumiaC.ABBone.selectedItemIndex, function(currentIndex, selectedIndex)
                            LumiaC.ABBone.currentItemIndex = currentIndex
                            LumiaC.ABBone.selectedItemIndex = selectedIndex
                        end, 4, 70, 100) then LumiaM.Mfunc.ShowNotification('You Have ~g~Succesfuly ~w~Changed The Aimbot Bone') end
                        if LumiaM.Mfunc.Button('Aimbot Hold Key: ', 4, 90, 100) then
                            LumiaF.config.aimbotbind = true
                        end
                        LumiaF.func.DrawSomeText(LumiaF.config.Keybinds.aimbotKn, 4, false, LumiaF.config.MainX + 70 + 123, LumiaF.config.MainY + LumiaF.config.Men4Y + 260, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    end
                end
            end
                --MISC
            if LumiaF.config.Men5T then
                if LumiaM.Mfunc.ComboBox('', LumiaC.Mopt4.items, LumiaC.Mopt4.currentItemIndex, LumiaC.Mopt4.selectedItemIndex, function(currentIndex, selectedIndex)
                    LumiaC.Mopt4.currentItemIndex = currentIndex 
                    LumiaC.Mopt4.selectedItemIndex = selectedIndex
                end, 5, 10, -10) then end
                if LumiaC.Mopt4.values[LumiaC.Mopt4.selectedItemIndex] == 1 then
                    if LumiaM.Mfunc.ComboBox('', LumiaC.Mopt6.items, LumiaC.Mopt6.currentItemIndex, LumiaC.Mopt6.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.Mopt6.currentItemIndex = currentIndex 
                        LumiaC.Mopt6.selectedItemIndex = selectedIndex
                    end, 5, 30, -10) then end
                    if LumiaC.Mopt6.values[LumiaC.Mopt6.selectedItemIndex] == 1 then
                        LumiaF.config.offset5 = LumiaF.config.offset5 + 95
                        LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men5Y + 220, 255, LumiaF.config.offset5, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                        if LumiaM.Mfunc.CheckBox('Player Blips', LumiaF.config.features.PBlips, function(enabled) LumiaF.config.features.PBlips = enabled end, 5, 50) then 
                            if LumiaF.config.features.PBlips then
                                LumiaM.Mfunc.ShowNotification('Player Blips ~g~ON')
                            else
                                LumiaM.Mfunc.ShowNotification('Player Blips ~r~OFF')
                            end
                            Lumia1.rE.LumThread(function()
                                if LumiaF.config.features.PBlips then
                                    for id = 0, 256 do
                                        if LumiaN.natives.NetworkIsPlayerActive(id) and LumiaN.natives.GetPlayerPed(id) then
                                            local ped = LumiaN.natives.GetPlayerPed(id)
                                            local blip = LumiaN.natives.GetBlipFromEntity(ped)
                                            if not LumiaN.natives.DoesBlipExist(blip) then
                                                local blip = LumiaN.natives.AddBlipForEntity(ped)
                                                LumiaN.natives.SetBlipSprite(blip, 1)
                                                LumiaN.natives.ShowHeadingIndicatorOnBlip(blip, true )
                                            else 
                                                local blipSprite = LumiaN.natives.GetBlipSprite(blip)
                                                if not LumiaN.natives.GetEntityHealth(ped) then
                                                    if blipSprite ~= 274 then
                                                        LumiaN.natives.SetBlipSprite(blip, 274)
                                                        LumiaN.natives.ShowHeadingIndicatorOnBlip(blip, false )
                                                    end
                                                else
                                                    LumiaN.natives.HideNumberOnBlip(blip)
                                                    if blipSprite ~= 1 then
                                                        LumiaN.natives.SetBlipSprite(blip, 1)
                                                        LumiaN.natives.ShowHeadingIndicatorOnBlip(blip, true)
                                                    end
                                                end
                                                LumiaN.natives.SetBlipRotation(blip, Lumia1.rE.LumMath.LumCeli(LumiaN.natives.GetEntityHeading(veh)))
                                                LumiaN.natives.SetBlipNameToPlayerName(blip, id)
                                                LumiaN.natives.SetBlipScale(blip, 0.85)
                                                if LumiaN.natives.IsPauseMenuActive() then
                                                    LumiaN.natives.SetBlipAlpha(blip, 255)
                                                else
                                                    local x1, y1 = Lumia1.rE.LumTable.LumUnPack(LumiaN.natives.GetEntityCoords(LumiaN.natives.GetPlayerPed(-1), true))
                                                    local x2, y2 = Lumia1.rE.LumTable.LumUnPack(LumiaN.natives.GetEntityCoords(LumiaN.natives.GetPlayerPed(id), true))
                                                    local distance = (Lumia1.rE.LumMath.LumFloor(Lumia1.rE.LumMath.LumAbs(Lumia1.rE.LumMath.LumSqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
                                                    if distance < 0 then
                                                        distance = 0
                                                    elseif distance > 255 then
                                                        distance = 255
                                                    end
                                                    LumiaN.natives.SetBlipAlpha(blip, distance)
                                                end
                                            end
                                        end
                                    end
                                else
                                    for id = 0, 256 do
                                        local ped = LumiaN.natives.GetPlayerPed(id)
                                        local blip = LumiaN.natives.GetBlipFromEntity(ped)
                                        if LumiaN.natives.DoesBlipExist(blip) then
                                            LumiaN.natives.RemoveBlip(blip)
                                        end
                                    end
                                end
                            end)
                        end
                        if LumiaM.Mfunc.CheckBox('Always Bright (Client Sided)', LumiaF.config.features.Alwaysbright, function(enabled) LumiaF.config.features.Alwaysbright = enabled end, 5, 70) then
                            if LumiaF.config.features.Alwaysbright then
                                LumiaM.Mfunc.ShowNotification('Always Bright ~g~ON')
                                LumiaN.natives.SetTransitionTimecycleModifier("int_lesters", 5.0)
                            else
                                LumiaM.Mfunc.ShowNotification('Always Bright ~r~OFF')
                                LumiaN.natives.ClearTimecycleModifier()
                            end
                        end
                        if LumiaM.Mfunc.CheckBox('No Rain (Client Sided)', LumiaF.config.features.NoRain, function(enabled) LumiaF.config.features.NoRain = enabled end, 5, 90) then if LumiaF.config.features.NoRain then LumiaM.Mfunc.ShowNotification('No Rain ~g~ON') else LumiaM.Mfunc.ShowNotification('No Rain ~r~OFF') end end
                    elseif LumiaC.Mopt6.values[LumiaC.Mopt6.selectedItemIndex] == 2 then
                        LumiaF.config.offset5 = LumiaF.config.offset5 + 55
                        LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men5Y + 220, 255, LumiaF.config.offset5, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                        if LumiaM.Mfunc.CheckBox('ESP (MAIN)', LumiaF.config.features.gayesp, function(enabled) LumiaF.config.features.gayesp = enabled end, 5, 50) then if LumiaF.config.features.gayesp then LumiaM.Mfunc.ShowNotification('ESP Main Switch ~g~ON') else LumiaM.Mfunc.ShowNotification('ESP Main Switch ~r~OFF') end end
                        if LumiaF.config.features.gayesp then
                            LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men5Y + 220 + 65, 255, 80, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                            if LumiaM.Mfunc.CheckBox('Show ID', LumiaF.config.features.gayespid, function(enabled) LumiaF.config.features.gayespid = enabled end, 5, 70) then if LumiaF.config.features.gayespid then LumiaM.Mfunc.ShowNotification('Show ID ~g~ON') else LumiaM.Mfunc.ShowNotification('Show ID ~r~OFF') end end
                            if LumiaM.Mfunc.CheckBox('Show Name', LumiaF.config.features.gayespname, function(enabled) LumiaF.config.features.gayespname = enabled end, 5, 90) then if LumiaF.config.features.gayespname then LumiaM.Mfunc.ShowNotification('Show ID ~g~ON') else LumiaM.Mfunc.ShowNotification('Show ID ~r~OFF') end end
                            if LumiaM.Mfunc.CheckBox('Show Distance', LumiaF.config.features.gayespdistance, function(enabled) LumiaF.config.features.gayespdistance = enabled end, 5, 110) then if LumiaF.config.features.gayespdistance then LumiaM.Mfunc.ShowNotification('Show Distance ~g~ON') else LumiaM.Mfunc.ShowNotification('Show Distance ~r~OFF') end end
                            if LumiaM.Mfunc.CheckBox('Show Vehicle', LumiaF.config.features.gayespvehicle, function(enabled) LumiaF.config.features.gayespvehicle = enabled end, 5, 130) then if LumiaF.config.features.gayespvehicle then LumiaM.Mfunc.ShowNotification('Show Vehicle ~g~ON') else LumiaM.Mfunc.ShowNotification('Show Vehicle ~r~OFF') end end
                            if LumiaM.Mfunc.Button('Distance: ', 5, 50, 90) then 
                                local espdistc = LumiaM.Mfunc.KeyboardInput('ESP Distance (NUMBERS ONLY)', '', 4)
                                LumiaF.config.ESPDist = Lumia1.rE.LumToNum(espdistc)
                                LumiaM.Mfunc.ShowNotification('The ESP Distance Has ~g~Succsesfuly ~w~Been Set To: '.. espdistc ..'')
                            end
                            LumiaF.func.DrawSomeText(LumiaF.config.ESPDist, 4, false, LumiaF.config.MainX + 55 + 95, LumiaF.config.MainY + LumiaF.config.Men5Y + 260, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        end
                    end
                elseif LumiaC.Mopt4.values[LumiaC.Mopt4.selectedItemIndex] == 2 then
                    LumiaF.config.offset5 = LumiaF.config.offset5 + 175
                    LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men5Y + 220, 255, LumiaF.config.offset5, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                    if LumiaM.Mfunc.CheckBox('Server Lagger (Vehicle)', LumiaF.config.features.Serverlagveh, function(enabled) LumiaF.config.features.Serverlagveh = enabled end, 5, 30) then if LumiaF.config.features.Serverlagveh then LumiaM.Mfunc.ShowNotification('Server Lagger (Vehicle) ~g~ON') else LumiaM.Mfunc.ShowNotification('Server Lagger (Vehicle) ~r~OFF') end end
                    if LumiaM.Mfunc.CheckBox('Server Lagger (Animal)', LumiaF.config.features.Serverlagani, function(enabled) LumiaF.config.features.Serverlagani = enabled end, 5, 50) then if LumiaF.config.features.Serverlagani then LumiaM.Mfunc.ShowNotification('Server Lagger (Animal) ~g~ON') else LumiaM.Mfunc.ShowNotification('Server Lagger (Animal) ~r~OFF') end end
                    if LumiaM.Mfunc.CheckBox('Taze All (Loop)', LumiaF.config.features.tazeloopall, function(enabled) LumiaF.config.features.tazeloopall = enabled end, 5, 70) then if LumiaF.config.features.tazeloopall then LumiaM.Mfunc.ShowNotification('Taze Loop ~g~ON') else LumiaM.Mfunc.ShowNotification('Taze Loop ~r~OFF') end end
                    if LumiaM.Mfunc.CheckBox('UD Explode All (Loop)', LumiaF.config.features.udboomall, function(enabled) LumiaF.config.features.udboomall = enabled end, 5, 90) then if LumiaF.config.features.udboomall then LumiaM.Mfunc.ShowNotification('UD Expload Loop ~g~ON') else LumiaM.Mfunc.ShowNotification('UD Expload Loop ~r~OFF') end end
                    if LumiaM.Mfunc.Button('UD Cage All', 5, 110) then 
                        local playerlist = LumiaN.natives.GetActivePlayers()
                        for i = 1, #playerlist do
                            local ped = playerlist[i]
                            LumiaM.FunFunc.cagerino(ped)
                        end
                        LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Caged Everyone')
                    end
                    if LumiaM.Mfunc.Button('Swastica All', 5, 130) then 
                        local playerlist = LumiaN.natives.GetActivePlayers()
                        for i = 1, #playerlist do
                            local ped = playerlist[i]
                            LumiaM.FunFunc.swaz(ped)
                        end
                        LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Attached A Swastica To Everyone')
                    end
                    if LumiaM.Mfunc.Button('Jew Rape All', 5, 150) then
                        local jewtable = {'a_m_m_hasjew_01', 'a_m_y_hasjew_01'}
                        local playerlist = LumiaN.natives.GetActivePlayers()
                        for i = 1, #playerlist do
                            local ped = playerlist[i]
                            if not LumiaN.natives.HasModelLoaded('a_m_y_hasjew_01') then
                                LumiaN.natives.RequestModel('a_m_y_hasjew_01')
                                Lumia1.rE.LumWait(0)
                            end
                            if not LumiaN.natives.HasModelLoaded('a_m_m_hasjew_01') then
                                LumiaN.natives.RequestModel('a_m_m_hasjew_01')
                                Lumia1.rE.LumWait(0)
                            end
                            if not LumiaN.natives.HasAnimDictLoaded('rcmpaparazzo_2') then
                                LumiaN.natives.RequestAnimDict('rcmpaparazzo_2')
                                Lumia1.rE.LumWait(0)
                            end
                                if LumiaN.natives.IsPedInAnyVehicle(LumiaN.natives.GetPlayerPed(ped), true) then
                                    local veh = LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(ped), true)
                                        if not LumiaN.natives.NetworkHasControlOfEntity(veh) then
                                            LumiaN.natives.NetworkRequestControlOfEntity(veh)
                                            Lumia1.rE.LumWait(0)
                                        end
                                    LumiaN.natives.SetEntityAsMissionEntity(veh, true, true)
                                    LumiaN.natives.DeleteVehicle(veh)
                                    LumiaN.natives.DeleteEntity(veh)
                                end
                                local Spacing = -0.2
                            for k, v in pairs(jewtable) do
                                local x, y, z = Lumia1.rE.LumTable.LumUnPack(LumiaN.natives.GetEntityCoords(LumiaN.natives.GetPlayerPed(ped), true))
                                local JewPed = LumiaN.natives.CreatePed(4, Lumia1.rE.LumHash(v), x, y, z, 0.0, true, false)
                                LumiaN.natives.SetEntityAsMissionEntity(JewPed, true, true)
                                LumiaN.natives.AttachEntityToEntity(JewPed, LumiaN.natives.GetPlayerPed(ped), 4103, 11816, Spacing, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                                LumiaN.natives.ClearPedTasks(LumiaN.natives.GetPlayerPed(ped))
                                LumiaN.natives.TaskPlayAnim(LumiaN.natives.GetPlayerPed(ped), 'rcmpaparazzo_2', 'shag_loop_poppy', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                                LumiaN.natives.SetPedKeepTask(JewPed)
                                LumiaN.natives.TaskPlayAnim(JewPed, 'rcmpaparazzo_2', 'shag_loop_a', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                                LumiaN.natives.SetEntityInvincible(JewPed, true)
                                Spacing = Spacing - 0.4
                            end     
                        end
                        LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Jew Raped Everyone')
                    end
                    if LumiaM.Mfunc.Button('KKK On Grove Street', 5, 170) then
                        LumiaM.FunFunc.realkkk()
                        LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Spawned KKK Meeting On Grove Street')
                    end
                elseif LumiaC.Mopt4.values[LumiaC.Mopt4.selectedItemIndex] == 3 then
                    local trigy = 50
                    if LumiaM.Mfunc.ComboBox('', LumiaC.TrigOpts.items, LumiaC.TrigOpts.currentItemIndex, LumiaC.TrigOpts.selectedItemIndex, function(currentIndex, selectedIndex)
                        LumiaC.TrigOpts.currentItemIndex = currentIndex
                        LumiaC.TrigOpts.selectedItemIndex = selectedIndex
                    end, 5, 30, -10) then end
                    if LumiaC.TrigOpts.values[LumiaC.TrigOpts.selectedItemIndex] == 'ftrigs' then
                        if Lumia1.TR['esx_status_refillstatus'] then
                            if LumiaM.Mfunc.Button('Refill Food and Water', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(false, Lumia1.TR['esx_status_refillstatus'], 'hunger', 1000000)
                                LumiaF.func.TriggerCustomEvent(false, Lumia1.TR['esx_status_refillstatus'], 'thirst', 1000000)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Refilled Your Hunger And Thirst')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['police_exploit'] then
                            if LumiaM.Mfunc.Button('Message Spammer (Everyone)', 5, trigy) then
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Loop', '', 3)
                                local message = LumiaM.Mfunc.KeyboardInput('Message', '', 10000)
                                Lumia1.rE.LumThread(function()
                                    for i = 1, Lumia1.rE.LumToNum(amount) do
                                        LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['police_exploit'], -1, ''..i..' '..message..'')
                                        Lumia1.rE.LumWait(60)
                                    end
                                    return
                                end)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Sent Your Messages')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['send_bill'] then
                            if LumiaM.Mfunc.Button('Send Bill (Everyone)', 5, trigy) then
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Send', '', 3)
                                local message = LumiaM.Mfunc.KeyboardInput('Message', '', 10000)
                                local amount2 = LumiaM.Mfunc.KeyboardInput('Amount User Pays', '', 1000)
                                Lumia1.rE.LumThread(function()
                                    local activeplayers = LumiaN.natives.GetActivePlayers()
                                    for k, v in pairs(activeplayers) do
                                        for i = 1, amount do
                                            Lumia1.rE.LumWait(60)
                                            LumiaF.func.TriggerCustomEvent(true, Lumia1.TR["send_bill"], LumiaN.natives.GetPlayerServerId(v), "Lumia V2", message, amount2)
                                        end
                                        Lumia1.rE.LumWait(100)
                                    end
                                    return
                                end)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Sent Bills To Everyone')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['qalle_jailer'] then
                            if LumiaM.Mfunc.Button('Jail (Specific / All)', 5, trigy) then
                                local person = LumiaM.Mfunc.KeyboardInput('Server Id (-1 for all)', '', 4)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['qalle_jailer'], Lumia1.rE.LumToNum(person), 1000000, "Lumia v2 on top!")
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Jailed Someone')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['qalle_unjail'] then
                            if LumiaM.Mfunc.Button('Un-Jail (Yourself)', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['qalle_unjail'], 1)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Unjailed Yourself')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['community'] then
                            if LumiaM.Mfunc.Button('Community Service (Specific / All)', 5, trigy) then
                                local person = LumiaM.Mfunc.KeyboardInput('Server Id (-1 for all)', '', 4)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['community'], Lumia1.rE.LumToNum(person), 100000)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Sent Someone To Community Service')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['communityservice_finishservice'] then
                            if LumiaM.Mfunc.Button('Finish Community Service (Yourself)', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['community'], -1)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Finished Your Community Service')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['dmv_getlicense'] then
                            if LumiaM.Mfunc.Button("Add All Driving Licences (Might Not Work In All Servers)", 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['dmv_getlicense'], 'dmv')
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['dmv_getlicense'], 'drive')
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['dmv_getlicense'], 'drive_bike')
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['dmv_getlicense'], 'drive_truck')
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself All Driving Licences')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['gcphone_posttweet'] and Lumia1.TR['gcphone_createtwiteracc'] and Lumia1.TR['gcphone_logintwitteracc'] then
                            if LumiaM.Mfunc.Button("Spam Twitter (Custom Amount)", 5, trigy) then
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Send', '', 3)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['gcphone_createtwiteracc'], 'Lumia', 'Lumia123', 'https://cdn.discordapp.com/avatars/775826450988400700/aa48e42643df7ca267f424f0165b93af.png?size=128')
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['gcphone_logintwitteracc'], 'Lumia', 'Lumia123')
                                Lumia1.rE.LumThread(function()
                                    for i = 1, Lumia1.rE.LumToNum(amount) do
                                        Lumia1.rE.LumWait(60)
                                        LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['gcphone_posttweet'], 'Lumia', 'Lumia123', 'Lumia V2 Is Indeed the Best Menu!')
                                    end
                                    return
                                end)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Fucked Twitter')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['carry_exploit'] then
                            if LumiaM.Mfunc.Button('Carry Everyone (Big Meme Lmao)', 5, trigy) then
                                Lumia1.rE.LumThread(function()
                                    for k, v in pairs(LumiaN.natives.GetActivePlayers()) do
                                        if LumiaN.natives.GetPlayerPed(v) ~= LumiaN.natives.GetPlayerPed(-1) then 
                                            LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['carry_exploit'], LumiaN.natives.GetPlayerPed(v), 'missfinale_c2mcs_1', 'nm', 'fin_c2_mcs_1_camman', 'firemans_carry', 0.15, 0.27, 0.63, LumiaN.natives.GetPlayerServerId(v), 100000, 0.0, 49, 33, 1)
                                            Lumia1.rE.LumWait(10)
                                        end
                                    end
                                    return
                                end)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Carried Everyone')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['Hostage_Exploit'] then
                            if LumiaM.Mfunc.Button('Take Everyone Hostage (Big Meme Lmao)', 5, trigy) then
                                Lumia1.rE.LumThread(function()
                                    for k, v in pairs(LumiaN.natives.GetActivePlayers()) do
                                        if LumiaN.natives.GetPlayerPed(v) ~= LumiaN.natives.GetPlayerPed(-1) then 
                                            LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['Hostage_Exploit'], LumiaN.natives.GetPlayerPed(v), 'anim@gangops@hostage@', 'anim@gangops@hostage@', 'perp_idle', 'victim_idle', 0.11, -0.24, 0.0, LumiaN.natives.GetPlayerServerId(v), 100000, 0.0, 49, 49, 50, true)
                                            Lumia1.rE.LumWait(10)
                                        end
                                    end
                                    return
                                end)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Took Everyone Hostige')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['delete_DB'] then
                            if LumiaM.Mfunc.Button('Delete Database (Big Meme Lmao)', 5, trigy) then
                                Lumia1.rE.LumThread(function()
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
                                    for key, value in pairs(trashTables) do
                                        Lumia1.rE.LumWait(25)
                                        LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['delete_DB'], '\';TRUNCATE TABLE '..value..';-- /')
                                    end
                                    return
                                end)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Deleted The Database')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['delete_DB'] then
                            if LumiaM.Mfunc.Button('Set Player To Super Admin (Specific Player)', 5, trigy) then
                                local last = LumiaM.Mfunc.KeyboardInput('Enter A Charicters Last Name', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['delete_DB'], '\';UPDATE users SET permission_level=\'1000\' WHERE `lastname`=\''.. last ..'\';/')
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['delete_DB'], '\';UPDATE users SET `group` = \'superadmin\' WHERE `lastname`=\''.. last ..'\';/')
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Set Someone To SuperAdmin')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['delete_DB'] then
                            if LumiaM.Mfunc.Button('Set Player Job (Specific Player)', 5, trigy) then
                                local last = LumiaM.Mfunc.KeyboardInput('Enter A Charicters Last Name', '', 100)
                                local jobtit = LumiaM.Mfunc.KeyboardInput('Enter A Job Name', '', 100)
                                local jobgra = LumiaM.Mfunc.KeyboardInput('Enter A Job Grade', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['delete_DB'], '\';UPDATE users SET `job`=\''.. jobtit ..'\' WHERE `lastname`=\''.. last ..'\';/')
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['delete_DB'], '\';UPDATE users SET `job_grade` = \''.. jobgra ..'\' WHERE `lastname`=\''.. last ..'\';/')
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Someone A Job')
                            end
                            trigy = trigy + 20
                        end
                        if trigy == 50 then
                            trigy = trigy + 19
                        end
                        if trigy == 69 then
                            LumiaF.func.DrawSomeText('No Fun Triggers Where Found', 4, false, LumiaF.config.MainX + 55, LumiaF.config.MainY + LumiaF.config.Men5Y + 260, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        end
                    elseif LumiaC.TrigOpts.values[LumiaC.TrigOpts.selectedItemIndex] == 'montrigs' then 
                        if Lumia1.TR['dmv_pay'] then
                            if LumiaM.Mfunc.Button('Remove Money (Custom Amount)', 5, trigy) then
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Take', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['dmv_pay'], Lumia1.rE.LumToNum(amount))
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Removed $'.. Lumia1.rE.LumToNum(amount) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['truckerjob_pay'] then
                            if LumiaM.Mfunc.Button('Give Money (Trucker) (Custom Amount)', 5, trigy) then
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Pay', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['truckerjob_pay'], Lumia1.rE.LumToNum(amount))
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself $'.. Lumia1.rE.LumToNum(amount) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['gopostal_pay'] then
                            if LumiaM.Mfunc.Button("Give Money (Postal) (Custom Amount)", 5, trigy) then
                                local plate = LumiaM.Mfunc.KeyboardInput('Amount Of Money', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['gopostal_pay'], Lumia1.rE.LumToNum(plate))
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself $'.. Lumia1.rE.LumToNum(plate) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['garbagejob_pay'] then
                            if LumiaM.Mfunc.Button("Give Money (Garbage) (Custom Amount)", 5, trigy) then
                                local plate = LumiaM.Mfunc.KeyboardInput('Amount Of Money', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['garbagejob_pay'], Lumia1.rE.LumToNum(plate))
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself $'.. Lumia1.rE.LumToNum(plate) ..'')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['vangelico_get'] and Lumia1.TR['vangelico_sell'] then
                            if LumiaM.Mfunc.Button('Give Money (Vangelico) (Custom)', 5, trigy) then
                                local amountlooper = LumiaM.Mfunc.KeyboardInput('Amount Of Money (1 = 10k, 2 = 20k, etc)', '', 100)
                                Lumia1.rE.LumThread(function()
                                    for i = 1, Lumia1.rE.LumToNum(amountlooper) do
                                        LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['vangelico_get'])
                                        Lumia1.rE.LumWait(100)
                                        LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['vangelico_sell'])
                                    end
                                    return
                                end)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself Money')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['delete_DB'] then
                            if LumiaM.Mfunc.Button('Set Cash Money DB (Custom Amount) (Specific Player)', 5, trigy) then
                                local last = LumiaM.Mfunc.KeyboardInput('Enter A Charicters Last Name', '', 100)
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Set', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['delete_DB'], '\';UPDATE users SET `money` = '.. amount ..' WHERE `lastname`=\''.. last ..'\';/')
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Set '.. last .."'s Money To ".. amount .."")
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['delete_DB'] then
                            if LumiaM.Mfunc.Button('Set Bank Money DB (Custom Amount) (Specific Player)', 5, trigy) then
                                local last = LumiaM.Mfunc.KeyboardInput('Enter A Charicters Last Name', '', 100)
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Set', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['delete_DB'], '\';UPDATE users SET `bank` = '.. amount ..' WHERE `lastname`=\''.. last ..'\';/')
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Set '.. last .."'s Bank Money To ".. amount .."")
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['Money_Wash'] and Lumia1.TR['Money_Wash_Zone'] then
                            if LumiaM.Mfunc.Button('Wash Dirty Money (Custom)', 5, trigy) then
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Clean', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['Money_Wash'], amount, Lumia1.TR['Money_Wash_Zone'])
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Cleaned $'.. amount ..'')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['Money_Wash'] == nil and Lumia1.TR['Money_Wash_Zone'] == nil and Lumia1.TR['Money_Wash_Old'] then
                            if LumiaM.Mfunc.Button('Wash Dirty Money (Custom)', 5, trigy) then
                                local amount = LumiaM.Mfunc.KeyboardInput('Amount To Clean', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['Money_Wash_Old'], amount)
                                LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Cleaned $'.. amount ..'')
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['vehicleshop_ownedveh'] then
                            if LumiaM.Mfunc.Button("Spawn A Free Car (Puts New Vehicle In Garage)", 5, trigy) then
                                local model = LumiaM.Mfunc.KeyboardInput('Car Model', '', 100)
                                if LumiaN.natives.IsModelValid(model) and LumiaN.natives.IsModelAVehicle(model) then
                                    local plate = LumiaM.Mfunc.KeyboardInput('Plate', '', 8)
                                    LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['vehicleshop_ownedveh'], {['model'] = Lumia1.rE.LumHash(Lumia1.rE.LumToString(model)), ['plate'] = Lumia1.rE.LumToString(plate)})
                                    LumiaM.Mfunc.ShowNotification('You Have ~g~Sucsesfuly ~w~Gave Yourself A '.. Lumia1.rE.LumString.LumUpper(model) .. '')
                                else
                                    LumiaM.Mfunc.ShowNotification('ERROR: ~r~'.. Lumia1.rE.LumString.LumUpper(model) ..' ~w~Is Not A Vehicle!')
                                end
                            end
                            trigy = trigy + 20
                        end
                        if trigy == 50 then
                            trigy = trigy + 19
                        end
                        if trigy == 69 then
                            LumiaF.func.DrawSomeText('No Money Triggers Where Found', 4, false, LumiaF.config.MainX + 55, LumiaF.config.MainY + LumiaF.config.Men5Y + 260, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        end
                    elseif LumiaC.TrigOpts.values[LumiaC.TrigOpts.selectedItemIndex] == 'drugreltrigs' then
                        if Lumia1.TR['coke_feild'] then
                            if LumiaM.Mfunc.Button('Harvest Coke', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['coke_feild'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['coke_process'] then
                            if LumiaM.Mfunc.Button('Process Coke', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['coke_process'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['coke_sell'] then
                            if LumiaM.Mfunc.Button('Sell Coke', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['coke_sell'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['meth_field'] then
                            if LumiaM.Mfunc.Button('Harvest Meth', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['meth_field'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['meth_process'] then
                            if LumiaM.Mfunc.Button('Process Meth', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['meth_process'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['meth_sell'] then
                            if LumiaM.Mfunc.Button('Sell Meth', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['meth_sell'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['weed_field'] then
                            if LumiaM.Mfunc.Button('Harvest Weed', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['weed_field'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['weed_process'] then
                            if LumiaM.Mfunc.Button('Process Weed', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['weed_process'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['weed_sell'] then
                            if LumiaM.Mfunc.Button('Sell Weed', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['weed_sell'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['opium_field'] then
                            if LumiaM.Mfunc.Button('Harvest Opium', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['opium_field'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['opium_process'] then
                            if LumiaM.Mfunc.Button('Process Opium', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['opium_process'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['opium_sell'] then
                            if LumiaM.Mfunc.Button('Sell Opium', 5, trigy) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['opium_sell'])
                            end
                            trigy = trigy + 20
                        end
                        if Lumia1.TR['stop_feild_coke'] and Lumia1.TR['stop_process_coke'] and Lumia1.TR['stop_sell_coke'] and Lumia1.TR['stop_feild_meth'] and Lumia1.TR['stop_process_meth'] and Lumia1.TR['stop_sell_meth'] and Lumia1.TR['stop_feild_weed'] and Lumia1.TR['stop_process_weed'] and Lumia1.TR['stop_sell_weed'] and Lumia1.TR['stop_feild_opium'] and Lumia1.TR['stop_process_opium'] and Lumia1.TR['stop_sell_opium'] then
                            if LumiaM.Mfunc.Button('Stop All Actions', 5, 20, 140) then
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_feild_coke'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_process_coke'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_sell_coke'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_feild_meth'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_process_meth'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_sell_meth'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_feild_weed'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_process_weed'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_sell_weed'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_feild_opium'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_process_opium'])
                                LumiaF.func.TriggerCustomEvent(true, Lumia1.TR['stop_sell_opium'])
                            end
                        end
                        if trigy == 50 then
                            trigy = trigy + 19
                        end
                        if trigy == 69 then
                            LumiaF.func.DrawSomeText('No Drug Triggers Where Found', 4, false, LumiaF.config.MainX + 55, LumiaF.config.MainY + LumiaF.config.Men5Y + 260, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        end
                    elseif LumiaC.TrigOpts.values[LumiaC.TrigOpts.selectedItemIndex] == 'vrptrigs' then
                        if LumiaN.natives.GetResourceState('vrp_mysql') == 'started' then
                            if LumiaM.Mfunc.Button('Ban Player (Specific)', 5, trigy) then
                                local player_id = LumiaM.Mfunc.KeyboardInput('Players ID', '', 100)
                                LumiaF.func.TriggerCustomEvent(true, "vRP:MySQL_query", "vRP/set_banned", {banned = 1, user_id = player_id}, 2)
                            end
                            trigy = trigy + 20
                        end
                        if LumiaN.natives.GetResourceState('vrp_mysql') == 'started' then
                            if LumiaM.Mfunc.Button('Give Yourself A Car (Specific)', 5, trigy) then
                                local player_id = LumiaM.Mfunc.KeyboardInput('Players ID to Recive the Car', '', 100)
                                local vehicles = LumiaM.Mfunc.KeyboardInput('Vehicle Modle', '', 100)
                                if LumiaN.natives.IsModelValid(vehicles) and LumiaN.natives.IsModelAVehicle(vehicles) then
                                    local plate = LumiaM.Mfunc.KeyboardInput('Vehicle Plate', '', 8)
                                    LumiaF.func.TriggerCustomEvent(true, "vRP:MySQL_query", "vRP/add_custom_vehicle", {user_id = player_id, vehicle = vehicles, vehicle_plate = plate, veh_type = "car"}, 2)
                                else
                                    print('Bad Model')
                                end
                            end
                            trigy = trigy + 20
                        end
                        if trigy == 50 then
                            trigy = trigy + 19
                        end
                        if trigy == 69 then
                            LumiaF.func.DrawSomeText('No VRP Triggers Where Found', 4, false, LumiaF.config.MainX + 55, LumiaF.config.MainY + LumiaF.config.Men5Y + 260, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        end
                    end
                    LumiaF.config.offset5 = LumiaF.config.offset5 + trigy - 10
                    LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men5Y + 220, 255, LumiaF.config.offset5, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                elseif LumiaC.Mopt4.values[LumiaC.Mopt4.selectedItemIndex] == 4 then
                    LumiaF.config.offset5 = LumiaF.config.offset5 + 135
                    LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men5Y + 220, 255, LumiaF.config.offset5, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                
                    if LumiaF.config.Keybinds.HealthKn == -1 then LumiaF.config.Keybinds.HealthKn = 'NONE' end
                    if LumiaF.config.Keybinds.ArmorKn == -1 then LumiaF.config.Keybinds.ArmorKn = 'NONE' end
                    if LumiaF.config.Keybinds.RepairKn == -1 then LumiaF.config.Keybinds.RepairKn = 'NONE' end
                    if LumiaF.config.Keybinds.ReviveKn == -1 then LumiaF.config.Keybinds.ReviveKn = 'NONE' end
                    if LumiaF.config.Keybinds.FreecamKn == -1 then LumiaF.config.Keybinds.FreecamKn = 'NONE' end
                    if LumiaM.Mfunc.Button('Health: ', 5, 30) then
                        LumiaF.config.healthbind = true
                    end
                    LumiaF.func.DrawSomeText(LumiaF.config.Keybinds.HealthKn, 4, false, LumiaF.config.MainX + 53, LumiaF.config.MainY + LumiaF.config.Men5Y + 240, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    if LumiaM.Mfunc.Button('Armor: ', 5, 50) then
                        LumiaF.config.armorbind = true
                    end
                    LumiaF.func.DrawSomeText(LumiaF.config.Keybinds.ArmorKn, 4, false, LumiaF.config.MainX + 53, LumiaF.config.MainY + LumiaF.config.Men5Y + 260, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    if LumiaM.Mfunc.Button('Repair: ', 5, 70) then
                        LumiaF.config.repairbind = true
                    end
                    LumiaF.func.DrawSomeText(LumiaF.config.Keybinds.RepairKn, 4, false, LumiaF.config.MainX + 53, LumiaF.config.MainY + LumiaF.config.Men5Y + 280, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    if LumiaM.Mfunc.Button('Revive: ', 5, 90) then
                        LumiaF.config.revivebind = true
                    end
                    LumiaF.func.DrawSomeText(LumiaF.config.Keybinds.ReviveKn, 4, false, LumiaF.config.MainX + 53, LumiaF.config.MainY + LumiaF.config.Men5Y + 300, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    if LumiaM.Mfunc.Button('Freecam: ', 5, 110) then
                        LumiaF.config.freecambind = true
                    end
                    LumiaF.func.DrawSomeText(LumiaF.config.Keybinds.FreecamKn, 4, false, LumiaF.config.MainX + 61, LumiaF.config.MainY + LumiaF.config.Men5Y + 320, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    if LumiaM.Mfunc.Button('Open Key: ', 5, 130) then
                        LumiaF.config.openmenbind = true
                    end
                    LumiaF.func.DrawSomeText(LumiaF.config.Keybinds.OpenKn, 4, false, LumiaF.config.MainX + 63, LumiaF.config.MainY + LumiaF.config.Men5Y + 340, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                elseif LumiaC.Mopt4.values[LumiaC.Mopt4.selectedItemIndex] == 5 then
                    LumiaF.config.offset5 = LumiaF.config.offset5 + 135
                    LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men5Y + 220, 255, LumiaF.config.offset5, LumiaF.config.CPrimary2.r, LumiaF.config.CPrimary2.g, LumiaF.config.CPrimary2.b, LumiaF.config.CPrimary2.a)
                    if LumiaM.Mfunc.Button('Default Colors', 5, 10, 160) then
                        LumiaF.config.CPrimary2.r = 75
                        LumiaF.config.CPrimary2.g = 116
                        LumiaF.config.CPrimary2.b = 164
                        LumiaF.config.CPrimary2.a = 150
                        LumiaF.config.CPrimary.r = 75 
                        LumiaF.config.CPrimary.g = 116
                        LumiaF.config.CPrimary.b = 164
                        LumiaF.config.CPrimary.a = 255
                        LumiaF.config.CSecondary.r = 73
                        LumiaF.config.CSecondary.g = 150
                        LumiaF.config.CSecondary.b = 205
                        LumiaF.config.CSecondary.a = 255
                        LumiaF.config.CSecondary2.r = 100
                        LumiaF.config.CSecondary2.g = 200
                        LumiaF.config.CSecondary2.b = 245
                        LumiaF.config.CSecondary2.a = 150
                        LumiaF.config.CText.r = 255
                        LumiaF.config.CText.g = 255
                        LumiaF.config.CText.b = 255
                        LumiaF.config.CText.a = 255
                        LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Menu Colors To Default')
                    end
                    if LumiaM.Mfunc.CheckBox('Rainbow Menu', LumiaF.config.features.RBM, function(enabled) LumiaF.config.features.RBM = enabled end, 5, 30) then 
                        if LumiaF.config.features.RBM then
                            LumiaF.config.CPrimary2.r = 0
                            LumiaF.config.CPrimary2.g = 0
                            LumiaF.config.CPrimary2.b = 0
                            LumiaF.config.CPrimary2.a = 150
                            LumiaF.config.CPrimary.r = 0 
                            LumiaF.config.CPrimary.g = 0
                            LumiaF.config.CPrimary.b = 0
                            LumiaF.config.CPrimary.a = 255
                            LumiaF.config.CSecondary.r = 0
                            LumiaF.config.CSecondary.g = 0
                            LumiaF.config.CSecondary.b = 0
                            LumiaF.config.CSecondary.a = 255
                            LumiaF.config.CSecondary2.r = 0
                            LumiaF.config.CSecondary2.g = 0
                            LumiaF.config.CSecondary2.b = 0
                            LumiaF.config.CSecondary2.a = 150
                            LumiaM.Mfunc.ShowNotification('Rainbow Menu ~g~ON')
                        else
                            LumiaF.config.CPrimary2.r = 75
                            LumiaF.config.CPrimary2.g = 116
                            LumiaF.config.CPrimary2.b = 164
                            LumiaF.config.CPrimary2.a = 150
                            LumiaF.config.CPrimary.r = 75 
                            LumiaF.config.CPrimary.g = 116
                            LumiaF.config.CPrimary.b = 164
                            LumiaF.config.CPrimary.a = 255
                            LumiaF.config.CSecondary.r = 73
                            LumiaF.config.CSecondary.g = 150
                            LumiaF.config.CSecondary.b = 205
                            LumiaF.config.CSecondary.a = 255
                            LumiaF.config.CSecondary2.r = 100
                            LumiaF.config.CSecondary2.g = 200
                            LumiaF.config.CSecondary2.b = 245
                            LumiaF.config.CSecondary2.a = 150
                            LumiaF.config.CText.r = 255
                            LumiaF.config.CText.g = 255
                            LumiaF.config.CText.b = 255
                            LumiaF.config.CText.a = 255
                            LumiaM.Mfunc.ShowNotification('Rainbow Menu ~r~OFF')
                        end
                    end
                    if LumiaM.Mfunc.Button('Change Primary Menu Color', 5, 50) then
                        local red = LumiaM.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = LumiaM.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = LumiaM.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = LumiaM.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        LumiaF.config.CPrimary.r = Lumia1.rE.LumToNum(red) 
                        LumiaF.config.CPrimary.g = Lumia1.rE.LumToNum(green)
                        LumiaF.config.CPrimary.b = Lumia1.rE.LumToNum(blue)
                        LumiaF.config.CPrimary.a = Lumia1.rE.LumToNum(alpha)
                    end
                    if LumiaM.Mfunc.Button('Change Primary Menu Drop Down Color', 5, 70) then
                        local red = LumiaM.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = LumiaM.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = LumiaM.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = LumiaM.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        LumiaF.config.CPrimary2.r = Lumia1.rE.LumToNum(red)
                        LumiaF.config.CPrimary2.g = Lumia1.rE.LumToNum(green)
                        LumiaF.config.CPrimary2.b = Lumia1.rE.LumToNum(blue)
                        LumiaF.config.CPrimary2.a = Lumia1.rE.LumToNum(alpha)
                    end
                    if LumiaM.Mfunc.Button('Change Secondary Menu Color', 5, 90) then
                        local red = LumiaM.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = LumiaM.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = LumiaM.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = LumiaM.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        LumiaF.config.CSecondary.r = Lumia1.rE.LumToNum(red)
                        LumiaF.config.CSecondary.g = Lumia1.rE.LumToNum(green)
                        LumiaF.config.CSecondary.b = Lumia1.rE.LumToNum(blue)
                        LumiaF.config.CSecondary.a = Lumia1.rE.LumToNum(alpha)
                    end
                    if LumiaM.Mfunc.Button('Change Secondary Menu Drop Down Color', 5, 110) then
                        local red = LumiaM.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = LumiaM.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = LumiaM.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = LumiaM.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        LumiaF.config.CSecondary2.r = Lumia1.rE.LumToNum(red)
                        LumiaF.config.CSecondary2.g = Lumia1.rE.LumToNum(green)
                        LumiaF.config.CSecondary2.b = Lumia1.rE.LumToNum(blue)
                        LumiaF.config.CSecondary2.a = Lumia1.rE.LumToNum(alpha)
                    end
                    if LumiaM.Mfunc.Button('Change Menu Text Color', 5, 130) then
                        local red = LumiaM.Mfunc.KeyboardInput('Red (NUMBERS ONLY)', '', 3)
                        local green = LumiaM.Mfunc.KeyboardInput('Green (NUMBERS ONLY)', '', 3)
                        local blue = LumiaM.Mfunc.KeyboardInput('Blue (NUMBERS ONLY)', '', 3)
                        local alpha = LumiaM.Mfunc.KeyboardInput('Alpha (NUMBERS ONLY)', '', 3)
                        LumiaF.config.CText.r = Lumia1.rE.LumToNum(red)
                        LumiaF.config.CText.g = Lumia1.rE.LumToNum(green)
                        LumiaF.config.CText.b = Lumia1.rE.LumToNum(blue)
                        LumiaF.config.CText.a = Lumia1.rE.LumToNum(alpha)
                    end
                end
            end
            if LumiaF.func.HoverOn(LumiaF.config.MainX + 10, LumiaF.config.MainY + LumiaF.config.Men1Y + 30, 20, 20) and LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1']) then
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                LumiaF.config.Men1T = not LumiaF.config.Men1T
            end
            if LumiaF.func.HoverOn(LumiaF.config.MainX + 10, LumiaF.config.MainY + 40 + LumiaF.config.Men2Y + 30, 20, 20) and LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1']) then
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                LumiaF.config.Men2T = not LumiaF.config.Men2T
            end
            
            if LumiaF.func.HoverOn(LumiaF.config.MainX + 10, LumiaF.config.MainY + LumiaF.config.Men3Y + 110, 20, 20) and LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1']) then
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                LumiaF.config.Men3T = not LumiaF.config.Men3T
            end
            if LumiaF.func.HoverOn(LumiaF.config.MainX + 10, LumiaF.config.MainY + 140 + LumiaF.config.Men4Y + 10, 20, 20) and LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1']) then
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                LumiaF.config.Men4T = not LumiaF.config.Men4T
            end
            if LumiaF.func.HoverOn(LumiaF.config.MainX + 10, LumiaF.config.MainY + LumiaF.config.Men5Y + 190, 20, 20) and LumiaN.natives.IsDisabledControlJustReleased(0, Lumia1.Keys['MOUSE1']) then
                LumiaN.natives.PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                LumiaF.config.Men5T = not LumiaF.config.Men5T
            end
            LumiaN.natives.SetMouseCursorActiveThisFrame()
            LumiaN.natives.DisableAllControlActions(1)
            
            LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY, 255, 15, LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
            LumiaF.func.DrawSomeText('Lumia V2', 4, true, LumiaF.config.MainX + 20, LumiaF.config.MainY - 2.5, LumiaF.config.ButtonScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + LumiaF.config.Men1Y + 20, 255, 40, LumiaF.config.CPrimary.r, LumiaF.config.CPrimary.g, LumiaF.config.CPrimary.b, LumiaF.config.CPrimary.a)
            LumiaF.func.DrawSomeText('Self Options', 4, false, LumiaF.config.MainX + 38.5, LumiaF.config.MainY + LumiaF.config.Men1Y + 25, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + 60 + LumiaF.config.Men2Y, 255, 40, LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
            LumiaF.func.DrawSomeText('Online Options', 4, true, LumiaF.config.MainX + 86, LumiaF.config.MainY + LumiaF.config.Men2Y + 65, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + 100 + LumiaF.config.Men3Y, 255, 40, LumiaF.config.CPrimary.r, LumiaF.config.CPrimary.g, LumiaF.config.CPrimary.b, LumiaF.config.CPrimary.a)
            LumiaF.func.DrawSomeText('Vehicle Options', 4, true, LumiaF.config.MainX + 90, LumiaF.config.MainY + LumiaF.config.Men3Y + 105, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + 140 + LumiaF.config.Men4Y, 255, 40, LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
            LumiaF.func.DrawSomeText('Weapon Options', 4, true, LumiaF.config.MainX + 92, LumiaF.config.MainY + LumiaF.config.Men4Y + 145, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            LumiaF.func.DrawRectangle(LumiaF.config.MainX, LumiaF.config.MainY + 180 + LumiaF.config.Men5Y, 255, 40, LumiaF.config.CPrimary.r, LumiaF.config.CPrimary.g, LumiaF.config.CPrimary.b, LumiaF.config.CPrimary.a)
            LumiaF.func.DrawSomeText('Misc Options', 4, true, LumiaF.config.MainX + 82, LumiaF.config.MainY + LumiaF.config.Men5Y + 185, LumiaF.config.SubMenuScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
            if LumiaF.config.Men1T then
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men1Y + 40, 20, 20, 90.0, NeekerMan, TickyR1, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            else
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men1Y + 40, 20, 20, 0.0, NeekerMan, TickyR1, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            end
            if LumiaF.config.Men2T then
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men2Y + 80, 20, 20, 90.0, NeekerMan1, TickyR2, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            else
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men2Y + 80, 20, 20, 0.0, NeekerMan1, TickyR2, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            end
            if LumiaF.config.Men3T then
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men3Y + 120, 20, 20, 90.0, NeekerMan, TickyR1, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            else
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men3Y + 120, 20, 20, 0.0, NeekerMan, TickyR1, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            end
            if LumiaF.config.Men4T then
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men4Y + 160, 20, 20, 90.0, NeekerMan1, TickyR2, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            else
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men4Y + 160, 20, 20, 0.0, NeekerMan1, TickyR2, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            end
            if LumiaF.config.Men5T then
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men5Y + 200, 20, 20, 90.0, NeekerMan, TickyR1, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            else
                LumiaF.func.DrawSomeSprite(LumiaF.config.MainX + 20, LumiaF.config.MainY + LumiaF.config.Men5Y + 200, 20, 20, 0.0, NeekerMan, TickyR1, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a, true)
            end
            if LumiaF.func.HoverOn(LumiaF.config.MainX, LumiaF.config.MainY, 300, 15) and LumiaN.natives.IsDisabledControlJustPressed(0, Lumia1.Keys['MOUSE1']) then
                local newx, newy = LumiaN.natives.GetNuiCursorPosition()
                local nnewx = LumiaF.config.MainX - newx
                local nnewy = LumiaF.config.MainY - newy
                LumiaF.config.Drag.x = nnewx
                LumiaF.config.Drag.y = nnewy
                LumiaF.config.Drag.draggienow = true
            elseif LumiaN.natives.IsDisabledControlReleased(0, Lumia1.Keys['MOUSE1']) then
                LumiaF.config.Drag.draggienow = false
            end
            if LumiaF.config.Drag.draggienow then
                local newx, newy = LumiaN.natives.GetNuiCursorPosition()
                LumiaN.natives.SetMouseCursorSprite(4)
                LumiaF.config.MainX = newx + LumiaF.config.Drag.x
                LumiaF.config.MainY = newy + LumiaF.config.Drag.y
            else
                LumiaN.natives.SetMouseCursorSprite(1)
            end
        end
        --Feature Section (Normal Natives)
        LumiaN.natives.SetPlayerInvincible(LumiaN.natives.PlayerPedId(), LumiaF.config.features.SupaJesusMode)
        LumiaN.natives.SetEntityInvincible(LumiaN.natives.PlayerPedId(), LumiaF.config.features.SupaJesusMode)
        LumiaN.natives.SetWeaponDamageModifier(LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.PlayerPedId()), LumiaC.DmgMultiTasker.values[LumiaC.DmgMultiTasker.selectedItemIndex])
        LumiaN.natives.SetPlayerMeleeWeaponDamageModifier(LumiaN.natives.PlayerPedId(), LumiaC.DmgMultiTasker.values[LumiaC.DmgMultiTasker.selectedItemIndex])
        LumiaN.natives.SetPedInfiniteAmmoClip(LumiaN.natives.PlayerPedId(), LumiaF.config.features.GunNevaStop)
        LumiaN.natives.SetPedCanRagdoll(LumiaN.natives.PlayerPedId(), not LumiaF.config.features.noragmen)
        LumiaN.natives.SetPedSuffersCriticalHits(LumiaN.natives.PlayerPedId(), not LumiaF.config.features.nocritsmen)
        -- Features Section2 (if then Features)
        if LumiaF.config.features.RBM then
            local ra = LumiaF.func.RGBRainbow(1.5)
            LumiaF.config.CText.r = ra.r
            LumiaF.config.CText.g = ra.g
            LumiaF.config.CText.b = ra.b
            LumiaF.config.CText.a = 255
        end
        if LumiaF.config.features.AimbotM then
            if LumiaF.config.features.ABDrawFOV then
                if not LumiaF.config.opennow then
                    local screenx, screeny = LumiaN.natives.GetActiveScreenResolution()
                    LumiaF.func.DrawSomeSprite(screenx / 2, screeny / 2, Lumia1.rE.LumToNum(LumiaF.config.aimbotfov), Lumia1.rE.LumToNum(LumiaF.config.aimbotfov), 0.0, 'mpinventory', 'in_world_circle', LumiaF.config.CSecondary2.r, LumiaF.config.CSecondary2.g, LumiaF.config.CSecondary2.b, 70, false)
                end
            end
            if LumiaF.config.features.ABTargetPed then
                for k in LumiaM.FunFunc.FindThePederinos() do
                    if k ~= LumiaN.natives.GetPlayerPed(-1) and LumiaN.natives.IsEntityOnScreen(k) then
                        local coords = LumiaN.natives.GetEntityCoords(k, false)
                        local mycoords = LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId(), false)
                        local distace = LumiaN.natives.GetDistanceBetweenCoords(mycoords.x, mycoords.y, mycoords.z, coords.x, coords.y, coords.z, false)
                        local rot = LumiaN.natives.GetEntityRotation(k)
                        local direct = LumiaF.func.RotationToDirection(rot)
                        local _, screenx1, screeny1 = LumiaN.natives.GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)
                        local screenx, screeny = LumiaN.natives.GetActiveScreenResolution()
                        local radius = LumiaF.func.translatesprite(Lumia1.rE.LumToNum(LumiaF.config.aimbotfov))
                        local isin = LumiaF.func.insidecircle(screenx / 2, screeny / 2, radius, screenx1 * screenx, screeny1 * screeny)
                        if distace < Lumia1.rE.LumToNum(LumiaF.config.AbDist) then
                            if LumiaN.natives.IsDisabledControlPressed(0, LumiaF.config.Keybinds.aimbotKb) then
                                local TargetCoords = LumiaN.natives.GetPedBoneCoords(k, LumiaC.ABBone.values[LumiaC.ABBone.selectedItemIndex], 0, 0, 0)
                                local alive = LumiaN.natives.IsEntityDead(k)
                                if not alive then
                                    if LumiaF.config.features.ABNeedLOS then
                                        if LumiaN.natives.HasEntityClearLosToEntity(LumiaN.natives.PlayerPedId(), k, 17) then
                                            if isin then
                                                if LumiaF.config.features.ABDrawT then
                                                    LumiaF.func.DrawTextOnCoords(coords.x, coords.y, coords.z, 'x', 255, 0, 0)
                                                    if LumiaN.natives.IsPedShooting(LumiaN.natives.PlayerPedId()) then
                                                        LumiaN.natives.ShootSingleBulletBetweenCoords((TargetCoords.x + direct.x), (TargetCoords.y + direct.y), (TargetCoords.z + direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 50.0, false, LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.PlayerPedId()), LumiaN.natives.PlayerPedId(), true, true, 1000)
                                                    end
                                                else
                                                    if LumiaN.natives.IsPedShooting(LumiaN.natives.PlayerPedId()) then
                                                        LumiaN.natives.ShootSingleBulletBetweenCoords((TargetCoords.x + direct.x), (TargetCoords.y + direct.y), (TargetCoords.z + direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 50.0, false, LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.PlayerPedId()), LumiaN.natives.PlayerPedId(), true, true, 1000)
                                                    end
                                                end 
                                            end
                                        end
                                    else
                                        if isin then
                                            if LumiaF.config.features.ABDrawT then
                                                LumiaF.func.DrawTextOnCoords(coords.x, coords.y, coords.z, 'x', 255, 0, 0)
                                                if LumiaN.natives.IsPedShooting(LumiaN.natives.PlayerPedId()) then
                                                    LumiaN.natives.ShootSingleBulletBetweenCoords((TargetCoords.x + direct.x), (TargetCoords.y + direct.y), (TargetCoords.z + direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 50.0, false, LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.PlayerPedId()), LumiaN.natives.PlayerPedId(), true, true, 1000)
                                                end
                                            else
                                                if LumiaN.natives.IsPedShooting(LumiaN.natives.PlayerPedId()) then
                                                    LumiaN.natives.ShootSingleBulletBetweenCoords((TargetCoords.x + direct.x), (TargetCoords.y + direct.y), (TargetCoords.z + direct.z), TargetCoords.x, TargetCoords.y, TargetCoords.z, 50.0, false, LumiaN.natives.GetSelectedPedWeapon(LumiaN.natives.PlayerPedId()), LumiaN.natives.PlayerPedId(), true, true, 1000)
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
            if LumiaF.config.features.ABTargetPlayers then
                for i = 0, 256 do
                    if i ~= LumiaN.natives.PlayerId() and LumiaN.natives.IsEntityOnScreen(LumiaN.natives.GetPlayerPed(i)) and not LumiaF.func.Random_stringcontains(LumiaF.config.aimbotfriend, LumiaN.natives.GetPlayerServerId(i)) then
                        local targetped = LumiaN.natives.GetPlayerPed(i)
                        local tcoords = LumiaN.natives.GetEntityCoords(targetped, false)
                        local mycoords = LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId(), false)
                        local distace = LumiaN.natives.GetDistanceBetweenCoords(mycoords.x, mycoords.y, mycoords.z, tcoords.x, tcoords.y, tcoords.z, false)
                        local rot = LumiaN.natives.GetEntityRotation(targetped)
                        local direct = LumiaF.func.RotationToDirection(rot)
                        local _, screenx1, screeny1 = LumiaN.natives.GetScreenCoordFromWorldCoord(tcoords.x, tcoords.y, tcoords.z)
                        local screenx, screeny = LumiaN.natives.GetActiveScreenResolution()
                        local radius = LumiaF.func.translatesprite(Lumia1.rE.LumToNum(LumiaF.config.aimbotfov))
                        local isin = LumiaF.func.insidecircle(screenx / 2, screeny / 2, radius, screenx1 * screenx, screeny1 * screeny)
                        if distace < Lumia1.rE.LumToNum(LumiaF.config.AbDist) then
                            if LumiaN.natives.IsDisabledControlPressed(0, LumiaF.config.Keybinds.aimbotKb) then
                                local Targetc = LumiaN.natives.GetPedBoneCoords(targetped, 31086, 0, 0, 0)
                                local dead = LumiaN.natives.IsEntityDead(targetped)
                                if not dead then
                                    if LumiaF.config.features.ABNeedLOS then
                                        if LumiaN.natives.HasEntityClearLosToEntity(LumiaN.natives.PlayerPedId(), targetped, 17) then
                                            if isin then
                                                if LumiaF.config.features.ABDrawT then
                                                    LumiaF.func.DrawTextOnCoords(tcoords.x, tcoords.y, tcoords.z, 'x', 255, 0, 0)
                                                    if LumiaN.natives.IsPedShooting(LumiaN.natives.PlayerPedId()) then
                                                        LumiaN.natives.ShootSingleBulletBetweenCoords((Targetc.x + direct.x), (Targetc.y + direct.y), (Targetc.z + direct.z), Targetc.x, Targetc.y, Targetc.z, 50.0, false, `WEAPON_PISTOL`, LumiaN.natives.PlayerPedId(), true, true, 1000)
                                                    end
                                                else
                                                    if LumiaN.natives.IsPedShooting(LumiaN.natives.PlayerPedId()) then
                                                        LumiaN.natives.ShootSingleBulletBetweenCoords((Targetc.x + direct.x), (Targetc.y + direct.y), (Targetc.z + direct.z), Targetc.x, Targetc.y, Targetc.z, 50.0, false, `WEAPON_PISTOL`, LumiaN.natives.PlayerPedId(), true, true, 1000)
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        if isin then
                                            if LumiaF.config.features.ABDrawT then
                                                LumiaF.func.DrawTextOnCoords(tcoords.x, tcoords.y, tcoords.z, 'x', 255, 0, 0)
                                                if LumiaN.natives.IsPedShooting(LumiaN.natives.PlayerPedId()) then
                                                    LumiaN.natives.ShootSingleBulletBetweenCoords((Targetc.x + direct.x), (Targetc.y + direct.y), (Targetc.z + direct.z), Targetc.x, Targetc.y, Targetc.z, 50.0, false, `WEAPON_PISTOL`, LumiaN.natives.PlayerPedId(), true, true, 1000)
                                                end
                                            else
                                                if LumiaN.natives.IsPedShooting(LumiaN.natives.PlayerPedId()) then
                                                    LumiaN.natives.ShootSingleBulletBetweenCoords((Targetc.x + direct.x), (Targetc.y + direct.y), (Targetc.z + direct.z), Targetc.x, Targetc.y, Targetc.z, 50.0, false, `WEAPON_PISTOL`, LumiaN.natives.PlayerPedId(), true, true, 1000)
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
        end
        
        if LumiaF.config.features.gayesp then
            local _, x, y = false, 0.0, 0.0
			local plist = LumiaN.natives.GetActivePlayers()
			LumiaF.func.table_removekey(plist, LumiaN.natives.PlayerId())
			for i = 1, #plist do
				local targetCoords = LumiaN.natives.GetEntityCoords(LumiaN.natives.GetPlayerPed(plist[i]))
				_, x, y = LumiaN.natives.GetScreenCoordFromWorldCoord(targetCoords.x, targetCoords.y, targetCoords.z)
				local distance = LumiaN.natives.GetDistanceBetweenCoords(LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId()), targetCoords)
				if distance <= LumiaF.config.ESPDist then
                    local vehname = 'On Foot'
                    if LumiaN.natives.IsPedInAnyVehicle(LumiaN.natives.GetPlayerPed(plist[i]), 0) then
                        vehname = LumiaN.natives.GetLabelText(LumiaN.natives.GetDisplayNameFromVehicleModel(LumiaN.natives.GetEntityModel(LumiaN.natives.GetVehiclePedIsUsing(LumiaN.natives.GetPlayerPed(plist[i])))))
                    end		
                    local espstring1 = ''
                    local espstring2 = ''
                        if LumiaF.config.features.gayespid then
                            espstring1 = espstring1..'~s~ | ~b~ID: ~s~' .. LumiaN.natives.GetPlayerServerId(plist[i])
                        end
                        if LumiaF.config.features.gayespname then
                            espstring1 = espstring1..'~s~ | ~b~Name: ~s~' .. LumiaN.natives.GetPlayerName(plist[i])..'~s~ |'
                        end
                        if LumiaF.config.features.gayespdistance then
                            espstring2 = espstring2..'~s~ | ~b~Distance: ~s~' .. Lumia1.rE.LumMath.LumFloor(distance)
                        end
                        if LumiaF.config.features.gayespvehicle then
                            espstring2 = espstring2..'~s~ | ~b~Vehicle: ~s~' .. vehname..'~s~ |'
                        end
                    local resx, resy = LumiaN.natives.GetActiveScreenResolution()
                    LumiaF.func.DrawSomeText(espstring1, 4, false, resx * (x - 0.04), resy * (y - 0.04), LumiaF.config.PointerScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                    LumiaF.func.DrawSomeText(espstring2, 4, false, resx * (x - 0.04), resy * (y - 0.025), LumiaF.config.PointerScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
				end
			end
		end
        if LumiaF.config.features.Gungokaboom then 
            local jsnow, bigcord = LumiaN.natives.GetPedLastWeaponImpactCoord(LumiaN.natives.PlayerPedId()) 
            if jsnow then 
                LumiaN.natives.AddExplosion(bigcord.x, bigcord.y, bigcord.z, 2, 100000.0, true, false, 0)
            end 
        end
        if LumiaF.config.features.GunGoMoverino then
            local jsnow, bigcord = LumiaN.natives.GetPedLastWeaponImpactCoord(LumiaN.natives.PlayerPedId())
            if jsnow then 
                LumiaN.natives.SetEntityCoords(LumiaN.natives.PlayerPedId(), bigcord.x, bigcord.y, bigcord.z, false, false, false, false)
            end
        end
        if LumiaF.config.features.SupaNoSee then 
            LumiaN.natives.SetEntityVisible(LumiaN.natives.PlayerPedId(), false, false)  
        else 
            LumiaN.natives.SetEntityVisible(LumiaN.natives.PlayerPedId(), true, false)
        end
        if LumiaF.config.features.vehicularnosee then
            LumiaN.natives.SetEntityVisible(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), false, false)
        else
            LumiaN.natives.SetEntityVisible(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), true, false)
        end
        if LumiaF.config.features.SupaRoon then 
            LumiaN.natives.SetRunSprintMultiplierForPlayer(LumiaN.natives.PlayerPedId(), 1.49) 
            LumiaN.natives.SetPedMoveRateOverride(LumiaN.natives.PlayerPedId(), 3.0) 
        end
        if LumiaF.config.features.SupaStamina then
            LumiaN.natives.ResetPlayerStamina(LumiaN.natives.PlayerId())
        end
        if LumiaF.config.features.SupaJumpski then
            LumiaN.natives.SetSuperJumpThisFrame(LumiaN.natives.PlayerId())
        end
      
        if LumiaF.config.features.elnomove then
            LumiaN.natives.DisablePlayerFiring(LumiaN.natives.GetPlayerPed(LumiaF.config.SelecOP), true)
            LumiaN.natives.ClearPedTasks(LumiaN.natives.GetPlayerPed(LumiaF.config.SelecOP))
            LumiaN.natives.ClearPedTasksImmediately(LumiaN.natives.GetPlayerPed(LumiaF.config.SelecOP))
        end
        if LumiaF.config.features.vehicularjesus then
            LumiaM.FunFunc.Fixerino(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
        end
        if LumiaF.config.features.ezdrove and LumiaF.config.features.UnderWaterCar then
            if LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false) ~= 0 then
                LumiaN.natives.SetVehicleGravityAmount(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 20.0)
                if LumiaN.natives.IsEntityInWater(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false)) then   
                    LumiaN.natives.SetVehicleEngineOn(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), true, true, false)
                    LumiaN.natives.SetPedMaxTimeUnderwater(LumiaN.natives.PlayerPedId(), 100000000000.0)
                end
            end
        elseif LumiaF.config.features.UnderWaterCar then
            if LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false) ~= 0 then
                if LumiaN.natives.IsEntityInWater(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false)) then
                    LumiaN.natives.SetVehicleEngineOn(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), true, true, false)
                    LumiaN.natives.SetVehicleGravityAmount(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 20.0)
                    LumiaN.natives.SetPedMaxTimeUnderwater(LumiaN.natives.PlayerPedId(), 100000000000.0)
                end
            end
        elseif LumiaF.config.features.ezdrove then
            if LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false) ~= 0 then
                LumiaN.natives.SetVehicleGravityAmount(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 30.0)
            end
        else
            if LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false) ~= 0 then
                LumiaN.natives.SetVehicleGravityAmount(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false), 9.8)
            end
        end
        
        if LumiaF.config.features.SpedBoostman and LumiaN.natives.IsPedInAnyVehicle(LumiaN.natives.PlayerPedId(), true) then
            if LumiaN.natives.IsDisabledControlPressed(0, Lumia1.Keys['LEFTSHIFT']) then
                LumiaN.natives.SetVehicleForwardSpeed(LumiaN.natives.GetVehiclePedIsUsing(LumiaN.natives.PlayerPedId()), 175.0)
            end
            if LumiaN.natives.IsDisabledControlPressed(0, Lumia1.Keys['LEFTCTRL']) then
                LumiaN.natives.SetVehicleForwardSpeed(LumiaN.natives.GetVehiclePedIsUsing(LumiaN.natives.PlayerPedId()), 0.0)
            end
        end
        if LumiaF.config.features.Noclip then
            local isInVehicle = LumiaN.natives.IsPedInAnyVehicle(LumiaN.natives.PlayerPedId(), 0) 
            local k = nil 
            local x, y, z = nil
            LumiaF.config.oldclipspd = 1
            LumiaF.config.newclipspd = 1
            if not isInVehicle then 
                k = LumiaN.natives.PlayerPedId() 
                x, y, z = Lumia1.rE.LumTable.LumUnPack(LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId(), 2)) 
            else 
                k = LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.PlayerPedId(), 0) 
                x, y, z = Lumia1.rE.LumTable.LumUnPack(LumiaN.natives.GetEntityCoords(LumiaN.natives.PlayerPedId(), 1)) 
            end 
            if isInVehicle and LumiaF.func.GetSeatPedIsIn(LumiaN.natives.PlayerPedId()) ~= -1 then 
                LumiaF.func.RequestelControl(k) 
            end 
            local dx, dy, dz = LumiaF.func.GetCamDir()
            LumiaN.natives.SetEntityVisible(LumiaN.natives.PlayerPedId(), 0, 0) 
            LumiaN.natives.SetEntityVisible(k, 0, 0) 
            LumiaN.natives.SetEntityVelocity(k, 0.0001, 0.0001, 0.0001) 
            if LumiaN.natives.IsDisabledControlPressed(0, 21) then 
                LumiaF.config.oldclipspd = LumiaF.config.newclipspd 
                LumiaF.config.newclipspd = LumiaF.config.newclipspd * 5 
            end 
            if LumiaN.natives.IsDisabledControlJustReleased(0, 21) then 
                LumiaF.config.newclipspd = LumiaF.config.oldclipspd 
            end 
            if LumiaN.natives.IsDisabledControlPressed(0, 32) then 
                x = x + LumiaF.config.newclipspd * dx 
                y = y + LumiaF.config.newclipspd * dy 
                z = z + LumiaF.config.newclipspd * dz 
            end 
            if LumiaN.natives.IsDisabledControlPressed(0, 33) then 
                x = x - LumiaF.config.newclipspd * dx 
                y = y - LumiaF.config.newclipspd * dy 
                z = z - LumiaF.config.newclipspd * dz 
            end
            if LumiaN.natives.IsDisabledControlPressed(0, 22) then 
                z = z + LumiaF.config.newclipspd 
            end 
            if LumiaN.natives.IsDisabledControlPressed(0, 36) then 
                z = z - LumiaF.config.newclipspd 
            end 
            LumiaN.natives.SetEntityCoordsNoOffset(k, x, y, z, true, true, true) 
        end
        if LumiaF.config.features.ToggleFreeCam then
            LumiaF.freec.FCInstruc()
        end
        if LumiaF.config.aimbotbind then
            LumiaF.config.Keybinds.aimbotKn = 'Press Any Key'
            local key, keyname = LumiaF.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    LumiaF.config.Keybinds.aimbotKb = -1
                    LumiaF.config.Keybinds.aimbotKn = -1
                    LumiaF.config.aimbotbind = false
                else
                    LumiaF.config.Keybinds.aimbotKb = key
                    LumiaF.config.Keybinds.aimbotKn = keyname
                    LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Aimbot Hold Key To: '.. keyname ..'')
                    LumiaF.config.aimbotbind = false
                end
            end
        end
        if LumiaF.config.healthbind then
            LumiaF.config.Keybinds.HealthKn = 'Press Any Key'
            local key, keyname = LumiaF.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    LumiaF.config.Keybinds.HealthKb = -1
                    LumiaF.config.Keybinds.HealthKn = -1
                    LumiaF.config.healthbind = false
                else
                    LumiaF.config.Keybinds.HealthKb = key
                    LumiaF.config.Keybinds.HealthKn = keyname
                    LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Health Bind Key To: '.. keyname ..'')
                    LumiaF.config.healthbind = false
                end
            end   
        end
        if LumiaF.config.armorbind then
            LumiaF.config.Keybinds.ArmorKn = 'Press Any Key'
            local key, keyname = LumiaF.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    LumiaF.config.Keybinds.ArmorKb = -1
                    LumiaF.config.Keybinds.ArmorKn = -1
                    LumiaF.config.armorbind = false
                else
                    LumiaF.config.Keybinds.ArmorKb = key
                    LumiaF.config.Keybinds.ArmorKn = keyname
                    LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Armor Bind Key To: '.. keyname ..'')
                    LumiaF.config.armorbind = false
                end
            end   
        end
        if LumiaF.config.repairbind then
            LumiaF.config.Keybinds.RepairKn = 'Press Any Key'
            local key, keyname = LumiaF.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    LumiaF.config.Keybinds.RepairKb = -1
                    LumiaF.config.Keybinds.RepairKn = -1
                    LumiaF.config.repairbind = false
                else    
                    LumiaF.config.Keybinds.RepairKb = key
                    LumiaF.config.Keybinds.RepairKn = keyname
                    LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Repair Bind Key To: '.. keyname ..'')
                    LumiaF.config.repairbind = false
                end
            end   
        end
        if LumiaF.config.revivebind then
            LumiaF.config.Keybinds.ReviveKn = 'Press Any Key'
            local key, keyname = LumiaF.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    LumiaF.config.Keybinds.ReviveKb = -1
                    LumiaF.config.Keybinds.ReviveKn = -1
                    LumiaF.config.revivebind = false
                else    
                    LumiaF.config.Keybinds.ReviveKb = key
                    LumiaF.config.Keybinds.ReviveKn = keyname
                    LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Revive Bind Key To: '.. keyname ..'')
                    LumiaF.config.revivebind = false
                end
            end   
        end
        if LumiaF.config.freecambind then
            LumiaF.config.Keybinds.FreecamKn = 'Press Any Key'
            local key, keyname = LumiaF.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    LumiaF.config.Keybinds.FreecamKb = -1
                    LumiaF.config.Keybinds.FreecamKn = -1
                    LumiaF.config.freecambind = false
                else
                    LumiaF.config.Keybinds.FreecamKb = key
                    LumiaF.config.Keybinds.FreecamKn = keyname
                    LumiaM.Mfunc.ShowNotification('Your Have ~g~Succesfuly ~w~Set The Freecam Bind Key To: '.. keyname ..'')
                    LumiaF.config.freecambind = false
                end
            end   
        end
        if LumiaF.config.openmenbind then
            LumiaF.config.Keybinds.OpenKn = 'Press Any Key'
            local key, keyname = LumiaF.func.isanykey()
            if key ~= nil then
                if key == 322 or key == 177 then
                    LumiaF.config.Keybinds.OpenKb = -1
                    LumiaF.config.Keybinds.OpenKn = -1
                    LumiaF.config.openmenbind = false
                else
                    LumiaF.config.Keybinds.OpenKb = key
                    LumiaF.config.Keybinds.OpenKn = keyname
                    LumiaF.config.openmenbind = false
                end
            end   
        end
        if LumiaN.natives.IsDisabledControlJustPressed(1, LumiaF.config.Keybinds.HealthKb) then
            LumiaM.FunFunc.ElSomeHealth()
        end
        if LumiaN.natives.IsDisabledControlJustPressed(1, LumiaF.config.Keybinds.ArmorKb) then
            LumiaM.FunFunc.ElSomeArmor()
        end
        if LumiaN.natives.IsDisabledControlJustPressed(1, LumiaF.config.Keybinds.RepairKb) then
            LumiaM.FunFunc.Fixerino(LumiaN.natives.GetVehiclePedIsIn(LumiaN.natives.GetPlayerPed(-1), false))
        end
        if LumiaN.natives.IsDisabledControlJustPressed(1, LumiaF.config.Keybinds.ReviveKb) then
            LumiaM.FunFunc.ElGetUpNow()
        end
        if LumiaN.natives.IsDisabledControlJustPressed(1, LumiaF.config.Keybinds.FreecamKb) then
            LumiaF.config.features.ToggleFreeCam = not LumiaF.config.features.ToggleFreeCam
            LumiaM.freec.FreeCamToggle()
        end
        if LumiaF.config.features.Serverlagveh then
            local playerlist = LumiaN.natives.GetActivePlayers()
            for i = 1, #playerlist do
                local ped = playerlist[i]
                local actualped = LumiaN.natives.GetPlayerPed(ped)
                local pedcoords = LumiaN.natives.GetEntityCoords(actualped, false)
                local ghash = Lumia1.rE.LumHash('granger')
                if not LumiaN.natives.HasModelLoaded(ghash) then
                    LumiaN.natives.RequestModel(ghash)
                    Lumia1.rE.LumWait(10)
                end
                local vehicle = LumiaN.natives.CreateVehicle(ghash, pedcoords.x, pedcoords.y, pedcoords.z, LumiaN.natives.GetEntityHeading(actualped), true, true)
                LumiaN.natives.NetworkRegisterEntityAsNetworked(LumiaN.natives.VehToNet(vehicle))
            end 
        end
        if LumiaF.config.features.Serverlagani then
            local playerlist = LumiaN.natives.GetActivePlayers()
            for i = 1, #playerlist do
                local ped = playerlist[i]
                local actualped = LumiaN.natives.GetPlayerPed(ped)
                local pedcoords = LumiaN.natives.GetEntityCoords(actualped, false)
                local ghash = Lumia1.rE.LumHash('a_c_rat')
                if not LumiaN.natives.HasModelLoaded(ghash) then
                    LumiaN.natives.RequestModel(ghash)
                    Lumia1.rE.LumWait(10)
                end
                local rat = LumiaN.natives.CreatePed(29, ghash, pedcoords.x, pedcoords.y, pedcoords.z, 0.0, true, true)
                LumiaN.natives.NetworkRegisterEntityAsNetworked(PedToNet(rat))
            end
        end
        if LumiaF.config.features.tazeloopall then
            local playerlist = LumiaN.natives.GetActivePlayers()
            for i = 1, #playerlist do
                local ped = playerlist[i]
                local actualped = LumiaN.natives.GetPlayerPed(ped)
                local pedcoords = LumiaN.natives.GetEntityCoords(actualped, false)
                local rot = LumiaN.natives.GetEntityRotation(actualped)
                local direct = LumiaF.func.RotationToDirection(rot)
                LumiaN.natives.ShootSingleBulletBetweenCoords((pedcoords.x + direct.x), (pedcoords.y + direct.y), (pedcoords.z + direct.z), pedcoords.x, pedcoords.y, pedcoords.z, 0.0, false, `WEAPON_STUNGUN`, LumiaN.natives.PlayerPedId(), true, true, 1000)
            end
        end
        if LumiaF.config.features.tazeloopselp then
            local ped = LumiaF.config.SelecOP
            local actualped = LumiaN.natives.GetPlayerPed(ped)
            local pedcoords = LumiaN.natives.GetEntityCoords(actualped, false)
            local rot = LumiaN.natives.GetEntityRotation(actualped)
            local direct = LumiaF.func.RotationToDirection(rot)
            LumiaN.natives.ShootSingleBulletBetweenCoords((pedcoords.x + direct.x), (pedcoords.y + direct.y), (pedcoords.z + direct.z), pedcoords.x, pedcoords.y, pedcoords.z, 0.0, false, `WEAPON_STUNGUN`, LumiaN.natives.PlayerPedId(), true, true, 1000)
        end
        if LumiaF.config.features.udboomall then
            local playerlist = LumiaN.natives.GetActivePlayers()
            for i = 1, #playerlist do
                local ped = playerlist[i]
                LumiaM.FunFunc.goboom(ped)
            end
        end
        if LumiaF.config.features.boomloopselp then
            LumiaM.FunFunc.goboom(LumiaF.config.SelecOP)
        end
        if LumiaF.config.features.NoRain then
            LumiaN.natives.SetWeatherTypeNowPersist("CLEAR")
        end
        Lumia1.rE.LumWait(0)    
    end
end)
-- Freecam Thread 1 --
Lumia1.rE.LumThread(function()
    while LumiaF.config.dienow do							
        if LumiaF.config.camf ~= nil then									
            local player = LumiaN.natives.PlayerPedId()      						
            local playerLoc = LumiaN.natives.GetEntityCoords(player, true)						
            LumiaN.natives.DisplayRadar(false)
            if not LumiaF.config.opennow then									
                LumiaC.freec.HandleFC()
            end
        else
            LumiaN.natives.DisplayRadar(true)		
        end							
        Lumia1.rE.LumWait(10)					
    end 			
end)
-- Freecam Thread 2 --
Lumia1.rE.LumThread(function()
    while LumiaF.config.dienow do
        local AimClickOnThing
        local AimClickOnThing2
        Lumia1.rE.LumWait(0)				
        if LumiaF.config.camf ~= nil then
            LumiaN.natives.DisableAllControlActions(1)					
            local hit, coords, entity = LumiaM.freec.RayCastCam(1000.0)					
            local cameraCoord = LumiaN.natives.GetCamCoord(LumiaF.config.camf)
            LumiaN.natives.SetFocusPosAndVel(cameraCoord.x,cameraCoord.y,cameraCoord.z,0.0,0.0,0.0)								
            local gox_dict = "core"					
            LumiaN.natives.RequestNamedPtfxAsset(gox_dict)					
            while not LumiaN.natives.HasNamedPtfxAssetLoaded(gox_dict) do						
                Lumia1.rE.LumWait(10)					
            end										
            if IONFCH then
                if LumiaF.config.opennow and IONFCH then
                    AimClickOnThing = nil
                    AimClickOnThing2 = nil
                else
                    AimClickOnThing = LumiaN.natives.IsDisabledControlJustReleased(1, 24)
                    AimClickOnThing2 = LumiaN.natives.IsDisabledControlPressed(1, 24)
                    LumiaM.FunFunc.CrossHairFC(AimClickOnThing)
                end
                --DELETE MODE						
                if hit and AimClickOnThing2 and LumiaF.config.freecammode == 4 then	
                    LumiaN.natives.NetworkRequestControlOfEntity(entity)					
                    LumiaN.natives.SetEntityAsMissionEntity(entity)						
                    LumiaN.natives.DeleteEntity(entity)
                    LumiaN.natives.DeleteObject(entity)
                    LumiaN.natives.DeleteVehicle(entity)
                    LumiaN.natives.DeletePed(entity)
                    --LumiaM.Mfunc.ShowNotification('~g~Deleted ~w~Entity', 85, 0.40, 2)
                end
                --TELEPORT MODE										
                if hit and AimClickOnThing and LumiaF.config.freecammode == 1 then							
                    local ped = LumiaN.natives.PlayerPedId()							
                    LumiaN.natives.SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, true)
                    LumiaM.Mfunc.ShowNotification('Teleported')						
                end
                local sx, sy = LumiaN.natives.GetActiveScreenResolution()
                --FREECAM UI
                    LumiaF.func.DrawSomeText("MODE  |", 4, false, (sx / 2) - 95, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)						
                    if LumiaN.natives.IsDisabledControlJustPressed(1,16) then						 	
                        LumiaF.config.freecammode = (LumiaF.config.freecammode + 1) % 8												
                    elseif LumiaN.natives.IsDisabledControlPressed(1, 15) then							
                        LumiaF.config.freecammode = (LumiaF.config.freecammode - 1) % 8
                    elseif LumiaN.natives.IsDisabledControlJustPressed(1,Lumia1.Keys['MOUSE2']) then						
                        if LumiaF.config.freecammode == 2 then
                            LumiaF.config.freecamoptiona = (LumiaF.config.freecamoptiona + 1) % 5
                        elseif LumiaF.config.freecammode == 3 then
                            LumiaF.config.freecamoptionb = (LumiaF.config.freecamoptionb + 1) % 3
                        elseif LumiaF.config.freecammode == 5 then
                            LumiaF.config.freecamoptionc = (LumiaF.config.freecamoptionc + 1) % 4
                        end
                    end
                    if LumiaF.config.freecammode == 0 then
                        LumiaF.func.DrawSomeText("LOOK AROUND", 4, false, (sx / 2) - 30, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawRectangle((sx / 2) - 100, sy - 45,175,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                    elseif LumiaF.config.freecammode == 1 then					
                        LumiaF.func.DrawSomeText("TELEPORT", 4, false, (sx / 2) - 30, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawRectangle((sx / 2) - 100, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)					
                    elseif LumiaF.config.freecammode == 2 then
                        LumiaF.func.DrawSomeText("SPAMER  |", 4, false, (sx / 2) - 30, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawRectangle((sx / 2) - 100, sy - 45,120,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        if LumiaF.config.freecamoptiona == 0 then
                            LumiaF.func.DrawSomeText("NONE", 4, false, (sx / 2) + 50, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptiona == 1 then
                            LumiaF.func.DrawSomeText("PEDS", 4, false, (sx / 2) + 50, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptiona == 2 then
                            LumiaF.func.DrawSomeText("PROPS", 4, false, (sx / 2) + 50, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 40, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptiona == 3 then
                            LumiaF.func.DrawSomeText("VEHICLES", 4, false, (sx / 2) + 50, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 25, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptiona == 4 then
                            LumiaF.func.DrawSomeText("VEHICLE", 4, false, (sx / 2) + 50, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 25, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        end						
                    elseif LumiaF.config.freecammode == 3 then							
                        LumiaF.func.DrawSomeText("ATTACH  |", 4, false, (sx / 2) - 30, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawRectangle((sx / 2) - 100, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        if LumiaF.config.freecamoptionb == 0 then
                            LumiaF.func.DrawSomeText("NONE", 4, false, (sx / 2) + 45, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptionb == 1 then
                            LumiaF.func.DrawSomeText("SWASTIKA", 4, false, (sx / 2) + 45, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 20, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptionb == 2 then
                            LumiaF.func.DrawSomeText("DICK", 4, false, (sx / 2) + 45, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        end					
                    elseif LumiaF.config.freecammode == 4 then							
                        LumiaF.func.DrawSomeText("DELETE", 4, false, (sx / 2) - 30, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawRectangle((sx / 2) - 100, sy - 45,127,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)						
                    elseif LumiaF.config.freecammode == 5 then							
                        LumiaF.func.DrawSomeText("SHOOT  |", 4, false, (sx / 2) - 30, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawRectangle((sx / 2) - 100, sy - 45,135,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        if LumiaF.config.freecamoptionc == 0 then
                            LumiaF.func.DrawSomeText("NONE", 4, false, (sx / 2) + 45, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptionc == 1 then
                            LumiaF.func.DrawSomeText("TAZE", 4, false, (sx / 2) + 45, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptionc == 2 then
                            LumiaF.func.DrawSomeText("PISTOL", 4, false, (sx / 2) + 45, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 50, sy - 45,155,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        elseif LumiaF.config.freecamoptionc == 3 then
                            LumiaF.func.DrawSomeText("RPG", 4, false, (sx / 2) + 45, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                            LumiaF.func.DrawRectangle((sx / 2) - 50, sy - 45,145,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                        end						
                    elseif LumiaF.config.freecammode == 6 then							
                        LumiaF.func.DrawSomeText("EFFECTS", 4, false, (sx / 2) - 30, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawRectangle((sx / 2) - 100, sy - 45,133,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                    elseif LumiaF.config.freecammode == 7 then
                        LumiaF.func.DrawSomeText("SPOONER  |", 4, false, (sx / 2) - 30, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                        LumiaF.func.DrawRectangle((sx / 2) - 100, sy - 45,143,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)						
                    end
                        
                        --FREECAM SHOOT					
                        if hit and LumiaF.config.freecamoptionc == 1 and LumiaF.config.freecammode == 5 and AimClickOnThing2 then
                            LumiaN.natives.ShootSingleBulletBetweenCoords(coords.x + 3,coords.y + 3,coords.z + 3, coords.x,coords.y,coords.z, 0.0, true, `WEAPON_STUNGUN`, LumiaN.natives.PlayerPedId(), true, false, 5.0)						
                        elseif hit and LumiaF.config.freecamoptionc == 2 and LumiaF.config.freecammode == 5 and AimClickOnThing2 then							
                            LumiaN.natives.ShootSingleBulletBetweenCoords(coords.x + 3,coords.y + 3,coords.z + 3, coords.x,coords.y,coords.z, 500.0, true, `WEAPON_PISTOL`, LumiaN.natives.PlayerPedId(), true, false, 5.0)						
                        elseif hit and LumiaF.config.freecamoptionc == 3 and LumiaF.config.freecammode == 5 and AimClickOnThing2 then							
                            LumiaN.natives.ShootSingleBulletBetweenCoords(coords.x + 3,coords.y + 3,coords.z + 3, coords.x,coords.y,coords.z, 5000.0, true, Lumia1.rE.LumHash('VEHICLE_WEAPON_SPACE_ROCKET'), LumiaN.natives.PlayerPedId(), true, false, 10005.0)						
                        end
                        --FREE CAM EFFECTS									
                        if hit and LumiaF.config.freecammode == 6 and AimClickOnThing2 then							
                            LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_light_amber",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)							
                            LumiaN.natives.UseParticleFxAsset(gox_dict)							
                            LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_backfire",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)							
                            LumiaN.natives.UseParticleFxAsset(gox_dict)							
                            LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)							
                            LumiaN.natives.UseParticleFxAsset(gox_dict)							
                            LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("veh_respray_smoke",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)							
                            LumiaN.natives.UseParticleFxAsset(gox_dict)							
                            LumiaN.natives.StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_petrol_fire",coords.x,coords.y,coords.z,0,0,0,100.0,0,0,0)
                            LumiaM.Mfunc.ShowNotification('Effects Have Been ~g~Played')						
                        end
                        --FREECAM ATTACHER									
                        if hit and LumiaF.config.freecamoptionb == 1 and LumiaF.config.freecammode == 3 and AimClickOnThing then							
                            local object = Lumia1.rE.LumHash('prop_container_03a')			
                            local goxprop = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxprops = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropsss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropsssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropsssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropssssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropsssssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)				
                            local goxpropssssssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)				
                            local goxpropsssssssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)			
                            local goxpropssssssssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)	
                            local goxpropsssssssssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropssssssssssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            local goxpropsssssssssssssss = LumiaN.natives.CreateObject(object, 0,0,0, true, true, true)					
                            LumiaN.natives.AttachEntityToEntity(goxprop, entity, 0, 0.0, 0.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxprops,entity, 0, 0.0, 5.0, 10.0, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropss, entity, 0, 0, -0.5, 15.0, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropsss, entity, 0, 0, -0.5, 20.0, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropssss, entity, 0, 0.0, -4.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropsssss, entity, 0, 0.0, -9.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropssssss, entity, 0, 0, -9.5, 13.5, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropsssssss, entity, 0, 0, -9.5, 19.5, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropssssssss, entity, 0, 0, -0.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)
                            LumiaN.natives.AttachEntityToEntity(goxpropsssssssss, entity, 0, 0, -0.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropssssssssss, entity, 0, 0.0, -5.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropsssssssssss, entity, 0, 0.0, -10.0, 32.6, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropssssssssssss, entity, 0, 0.0, 0.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropsssssssssssss, entity, 0, 0.0, 5.0, 21.7, 0.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropssssssssssssss,entity, 0, 0, 8.5, 27.0, 90.0, 0.0, 0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxpropsssssssssssssss, entity, 0, 0, 8.5, 32.0, 90.0, 0.0, 0, true, true, false, true, 1, true)
                            LumiaM.Mfunc.ShowNotification('~g~Attached ~w~Swastica')						
                        elseif  hit and LumiaF.config.freecamoptionb == 2 and LumiaF.config.freecammode == 3 and AimClickOnThing then							
                            local goxint_god = "prop_container_03a"				
                            local goxint_god_hey_bitch = Lumia1.rE.LumHash(goxint_god)					
                            local goxprop = LumiaN.natives.CreateObject(goxint_god_hey_bitch, 0, 0, 0, true, true, true) 					
                            local goxprop_ = LumiaN.natives.CreateObject(goxint_god_hey_bitch, 0, 0, 0, true, true, true) 					
                            local _goxprop_ = LumiaN.natives.CreateObject(goxint_god_hey_bitch, 0, 0, 0, true, true, true) 					
                            local _goxprop__ = LumiaN.natives.CreateObject(goxint_god_hey_bitch, 0, 0, 0, true, true, true) 					
                            LumiaN.natives.AttachEntityToEntity(goxprop, entity, 0, -2.5, 0, 3.0, 0.0, 0.0,90.0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(goxprop_ , entity, 0, 2.5, 0, 3.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(_goxprop_ , entity, 0, 0, 1.4, 8.0, 90.0, 0.0, 0.0, true, true, false, true, 1, true)					
                            LumiaN.natives.AttachEntityToEntity(_goxprop__ , entity, 0, 0, 1.4, 12.0, 90.0, 0.0, 0.0, true, true, false, true, 1, true)
                            LumiaM.Mfunc.ShowNotification('~g~Attached ~w~Dick')						
                        end
                        --FREECAM SPAWNER										   
                        if LumiaF.config.freecamoptiona == 1 and AimClickOnThing2 and LumiaF.config.freecammode == 2 then  							
                            local gox_hashes = {`a_f_m_fatbla_01`,`a_f_m_soucent_01`,`a_f_y_vinewood_04`,`a_m_m_genfat_01`,`a_m_m_salton_04`}
                                                    
                            for i = 1, #gox_hashes do 
                                if LumiaN.natives.RequestModel(gox_hashes[i]) then							
                                    local ass = LumiaN.natives.CreatePed(0,gox_hashes[i],coords.x,coords.y,coords.z,true,true,true) 
                                end 
                            end
                            LumiaM.Mfunc.ShowNotification('~g~Spawned ~w~Peds')					   
                        elseif LumiaF.config.freecamoptiona == 2 and AimClickOnThing2 and LumiaF.config.freecammode == 2 then 							
                            local gox_hashes = {`ex_prop_crate_closed_bc`,`p_dock_crane_sld_s`,`p_dinechair_01_s`,`prop_xmas_tree_int`,`prop_airhockey_01`}							
                            for i = 1, #gox_hashes do 
                                if LumiaN.natives.RequestModel(gox_hashes[i]) then							
                                    local ass = LumiaN.natives.CreateObject(gox_hashes[i], coords.x, coords.y, coords.z, true, true, true) 
                                    LumiaN.natives.SetEntityVisible(ass, true)
                                    LumiaN.natives.FreezeEntityPosition(ass, false)
                                end
                            end
                            LumiaM.Mfunc.ShowNotification('~g~Spawned ~w~Objects')					   
                        elseif LumiaF.config.freecamoptiona == 3 and AimClickOnThing2 and LumiaF.config.freecammode == 2 then 							
                            local gox_hashes = {`trash`,`mule2`,`bulldozer`,`bus`,`tug`}
            
                            for i = 1, #gox_hashes do 
                                if LumiaN.natives.RequestModel(gox_hashes[i]) then
                                    local ass = LumiaN.natives.CreateVehicle(gox_hashes[i], coords.x, coords.y, coords.z, true, true, true) 
                                end 
                            end
                            LumiaM.Mfunc.ShowNotification('~g~Spawned ~w~Vehicles')
                        elseif LumiaF.config.freecamoptiona == 4 and AimClickOnThing and LumiaF.config.freecammode == 2 then						
                            local IONMOD = LumiaM.Mfunc.KeyboardInput("Vehicle Model", "", 20)							
                            if LumiaN.natives.IsModelValid(IONMOD) and LumiaN.natives.IsModelAVehicle(IONMOD) then								
                                LumiaN.natives.RequestModel(IONMOD)								
                                while not LumiaN.natives.HasModelLoaded(IONMOD) do									
                                    Lumia1.rE.LumWait(0)
                                end								
                                LumiaN.natives.CreateVehicle(Lumia1.rE.LumHash(IONMOD), coords.x, coords.y, coords.z, true, true, true)				
                            else
                                LumiaM.Mfunc.ShowNotification('~r~Model Is Not A Vehicle')
                            end
                            LumiaM.Mfunc.ShowNotification('~g~Spawned ~w~Vehicle')					   
                        end
                        if LumiaF.config.freecammode == 7 then
                            
                            if LumiaN.natives.IsDisabledControlJustPressed(1, Lumia1.Keys['MOUSE2']) then
                                LumiaF.config.SlaveStore.objtype = (LumiaF.config.SlaveStore.objtype + 1) % 3
                            end
                            
                            if LumiaF.config.SlaveStore.objtype == 0 then
                                LumiaF.func.DrawSomeText("SMALL", 4, false, (sx / 2) + 60, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                                LumiaF.func.DrawRectangle((sx / 2) - 45, sy - 45,163,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                                if LumiaN.natives.IsDisabledControlJustPressed(1, Lumia1.Keys["E"]) then
                                    LumiaF.config.SlaveStore.objsel = (LumiaF.config.SlaveStore.objsel + 1) % #LumiaF.config.SlaveStore.propsmall
                                    LumiaF.config.SlaveStore.objh = LumiaF.config.SlaveStore.propsmall[LumiaF.config.SlaveStore.objsel + 1]
                                end
                            elseif LumiaF.config.SlaveStore.objtype == 1 then
                                LumiaF.func.DrawSomeText("LARGE", 4, false, (sx / 2) + 60, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                                LumiaF.func.DrawRectangle((sx / 2) - 45, sy - 45,163,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                                if LumiaN.natives.IsDisabledControlJustPressed(1, Lumia1.Keys["E"]) then
                                    LumiaF.config.SlaveStore.objsel1 = (LumiaF.config.SlaveStore.objsel1 + 1) % #LumiaF.config.SlaveStore.proplarge
                                    LumiaF.config.SlaveStore.objh = LumiaF.config.SlaveStore.proplarge[LumiaF.config.SlaveStore.objsel1 + 1]
                                end
                            elseif LumiaF.config.SlaveStore.objtype == 2 then
                                LumiaF.func.DrawSomeText("CUSTOM", 4, false, (sx / 2) + 60, sy - 45, LumiaF.config.FreeCamScale, LumiaF.config.CText.r, LumiaF.config.CText.g, LumiaF.config.CText.b, LumiaF.config.CText.a)
                                LumiaF.func.DrawRectangle((sx / 2) - 45, sy - 45,172,35,LumiaF.config.CSecondary.r, LumiaF.config.CSecondary.g, LumiaF.config.CSecondary.b, LumiaF.config.CSecondary.a)
                                if LumiaN.natives.IsDisabledControlJustPressed(1, Lumia1.Keys["R"]) then
                                    local model = LumiaM.Mfunc.KeyboardInput('model', '', 25)
                                    if LumiaN.natives.IsModelValid(model) then
                                        Lumia1.rE.LumTable.LumInsert(LumiaF.config.SlaveStore.propcustom, Lumia1.rE.LumHash(model))
                                    else
                                        print('bad model man')
                                    end
                                end
                                if LumiaN.natives.IsDisabledControlJustPressed(1, Lumia1.Keys["E"]) then
                                    LumiaF.config.SlaveStore.objsel2 = (LumiaF.config.SlaveStore.objsel2 + 1) % #LumiaF.config.SlaveStore.propcustom
                                    LumiaF.config.SlaveStore.objh = LumiaF.config.SlaveStore.propcustom[LumiaF.config.SlaveStore.objsel2 + 1]
                                end
                            end
                            if LumiaN.natives.IsDisabledControlPressed(1, Lumia1.Keys['N6']) then
                                LumiaF.config.SlaveStore.rot = (LumiaF.config.SlaveStore.rot + 1.5) % 360.0
                            elseif LumiaN.natives.IsDisabledControlPressed(1, Lumia1.Keys['N4']) then
                                LumiaF.config.SlaveStore.rot = (LumiaF.config.SlaveStore.rot - 1.5) % 360.0
                            end
                            if LumiaN.natives.IsDisabledControlPressed(1, Lumia1.Keys['N8']) then
                                LumiaF.config.SlaveStore.rot1 = (LumiaF.config.SlaveStore.rot1 + 1.5) % 360.0
                            elseif LumiaN.natives.IsDisabledControlPressed(1, Lumia1.Keys['N5']) then
                                LumiaF.config.SlaveStore.rot1 = (LumiaF.config.SlaveStore.rot1 - 1.5) % 360.0
                            end
                            if LumiaN.natives.IsDisabledControlPressed(1, Lumia1.Keys['N7']) then
                                LumiaF.config.SlaveStore.rot2 = (LumiaF.config.SlaveStore.rot2 + 1.5) % 360.0
                            elseif LumiaN.natives.IsDisabledControlPressed(1, Lumia1.Keys['N9']) then
                                LumiaF.config.SlaveStore.rot2 = (LumiaF.config.SlaveStore.rot2 - 1.5) % 360.0
                            end
                            if LumiaN.natives.IsDisabledControlJustPressed(1, Lumia1.Keys['N+']) then
                                LumiaF.config.SlaveStore.rot = 0
                                LumiaF.config.SlaveStore.rot1 = 0
                                LumiaF.config.SlaveStore.rot2 = 0
                            end
                            if LumiaN.natives.IsDisabledControlJustPressed(1, Lumia1.Keys['MOUSE1']) then
                                LumiaF.config.SlaveStore.placeski = true
                            end
                            LumiaM.FunFunc.FCObjectSpoon(coords.x, coords.y, coords.z, LumiaF.config.SlaveStore.rot, LumiaF.config.SlaveStore.rot1, LumiaF.config.SlaveStore.rot2, LumiaF.config.SlaveStore.placeski, LumiaF.config.SlaveStore.objh)
                        else
                            LumiaN.natives.SetEntityAsMissionEntity(LumiaF.config.SlaveStore.propski)						
                            LumiaN.natives.DeleteEntity(LumiaF.config.SlaveStore.propski)
                            LumiaN.natives.DeleteObject(LumiaF.config.SlaveStore.propski)
                            LumiaF.config.SlaveStore.propski = nil
                        end											
                    end				 
                end				
        end
end)
-- Notification Thread --
Lumia1.rE.LumThread(function()
    while LumiaF.config.dienow do
        if LumiaF.NotiQ.text[1] ~= nil then
            local spd = 1000
            for i = 1, #LumiaF.NotiQ.text do
                spd = spd - 15
            end
            LumiaM.Mfunc.DrawNotification(LumiaF.NotiQ.text[1], spd)
            Lumia1.rE.LumWait(spd + LumiaF.NotiQ.timeout[1])            
            Lumia1.rE.LumTable.LumRemove(LumiaF.NotiQ.text, 1)
            Lumia1.rE.LumTable.LumRemove(LumiaF.NotiQ.timeout, 1)
        end
        Lumia1.rE.LumWait(0)
    end
end)