Absolute = { }

Absolute.debug = false

local Enabled = true


client = GetPlayerName(PlayerId())
for i = 1, 30 do
print("")
end
print("===================================================================================================================================================\n \n                    WELCOME TO ABSOLUTE " .. client .. "\n \n================================================================================================================================================================================================================================================")


function ParticlesToSpawnedPed(dict, particle, ParticlesFor)
	RequestNamedPtfxAsset(dict)
	Citizen.Wait(50)
	UseParticleFxAssetNextCall(dict)
	StartNetworkedParticleFxNonLoopedOnEntity(particle, ParticlesFor, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
end

for i = 0, 3 do
	ParticlesToSpawnedPed("core", "exp_water", GetPlayerPed(-1))
	end

local menus = { }
local keys = { up = 172, down = 173, left = 174, right = 175, select = 176, back = 177 }
local optionCount = 0

local currentKey = nil
local currentMenu = nil

local titleHeight = 0.07
local titleYOffset = 0.005
local titleXOffset = 0.2
local titleScale = 1.2

local buttonHeight = 0.033 --0.03
local buttonFont = 4
local buttonScale = 0.360
local buttonTextXOffset = 0.003 -- 0.004
local buttonTextYOffset = 0.0025-- 0.00

local function debugPrint(text)
	if Absolute.debug then
		Citizen.Trace('[Absolute] '..tostring(text))
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


local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)
	SetTextColour(color.r, color.g, color.b, color.a)
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
		local y = menus[currentMenu].y + titleHeight / 2

		if menus[currentMenu].titleBackgroundSprite then
			DrawSprite(menus[currentMenu].titleBackgroundSprite.dict, menus[currentMenu].titleBackgroundSprite.name, x, y, menus[currentMenu].width, titleHeight, 0., 153, 76, 0, 255)
		else
			drawRect(x, y, menus[currentMenu].width, titleHeight, menus[currentMenu].titleBackgroundColor)
		end

		drawText(menus[currentMenu].title, x, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, menus[currentMenu].titleColor, titleScale, true)
	

	end
end

local function drawSubTitle()
	if menus[currentMenu] then
		local x = menus[currentMenu].x + menus[currentMenu].width / 2
		local y = menus[currentMenu].y + titleHeight + buttonHeight / 2
		local subTitleColor = { r = 255, g =128, b = 0, a = 255 }

		drawRect(x, y, menus[currentMenu].width, buttonHeight, menus[currentMenu].subTitleBackgroundColor)
		drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false)
local version = 'ALPHA V1'
drawText(tostring(version)..'  ', menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false, false, true)
	end
end


local function drawBottomLine()

	if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
		multiplier = optionCount
	elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end


	if menus[currentMenu] then


		local x = menus[currentMenu].x + menus[currentMenu].width / 2
		local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) + buttonHeight/2
		local subTitleColor = { r = 255, g =128, b = 0, a = 255 }

		drawRect(x, y, menus[currentMenu].width, buttonHeight, menus[currentMenu].subTitleBackgroundColor)
		drawText('redENGINE', menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false)

		--local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)
			drawText(tostring(menus[currentMenu].currentOption)..' / '..tostring(optionCount), menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false, false, true)
		
	end
end


local function drawButton(text, subText, spriteData)
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
			subTextColor = menus[currentMenu].menuFocusTextColor
		else
			backgroundColor = menus[currentMenu].menuBackgroundColor
			textColor = menus[currentMenu].menuTextColor
			subTextColor = menus[currentMenu].menuSubTextColor
			shadow = true
		end

		drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor)
		

		local MainColor = {
			r = 255, 
			g = 128, 
			b = 0,
			a = 255
		}
		

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
	end
end


function Absolute.CreateMenu(id, title)
	-- Default settings
	menus[id] = { }
	menus[id].title = title
	menus[id].subTitle = 'MAIN MENU'

	menus[id].visible = false

	menus[id].previousMenu = nil

	menus[id].aboutToBeClosed = false

	menus[id].x = 0.0175
	menus[id].y = 0.3
	menus[id].width = 0.21

	menus[id].currentOption = 1
	menus[id].maxOptionCount = 14

	menus[id].titleFont = 4
	menus[id].titleColor = { r = 255, g = 128, b = 0, a = 255 }
	menus[id].titleBackgroundColor = { r = 255, g = 255, b = 255, a = 0 } -- 25 25 25 240
	menus[id].titleBackgroundSprite = nil

	menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 }
	menus[id].menuSubTextColor = { r = 255, g = 128, b = 0, a = 255 }
	menus[id].menuFocusTextColor = { r = 255, g = 255, b = 255, a = 255 }
	menus[id].menuFocusBackgroundColor = { r = 152, g = 51, b = 0, a = 200 }
	menus[id].menuBackgroundColor = { r = 25, g = 25, b = 25, a = 220 }

	menus[id].subTitleBackgroundColor = { r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255 }

	menus[id].buttonPressedSound = { name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET" } --https://pastebin.com/0neZdsZ5

	debugPrint(tostring(id)..' menu created')
end


function Absolute.CreateSubMenu(id, parent, subTitle)
	if menus[parent] then
		Absolute.CreateMenu(id, menus[parent].title)

		if subTitle then
			setMenuProperty(id, 'subTitle', string.upper(subTitle))
		else
			setMenuProperty(id, 'subTitle', string.upper(menus[parent].subTitle))
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


function Absolute.CurrentMenu()
	return currentMenu
end


function Absolute.OpenMenu(id)
	if id and menus[id] then
		PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
		setMenuVisible(id, true)
		debugPrint(tostring(id)..' menu opened')
	else
		debugPrint('Failed to open '..tostring(id)..' menu: it doesn\'t exist')
	end
end


function Absolute.IsMenuOpened(id)
	return isMenuVisible(id)
end


function Absolute.IsAnyMenuOpened()
	for id, _ in pairs(menus) do
		if isMenuVisible(id) then return true end
	end

	return false
end


function Absolute.IsMenuAboutToBeClosed()
	if menus[currentMenu] then
		return menus[currentMenu].aboutToBeClosed
	else
		return false
	end
end


function Absolute.CloseMenu()
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


function Absolute.Button(text, subText, spriteData)
	local buttonText = text
	if subText then
		buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }'
	end

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawButton(text, subText, spriteData)

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


function Absolute.MenuButton(text, id, subText, spriteData)
	if menus[id] then
		if Absolute.Button(text, subText, spriteData) then
			setMenuVisible(currentMenu, false)
			setMenuVisible(id, true, true)

			return true
		end
	else
		debugPrint('Failed to create '..tostring(text)..' menu button: '..tostring(id)..' submenu doesn\'t exist')
	end

	return false
end


function Absolute.CheckBox(text, checked, callback)
	if Absolute.Button(text, checked and '~g~ON' or '~r~OFF') then
		checked = not checked
		debugPrint(tostring(text)..' checkbox changed to '..tostring(checked))
		if callback then callback(checked) end

		return true
	end

	return false
end


function Absolute.ComboBox(text, items, currentIndex, selectedIndex, callback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = '- ' ..tostring(selectedItem).. ' -'
	end

	if Absolute.Button(text, selectedItem) then
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


function Absolute.Display()
	if isMenuVisible(currentMenu) then
		if menus[currentMenu].aboutToBeClosed then
			Absolute.CloseMenu()
		else
			ClearAllHelpMessages()

			drawTitle()
			drawSubTitle()
			drawBottomLine()
			

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
					Absolute.CloseMenu()
				end
			end
			

			optionCount = 0
		end
	end
end

function Absolute.ComboBoxSlider(text, items, currentIndex, selectedIndex, callback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = tostring(selectedItem)
	end

	if Absolute.Button2(text, items, itemsCount, currentIndex) then
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
function Absolute.Button2(text, items, itemsCount, currentIndex)
	local buttonText = text

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawButton2(text, items, itemsCount, currentIndex)

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


function drawButton2(text, items, itemsCount, currentIndex)
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
			subTextColor = menus[currentMenu].menuFocusTextColor
		else
			backgroundColor = menus[currentMenu].menuBackgroundColor
			textColor = menus[currentMenu].menuTextColor
			subTextColor = menus[currentMenu].menuSubTextColor
			shadow = true
		end

		local sliderWidth = ((menus[currentMenu].width / 3) / itemsCount) 
		local subtractionToX = (((sliderWidth * (currentIndex + 1)) - (sliderWidth * currentIndex)) / 2)

		-- Draw order from top to bottom
		drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor) -- Button Rectangle -2.15
		drawRect((menus[currentMenu].x + 0.1375) + (subtractionToX * itemsCount), y, sliderWidth * (itemsCount-1), buttonHeight / 2, {r = 110, g = 110, b = 110, a = 150}) -- Slide Outline
		drawRect((menus[currentMenu].x + 0.1375) + (subtractionToX * currentIndex), y, sliderWidth * (currentIndex-1), buttonHeight / 2, {r = 200, g = 200, b = 200, a = 140}) -- Slide
		drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow) -- Text
		local XOffset = 0.16 -- Default value in case of any error?

		--Ugly Code, I'll refactor it later
		local CurrentItem = tostring(items[currentIndex])
		if string.len(CurrentItem) == 1 then XOffset = 0.1275
		elseif string.len(CurrentItem) == 2 then XOffset = 0.1275
		elseif string.len(CurrentItem) == 3 then XOffset = 0.1275
		elseif string.len(CurrentItem) == 4 then XOffset = 0.1275 --0.1585
		elseif string.len(CurrentItem) == 5 then XOffset = 0.1275
		elseif string.len(CurrentItem) >= 6 then XOffset = 0.1275
		end
		-- roundNum seems kinda useless since I'm adjusting every position manually based on the lenght of the string. As stated above, I'll refactor this part later.
		drawText(items[currentIndex], (menus[currentMenu].x + XOffset) + (sliderWidth * roundNum((itemsCount / 2), 3)), y - (buttonHeight / 2.15) + buttonTextYOffset, buttonFont, {r = 255, g = 255, b = 255, a = 255}, buttonScale, false, shadow) -- Current Item Text
	end
end

function Absolute.SetMenuWidth(id, width)
	setMenuProperty(id, 'width', width)
end


function Absolute.SetMenuX(id, x)
	setMenuProperty(id, 'x', x)
end


function Absolute.SetMenuY(id, y)
	setMenuProperty(id, 'y', y)
end


function Absolute.SetMenuMaxOptionCountOnScreen(id, count)
	setMenuProperty(id, 'maxOptionCount', count)
end


function Absolute.SetTitle(id, title)
	setMenuProperty(id, 'title', title)
end


function Absolute.SetTitleColor(id, r, g, b, a)
	setMenuProperty(id, 'titleColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a })
end


function Absolute.SetTitleBackgroundColor(id, r, g, b, a)
	setMenuProperty(id, 'titleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a })
end


function Absolute.SetTitleBackgroundSprite(id, textureDict, textureName)
	RequestStreamedTextureDict(textureDict)
	setMenuProperty(id, 'titleBackgroundSprite', { dict = textureDict, name = textureName })
end


function Absolute.SetSubTitle(id, text)
	setMenuProperty(id, 'subTitle', string.upper(text))
end




function Absolute.SetMenuBackgroundColor(id, r, g, b, a)
	setMenuProperty(id, 'menuBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a })
end


function Absolute.SetMenuTextColor(id, r, g, b, a)
	setMenuProperty(id, 'menuTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a })
end

function Absolute.SetMenuSubTextColor(id, r, g, b, a)
	setMenuProperty(id, 'menuSubTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a })
end

function Absolute.SetMenuFocusColor(id, r, g, b, a)
	setMenuProperty(id, 'menuFocusColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a })
end


function Absolute.SetMenuButtonPressedSound(id, name, set)
	setMenuProperty(id, 'buttonPressedSound', { ['name'] = name, ['set'] = set })
end

function Absolute.SetSubTitle(id, text)
	setMenuProperty(id, 'subTitle', text)
end







--===================================================================================================================
-- FUNCTIONS
--===================================================================================================================

local aA = {
	"Dinghy", "Dinghy2", "Dinghy3", "Dingh4", "Jetmax", "Marquis", "Seashark", "Seashark2", "Seashark3", "Speeder", "Speeder2", "Squalo", "Submersible", "Submersible2", "Suntrap", "Toro", "Toro2", "Tropic", "Tropic2", "Tug"
}
local aB = {
	"Benson", "Biff", "Cerberus", "Cerberus2", "Cerberus3", "Hauler", "Hauler2", "Mule", "Mule2", "Mule3", "Mule4", "Packer", "Phantom", "Phantom2", "Phantom3", "Pounder", "Pounder2", "Stockade", "Stockade3", "Terbyte"
}
local aC = {
	"Blista", "Blista2", "Blista3", "Brioso", "Dilettante", "Dilettante2", "Issi2", "Issi3", "issi4", "Iss5", "issi6", "Panto", "Prarire", "Rhapsody"
}
local aD = {
	"CogCabrio", "Exemplar", "F620", "Felon", "Felon2", "Jackal", "Oracle", "Oracle2", "Sentinel", "Sentinel2", "Windsor", "Windsor2", "Zion", "Zion2"
}
local aE = {
	"Bmx", "Cruiser", "Fixter", "Scorcher", "Tribike", "Tribike2", "tribike3"
}
local aF = {
	"ambulance", "FBI", "FBI2", "FireTruk", "PBus", "police", "Police2", "Police3", "Police4", "PoliceOld1", "PoliceOld2", "PoliceT", "Policeb", "Polmav", "Pranger", "Predator", "Riot", "Riot2", "Sheriff", "Sheriff2"
}
local aG = {
	"Akula", "Annihilator", "Buzzard", "Buzzard2", "Cargobob", "Cargobob2", "Cargobob3", "Cargobob4", "Frogger", "Frogger2", "Havok", "Hunter", "Maverick", "Savage", "Seasparrow", "Skylift", "Supervolito", "Supervolito2", "Swift", "Swift2", "Valkyrie", "Valkyrie2", "Volatus"
}
local aH = {
	"Bulldozer", "Cutter", "Dump", "Flatbed", "Guardian", "Handler", "Mixer", "Mixer2", "Rubble", "Tiptruck", "Tiptruck2"
}
local aI = {
	"APC", "Barracks", "Barracks2", "Barracks3", "Barrage", "Chernobog", "Crusader", "Halftrack", "Khanjali", "Rhino", "Scarab", "Scarab2", "Scarab3", "Thruster", "Trailersmall2"
}
local aJ = {
	"Akuma", "Avarus", "Bagger", "Bati2", "Bati", "BF400", "Blazer4", "CarbonRS", "Chimera", "Cliffhanger", "Daemon", "Daemon2", "Defiler", "Deathbike", "Deathbike2", "Deathbike3", "Diablous", "Diablous2", "Double", "Enduro", "esskey", "Faggio2", "Faggio3", "Faggio", "Fcr2", "fcr", "gargoyle", "hakuchou2", "hakuchou", "hexer", "innovation", "Lectro", "Manchez", "Nemesis", "Nightblade", "Oppressor", "Oppressor2", "PCJ", "Ratbike", "Ruffian", "Sanchez2", "Sanchez", "Sanctus", "Shotaro", "Sovereign", "Thrust", "Vader", "Vindicator", "Vortex", "Wolfsbane", "zombiea", "zombieb"
}
local aK = {
	"Blade", "Buccaneer", "Buccaneer2", "Chino", "Chino2", "clique", "Deviant", "Dominator", "Dominator2", "Dominator3", "Dominator4", "Dominator5", "Dominator6", "Dukes", "Dukes2", "Ellie", "Faction", "faction2", "faction3", "Gauntlet", "Gauntlet2", "Hermes", "Hotknife", "Hustler", "Impaler", "Impaler2", "Impaler3", "Impaler4", "Imperator", "Imperator2", "Imperator3", "Lurcher", "Moonbeam", "Moonbeam2", "Nightshade", "Phoenix", "Picador", "RatLoader", "RatLoader2", "Ruiner", "Ruiner2", "Ruiner3", "SabreGT", "SabreGT2", "Sadler2", "Slamvan", "Slamvan2", "Slamvan3", "Slamvan4", "Slamvan5", "Slamvan6", "Stalion", "Stalion2", "Tampa", "Tampa3", "Tulip", "Vamos,", "Vigero", "Virgo", "Virgo2", "Virgo3", "Voodoo", "Voodoo2", "Yosemite"
}
local aL = {
	"BFinjection", "Bifta", "Blazer", "Blazer2", "Blazer3", "Blazer5", "Bohdi", "Brawler", "Bruiser", "Bruiser2", "Bruiser3", "Caracara", "DLoader", "Dune", "Dune2", "Dune3", "Dune4", "Dune5", "Insurgent", "Insurgent2", "Insurgent3", "Kalahari", "Kamacho", "LGuard", "Marshall", "Mesa", "Mesa2", "Mesa3", "Monster", "Monster4", "Monster5", "Nightshark", "RancherXL", "RancherXL2", "Rebel", "Rebel2", "RCBandito", "Riata", "Sandking", "Sandking2", "Technical", "Technical2", "Technical3", "TrophyTruck", "TrophyTruck2", "Freecrawler", "Menacer"
}
local aM = {
	"AlphaZ1", "Avenger", "Avenger2", "Besra", "Blimp", "blimp2", "Blimp3", "Bombushka", "Cargoplane", "Cuban800", "Dodo", "Duster", "Howard", "Hydra", "Jet", "Lazer", "Luxor", "Luxor2", "Mammatus", "Microlight", "Miljet", "Mogul", "Molotok", "Nimbus", "Nokota", "Pyro", "Rogue", "Seabreeze", "Shamal", "Starling", "Stunt", "Titan", "Tula", "Velum", "Velum2", "Vestra", "Volatol", "Striekforce"
}
local aN = {
	"BJXL", "Baller", "Baller2", "Baller3", "Baller4", "Baller5", "Baller6", "Cavalcade", "Cavalcade2", "Dubsta", "Dubsta2", "Dubsta3", "FQ2", "Granger", "Gresley", "Habanero", "Huntley", "Landstalker", "patriot", "Patriot2", "Radi", "Rocoto", "Seminole", "Serrano", "Toros", "XLS", "XLS2"
}
local aO = {
	"Asea", "Asea2", "Asterope", "Cog55", "Cogg552", "Cognoscenti", "Cognoscenti2", "emperor", "emperor2", "emperor3", "Fugitive", "Glendale", "ingot", "intruder", "limo2", "premier", "primo", "primo2", "regina", "romero", "stafford", "Stanier", "stratum", "stretch", "surge", "tailgater", "warrener", "Washington"
}
local aP = {
	"Airbus", "Brickade", "Bus", "Coach", "Rallytruck", "Rentalbus", "taxi", "Tourbus", "Trash", "Trash2", "WastIndr", "PBus2"
}
local aQ = {
	"Alpha", "Banshee", "Banshee2", "BestiaGTS", "Buffalo", "Buffalo2", "Buffalo3", "Carbonizzare", "Comet2", "Comet3", "Comet4", "Comet5", "Coquette", "Deveste", "Elegy", "Elegy2", "Feltzer2", "Feltzer3", "FlashGT", "Furoregt", "Fusilade", "Futo", "GB200", "Hotring", "Infernus2", "Italigto", "Jester", "Jester2", "Khamelion", "Kurama", "Kurama2", "Lynx", "MAssacro", "MAssacro2", "neon", "Ninef", "ninfe2", "omnis", "Pariah", "Penumbra", "Raiden", "RapidGT", "RapidGT2", "Raptor", "Revolter", "Ruston", "Schafter2", "Schafter3", "Schafter4", "Schafter5", "Schafter6", "Schlagen", "Schwarzer", "Sentinel3", "Seven70", "Specter", "Specter2", "Streiter", "Sultan", "Surano", "Tampa2", "Tropos", "Verlierer2", "ZR380", "ZR3802", "ZR3803"
}
local aR = {
	"Ardent", "BType", "BType2", "BType3", "Casco", "Cheetah2", "Cheburek", "Coquette2", "Coquette3", "Deluxo", "Fagaloa", "Gt500", "JB700", "JEster3", "MAmba", "Manana", "Michelli", "Monroe", "Peyote", "Pigalle", "RapidGT3", "Retinue", "Savastra", "Stinger", "Stingergt", "Stromberg", "Swinger", "Torero", "Tornado", "Tornado2", "Tornado3", "Tornado4", "Tornado5", "Tornado6", "Viseris", "Z190", "ZType"
}
local aS = {
	"Adder", "Autarch", "Bullet", "Cheetah", "Cyclone", "EntityXF", "Entity2", "FMJ", "GP1", "Infernus", "LE7B", "Nero", "Nero2", "Osiris", "Penetrator", "PFister811", "Prototipo", "Reaper", "SC1", "Scramjet", "Sheava", "SultanRS", "Superd", "T20", "Taipan", "Tempesta", "Tezeract", "Turismo2", "Turismor", "Tyrant", "Tyrus", "Vacca", "Vagner", "Vigilante", "Visione", "Voltic", "Voltic2", "Zentorno", "Italigtb", "Italigtb2", "XA21"
}
local aT = {
	"ArmyTanker", "ArmyTrailer", "ArmyTrailer2", "BaleTrailer", "BoatTrailer", "CableCar", "DockTrailer", "Graintrailer", "Proptrailer", "Raketailer", "TR2", "TR3", "TR4", "TRFlat", "TVTrailer", "Tanker", "Tanker2", "Trailerlogs", "Trailersmall", "Trailers", "Trailers2", "Trailers3"
}
local aU = {
	"Freight", "Freightcar", "Freightcont1", "Freightcont2", "Freightgrain", "Freighttrailer", "TankerCar"
}
local aV = {
	"Airtug", "Caddy", "Caddy2", "Caddy3", "Docktug", "Forklift", "Mower", "Ripley", "Sadler", "Scrap", "TowTruck", "Towtruck2", "Tractor", "Tractor2", "Tractor3", "TrailerLArge2", "Utilitruck", "Utilitruck3", "Utilitruck2"
}
local aW = {
	"Bison", "Bison2", "Bison3", "BobcatXL", "Boxville", "Boxville2", "Boxville3", "Boxville4", "Boxville5", "Burrito", "Burrito2", "Burrito3", "Burrito4", "Burrito5", "Camper", "GBurrito", "GBurrito2", "Journey", "Minivan", "Minivan2", "Paradise", "pony", "Pony2", "Rumpo", "Rumpo2", "Rumpo3", "Speedo", "Speedo2", "Speedo4", "Surfer", "Surfer2", "Taco", "Youga", "youga2"
}
local aX = {
	"Boats", "Commercial", "Compacts", "Coupes", "Cycles", "Emergency", "Helictopers", "Industrial", "Military", "Motorcycles", "Muscle", "Off-Road", "Planes", "SUVs", "Sedans", "Service", "Sports", "Sports Classic", "Super", "Trailer", "Trains", "Utility", "Vans"
}
local aY = {
	aA, aB, aC, aD, aE, aF, aG, aH, aI, aJ, aK, aL, aM, aN, aO, aP, aQ, aR, aS, aT, aU, aV, aW
}

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
	["MOUSE1"] = 24
}

-- Armas
local allWeapons = {"WEAPON_KNIFE","WEAPON_KNUCKLE","WEAPON_NIGHTSTICK","WEAPON_HAMMER","WEAPON_BAT","WEAPON_GOLFCLUB","WEAPON_CROWBAR","WEAPON_BOTTLE","WEAPON_DAGGER","WEAPON_HATCHET","WEAPON_MACHETE","WEAPON_FLASHLIGHT","WEAPON_SWITCHBLADE","WEAPON_PISTOL","WEAPON_PISTOL_MK2","WEAPON_COMBATPISTOL","WEAPON_APPISTOL","WEAPON_PISTOL50","WEAPON_SNSPISTOL","WEAPON_HEAVYPISTOL","WEAPON_VINTAGEPISTOL","WEAPON_STUNGUN","WEAPON_FLAREGUN","WEAPON_MARKSMANPISTOL","WEAPON_REVOLVER","WEAPON_MICROSMG","WEAPON_SMG","WEAPON_SMG_MK2","WEAPON_ASSAULTSMG","WEAPON_MG","WEAPON_COMBATMG","WEAPON_COMBATMG_MK2","WEAPON_COMBATPDW","WEAPON_GUSENBERG","WEAPON_MACHINEPISTOL","WEAPON_ASSAULTRIFLE","WEAPON_ASSAULTRIFLE_MK2","WEAPON_CARBINERIFLE","WEAPON_CARBINERIFLE_MK2","WEAPON_ADVANCEDRIFLE","WEAPON_SPECIALCARBINE","WEAPON_BULLPUPRIFLE","WEAPON_COMPACTRIFLE","WEAPON_PUMPSHOTGUN","WEAPON_SAWNOFFSHOTGUN","WEAPON_BULLPUPSHOTGUN","WEAPON_ASSAULTSHOTGUN","WEAPON_MUSKET","WEAPON_HEAVYSHOTGUN","WEAPON_DBSHOTGUN","WEAPON_SNIPERRIFLE","WEAPON_HEAVYSNIPER","WEAPON_HEAVYSNIPER_MK2","WEAPON_MARKSMANRIFLE","WEAPON_GRENADELAUNCHER","WEAPON_GRENADELAUNCHER_SMOKE","WEAPON_RPG","WEAPON_STINGER","WEAPON_FIREWORK","WEAPON_HOMINGLAUNCHER","WEAPON_GRENADE","WEAPON_STICKYBOMB","WEAPON_PROXMINE","WEAPON_BZGAS","WEAPON_SMOKEGRENADE","WEAPON_MOLOTOV","WEAPON_FIREEXTINGUISHER","WEAPON_PETROLCAN","WEAPON_SNOWBALL","WEAPON_FLARE","WEAPON_BALL"}

	local b7 = {
		Melee = {
			BaseballBat = {
				id = "weapon_bat", name = "Baseball Bat", bInfAmmo = false, mods = {}
			}, BrokenBottle = {
				id = "weapon_bottle", name = "Broken Bottle", bInfAmmo = false, mods = {}
			}, Crowbar = {
				id = "weapon_Crowbar", name = "Crowbar", bInfAmmo = false, mods = {}
			}, Flashlight = {
				id = "weapon_flashlight", name = "Flashlight", bInfAmmo = false, mods = {}
			}, GolfClub = {
				id = "weapon_golfclub", name = "Golf Club", bInfAmmo = false, mods = {}
			}, BrassKnuckles = {
				id = "weapon_knuckle", name = "Brass Knuckles", bInfAmmo = false, mods = {}
			}, Knife = {
				id = "weapon_knife", name = "Knife", bInfAmmo = false, mods = {}
			}, Machete = {
				id = "weapon_machete", name = "Machete", bInfAmmo = false, mods = {}
			}, Switchblade = {
				id = "weapon_switchblade", name = "Switchblade", bInfAmmo = false, mods = {}
			}, Nightstick = {
				id = "weapon_nightstick", name = "Nightstick", bInfAmmo = false, mods = {}
			}, BattleAxe = {
				id = "weapon_battleaxe", name = "Battle Axe", bInfAmmo = false, mods = {}
			}
		}, Handguns = {
			Pistol = {
				id = "weapon_pistol", name = "Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_PISTOL_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_PISTOL_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
						}
					}
				}
			}, PistolMK2 = {
				id = "weapon_pistol_mk2", name = "Pistol MK 2", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Mounted Scope", id = "COMPONENT_AT_PI_RAIL"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH_02"
						}
					}, BarrelAttachments = {
						{
							name = "Compensator", id = "COMPONENT_AT_PI_COMP"
						}, {
							name = "Suppessor", id = "COMPONENT_AT_PI_SUPP_02"
						}
					}
				}
			}, CombatPistol = {
				id = "weapon_combatpistol", name = "Combat Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, APPistol = {
				id = "weapon_appistol", name = "AP Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_APPISTOL_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_APPISTOL_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, StunGun = {
				id = "weapon_stungun", name = "Stun Gun", bInfAmmo = false, mods = {}
			}, Pistol50 = {
				id = "weapon_pistol50", name = "Pistol .50", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_PISTOL50_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_PISTOL50_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
						}
					}
				}
			}, SNSPistol = {
				id = "weapon_snspistol", name = "SNS Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_SNSPISTOL_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_SNSPISTOL_CLIP_02"
						}
					}
				}
			}, SNSPistolMkII = {
				id = "weapon_snspistol_mk2", name = "SNS Pistol Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Mounted Scope", id = "COMPONENT_AT_PI_RAIL_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH_03"
						}
					}, BarrelAttachments = {
						{
							name = "Compensator", id = "COMPONENT_AT_PI_COMP_02"
						}, {
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
						}
					}
				}
			}, HeavyPistol = {
				id = "weapon_heavypistol", name = "Heavy Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, VintagePistol = {
				id = "weapon_vintagepistol", name = "Vintage Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_02"
						}
					}, BarrelAttachments = {
						{
							"Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, FlareGun = {
				id = "weapon_flaregun", name = "Flare Gun", bInfAmmo = false, mods = {}
			}, MarksmanPistol = {
				id = "weapon_marksmanpistol", name = "Marksman Pistol", bInfAmmo = false, mods = {}
			}, HeavyRevolver = {
				id = "weapon_revolver", name = "Heavy Revolver", bInfAmmo = false, mods = {}
			}, HeavyRevolverMkII = {
				id = "weapon_revolver_mk2", name = "Heavy Revolver Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_01"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Compensator", id = "COMPONENT_AT_PI_COMP_03"
						}
					}
				}
			}, DoubleActionRevolver = {
				id = "weapon_doubleaction", name = "Double Action Revolver", bInfAmmo = false, mods = {}
			}, UpnAtomizer = {
				id = "weapon_raypistol", name = "Up-n-Atomizer", bInfAmmo = false, mods = {}
			}
		}, SMG = {
			MicroSMG = {
				id = "weapon_microsmg", name = "Micro SMG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_MICROSMG_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_MICROSMG_CLIP_02"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_MACRO"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}
				}
			}, SMG = {
				id = "weapon_smg", name = "SMG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_SMG_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_SMG_CLIP_02"
						}, {
							name = "Drum Magazine", id = "COMPONENT_SMG_CLIP_03"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_MACRO_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, SMGMkII = {
				id = "weapon_smg_mk2", name = "SMG Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_SMG_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_SMG_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_SMG_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_SMG_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_SMG_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS_SMG"
						}, {
							name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2"
						}, {
							name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "Default", id = "COMPONENT_AT_SB_BARREL_01"
						}, {
							name = "Heavy", id = "COMPONENT_AT_SB_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}, {
							name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}
				}
			}, AssaultSMG = {
				id = "weapon_assaultsmg", name = "Assault SMG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_02"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_MACRO"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}
				}
			}, CombatPDW = {
				id = "weapon_combatpdw", name = "Combat PDW", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_COMBATPDW_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_COMBATPDW_CLIP_02"
						}, {
							name = "Drum Magazine", id = "COMPONENT_COMBATPDW_CLIP_03"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_SMALL"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, MachinePistol = {
				id = "weapon_machinepistol", name = "Machine Pistol ", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_02"
						}, {
							name = "Drum Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_03"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, MiniSMG = {
				id = "weapon_minismg", name = "Mini SMG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_MINISMG_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_MINISMG_CLIP_02"
						}
					}
				}
			}, UnholyHellbringer = {
				id = "weapon_raycarbine", name = "Unholy Hellbringer", bInfAmmo = false, mods = {}
			}
		}, Shotguns = {
			PumpShotgun = {
				id = "weapon_pumpshotgun", name = "Pump Shotgun", bInfAmmo = false, mods = {
					Flashlight = {
						{
							"name = Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_SR_SUPP"
						}
					}
				}
			}, PumpShotgunMkII = {
				id = "weapon_pumpshotgun_mk2", name = "Pump Shotgun Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_01"
						}, {
							name = "Dragon Breath Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY"
						}, {
							name = "Steel Buckshot Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "Flechette Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "Explosive Slugs", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE"
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}, {
							name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_SR_SUPP_03"
						}, {
							name = "Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"
						}
					}
				}
			}, SawedOffShotgun = {
				id = "weapon_sawnoffshotgun", name = "Sawed-Off Shotgun", bInfAmmo = false, mods = {}
			}, AssaultShotgun = {
				id = "weapon_assaultshotgun", name = "Assault Shotgun", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, BullpupShotgun = {
				id = "weapon_bullpupshotgun", name = "Bullpup Shotgun", bInfAmmo = false, mods = {
					Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, Musket = {
				id = "weapon_musket", name = "Musket", bInfAmmo = false, mods = {}
			}, HeavyShotgun = {
				id = "weapon_heavyshotgun", name = "Heavy Shotgun", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"
						}, {
							name = "Drum Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, DoubleBarrelShotgun = {
				id = "weapon_dbshotgun", name = "Double Barrel Shotgun", bInfAmmo = false, mods = {}
			}, SweeperShotgun = {
				id = "weapon_autoshotgun", name = "Sweeper Shotgun", bInfAmmo = false, mods = {}
			}
		}, AssaultRifles = {
			AssaultRifle = {
				id = "weapon_assaultrifle", name = "Assault Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_02"
						}, {
							name = "Drum Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_03"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_MACRO"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, AssaultRifleMkII = {
				id = "weapon_assaultrifle_mk2", name = "Assault Rifle Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}, {
							name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "Default", id = "COMPONENT_AT_AR_BARREL_01"
						}, {
							name = "Heavy", id = "COMPONENT_AT_AR_BARREL_0"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}, {
							name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}, CarbineRifle = {
				id = "weapon_carbinerifle", name = "Carbine Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_02"
						}, {
							name = "Box Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_03"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, CarbineRifleMkII = {
				id = "weapon_carbinerifle_mk2", name = "Carbine Rifle Mk II ", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}, {
							name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "Default", id = "COMPONENT_AT_CR_BARREL_01"
						}, {
							name = "Heavy", id = "COMPONENT_AT_CR_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}, {
							name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}, AdvancedRifle = {
				id = "weapon_advancedrifle", name = "Advanced Rifle ", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_02"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_SMALL"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}
				}
			}, SpecialCarbine = {
				id = "weapon_specialcarbine", name = "Special Carbine", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_02"
						}, {
							name = "Drum Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_03"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, SpecialCarbineMkII = {
				id = "weapon_specialcarbine_mk2", name = "Special Carbine Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}, {
							name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "Default", id = "COMPONENT_AT_SC_BARREL_01"
						}, {
							name = "Heavy", id = "COMPONENT_AT_SC_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}, {
							name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}, BullpupRifle = {
				id = "weapon_bullpuprifle", name = "Bullpup Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_02"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_SMALL"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, BullpupRifleMkII = {
				id = "weapon_bullpuprifle_mk2", name = "Bullpup Rifle Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY"
						}, {
							name = "Armor Piercing Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_MK2"
						}, {
							name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "Default", id = "COMPONENT_AT_BP_BARREL_01"
						}, {
							name = "Heavy", id = "COMPONENT_AT_BP_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}, {
							name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, CompactRifle = {
				id = "weapon_compactrifle", name = "Compact Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_02"
						}, {
							name = "Drum Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_03"
						}
					}
				}
			}
		}, LMG = {
			MG = {
				id = "weapon_mg", name = "MG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_MG_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_MG_CLIP_02"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_SMALL_02"
						}
					}
				}
			}, CombatMG = {
				id = "weapon_combatmg", name = "Combat MG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_COMBATMG_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_COMBATMG_CLIP_02"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, CombatMGMkII = {
				id = "weapon_combatmg_mk2", name = "Combat MG Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
						}, {
							name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}
					}, Barrel = {
						{
							name = "Default", id = "COMPONENT_AT_MG_BARREL_01"
						}, {
							name = "Heavy", id = "COMPONENT_AT_MG_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}, GusenbergSweeper = {
				id = "weapon_gusenberg", name = "GusenbergSweeper", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_GUSENBERG_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_GUSENBERG_CLIP_02"
						}
					}
				}
			}
		}, Snipers = {
			SniperRifle = {
				id = "weapon_sniperrifle", name = "Sniper Rifle", bInfAmmo = false, mods = {
					Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_LARGE"
						}, {
							name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}
				}
			}, HeavySniper = {
				id = "weapon_heavysniper", name = "Heavy Sniper", bInfAmmo = false, mods = {
					Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_LARGE"
						}, {
							name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
						}
					}
				}
			}, HeavySniperMkII = {
				id = "weapon_heavysniper_mk2", name = "Heavy Sniper Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY"
						}, {
							name = "Armor Piercing Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ"
						}, {
							name = "Explosive Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE"
						}
					}, Sights = {
						{
							name = "Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_MK2"
						}, {
							name = "Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
						}, {
							name = "Nigt Vision Scope", id = "COMPONENT_AT_SCOPE_NV"
						}, {
							name = "Thermal Scope", id = "COMPONENT_AT_SCOPE_THERMAL"
						}
					}, Barrel = {
						{
							name = "Default", id = "COMPONENT_AT_SR_BARREL_01"
						}, {
							name = "Heavy", id = "COMPONENT_AT_SR_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_SR_SUPP_03"
						}, {
							name = "Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"
						}, {
							name = "Bell-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_09"
						}
					}
				}
			}, MarksmanRifle = {
				id = "weapon_marksmanrifle", name = "Marksman Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_02"
						}
					}, Sights = {
						{
							name = "Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, MarksmanRifleMkII = {
				id = "weapon_marksmanrifle_mk2", name = "Marksman Rifle Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "Default Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01"
						}, {
							name = "Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"
						}, {
							name = "Tracer Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER"
						}, {
							name = "Incendiary Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY"
						}, {
							name = "Hollow Point Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "FMJ Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ     "
						}
					}, Sights = {
						{
							name = "Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}, {
							name = "Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2"
						}
					}, Flashlight = {
						{
							name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "Default", id = "COMPONENT_AT_MRFL_BARREL_01"
						}, {
							name = "Heavy", id = "COMPONENT_AT_MRFL_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}, {
							name = "Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}
		}, Heavy = {
			RPG = {
				id = "weapon_rpg", name = "RPG", bInfAmmo = false, mods = {}
			}, GrenadeLauncher = {
				id = "weapon_grenadelauncher", name = "Grenade Launcher", bInfAmmo = false, mods = {}
			}, GrenadeLauncherSmoke = {
				id = "weapon_grenadelauncher_smoke", name = "Grenade Launcher Smoke", bInfAmmo = false, mods = {}
			}, Minigun = {
				id = "weapon_minigun", name = "Minigun", bInfAmmo = false, mods = {}
			}, FireworkLauncher = {
				id = "weapon_firework", name = "Firework Launcher", bInfAmmo = false, mods = {}
			}, Railgun = {
				id = "weapon_railgun", name = "Railgun", bInfAmmo = false, mods = {}
			}, HomingLauncher = {
				id = "weapon_hominglauncher", name = "Homing Launcher", bInfAmmo = false, mods = {}
			}, CompactGrenadeLauncher = {
				id = "weapon_compactlauncher", name = "Compact Grenade Launcher", bInfAmmo = false, mods = {}
			}, Widowmaker = {
				id = "weapon_rayminigun", name = "Widowmaker", bInfAmmo = false, mods = {}
			}
		}, Throwables = {
			Grenade = {
				id = "weapon_grenade", name = "Grenade", bInfAmmo = false, mods = {}
			}, BZGas = {
				id = "weapon_bzgas", name = "BZ Gas", bInfAmmo = false, mods = {}
			}, MolotovCocktail = {
				id = "weapon_molotov", name = "Molotov Cocktail", bInfAmmo = false, mods = {}
			}, StickyBomb = {
				id = "weapon_stickybomb", name = "Sticky Bomb", bInfAmmo = false, mods = {}
			}, ProximityMines = {
				id = "weapon_proxmine", name = "Proximity Mines", bInfAmmo = false, mods = {}
			}, Snowballs = {
				id = "weapon_snowball", name = "Snowballs", bInfAmmo = false, mods = {}
			}, PipeBombs = {
				id = "weapon_pipebomb", name = "Pipe Bombs", bInfAmmo = false, mods = {}
			}, Baseball = {
				id = "weapon_ball", name = "Baseball", bInfAmmo = false, mods = {}
			}, TearGas = {
				id = "weapon_smokegrenade", name = "Tear Gas", bInfAmmo = false, mods = {}
			}, Flare = {
				id = "weapon_flare", name = "Flare", bInfAmmo = false, mods = {}
			}
		}, Misc = {
			Parachute = {
				id = "gadget_parachute", name = "Parachute", bInfAmmo = false, mods = {}
			}, FireExtinguisher = {
				id = "weapon_fireextinguisher", name = "Fire Extinguisher", bInfAmmo = false, mods = {}
			}
		}
	}
	

local weaponsArrayeet = { --[[Melee]] "WEAPON_KNIFE", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_POOLCUE", "WEAPON_PIPEWRENCH", --[[Pistols]] "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_REVOLVER", "WEAPON_REVOLVER_MK2", "WEAPON_DOUBLEACTION", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_SNSPISTOL_MK2", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", --[[ SMGs / MGs]] "WEAPON_MICROSMG", "WEAPON_MINISMG", "WEAPON_SMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_MACHINEPISTOL", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", --[[ Assault Rifles]] "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_SPECIALCARBINE_MK2", "WEAPON_BULLPUPRIFLE", "WEAPON_BULLPUPRIFLE_MK2", "WEAPON_COMPACTRIFLE", --[[Shotguns]] "WEAPON_PUMPSHOTGUN", "WEAPON_PUMPSHOTGUN_MK2", "WEAPON_SWEEPERSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", --[[Sniper Rifles]] "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_MARKSMANRIFLE_MK2", --[[Heavy Weapons]] "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_MINIGUN", "WEAPON_FIREWORK", "WEAPON_RAILGUN", "WEAPON_HOMINGLAUNCHER", "WEAPON_COMPACTLAUNCHER", --[[Thrown]] "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_BZGAS", "WEAPON_SMOKEGRENADE", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_SNOWBALL", "WEAPON_FLARE", "WEAPON_BALL", }


local be = {
	{
		name = "Engine", id = 11
	}, {
		name = "Brakes", id = 12
	}, {
		name = "Transmission", id = 13
	}, {
		name = "Suspension", id = 15
	}
}

local function RandomSkin(target)
	local ped = GetPlayerPed(target)
	SetPedRandomComponentVariation(ped, false)
	SetPedRandomProps(ped)
end


function kbinput(TextEntry, ExampleText, MaxStringLength)
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


function notify(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
end










function WPTP()
	if DoesBlipExist(GetFirstBlipInfoId(8)) then
		local blipIterator = GetBlipInfoIdIterator(8)
		local blip = GetFirstBlipInfoId(8, blipIterator)
		WaypointCoords = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector())
		wp = true



		local zHeigt = 0.0
		height = 1000.0
		while true do
			Citizen.Wait(0)
			if wp then
				if
					IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
						(GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1))
				then
					entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
				else
					entity = GetPlayerPed(-1)
				end

				SetEntityCoords(entity, WaypointCoords.x, WaypointCoords.y, height)
				FreezeEntityPosition(entity, true)
				local Pos = GetEntityCoords(entity, true)

				if zHeigt == 0.0 then
					height = height - 25.0
					SetEntityCoords(entity, Pos.x, Pos.y, height)
					bool, zHeigt = GetGroundZFor_3dCoord(Pos.x, Pos.y, Pos.z, 0)
				else
					SetEntityCoords(entity, Pos.x, Pos.y, zHeigt)
					FreezeEntityPosition(entity, false)
					wp = false
					height = 1000.0
					zHeigt = 0.0
					notify("Teleported")
					break
				end
			end
		end
	else
		notify("Set a waypoint at map")
	end
end




-- COMBO BOXES CHIT
currFastRunIndex = 1
selFastRunIndex = 1

currFastSwimIndex = 1
selFastSwimIndex = 1



--Fast Run/Swim Options
FastCB = {1.0, 1.09, 1.19, 1.29, 1.39, 1.49}
FastCBWords = {"+0%", "+20%", "+40%", "+60%", "+80%", "+100%"}
-- Default
FastRunMultiplier = 1.0
FastSwimMultiplier = 1.0


--Health/Armor
HealthCB = {200, 120, 140, 160, 180, 200}
HealthCBWords = {"0%", "20%", "40%", "60%", "80%", "100%"}
currHealthIndex = 1
selHealthIndex = 1

--Armor
ArmorCB = {0, 20, 40, 60, 80, 100}
ArmorCBWords = {"0%", "20%", "40%", "60%", "80%", "100%"}
currArmorIndex = 1
selArmorIndex = 1

--Torque multiplier
TorqueModOps = {1.0, 1.5, 2.0, 3.0, 5.0, 10.0, 20.0, 50.0, 100.0, 500.0, 1000.0}
SpeedModAmt = 1.0
currSpeedIndex = 1
selSpeedIndex = 1

--Vehicle wheel
currVFuncIndex = 1
selVFuncIndex = 1

--Dirty Level
DirtyCB = {0.0, 3.0, 6.0, 9.0, 12.0, 15.0}
DirtyCBWords = {"0%", "20%", "40%", "60%", "80%", "100%"}
currDirtyIndex = 1
selDirtyIndex = 1


-- ESP THX NERTIGEL
visualsESPRefreshRate = 0
visualsESPRefreshRates = {"0ms", "50ms", "150ms", "250ms", "500ms", "1s", "2s", "5s"}
visualsESPDistanceOps = {50.0, 100.0, 500.0, 1000.0, 2000.0, 5000.0}
visualsESPDistance = 500.0
currentVisualsESPDistance = 1
selectedVisualsESPDistance = 1
currentESPRefreshIndex = 1
selectedESPRefreshIndex = 1
-- 
EspRangeCB = {25.0, 50.0, 100.0, 150.0, 250.0, 500.0}
EspRangeCBWords = {"25m", "50", "100", "150", "250", "500"}
currEspRangeIndex = 1
selEspRangeIndex = 1
-- sounds

currSoundFuncIndex = 1
selSoundFuncIndex = 1


-- Player  misc
currMiscPlayerFuncIndex = 1
selMiscPlayerFuncIndex = 1
-- Player troll
currTrollPlayerFuncIndex = 1
selTrollPlayerFuncIndex = 1
-- Weapon Mod
currWeaponModFuncIndex = 1
selWeaponModFuncIndex = 1


-- Poke attacks
currPokeAttackFuncIndex = 1
selPokeAttackFuncIndex = 1
-- Poke Ped
currPokePedFuncIndex = 1
selPokePedFuncIndex = 1

-- MyPed
currMyPedFuncIndex = 1
selMyPedFuncIndex = 1

-- Blocker
currZoneBlockerFuncIndex = 1
selZoneBlockerFuncIndex = 1

-- Tire exploder
currTireIndex = 1
selTireIndex = 1

-- Steal functions
currStealVehFuncIndex = 1
selStealVehFuncIndex = 1


-- Ped weapon
currPedToShootFuncIndex = 1
selPedToShootFuncIndex = 1
-- Weapon Tint
currWeaponTintFuncIndex = 1
selWeaponTintFuncIndex = 1

-- ramp
currRampSelectionIndex = 1
selRampSelectionIndex = 1

-- Special Weapon
currWeaponSpecialFinishFuncIndex = 1
selWeaponSpecialFinishFuncIndex = 1

-- DOG
currDogDeleteSpawnFuncIndex = 1
selDogDeleteSpawnFuncIndex = 1
-- DOG PED
currDogPedFuncIndex = 1
selDogPedFuncIndex = 1
-- DOG ANIMATION
currDogAnimationFuncIndex = 1
selDogAnimationFuncIndex = 1
-- VEHICLES LABORATORY
currBroomIndex = 1
selBroomIndex = 1
currSurfIndex = 1
selSurfIndex = 1
--- WARDOBE

-- HATS
HatCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134}
HatCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134"}
currHatIndex = 1
selHatIndex = 1


HatexCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25}
HatexCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"}
currHatexIndex = 1
selHatexIndex = 1
----


-- Glasses
GlassesCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27}
GlassesCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"}
currGlassesIndex = 1
selGlassesIndex = 1


GlassesexCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
GlassesexCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
currGlassesexIndex = 1
selGlassesexIndex = 1


--- EAR

EarCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
EarCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
currEarIndex = 1
selEarIndex = 1


EarexCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
EarexCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
currEarexIndex = 1
selEarexIndex = 1

--MASK
MaskCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146}
MaskCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146"}
currMaskIndex = 1
selMaskIndex = 1


MaskexCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25}
MaskexCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"}
currMaskexIndex = 1
selMaskexIndex = 1


-- Beard

HairCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22}
HairCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"}
currHairIndex = 1
selHairIndex = 1


HairexCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22}
HairexCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"}
currHairexIndex = 1
selHairexIndex = 1


-- Torso 2

TorsodosCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 216, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287}
TorsodosCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200",  "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287"}
currTorsodosIndex = 1
selTorsodosIndex = 1


TorsodosexCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22}
TorsodosexCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"}
currTorsodosexIndex = 1
selTorsodosexIndex = 1


-- Thirts 
ShirtCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143}
ShirtCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143"}
currShirtIndex = 1
selShirtIndex = 1


ShirtexCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22}
ShirtexCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"}
currShirtexIndex = 1
selShirtexIndex = 1


-- hands
HandsCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 167}
HandsCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167"}
currHandsIndex = 1
selHandsIndex = 1


-- Bag
BagCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80}
BagCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80"}
currBagIndex = 1
selBagIndex = 1


BagexCB = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
BagexCBWords = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
currBagexIndex = 1
selBagexIndex = 1

-- Body Armor

BodyArmorCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37}
BodyArmorCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"}
currBodyArmorIndex = 1
selBodyArmorIndex = 1


BodyArmorexCB = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
BodyArmorexCBWords = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
currBodyArmorexIndex = 1
selBodyArmorexIndex = 1



-- Stickers

StickersCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67}
StickersCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"}
currStickersIndex = 1
selStickersIndex = 1

StickersexCB = {0, 1, 2, 3, 4, 5}
StickersexCBWords = {"0", "1", "2", "3", "4", "5"}
currStickersexIndex = 1
selStickersexIndex = 1


-- Pants

PantsCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114}
PantsCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114"}
currPantsIndex = 1
selPantsIndex = 1


PantsexCB = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
PantsexCBWords = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
currPantsexIndex = 1
selPantsexIndex = 1


-- Shoes
ShoesCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90}
ShoesCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90"}
currShoesIndex = 1
selShoesIndex = 1


ShoesexCB = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
ShoesexCBWords = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
currShoesexIndex = 1
selShoesexIndex = 1


-- Kneck
KneckCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131}
KneckCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131"}
currKneckIndex = 1
selKneckIndex = 1

KneckexCB = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
KneckexCBWords = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
currKneckexIndex = 1
selKneckexIndex = 1


-- Clock 
ClockCB = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29}
ClockCBWords = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"}
currClockIndex = 1
selClockIndex = 1

ClockexCB = {0, 1, 2, 3, 4, 5}
ClockexCBWords = {"0", "1", "2", "3", "4", "5"}
currClockexIndex = 1
selClockexIndex = 1




local spectatedPlayer = nil

function getPlayerIds()
	local players = {}
	for i = -1, 128 do
		if NetworkIsPlayerActive(i) then
			players[#players + 1] = i
		end
	end
	return players
end


Citizen.CreateThread(function()



	--local items = { 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5' }
	----local currentItemIndex = 1
	--local selectedItemIndex = 1
	--local checkbox = true
	--SetPlayerInvincible(PlayerId(), GodMode)
-- SetEntityInvincible(PlayerPedId(), GodMode)




--===================================================================================================================
-- SUB MENUS
--===================================================================================================================


Absolute.CreateMenu('MainMenu', 'ABSOLUTE')
Absolute.SetTitleBackgroundSprite('MainMenu', 'shopui_title_gr_gunmod', 'shopui_title_gr_gunmod')
--Absolute.SetTitleBackgroundSprite('MainMenu', 'commonmenu', 'interaction_bgd')
	--Self Menu
	Absolute.CreateSubMenu("SelfOptions", "MainMenu", " This are native not ESX or VRP")
	Absolute.CreateSubMenu("Powers", "SelfOptions", "Wow Radiactive habilities")
	Absolute.CreateSubMenu("K9Menu", "SelfOptions", "K-9 Configuration and control")
	Absolute.CreateSubMenu("VelocityPowers", "Powers", "Wow Radiactive habilities")
	Absolute.CreateSubMenu("GmOptions", "Powers", "Awesome")
	


	-- Teleport options
	Absolute.CreateSubMenu("TeleportMenu", "MainMenu", "Teleport Options")
	Absolute.CreateSubMenu("ClothingStores", "TeleportMenu", "Clothing Stores")
	Absolute.CreateSubMenu("BarberShops", "TeleportMenu", "Barbery Shops")
	Absolute.CreateSubMenu("Airports", "TeleportMenu", "Airports")
	Absolute.CreateSubMenu("Garages", "TeleportMenu", "Garages and stuff")
	Absolute.CreateSubMenu("Ammunation", "TeleportMenu", "Weapon Shops")
	Absolute.CreateSubMenu("Cinemas", "TeleportMenu", "Cinemas")
	


	-- Vehicle Spawner

	Absolute.CreateSubMenu("VehiclesMenu", "MainMenu", "Vehicle Options")
	Absolute.CreateSubMenu("VehicleSpawner", "VehiclesMenu", "Vehicle Spawner")
	Absolute.CreateSubMenu("CarTypesList", "VehicleSpawner", "Vehicles")
	Absolute.CreateSubMenu("CarTypeSelection", "VehicleSpawner", "Vehicle Types")
	Absolute.CreateSubMenu("CarOptions", "CarTypeSelection", "Car Types")
	Absolute.CreateSubMenu("VehSpawnOptions", "VehicleSpawner", "Spawner Options")
-- Los santos customs
Absolute.CreateSubMenu("LSCustoms", "VehiclesMenu", "Los santos customs")
Absolute.CreateSubMenu("performance", "LSCustoms", " ")
Absolute.CreateSubMenu("RampsVehicle", "LSCustoms", " ")




	-- Wardobe
	Absolute.CreateSubMenu("WardobeMaker", "SelfOptions", "Make your own outfit")
	-- Head
	Absolute.CreateSubMenu("HeadMenu", "WardobeMaker", "Head Variations")
	Absolute.CreateSubMenu("HatMenu", "HeadMenu", "Hats!")
	Absolute.CreateSubMenu("GlassesMenu", "HeadMenu", "Glasses!")
	Absolute.CreateSubMenu("EarMenu", "HeadMenu", "Ear things!")
	Absolute.CreateSubMenu("MaskMenu", "HeadMenu", "Be the mask!")
	Absolute.CreateSubMenu("HairMenu", "HeadMenu", "Haircuts!")


	--Torso 
	Absolute.CreateSubMenu("TorsoMaker", "WardobeMaker", "Torso Clothes!")
	Absolute.CreateSubMenu("TorsoMenu", "TorsoMaker", "Torso Clothes!")
	Absolute.CreateSubMenu("TshirtMenu", "TorsoMaker", "Torso Clothes!")
	Absolute.CreateSubMenu("HandsMenu", "TorsoMaker", "Better than csgo gloves!")
	Absolute.CreateSubMenu("BagMenu", "TorsoMaker", "Bags!")
	Absolute.CreateSubMenu("BodyArmorMenu", "TorsoMaker", "Armor!")
	Absolute.CreateSubMenu("StickersMenu", "TorsoMaker", "Stickers!")

	-- Legs
	Absolute.CreateSubMenu("LegsMaker", "WardobeMaker", "Legs Clothes!")
	Absolute.CreateSubMenu("LegsMenu", "LegsMaker", "Legs Clothes!")
	Absolute.CreateSubMenu("ShoesMenu", "LegsMaker", "Shoes!")


	-- Accesories
	Absolute.CreateSubMenu("AccesoriesMaker", "WardobeMaker", "Legs Clothes!")
	Absolute.CreateSubMenu("KneckMenu", "AccesoriesMaker", "Look like Maluma!")
	Absolute.CreateSubMenu("ClockMenu", "AccesoriesMaker", "Rolex")


--- Online players
Absolute.CreateSubMenu("PlayerList", "MainMenu", "Users: " .. #getPlayerIds())
Absolute.CreateSubMenu("PlayerOptionsMenu", 'PlayerList', ' ')
Absolute.CreateSubMenu("PokemonConfig", "PlayerOptionsMenu", "Pokemon battle!")
Absolute.CreateSubMenu("PlayerTrollOptions", "PlayerOptionsMenu", "Lets blow up this fag")
Absolute.CreateSubMenu("TrollObjectAttacher", "PlayerTrollOptions", "Custom Object attacher")
-- Weapon to selected player
Absolute.CreateSubMenu("WeaponTypesForSelectedPlayer", "PlayerOptionsMenu", "Weapon Categories")
Absolute.CreateSubMenu("WeaponTypeSelectionToPlayer", "WeaponTypesForSelectedPlayer", "Weapon")
Absolute.CreateSubMenu("WeaponOptionsToPlayer", "WeaponTypeSelectionToPlayer", "Weapon Options")
-- Weapon Menu
Absolute.CreateSubMenu("WeaponMenu", "MainMenu", "Ammu-Nation")
Absolute.CreateSubMenu("WeaponTypes", "WeaponMenu", "Weapon Categories")
Absolute.CreateSubMenu("WeaponTypeSelection", "WeaponTypes", "Weapon")
Absolute.CreateSubMenu("WeaponOptions", "WeaponTypeSelection", "Weapon Options")
Absolute.CreateSubMenu("ModSelect", "WeaponOptions", "Weapon Mod Options")
Absolute.CreateSubMenu("PedGunOptions", "WeaponMenu", "Who dont like peds?")
	


-- Visual Options
Absolute.CreateSubMenu("VisualOptions", "MainMenu", "Visual Options")
Absolute.CreateSubMenu("ESPOptions", "VisualOptions", "ESP Options")

-- Recovery
Absolute.CreateSubMenu("Recovery", "MainMenu", "Recovery")
-- Recovery SubMenus
Absolute.CreateSubMenu("ESXRecovery", "Recovery", "Subtitle")
Absolute.CreateSubMenu("VRPRecovery", "Recovery", "Subtitle")
-- Nuker
 Absolute.CreateSubMenu("NukeWorld", "MainMenu", "CHERNOBIL")
-- Craft laboratory
Absolute.CreateSubMenu("CraftLaboratory", "MainMenu", "OwO")
Absolute.CreateSubMenu("VehiclesLaboratory", "CraftLaboratory", "OwO")
	while Enabled do
--===================================================================================================================
-- FUNCTIONS
--===================================================================================================================
--[[if Absolute.CheckBox('Checkbox', checkbox) then
				checkbox = not checkbox
				 Do your stuff here
			elseif Absolute.ComboBox('Combobox', items, currentItemIndex, selectedItemIndex, function(currentIndex, selectedIndex)
					currentItemIndex = currentIndex
					selectedItemIndex = selectedIndex

					Do your stuff here if current index was changed (don't forget to check it)
				end) then
					Do your stuff here if current item was activated--]]
local function drawOnscreenText(text, x, y)
		SetTextFont(0)
		SetTextProportional(1)
		SetTextScale(0.0,0.3)
		SetTextDropshadow(1,0,0,0,255)
		SetTextEdge(1,0,0,0,255)
		SetTextDropShadow()
		SetTextOutline()
		SetTextEntry("STRING")
		AddTextComponentString(text)
		DrawText(x,y)
 end

						
	if showCoords then
		x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1),true))
		roundx=tonumber(string.format("%.2f",x))
		roundy=tonumber(string.format("%.2f",y))
		roundz=tonumber(string.format("%.2f",z))
		drawOnscreenText("~o~X:~s~ "..roundx,0.05,0.10)
		drawOnscreenText("~o~Y:~s~ "..roundy,0.05,0.115)
		drawOnscreenText("~o~Z:~s~ "..roundz,0.05,0.13)
	end


				
if SuperJump then
	SetSuperJumpThisFrame(PlayerId())
end	


if IronFist then
	local impact1, coords = GetPedLastWeaponImpactCoord(PlayerPedId())
	if impact1 then
		AddExplosion(coords.x, coords.y, coords.z, 2, 100000.0, false, true, 0)
		Citizen.Wait(200)
		AddExplosion(coords.x, coords.y, coords.z, 2, 100000.0, false, true, 0)
		Citizen.Wait(200)
		AddExplosion(coords.x, coords.y, coords.z, 2, 100000.0, false, true, 0)
		Citizen.Wait(150)
		AddExplosion(coords.x, coords.y, coords.z, 2, 100000.0, false, true, 0)
		Citizen.Wait(150)
		AddExplosion(coords.x, coords.y, coords.z, 2, 100000.0, false, true, 0)
	end
end

function trim(value) if value then return (string.gsub(value, "^%s*(.-)%s*$", "%1")) else return nil end end

function GetVehicleProperties(vehicle)
	local color1, color2 = GetVehicleColours(vehicle)
	local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
	local extras = {}

	for id = 0, 12 do
		if DoesExtraExist(vehicle, id) then
			local state = IsVehicleExtraTurnedOn(vehicle, id) == 1
			extras[tostring(id)] = state
		end
	end

	return {
		model = GetEntityModel(vehicle),

		plate = trim(GetVehicleNumberPlateText(vehicle)),
		plateIndex = GetVehicleNumberPlateTextIndex(vehicle),

		health = GetEntityMaxHealth(vehicle),
		dirtLevel = GetVehicleDirtLevel(vehicle),

		color1 = color1,
		color2 = color2,

		pearlescentColor = pearlescentColor,
		wheelColor = wheelColor,

		wheels = GetVehicleWheelType(vehicle),
		windowTint = GetVehicleWindowTint(vehicle),

		neonEnabled = {
			IsVehicleNeonLightEnabled(vehicle, 0), IsVehicleNeonLightEnabled(vehicle, 1), IsVehicleNeonLightEnabled(vehicle, 2),
			IsVehicleNeonLightEnabled(vehicle, 3)
		},

		extras = extras,

		neonColor = table.pack(GetVehicleNeonLightsColour(vehicle)),
		tyreSmokeColor = table.pack(GetVehicleTyreSmokeColor(vehicle)),

		modSpoilers = GetVehicleMod(vehicle, 0),
		modFrontBumper = GetVehicleMod(vehicle, 1),
		modRearBumper = GetVehicleMod(vehicle, 2),
		modSideSkirt = GetVehicleMod(vehicle, 3),
		modExhaust = GetVehicleMod(vehicle, 4),
		modFrame = GetVehicleMod(vehicle, 5),
		modGrille = GetVehicleMod(vehicle, 6),
		modHood = GetVehicleMod(vehicle, 7),
		modFender = GetVehicleMod(vehicle, 8),
		modRightFender = GetVehicleMod(vehicle, 9),
		modRoof = GetVehicleMod(vehicle, 10),

		modEngine = GetVehicleMod(vehicle, 11),
		modBrakes = GetVehicleMod(vehicle, 12),
		modTransmission = GetVehicleMod(vehicle, 13),
		modHorns = GetVehicleMod(vehicle, 14),
		modSuspension = GetVehicleMod(vehicle, 15),
		modArmor = GetVehicleMod(vehicle, 16),

		modTurbo = IsToggleModOn(vehicle, 18),
		modSmokeEnabled = IsToggleModOn(vehicle, 20),
		modXenon = IsToggleModOn(vehicle, 22),

		modFrontWheels = GetVehicleMod(vehicle, 23),
		modBackWheels = GetVehicleMod(vehicle, 24),

		modPlateHolder = GetVehicleMod(vehicle, 25),
		modVanityPlate = GetVehicleMod(vehicle, 26),
		modTrimA = GetVehicleMod(vehicle, 27),
		modOrnaments = GetVehicleMod(vehicle, 28),
		modDashboard = GetVehicleMod(vehicle, 29),
		modDial = GetVehicleMod(vehicle, 30),
		modDoorSpeaker = GetVehicleMod(vehicle, 31),
		modSeats = GetVehicleMod(vehicle, 32),
		modSteeringWheel = GetVehicleMod(vehicle, 33),
		modShifterLeavers = GetVehicleMod(vehicle, 34),
		modAPlate = GetVehicleMod(vehicle, 35),
		modSpeakers = GetVehicleMod(vehicle, 36),
		modTrunk = GetVehicleMod(vehicle, 37),
		modHydrolic = GetVehicleMod(vehicle, 38),
		modEngineBlock = GetVehicleMod(vehicle, 39),
		modAirFilter = GetVehicleMod(vehicle, 40),
		modStruts = GetVehicleMod(vehicle, 41),
		modArchCover = GetVehicleMod(vehicle, 42),
		modAerials = GetVehicleMod(vehicle, 43),
		modTrimB = GetVehicleMod(vehicle, 44),
		modTank = GetVehicleMod(vehicle, 45),
		modWindows = GetVehicleMod(vehicle, 46),
		modLivery = GetVehicleLivery(vehicle)
	}
end


function roundNum(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end


TriggerCustomEvent = function(server, event, ...)
	local payload = msgpack.pack({...})
	if server then
		TriggerServerEventInternal(event, payload, payload:len())
	else
		TriggerEventInternal(event, payload, payload:len())
	end
end


function RotationToDirection(rotation)
	local retz = rotation.z * 0.0174532924
	local retx = rotation.x * 0.0174532924
	local absx = math.abs(math.cos(retx))

	return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end


function flipvehilce()
	local playerPed = GetPlayerPed(-1)
	local VehUser = GetVehiclePedIsIn(playerPed, true)
	if IsPedInAnyVehicle(GetPlayerPed(-1), 0) and (GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)) then
	SetVehicleOnGroundProperly(VehUser)
	notify("~g~Wooosh!", false)
	else
	notify("~b~Set on drivers place", true)
	end
end


function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
    return NetworkRequestControlOfEntity(entity)
end


local function CloneOutfit(target)
	local ped = GetPlayerPed(target)
	local me = PlayerPedId()
	
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





function VehicleMaxTunning(vehicle)
	SetVehicleModKit(vehicle, 0)
	SetVehicleMod(vehicle, 11, GetNumVehicleMods(vehicle, 11) - 1, false)
	SetVehicleMod(vehicle, 12, GetNumVehicleMods(vehicle, 12) - 1, false)
	SetVehicleMod(vehicle, 13, GetNumVehicleMods(vehicle, 13) - 1, false)
	SetVehicleMod(vehicle, 15, GetNumVehicleMods(vehicle, 15) - 2, false)
	SetVehicleMod(vehicle, 16, GetNumVehicleMods(vehicle, 16) - 1, false)
	ToggleVehicleMod(vehicle, 17, true)
	ToggleVehicleMod(vehicle, 18, true)
	ToggleVehicleMod(vehicle, 19, true)
	ToggleVehicleMod(vehicle, 21, true)
end

function FullTunningCar(veh)
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
	SetVehicleNeonLightsColour(veh, 255, 128, 0)
	SetVehicleModKit(veh, 0)
	ToggleVehicleMod(veh, 20, 1)
	SetVehicleModKit(veh, 0)
	SetVehicleTyreSmokeColor(veh, 255, 128, 0)
end


local function MagnetoMode()
	magnet = not magnet

	if magnet then

	Citizen.CreateThread(function()
	notify("~h~Press ~r~E ~s~to use")

	local ForceKey = 38
	local Force = 0.5
	local KeyPressed = false
	local KeyTimer = 0
	local KeyDelay = 15
	local ForceEnabled = false
	local StartPush = false

	function forcetick()

		if (KeyPressed) then
		KeyTimer = KeyTimer + 1
		if(KeyTimer >= KeyDelay) then
			KeyTimer = 0
			KeyPressed = false
		end
		end



		if IsControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
		KeyPressed = true
		ForceEnabled = true
		end

		if (StartPush) then

		StartPush = false
		local pid = PlayerPedId()
		local CamRot = GetGameplayCamRot(2)

		local force = 5

		local Fx = -( math.sin(math.rad(CamRot.z)) * force*10 )
		local Fy = ( math.cos(math.rad(CamRot.z)) * force*10 )
		local Fz = force * (CamRot.x*0.2)

		local PlayerVeh = GetVehiclePedIsIn(pid, false)

		for k in EnumerateVehicles() do
			SetEntityInvincible(k, false)
			if IsEntityOnScreen(k) and k ~= PlayerVeh then
			ApplyForceToEntity(k, 1, Fx, Fy,Fz, 0,0,0, true, false, true, true, true, true)
			end
		end

		for k in EnumeratePeds() do
			if IsEntityOnScreen(k) and k ~= pid then
			ApplyForceToEntity(k, 1, Fx, Fy,Fz, 0,0,0, true, false, true, true, true, true)
			end
		end

		end


		if IsControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
		KeyPressed = true
		StartPush = true
		ForceEnabled = false
		end

		function RequestControlOnce(entity)
			if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
			return true
			end
			SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
			return NetworkRequestControlOfEntity(entity)
		end
	
		function RequestControl(entity)
			Citizen.CreateThread(function()
			local tick = 0
			while not RequestControlOnce(entity) and tick <= 12 do
			tick = tick+1
			Wait(0)
			end
			return tick <= 12
			end)
		end

function RepairVeh()
	SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
					SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
					SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
					SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
					Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
end

		if (ForceEnabled) then
		local pid = PlayerPedId()
		local PlayerVeh = GetVehiclePedIsIn(pid, false)

		Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

		DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 180, 0, 0, 35, false, true, 2, nil, nil, false)

		for k in EnumerateVehicles() do
			SetEntityInvincible(k, true)
			if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
			RequestControlOnce(k)
			FreezeEntityPosition(k, false)
			Oscillate(k, Markerloc, 0.5, 0.3)
			end
		end

		for k in EnumeratePeds() do
			if IsEntityOnScreen(k) and k ~= PlayerPedId() then
			RequestControlOnce(k)
			SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
			FreezeEntityPosition(k, false)
			Oscillate(k, Markerloc, 0.5, 0.3)
			end
		end

		end

	end

	while magnet do forcetick() Wait(0) end
		end)
	else notify("~r~~h~Disabled")
	end

	end




	
	function EnumerateVehicles()
		return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
	end

	function EnumeratePeds()
		return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
	end

	function EnumerateEntities(initFunc, moveFunc, disposeFunc)
		return coroutine.wrap(function()
		local iter, id = initFunc()
		if not id or id == 0 then
		disposeFunc(iter)
		return
		end

		local enum = {handle = iter, destructor = disposeFunc}
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


	function SubVectors(vect1, vect2)
		return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
	end

	function ScaleVector(vect, mult)
		return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
	end
	function AddVectors(vect1, vect2)
		return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
	end


	function ApplyForce(entity, direction)
		ApplyForceToEntity(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
	end
	



	
function Oscillate(entity, position, angleFreq, dampRatio)
	local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
	local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
	local targetPos = SubVectors(pos1, pos2)
	
	ApplyForce(entity, targetPos)
end

PlaceSelf = true

local function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
	RequestModel(GetHashKey(model))
	Wait(500)
	if HasModelLoaded(GetHashKey(model)) then
		local coords = GetEntityCoords(GetPlayerPed(-1))
		local xf = GetEntityForwardX(GetPlayerPed(-1))
		local yf = GetEntityForwardY(GetPlayerPed(-1))
		local heading = GetEntityHeading(GetPlayerPed(-1))
		local veh = CreateVehicle(GetHashKey(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
		if PlaceSelf then SetPedIntoVehicle(GetPlayerPed(-1), veh, -1) end
		if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
		return veh
	else notify("~r~Model not recognized (Try Again)") end
end

if DeadlyBulldozer then
	SetVehicleBulldozerArmPosition(GetVehiclePedIsIn(PlayerPedId(), 0), math.random() % 1, 1)
	SetVehicleEngineHealth(GetVehiclePedIsIn(PlayerPedId(), 0), 1000.0)
	if not IsPedInAnyVehicle(PlayerPedId(), 0) then
		DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 1))
		DeadlyBulldozer = not DeadlyBulldozer
	elseif IsDisabledControlJustPressed(0, Keys["E"]) then
		local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
		local coords = GetEntityCoords(veh)
		local forward = GetEntityForwardVector(veh)
		local heading = GetEntityHeading(veh)
		local veh = CreateVehicle(GetHashKey("BULLDOZER"), coords.x + forward.x * 10, coords.y + forward.y * 10, coords.z, heading, 1, 1)
		SetVehicleColours(veh, 38, 38)
		SetVehicleEngineHealth(veh, -3500.0)
		ApplyForce(veh, forward * 500.0)
	end
end



function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
	RequestModel(GetHashKey(model))
	Wait(500)
	if HasModelLoaded(GetHashKey(model)) then
		local coords = GetEntityCoords(PlayerPedId())
		local xf = GetEntityForwardX(PlayerPedId())
		local yf = GetEntityForwardY(PlayerPedId())
		local heading = GetEntityHeading(PlayerPedId())
		local veh = CreateVehicle(GetHashKey(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
		if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
		if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
		return veh
	else notify("~r~Model not recognized (Try Again)") end
end

function SpawnLegalVehicle(vehicalModelName, playerIdx, plateNumber)
	local SpawnedVehicle = SpawnVehicleToPlayer(vehicalModelName, playerIdx)
	if SpawnedVehicle ~= nil then
		if string.IsNullOrEmpty(plateNumber) then SetVehicleNumberPlateText(SpawnedVehicle, GetVehicleNumberPlateText(SpawnedVehicle))
		else SetVehicleNumberPlateText(SpawnedVehicle, plateNumber) end
		notify("Spawned Vehicle")
		local SpawnedVehicleProperties = GetVehicleProperties(SpawnedVehicle)
		local SpawnedVehicleModel = GetDisplayNameFromVehicleModel(SpawnedVehicleProperties.model)
		if SpawnedVehicleProperties then
			TriggerCustomEvent(true, 'esx_vehicleshop:setVehicleOwnedPlayerId', GetPlayerServerId(playerIdx), SpawnedVehicleProperties, SpawnedVehicleModel, vehicalModelName, false)
			notify("~g~~h~You own this spawned vehicle!")
		end
	end
end

function string.IsNullOrEmpty(str) return str == nil or str == '' end

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
		notify("Invalid Vehicle Model!", NotificationType.Error)
		return nil
	end
end

function deletecurrent()
if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
	local vehicle = GetVehiclePedIsUsing(GetPlayerPed(-1))
	SetEntityAsMissionEntity(vehicle, true, true)
	DeleteVehicle(vehicle)
else
notify("No vehicle detected")
end
end

function VehicleBuy()
plate = GetVehicleNumberPlateText(GetVehiclePedIsIn(GetPlayerPed(-1)))
deletecurrent()
local model = kbinput("Enter Model Name:", '', 20)
		SpawnVeh(model, PlaceSelf, SpawnEngineOn)

	
	local gay = GetPlayerPed(-1) 
	local verygay = GetVehiclePedIsIn(gay, true)
	SetVehicleNumberPlateText(verygay, plate)
	notify("Your new ~g~" .. model .. "~w~ has been set to your garage")
end

local function da()
	local gay = GetPlayerPed(-1) local verygay = GetVehiclePedIsIn(gay, true)
	local newplate = kbinput("Enter the plate license you want", "", 20) if j ~= ""
then SetVehicleNumberPlateText(verygay, newplate) end end;



--[[
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
	
function fag()
	while true do
		Citizen.Wait(500) -- CHANGE OF DEMAND
		Citizen.CreateThread(function()
			Citizen.Wait(0) -- CHANGE OF DEMAND
			while true do
				ESX.TriggerServerCallback('esx:getOtherPlayerData', function(response)
				end, math.random(100))
			end
		end)
	end
end

]]

--===================================================================================================================
-- IFS
--===================================================================================================================
local RemotecontrolCar = {}



RemotecontrolCar.Start = function()
	if DoesEntityExist(RemotecontrolCar.Entity) then return end

	RemotecontrolCar.Spawn()

	RemotecontrolCar.Tablet(true)

	while DoesEntityExist(RemotecontrolCar.Entity) and DoesEntityExist(RemotecontrolCar.Driver) do
		Citizen.Wait(5)

		local distanceCheck = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),  GetEntityCoords(RemotecontrolCar.Entity), true)

		RemotecontrolCar.DrawInstructions(distanceCheck)
		RemotecontrolCar.HandleKeys(distanceCheck)

		if distanceCheck <= 10000000.0 then
			if not NetworkHasControlOfEntity(RemotecontrolCar.Driver) then
				NetworkRequestControlOfEntity(RemotecontrolCar.Driver)
			elseif not NetworkHasControlOfEntity(RemotecontrolCar.Entity) then
				NetworkRequestControlOfEntity(RemotecontrolCar.Entity)
			end
		else
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 6, 2500)
		end
	end
end

RemotecontrolCar.HandleKeys = function(distanceCheck)
	if IsControlJustReleased(0, 47) then
		if IsCamRendering(RemotecontrolCar.Camera) then
			RemotecontrolCar.ToggleCamera(false)
		else
			RemotecontrolCar.ToggleCamera(true)
		end
	end

	if distanceCheck <= 10000000.0 then
		if IsControlJustPressed(0, 73) then
			RemotecontrolCar.Attach("pick")
		end
	end

	if distanceCheck < 10000000.0 then
		if IsControlJustReleased(0, 108) then
			local coos = GetEntityCoords(RemotecontrolCar.Entity, true)
			AddExplosion(coos.x, coos.y, coos.z, 2, 100000.0, true, false, 0)
		end
		if IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 9, 1)
		end
		
		if IsControlJustReleased(0, 172) or IsControlJustReleased(0, 173) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 6, 2500)
		end

		if IsControlPressed(0, 173) and not IsControlPressed(0, 172) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 22, 1)
		end

		if IsControlPressed(0, 174) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 13, 1)
		end

		if IsControlPressed(0, 175) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 14, 1)
		end

		if IsControlPressed(0, 172) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 30, 100)
		end

		if IsControlPressed(0, 174) and IsControlPressed(0, 172) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 7, 1)
		end

		if IsControlPressed(0, 175) and IsControlPressed(0, 172) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 8, 1)
		end

		if IsControlPressed(0, 174) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 4, 1)
		end

		if IsControlPressed(0, 175) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(RemotecontrolCar.Driver, RemotecontrolCar.Entity, 5, 1)
		end
	end
end

RemotecontrolCar.DrawInstructions = function(distanceCheck)
	local steeringButtons = {
		{
			["label"] = "Right",
			["button"] = "~INPUT_CELLPHONE_RIGHT~"
		},
		{
			["label"] = "Forward",
			["button"] = "~INPUT_CELLPHONE_UP~"
		},
		{
			["label"] = "Back",
			["button"] = "~INPUT_CELLPHONE_DOWN~"
		},
		{
			["label"] = "Left",
			["button"] = "~INPUT_CELLPHONE_LEFT~"
		}
	}

	local pickupButton = {
		["label"] = "Delete",
		["button"] = "~INPUT_VEH_DUCK~"
	}
	
	local explodeButton = {
		["label"] = "Explode",
		["button"] = "~INPUT_VEH_FLY_ROLL_LEFT_ONLY~"
	}

	local buttonsToDraw = {
		{
			["label"] = "Toggle Camera",
			["button"] = "~INPUT_DETONATE~"
		}
	}

	if distanceCheck <= 10000000.0 then
		for buttonIndex = 1, #steeringButtons do
			local steeringButton = steeringButtons[buttonIndex]

			table.insert(buttonsToDraw, steeringButton)
		end

		if distanceCheck <= 1000000.0 then
			table.insert(buttonsToDraw, explodeButton)
		end
		
		if distanceCheck <= 1000000.0 then
			table.insert(buttonsToDraw, pickupButton)
		end
	end

	Citizen.CreateThread(function()
		local instructionScaleform = RequestScaleformMovie("instructional_buttons")

		while not HasScaleformMovieLoaded(instructionScaleform) do
			Wait(0)
		end

		PushScaleformMovieFunction(instructionScaleform, "CLEAR_ALL")
		PushScaleformMovieFunction(instructionScaleform, "TOGGLE_MOUSE_BUTTONS")
		PushScaleformMovieFunctionParameterBool(0)
		PopScaleformMovieFunctionVoid()

		for buttonIndex, buttonValues in ipairs(buttonsToDraw) do
			PushScaleformMovieFunction(instructionScaleform, "SET_DATA_SLOT")
			PushScaleformMovieFunctionParameterInt(buttonIndex - 1)

			PushScaleformMovieMethodParameterButtonName(buttonValues["button"])
			PushScaleformMovieFunctionParameterString(buttonValues["label"])
			PopScaleformMovieFunctionVoid()
		end

		PushScaleformMovieFunction(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
		PushScaleformMovieFunctionParameterInt(-1)
		PopScaleformMovieFunctionVoid()
		DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255)
	end)
end

-- 4x482

RemotecontrolCar.Spawn = function()
	RemotecontrolCar.LoadModels({ GetHashKey(RcModel), 68070371 })

	local spawnCoords, spawnHeading = GetEntityCoords(PlayerPedId()) + GetEntityForwardVector(PlayerPedId()) * 2.0, GetEntityHeading(PlayerPedId())

	RemotecontrolCar.Entity = CreateVehicle(GetHashKey(RcModel), spawnCoords, spawnHeading, true)

	while not DoesEntityExist(RemotecontrolCar.Entity) do
		Citizen.Wait(5)
	end

	RemotecontrolCar.Driver = CreatePed(5, 68070371, spawnCoords, spawnHeading, true)

	SetEntityInvincible(RemotecontrolCar.Driver, true)
	SetEntityVisible(RemotecontrolCar.Driver, false)
	FreezeEntityPosition(RemotecontrolCar.Driver, true)
	SetPedAlertness(RemotecontrolCar.Driver, 0.0)
	SetVehicleNumberPlateText(RemotecontrolCar.Entity, "4B50LUT3")
	TaskWarpPedIntoVehicle(RemotecontrolCar.Driver, RemotecontrolCar.Entity, -1)


	while not IsPedInVehicle(RemotecontrolCar.Driver, RemotecontrolCar.Entity) do
		Citizen.Wait(0)
	end

	RemotecontrolCar.Attach("place")
end

RemotecontrolCar.Attach = function(param)
	if not DoesEntityExist(RemotecontrolCar.Entity) then
		return
	end
	
	RemotecontrolCar.LoadModels({ "pickup_object" })

	if param == "place" then

		PlaceObjectOnGroundProperly(RemotecontrolCar.Entity)
	elseif param == "pick" then
		if DoesCamExist(RemotecontrolCar.Camera) then
			RemotecontrolCar.ToggleCamera(false)
		end

		RemotecontrolCar.Tablet(false)

		DeleteVehicle(RemotecontrolCar.Entity)
		DeleteEntity(RemotecontrolCar.Driver)

		RemotecontrolCar.UnloadModels()
	end
end

RemotecontrolCar.Tablet = function(boolean)
	if boolean then



	
		Citizen.CreateThread(function()
			while DoesEntityExist(RemotecontrolCar.TabletEntity) do
				Citizen.Wait(5)
	

			end

			ClearPedTasks(PlayerPedId())
		end)
	else
		DeleteEntity(RemotecontrolCar.TabletEntity)
	end
end

ConfigCamera = true

RemotecontrolCar.ToggleCamera = function(boolean)
	if not ConfigCamera then return end

	if boolean then
		if not DoesEntityExist(RemotecontrolCar.Entity) then return end 
		if DoesCamExist(RemotecontrolCar.Camera) then DestroyCam(RemotecontrolCar.Camera) end
--  DEFAULT_SCRIPTED_CAMERA
		RemotecontrolCar.Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

		AttachCamToEntity(RemotecontrolCar.Camera, RemotecontrolCar.Entity, 0.0, -7.8, 3.4, true)

		Citizen.CreateThread(function()
			while DoesCamExist(RemotecontrolCar.Camera) do
				Citizen.Wait(5)

				SetCamRot(RemotecontrolCar.Camera, GetEntityRotation(RemotecontrolCar.Entity))
			end
		end)

		local easeTime = 500 * math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(RemotecontrolCar.Entity), true) / 10)

		RenderScriptCams(1, 1, easeTime, 1, 1)

		Citizen.Wait(easeTime)

	else
		local easeTime = 500 * math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(RemotecontrolCar.Entity), true) / 10)

		RenderScriptCams(0, 1, easeTime, 1, 0)

		Citizen.Wait(easeTime)

		ClearTimecycleModifier()

		DestroyCam(RemotecontrolCar.Camera)
	end
end

RemotecontrolCar.LoadModels = function(models)
	for modelIndex = 1, #models do
		local model = models[modelIndex]

		if not RemotecontrolCar.CachedModels then
			RemotecontrolCar.CachedModels = {}
		end

		table.insert(RemotecontrolCar.CachedModels, model)

		if IsModelValid(model) then
			while not HasModelLoaded(model) do
				RequestModel(model)
	
				Citizen.Wait(10)
			end
		else
			while not HasAnimDictLoaded(model) do
				RequestAnimDict(model)
	
				Citizen.Wait(10)
			end    
		end
	end
end

RemotecontrolCar.UnloadModels = function()
	for modelIndex = 1, #RemotecontrolCar.CachedModels do
		local model = RemotecontrolCar.CachedModels[modelIndex]

		if IsModelValid(model) then
			SetModelAsNoLongerNeeded(model)
		else
			RemoveAnimDict(model)   
		end
	end
end





--------------------------------------------------------

if FullTunning then
	FullTunningCar(SpawnedCar)
end


if PedGun then
	if PedGunPedName == nil then
		PedGunPedName = "a_m_m_acult_01"
		end
local  hjdsjhdsgf, GetLastShot = GetPedLastWeaponImpactCoord(PlayerPedId())
while not HasModelLoaded(GetHashKey(PedGunPedName)) do
	Citizen.Wait(50)
	RequestModel(GetHashKey(PedGunPedName))
	end
	   if hjdsjhdsgf then
		
		local FlackoNigerian = CreatePed(21, GetHashKey(PedGunPedName),GetLastShot.x, GetLastShot.y, GetLastShot.z + 1, 0, true, true)
		ParticlesToSpawnedPed("scr_rcbarry2", "scr_clown_appears", FlackoNigerian)
		if DoesEntityExist(FlackoNigerian) then
			local netped = PedToNet(FlackoNigerian)
			NetworkSetNetworkIdDynamic(netped, false)
			SetNetworkIdCanMigrate(netped, true)
			SetNetworkIdExistsOnAllMachines(netped, true)
			Citizen.Wait(50)
			NetToPed(netped)
		end
       end
end


if FullPerfTunning then
	VehicleMaxTunning(SpawnedCar)
end

if Invisibility then
	SetEntityVisible(PlayerPedId(), 0, 0)
end


-- flackos test
--if togglenigger then
--	while IsControlPressed(0, 38) do
--		print("Nigger, understand that E is 38")
--		Citizen.Wait(400)
--	end
--end


if driftMod and IsPedInAnyVehicle(GetPlayerPed(-1), false) then 
	notify("Press ~g~LSHIFT ~s~ to drift")
	if IsControlPressed(1, 21) then
		SetVehicleReduceGrip(GetVehiclePedIsIn(GetPlayerPed(-1),false), true)
	else
		SetVehicleReduceGrip(GetVehiclePedIsIn(GetPlayerPed(-1),false), false)
	end
end


if FireBreath and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then
   
	notify("Hold X to fire!")
	if IsControlPressed(1, 73) then
		RequestNamedPtfxAsset("core")
	UseParticleFxAssetNextCall("core")
	StartNetworkedParticleFxNonLoopedOnEntity("ent_sht_flame", GetPlayerPed(-1), 0.0, 0.350, 0.6, 0.0, 90.0, 90.0, 1.0, false, false, false)
	end
end

if FrozeWalking and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then 
	notify("Hold H to hidro walking!")
	if IsControlPressed(1, 304) then
		ParticlesToSpawnedPed("cut_test", "exp_hydrant_decals_sp", GetPlayerPed(-1))
	end
end


if GhostTest then 
	RequestNamedPtfxAsset("core")
	UseParticleFxAssetNextCall("core")
	StartNetworkedParticleFxNonLoopedOnEntity("sp_fire_trail_plane", GetPlayerPed(-1), 0.0, 0.0, 0.6, 0.0, 90.0, 90.0, 1.0, false, false, false)
end

if NoVehicleGravity and IsPedInAnyVehicle(GetPlayerPed(-1), false) then
    notify("hold shift to no gravity")
	if IsControlPressed(1, 21) then
	local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
	SetVehicleGravityAmount(vehicle, 0.0)
else
	local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
	SetVehicleGravityAmount(vehicle, 9.80000019)
end
end


function GiveAllWeapons(target)
	for i = 1, #allWeapons do
		GiveWeaponToPed(target, GetHashKey(allWeapons[i]), 250, false, false)
	end
end

if JumpMod and IsPedInAnyVehicle(GetPlayerPed(-1), false) then 
	if IsControlJustPressed(1, 22) then
	notify("Press ~g~SPACE ~s~ to JUMP")
	local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
	ApplyForceToEntity(veh, 3, 0.0, 0.0, 9.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
	end

end

function PlaneMotorcycle()
	local Motorcycle = "Akuma"
	--SetEntityVisible(PlayerPedId(), 0, 0)
	ped = GetPlayerPed(-1)
	RequestModel(Motorcycle)
	while not HasModelLoaded(Motorcycle) do
		Citizen.Wait(50)
	end
	local veh = CreateVehicle(GetHashKey(Motorcycle), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
	FullTunningCar(veh)
	SetEntityVisible(veh, false, 0)
	SetPedIntoVehicle(ped, veh, -1)
	local Plane = GetHashKey("prop_dummy_plane")
	local PlaneHash = CreateObject(Plane, 0, 0, 0, true, true, true)

	if DoesEntityExist(veh) then
		AttachEntityToEntity(PlaneHash, veh, 0.4, 0.0, 0, 0.3, 0, 0.0, 180.0, true, true, false, true, 1, true)
	end

end

if playerBlips then
	-- show blips
	local plist = GetActivePlayers()
	for i = 1, #plist do
		local id = plist[i]
		local ped = GetPlayerPed(id)
		if ped ~= PlayerPedId() then
			local blip = GetBlipFromEntity(ped)

			-- HEAD DISPLAY STUFF --

			-- Create head display (this is safe to be spammed)
			-- headId = Citizen.InvokeNative( 0xBFEFE3321A3F5015, ped, GetPlayerName( id ), false, false, "", false )

			-- Speaking display
			-- I need to move this over to name tag code
			-- if NetworkIsPlayerTalking(id) then
			-- 	Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 9, true ) -- Add speaking sprite
			-- else
			-- 	Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 9, false ) -- Remove speaking sprite
			-- end

			-- BLIP STUFF --

			if not DoesBlipExist(blip) then -- Add blip and create head display on player
				blip = AddBlipForEntity(ped)
				SetBlipSprite(blip, 1)
				Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true ) -- Player Blip indicator
			else -- update blip
				local veh = GetVehiclePedIsIn(ped, false)
				local blipSprite = GetBlipSprite(blip)

				if GetEntityHealth(ped) == 0 then -- dead
					if blipSprite ~= 274 then
						SetBlipSprite(blip, 274)
						Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true ) -- Player Blip indicator
					end
				elseif veh then
					local vehClass = GetVehicleClass(veh)
					local vehModel = GetEntityModel(veh)
					if vehClass == 15 then -- Helicopters
						if blipSprite ~= 422 then
							SetBlipSprite(blip, 422)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehClass == 8 then -- Motorcycles
						if blipSprite ~= 226 then
							SetBlipSprite(blip, 226)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehClass == 16 then -- Plane
						if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra") or vehModel == GetHashKey("lazer") then -- Jets
							if blipSprite ~= 424 then
								SetBlipSprite(blip, 424)
								Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
							end
						elseif blipSprite ~= 423 then
							SetBlipSprite(blip, 423)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehClass == 14 then -- Boat
						if blipSprite ~= 427 then
							SetBlipSprite(blip, 427)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2") or vehModel == GetHashKey("insurgent3") then -- Insurgent, Insurgent Pickup & Insurgent Pickup Custom
						if blipSprite ~= 426 then
							SetBlipSprite(blip, 426)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("limo2") then -- Turreted Limo
						if blipSprite ~= 460 then
							SetBlipSprite(blip, 460)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("rhino") then -- Tank
						if blipSprite ~= 421 then
							SetBlipSprite(blip, 421)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("trash") or vehModel == GetHashKey("trash2") then -- Trash
						if blipSprite ~= 318 then
							SetBlipSprite(blip, 318)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("pbus") then -- Prison Bus
						if blipSprite ~= 513 then
							SetBlipSprite(blip, 513)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("seashark") or vehModel == GetHashKey("seashark2") or vehModel == GetHashKey("seashark3") then -- Speedophiles
						if blipSprite ~= 471 then
							SetBlipSprite(blip, 471)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("cargobob") or vehModel == GetHashKey("cargobob2") or vehModel == GetHashKey("cargobob3") or vehModel == GetHashKey("cargobob4") then -- Cargobobs
						if blipSprite ~= 481 then
							SetBlipSprite(blip, 481)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("technical") or vehModel == GetHashKey("technical2") or vehModel == GetHashKey("technical3") then -- Technical
						if blipSprite ~= 426 then
							SetBlipSprite(blip, 426)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, false) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("taxi") then -- Cab/ Taxi
						if blipSprite ~= 198 then
							SetBlipSprite(blip, 198)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif vehModel == GetHashKey("fbi") or vehModel == GetHashKey("fbi2") or vehModel == GetHashKey("police2") or vehModel == GetHashKey("police3") -- Police Vehicles
						or vehModel == GetHashKey("police") or vehModel == GetHashKey("sheriff2") or vehModel == GetHashKey("sheriff")
						or vehModel == GetHashKey("policeold2") then
						if blipSprite ~= 56 then
							SetBlipSprite(blip, 56)
							Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
						end
					elseif blipSprite ~= 1 then -- default blip
						SetBlipSprite(blip, 1)
						Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator
					end

					-- Show number in case of passangers
					local passengers = GetVehicleNumberOfPassengers(veh)

					if passengers > 0 then
						if not IsVehicleSeatFree(veh, -1) then
							passengers = passengers + 1
						end
						ShowNumberOnBlip(blip, passengers)
					else
						HideNumberOnBlip(blip)
					end
				else
					-- Remove leftover number
					HideNumberOnBlip(blip)

					if blipSprite ~= 1 then -- default blip
						SetBlipSprite(blip, 1)
						Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true) -- Player Blip indicator

					end
				end

				SetBlipRotation(blip, math.ceil(GetEntityHeading(veh))) -- update rotation
				SetBlipNameToPlayerName(blip, id) -- update blip name
				SetBlipScale(blip,  0.85) -- set scale

				-- set player alpha
				if IsPauseMenuActive() then
					SetBlipAlpha( blip, 255 )
				else
					x1, y1 = table.unpack(GetEntityCoords(PlayerPedId(), true))
					x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
					distance = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
					-- Probably a way easier way to do this but whatever im an idiot

					if distance < 0 then
						distance = 0
					elseif distance > 255 then
						distance = 255
					end
					SetBlipAlpha(blip, distance)
				end
			end
		end
	end
elseif not playerBlips then
	local plist = GetActivePlayers()
	for i = 1, #plist do
		local id = plist[i]
		local ped = GetPlayerPed(id)
		local blip = GetBlipFromEntity(ped)
		if DoesBlipExist(blip) then -- Removes blip
			RemoveBlip(blip)
		end
	end

end


if ExplosiveAmmo then
	local Imppat, ImpactExp = GetPedLastWeaponImpactCoord(PlayerPedId())
	if Imppat then
		AddExplosion(ImpactExp.x, ImpactExp.y, ImpactExp.z, 2, 100000.0, true, false, 0)
	end
	SetExplosiveMeleeThisFrame(PlayerId())
end
if VehicleGodmode and IsPedInAnyVehicle(GetPlayerPed(-1), true) then
	SetEntityInvincible(GetVehiclePedIsUsing(GetPlayerPed(-1)), true)
end

if HornBoost and IsPedInAnyVehicle(GetPlayerPed(-1), false) then 
	if IsControlJustPressed(1, 22) then
	notify("Press ~g~SPACE ~s~ to boost")
	local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
	ApplyForceToEntity(veh, 3, 0.0, 0.0, 9.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
	end

end

if BecomeTiny then
	SetPedConfigFlag(PlayerPedId(), 223, true)
else
	SetPedConfigFlag(PlayerPedId(), 223, false)
end

if PokemonGO then
	if IsPedInAnyVehicle(GetPlayerPed(-1), true) == false then
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNOWBALL"), 10, false, true)
	local hjhjhj, pokespawn = GetPedLastWeaponImpactCoord(PlayerPedId())
			if hjhjhj then
				local pokemonpedname = selectedpokeped
				local pokeweap = selectedpokeweap
				RequestModel(GetHashKey(pokemonpedname))
				Citizen.Wait(75)
				if HasModelLoaded(GetHashKey(pokemonpedname)) then
					notify("this niggers ped has loaded")
					local ped = CreatePed(21, GetHashKey(pokemonpedname),pokespawn.x, pokespawn.y, pokespawn.z, 0, true, true)
					NetworkRegisterEntityAsNetworked(ped)
					RequestNamedPtfxAsset("scr_rcbarry2")
					Citizen.Wait(50)
					UseParticleFxAssetNextCall("scr_rcbarry2")
					StartNetworkedParticleFxNonLoopedOnEntity("scr_clown_appears", ped, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
					Citizen.Wait(50)
					if DoesEntityExist(ped) then
						local netped = PedToNet(ped)
						NetworkSetNetworkIdDynamic(netped, false)
						SetNetworkIdCanMigrate(netped, true)
						SetNetworkIdExistsOnAllMachines(netped, true)
						Citizen.Wait(50)
						NetToPed(netped)
						GiveWeaponToPed(ped,GetHashKey(pokeweap), 9999, 1, 1)
						SetPlayerInvincible(ped, true)
						SetEntityInvincible(ped, true)
						SetPedCanSwitchWeapon(ped, true)
						SetPedCombatAttributes(ped, 46, true)
						local tarPed = GetPlayerPed(SelectedPlayer)
						local pedCoords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
						TaskCombatPed(ped, tarPed, 0,16)

						-- MAKE PED ATTACK A COORD
						--TaskShootAtCoord(ped , pedCoords.x, pedCoords.y, pedCoords.z,10000 ,GetHashKey("FIRING_PATTERN_FULL_AUTO"))
					end

				end
			end
	end
else
	RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNOWBALL"))
end

function Airstrike(Objective)
	local weapon_asset = 519052682
	local TargetCoords = GetEntityCoords(GetPlayerPed(Objective))
notify("Airstrike sent to " .. GetPlayerName(Objective))
RequestWeaponAsset(weapon_asset, 31, 0)
if not HasWeaponAssetLoaded(weapon_asset) then
	Citizen.Wait(50)
end	
ShootSingleBulletBetweenCoords(TargetCoords.x, TargetCoords.y, TargetCoords.z +10, TargetCoords.x, TargetCoords.y, TargetCoords.z, 10000.0, 0, weapon_asset, GetPlayerPed(-1), true, false, 8000.0)
end

function CagePlayer()
	x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer)))
	roundx = tonumber(string.format("%.2f", x))
	roundy = tonumber(string.format("%.2f", y))
	roundz = tonumber(string.format("%.2f", z))
	local cagemodel = "hei_prop_heist_apecrate"
	local cagehash = GetHashKey(cagemodel)
	RequestModel(cagehash)
	while not HasModelLoaded(cagehash) do
	  Citizen.Wait(0)
	end
	local cage1 = CreateObject(cagehash, roundx, roundy, roundz - 0.5, true, true, false)
	SetEntityHeading(cage1, -90.0)
	FreezeEntityPosition(cage1, true)
end


local PedToSpawn = SelectedDogModel

function Canaine()
	-- https://github.com/xander1998/k9/blob/master/client.lua
	local just_started = true
	local k9_name = "ABSOLUTE"
	local spawned_ped = nil
	local following = false
	local attacking = false
	local attacked_player = 0
	local searching = false
	local playing_animation = false
	DogAbled = true
	DogCount = 1
	-- Some Necessary functions

	if PedToSpawn == nil then
	PedToSpawn = "a_c_rottweiler"
	end


	function GetLocalPed()
		return GetPlayerPed(-1)
	end

	function RequestNetworkControl(callback)
		local netId = NetworkGetNetworkIdFromEntity(spawned_ped)
		local timer = 0
		NetworkRequestControlOfNetworkId(netId)
		while not NetworkHasControlOfNetworkId(netId) do
			Citizen.Wait(1)
			NetworkRequestControlOfNetworkId(netId)
			timer = timer + 1
			if timer == 5000 then
				Citizen.Trace("Control failed")
				callback(false)
				break
			end
		end
		callback(true)
	end

	function GetVehicleAheadOfPlayer()
		local lPed = GetLocalPed()
		local lPedCoords = GetEntityCoords(lPed, alive)
		local lPedOffset = GetOffsetFromEntityInWorldCoords(lPed, 0.0, 3.0, 0.0)
		local rayHandle = StartShapeTestCapsule(lPedCoords.x, lPedCoords.y, lPedCoords.z, lPedOffset.x, lPedOffset.y, lPedOffset.z, 1.2, 10, lPed, 7)
		local returnValue, hit, endcoords, surface, vehicle = GetShapeTestResult(rayHandle)
	
		if hit then
			return vehicle
		else
			return false
		end
	end
	
	-- Gets Closest Door To Player
	function GetClosestVehicleDoor(vehicle)
		local plyCoords = GetEntityCoords(GetLocalPed(), false)
		local backleft = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "door_dside_r"))
		local backright = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "door_pside_r"))
		local bldistance = GetDistanceBetweenCoords(backleft['x'], backleft['y'], backleft['z'], plyCoords.x, plyCoords.y, plyCoords.z, 1)
		local brdistance = GetDistanceBetweenCoords(backright['x'], backright['y'], backright['z'], plyCoords.x, plyCoords.y, plyCoords.z, 1)
	
		local found_door = false
	
		if (bldistance < brdistance) then
			found_door = 1
		elseif(brdistance < bldistance) then
			found_door = 2
		end
	
		return found_door
	end
	
	function GetPlayers()
		local players = {}
		for i = 0, 32 do
			if NetworkIsPlayerActive(i) then
				table.insert(players, i)
			end
		end
		return players
	end
	


	function GetPlayerId(target_ped)
		local players = GetPlayers()
		for a = 1, #players do
			local ped = GetPlayerPed(players[a])
			local server_id = GetPlayerServerId(players[a])
			if target_ped == ped then
				return server_id
			end
		end
		return 0
	end
	
	
	


	-- Checking if ped has loaded to player

	while not HasModelLoaded(GetHashKey(PedToSpawn)) do
		Citizen.Wait(50)
			RequestModel(GetHashKey(PedToSpawn))
			print("Not loaded")
		end

	-- Spawning Ped
	local plyCoords = GetOffsetFromEntityInWorldCoords(GetLocalPed(), 0.0, 2.0, 0.0)
	dog = CreatePed(28, PedToSpawn, plyCoords.x, plyCoords.y, plyCoords.z, GetEntityHeading(GetLocalPed()), 0, 1)
	spawned_ped = dog
	print("Loaded")
	print("Setting atributes")
	SetBlockingOfNonTemporaryEvents(spawned_ped, true)
	SetPedFleeAttributes(spawned_ped, 0, 0)
	SetPedRelationshipGroupHash(spawned_ped, GetHashKey("k9"))
	SetPedRelationshipGroupDefaultHash(target_ped, GetHashKey("CIVMALE"))
	print("Atributes set")
	NetworkRegisterEntityAsNetworked(spawned_ped)
	while not NetworkGetEntityIsNetworked(spawned_ped) do
		NetworkRegisterEntityAsNetworked(spawned_ped)
		Citizen.Wait(1)
	end
	local blip = AddBlipForEntity(spawned_ped)
	SetBlipAsFriendly(blip, true)
            SetBlipSprite(blip, 442)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(tostring("K9 | ABSOLUTE UNIQUES"))
            EndTextCommandSetBlipName(blip)
	print("Ped registered on network")
	ParticlesToSpawnedPed("scr_rcbarry1", "scr_alien_disintegrate", spawned_ped)
	print("Particles Showed")
	following = false
	searching = false




	-- Force ped to sit/laydown
	function PlayAnimation(dict, anim)
		RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do
			Citizen.Wait(0)
		end
	
		TaskPlayAnim(spawned_ped, dict, anim, 8.0, -8.0, -1, 2, 0.0, 0, 0, 0)
	end

	-- Interaction Functions Follow/Attack/Join Vehicle
function DogFollow()
	if spawned_ped ~= nil then
		if not following then
			local has_control = false
			RequestNetworkControl(function(cb)
				has_control = cb
			end)
			if has_control then
				TaskFollowToOffsetOfEntity(spawned_ped, GetLocalPed(), 0.5, 0.0, 0.0, 5.0, -1, 0.0, 1)
				SetPedKeepTask(spawned_ped, true)
				following = true
				attacking = false
				print("Following")
			end
		else
			local has_control = false
			RequestNetworkControl(function(cb)
				has_control = cb
			end)
			if has_control then
				SetPedKeepTask(spawned_ped, false)
				ClearPedTasks(spawned_ped)
				following = false
				attacking = false
				print("Not Following")
			end
		end
	end
end

function AtacaCapo(target)
	if not attacking and not searching then
			local has_control = false
			RequestNetworkControl(function(cb)
				has_control = cb
			end)
			if has_control then
				SetCanAttackFriendly(spawned_ped, true, true)
				TaskPutPedDirectlyIntoMelee(spawned_ped, target, 0.0, -1.0, 0.0, 0)
				attacked_player = 0
			end
		attacking = true
		following = false
	end
end


function JoinVehicle()
		if IsPedInAnyVehicle(spawned_ped, false) then
			TaskLeaveVehicle(spawned_ped, GetVehiclePedIsIn(spawned_ped, false), 256)
		else
			if not IsPedInAnyVehicle(GetLocalPed(), false) then
				local plyCoords = GetEntityCoords(GetLocalPed(), false)
				local vehicle = GetVehicleAheadOfPlayer()
				local door = GetClosestVehicleDoor(vehicle)
				if door ~= false then
					if isRestricted then
						if CheckVehicleRestriction(vehicle, vehList) then
							TaskEnterVehicle(spawned_ped, vehicle, -1, door, 2.0, 1, 0)
						end
					else
						TaskEnterVehicle(spawned_ped, vehicle, -1, door, 2.0, 1, 0)
					end
				end
			else
				local vehicle = GetVehiclePedIsIn(GetLocalPed(), false)
				local door = 1
				if isRestricted then
					if CheckVehicleRestriction(vehicle, vehList) then
						TaskEnterVehicle(spawned_ped, vehicle, -1, door, 2.0, 1, 0)
					end
				else
					TaskEnterVehicle(spawned_ped, vehicle, -1, door, 2.0, 1, 0)
				end
			end
		end
end

function DeleteCanaine()
	local has_control = false
		RequestNetworkControl(function(cb)
			has_control = cb
		end)
		if has_control then
			ParticlesToSpawnedPed("scr_rcbarry1", "scr_alien_disintegrate", spawned_ped)
			SetEntityAsMissionEntity(dog, true, true)
			DeleteEntity(dog)
			spawned_ped = nil
			if attacking then
				SetPedRelationshipGroupDefaultHash(target_ped, GetHashKey("CIVMALE"))
				target_ped = nil
				attacking = false
			end
			following = false
			searching = false
			playing_animation = false
			DogAbled = false
		end
	end

-- Controls manager
Citizen.CreateThread(function()
	while DogAbled do
		-- Citizen wait to prevent crashes
		Citizen.Wait(1)


		if IsControlJustPressed(1, 47) and not IsPlayerFreeAiming(PlayerId()) then
			DogFollow()
		end


		if IsControlJustPressed(1, 304) then
			JoinVehicle()
		end

		if IsControlJustPressed(1, 47) and IsPlayerFreeAiming(PlayerId(-1)) then
			local bool, target = GetEntityPlayerIsFreeAimingAt(PlayerId(-1))

			if bool then
				if IsEntityAPed(target) then
					AtacaCapo(target)
				end
			end
		end


	end
end)
-- end of canaine()
end




if sumergible and IsPedInAnyVehicle(PlayerPedId(-1), true) then
	SetVehicleEngineOn(GetVehiclePedIsUsing(PlayerPedId(-1)), true, true, true)
end


if GodmodeSelf then
	SetPlayerInvincible(GetPlayerPed(-1), true)
	SetEntityInvincible(GetPlayerPed(-1), true)
else
	SetPlayerInvincible(GetPlayerPed(-1), false)
	SetEntityInvincible(GetPlayerPed(-1), false)
end

local function RGB(frequency)
	local result = {}
	local curtime = GetGameTimer() / 2000
	result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
	result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
	result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

	return result
end


function EnemyBarrage(target)

end



if RainbowCar then

	local rgb = RGB(1.0)
	SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId(-1)), rgb.r, rgb.g, rgb.b)
	SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId(-1)), rgb.r, rgb.g, rgb.b)
end

if RainbowNeon then
	local rgb = RGB(1)
	RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
	SetVehicleNeonLightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), rgb.r, rgb.g, rgb.b)
	for i = -1, 12 do
		SetVehicleHeadlightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), i)
	end
end

function SpectateUser(target)
	isSpectatingTarget = not isSpectatingTarget
	local targetPed = GetPlayerPed(target)
	if isSpectatingTarget then
		local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))
		RequestCollisionAtCoord(targetx, targety, targetz)
		NetworkSetInSpectatorMode(true, targetPed)
		RequestCollisionAtCoord(GetEntityCoords(targetPed))
		NetworkSetInSpectatorMode(true, targetPed)
		notify("Started spectating ~o~" .. GetPlayerName(target))
	else
		local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))
		RequestCollisionAtCoord(targetx, targety, targetz)
		NetworkSetInSpectatorMode(false, targetPed)
		notify("Stopped spectating ~o~" .. GetPlayerName(target))
	end
end

function ChangeMyPed(MyPed)
	RequestModel(GetHashKey(MyPed)) 
	Wait(125)
	if HasModelLoaded(GetHashKey(MyPed)) then
		SetPlayerModel(PlayerId(), GetHashKey(MyPed))
		end
end


function TeleportIntoPlayerVehicle(player)
	local ped = GetPlayerPed(player)
	if not IsPedInAnyVehicle(ped) then
	end

	local vehicle = GetVehiclePedIsUsing(GetPlayerPed(player))

	local seats = GetVehicleMaxNumberOfPassengers(vehicle)
	for i = 0, seats do
		if IsVehicleSeatFree(vehicle, i) then
			SetPedIntoVehicle(PlayerPedId(), vehicle, i)
			break
		end
	end
end

function table.removekey(array, element) for i = 1, #array do if array[i] == element then table.remove(array, i) end end end
function GetWeaponNameFromHash(hash) for i = 1, #weaponsArrayeet do if GetHashKey(weaponsArrayeet[i]) == hash then return string.sub(weaponsArrayeet[i], 8) end end end
function DrawTxt(text, x, y, scale, size, color)
	SetTextColour(255, 128, 0, 255)
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
-- Thanks nertigel for the open code, you helped me so much with the esp

function ClonePedFromPlayer(Who)
	local Handle = GetPlayerPed(Who)
		ClonePed(Handle, 1, 1, 1)
end


function Attackers1(SelectedPlayer)

end







if PlayerFreeze then
FlackoSucks = true
else 
FlackoSucks = false
end

Citizen.CreateThread(function() 
while FlackoSucks do
	Citizen.Wait(200)
ClearPedTasksImmediately(GetPlayerPed(selectedPlayer))
end
end)

DisplayRadar(ForceRadar, 1)
if AimLockTest then
	for i = 0, 128 do
		if i ~= PlayerId() then
			if IsPlayerFreeAiming(PlayerId()) then
				local TargetPed = GetPlayerPed(i)
				local TargetPos = GetEntityCoords(TargetPed)
				local Exist = DoesEntityExist(TargetPed)
				local Dead = IsPlayerDead(TargetPed)

				if Exist and not Dead then
					local OnScreen, ScreenX, ScreenY = World3dToScreen2d(TargetPos.x, TargetPos.y, TargetPos.z, 0)
					if IsEntityVisible(TargetPed) and OnScreen then
						if HasEntityClearLosToEntity(PlayerPedId(), TargetPed, 10000) then
							local TargetCoords = GetPedBoneCoords(TargetPed, 31086, 0, 0, 0)
							SetPedShootsAtCoord(PlayerPedId(), TargetCoords.x, TargetCoords.y, TargetCoords.z, 1)
						end
					end
				end
			end
		end
	end 
end




--===================================================================================================================
-- MAIN MENU
--===================================================================================================================
		if Absolute.IsMenuOpened('MainMenu') then
			if Absolute.MenuButton('Players List', 'PlayerList', '~o~>>', {dict = 'mpleaderboard', text = 'leaderboard_friends_icon', color = {r=255, g=255, b=255}}) then
			
				elseif Absolute.MenuButton('Self Options', 'SelfOptions', '~o~>>', {dict = 'mpleaderboard', text = 'leaderboard_players_icon', color = {r=255, g=255, b=255}}) then
					elseif Absolute.MenuButton('Teleport Options', 'TeleportMenu', '~o~>>', {dict = 'mpleaderboard', text = 'leaderboard_transport_plane_icon', color = {r=255, g=255, b=255}}) then
					elseif Absolute.MenuButton('Vehicle Options', 'VehiclesMenu', '~o~>>', {dict = 'mpleaderboard', text = 'leaderboard_car_icon', color = {r=255, g=255, b=255}}) then
					elseif Absolute.MenuButton('Weapon Options', 'WeaponMenu', '~o~>>', {dict = 'mpleaderboard', text = 'leaderboard_kills_icon', color = {r=255, g=255, b=255}}) then
					elseif Absolute.MenuButton('El recovery', 'Recovery', '~o~>>', {dict = 'mpleaderboard', text = 'leaderboard_socialclub_icon', color = {r=255, g=255, b=255}}) then
					elseif Absolute.MenuButton('Visual Options', 'VisualOptions', '~o~>>', {dict = 'commonmenu', text = 'shop_mask_icon_a', color = {r=255, g=255, b=255}}) then
					elseif Absolute.MenuButton('Menu Crasher', 'NukeWorld', '~o~>>', {dict = 'mprankbadge', text = 'globe', color = {r=255, g=255, b=255}}) then
					elseif Absolute.MenuButton('Craft Laboratory', 'CraftLaboratory', '~o~>>', {dict = 'mpinventory', text = 'mp_specitem_meth', color = {r=255, g=255, b=255}}) then
					elseif Absolute.Button("particle test") then
						local gay = GetEntityCoords(GetPlayerPed(-1))
						StartScriptFire(gay.x, gay.y, gay.z, 25, true)
						StartEntityFire(GetPlayerPed(-1))
					elseif Absolute.Button('Shut Down', 'UNHOOKER') then
						for i = -1, 30 do
							print("")
						end
						print("===================================================================================================================================================\n \n                    THANKS FOR USING ABSOLUTE " .. client .. "\n \n================================================================================================================================================================================================================================================")
						if DoesEntityExist(spawned_ped) then
						DeleteCanaine()
						end
						--ParticlesToSpawnedPed("scr_rcbarry2", "scr_clown_appears", GetPlayerPed(-1))
						for i = 0, 3 do
						ParticlesToSpawnedPed("core", "exp_water", GetPlayerPed(-1))
						end
						Enabled = false
					
					
						
					
			end

--===================================================================================================================
-- SELF MENU
--===================================================================================================================
Absolute.Display() -- OnPWeapMenu
	elseif Absolute.IsMenuOpened("SelfOptions") then
		if Absolute.MenuButton('Powers', 'Powers', '~o~>>') then
		elseif Absolute.MenuButton('K9 Menu', 'K9Menu', '~o~>>') then
		elseif Absolute.MenuButton('Wardobe Maker', 'WardobeMaker', '~o~>>') then
	elseif Absolute.Button("Random Appareance") then
	RandomSkin(PlayerId())
	elseif Absolute.ComboBox("Change Ped", {"Alien", "Chimp", "Drug Chef", "Imponent Rage", "Silvester Estalone", "Army Men", "Jesus", "Pigeon", "Killer whale (use on ~b~water~w~)", "Bunny", "@Flacko", "Juggernaut", "@Manuel", "@Cat", "ChickenHawk", "@Jesus Cook", "@Nertigel"}, currMyPedFuncIndex, selMyPedFuncIndex, function(currentIndex, selClothingIndex)
		currMyPedFuncIndex = currentIndex
		selMyPedFuncIndex = currentIndex
		end) then
		if selMyPedFuncIndex == 1 then
			ChangeMyPed("s_m_m_movalien_01")
		elseif selMyPedFuncIndex == 2 then
			ChangeMyPed("a_c_chimp")
		elseif selMyPedFuncIndex == 3 then
			ChangeMyPed("ig_chef2")
		elseif selMyPedFuncIndex == 4 then
			ChangeMyPed("u_m_y_imporage")
		elseif selMyPedFuncIndex == 5 then
			ChangeMyPed("u_m_y_babyd")
		elseif selMyPedFuncIndex == 6 then
			ChangeMyPed("s_m_y_blackops_01")
		elseif selMyPedFuncIndex == 7 then
			ChangeMyPed("u_m_m_jesus_01")
		elseif selMyPedFuncIndex == 8 then
			ChangeMyPed("a_c_pigeon")
		elseif selMyPedFuncIndex == 9 then
			ChangeMyPed("a_c_killerwhale")
		elseif selMyPedFuncIndex == 10 then
			ChangeMyPed("a_c_rabbit_01")
		elseif selMyPedFuncIndex == 11 then
			ChangeMyPed("mp_m_weapexp_01")
		elseif selMyPedFuncIndex == 12 then
			ChangeMyPed("u_m_y_juggernaut_01")
		elseif selMyPedFuncIndex == 13 then
			ChangeMyPed("u_m_y_mani")
		elseif selMyPedFuncIndex == 14 then
			ChangeMyPed("a_c_cat_01")
		elseif selMyPedFuncIndex == 15 then
			ChangeMyPed("a_c_chickenhawk")
		elseif selMyPedFuncIndex == 16 then
			ChangeMyPed("mp_m_bogdangoon")
		elseif selMyPedFuncIndex == 17 then
			ChangeMyPed("a_m_y_hasjew_01")
		end
	elseif Absolute.ComboBoxSlider("Health", HealthCBWords, currHealthIndex, selHealthIndex, function(currentIndex, selClothingIndex)
		currHealthIndex = currentIndex 
		selHealthIndex = currentIndex
		HealthMultiplier = HealthCB[currentIndex]
		SetEntityHealth(PlayerPedId(-1), HealthMultiplier)
		end) then
	elseif Absolute.ComboBoxSlider("Armor", ArmorCBWords, currArmorIndex, selArmorIndex, function(currentIndex, selClothingIndex)
		currArmorIndex = currentIndex 
		selArmorIndex = currentIndex
		ArmorMultiplier = ArmorCB[currentIndex]
		SetPedArmour(PlayerPedId(-1), ArmorMultiplier)
		end) then

	elseif Absolute.Button("Suicide") then
		SetEntityHealth(PlayerPedId(-1), 0)
		notify("You commited suicide")
	elseif Absolute.Button("Refill Stamina") then
		RestorePlayerStamina(PlayerId(), 1.0)
		notify("Stamina reseted")
	end

	Absolute.Display()
elseif Absolute.IsMenuOpened("K9Menu") then
if Absolute.ComboBox("General Options", {"Spawn Dog", "Delete Dog", "Print Controls (F8)"}, currDogDeleteSpawnFuncIndex, selDogDeleteSpawnFuncIndex, function(currentIndex, selClothingIndex)
	currDogDeleteSpawnFuncIndex = currentIndex
	selDogDeleteSpawnFuncIndex = currentIndex
	end) then
	if selDogDeleteSpawnFuncIndex == 1 then
		Canaine()
	elseif selDogDeleteSpawnFuncIndex == 2 then
		DeleteCanaine()
	elseif selDogDeleteSpawnFuncIndex == 3 then
		for i = -1, 30 do
			print("")
		end
		print("==================================================================================================================================================================================================================\n                    Controls for K9\n G: Follow/Stand Dog\n G + Aiming: Aim to Objective and press G to make the ped attack\n Change Model: Select a ped below to change\n H: Join/Leave Vehicle\n================================================================================================================================================================================================================== ")
	end
elseif Absolute.ComboBox("Select Ped", {"RottWeiler", "Sheeperd", "Golden Retriever", "Husky", "Lion"}, currDogPedFuncIndex, selDogPedFuncIndex, function(currentIndex, selClothingIndex)
	currDogPedFuncIndex = currentIndex
	selDogPedFuncIndex = currentIndex
	end) then
	if selDogPedFuncIndex == 1 then
	SelectedDogModel = "a_c_rottweiler"
	elseif selDogPedFuncIndex == 2 then
		SelectedDogModel = "a_c_shepherd"
	elseif selDogPedFuncIndex == 3 then
		SelectedDogModel = "a_c_retriever"
	elseif selDogPedFuncIndex == 4 then
		SelectedDogModel = "a_c_husky"
	elseif selDogPedFuncIndex == 5 then
		SelectedDogModel = "a_c_mtlion"
	end
elseif Absolute.ComboBox("Make Dog", {"Sit", "Laydown", "Stand up"}, currDogAnimationFuncIndex, selDogAnimationFuncIndex, function(currentIndex, selClothingIndex)
		currDogAnimationFuncIndex = currentIndex
		selDogAnimationFuncIndex = currentIndex
		end) then
		if selDogAnimationFuncIndex == 1 then
			PlayAnimation("creatures@rottweiler@amb@world_dog_sitting@idle_a", "idle_b")
		elseif selDogAnimationFuncIndex == 2 then
			PlayAnimation("creatures@rottweiler@amb@sleep_in_kennel@", "sleep_in_kennel")
		elseif selDogAnimationFuncIndex == 3 then
			ClearPedTasksImmediately(dog)
		end
end

--===================================================================================================================
-- Visual MENU
--===================================================================================================================
Absolute.Display()
elseif Absolute.IsMenuOpened("NukeWorld") then
if Absolute.ComboBox("Block", {"Legion Square", "Simeons", "Police"}, currZoneBlockerFuncIndex, selZoneBlockerFuncIndex, function(currentIndex, selClothingIndex)
	currZoneBlockerFuncIndex = currentIndex
	selZoneBlockerFuncIndex = currentIndex
end) then
if selZoneBlockerFuncIndex == 1 then
	x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer)))
                    roundx = tonumber(string.format('%.2f', x))
                    roundy = tonumber(string.format('%.2f', y))
                    roundz = tonumber(string.format('%.2f', z))
                    local wallHash = -145066854
                    RequestModel(wallHash)
                    while not HasModelLoaded(wallHash) do
                        Citizen.Wait(0)
                    end
					local Wall1 = CreateObject(wallHash, 97.8, -993.22, 28.41, true, true, false)
					local Wall2 = CreateObject(wallHash, 247.08, -1027.62, 28.26, true, true, false)
					local Wall3 = CreateObject(wallHash, 274.51, -833.73, 28.25, true, true, false)
					local Wall4 = CreateObject(wallHash, 291.54, -939.83, 27.41, true, true, false)
					local Wall5 = CreateObject(wallHash, 143.88, -830.49, 30.17, true, true, false)
					local Wall6 = CreateObject(wallHash, 161.97, -768.79, 29.08, true, true, false)
					local Wall7 = CreateObject(wallHash, 151.56, -1061.72, 28.21, true, true, false)
                    SetEntityHeading(Wall1, 39.79)
                    SetEntityHeading(Wall2, 128.62)
					SetEntityHeading(Wall3, 212.1)
					SetEntityHeading(Wall4, 179.22)
					SetEntityHeading(Wall5, 292.37)
					SetEntityHeading(Wall6, 238.46)
					SetEntityHeading(Wall7, 61.43)
                    FreezeEntityPosition(Wall1, true)
                    FreezeEntityPosition(Wall2, true)
					FreezeEntityPosition(Wall3, true)
					FreezeEntityPosition(Wall4, true)
					FreezeEntityPosition(Wall5, true)
					FreezeEntityPosition(Wall6, true)
                    FreezeEntityPosition(Wall7, true)
elseif selZoneBlockerFuncIndex == 2 then
	x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer)))
                    roundx = tonumber(string.format('%.2f', x))
                    roundy = tonumber(string.format('%.2f', y))
                    roundz = tonumber(string.format('%.2f', z))
                    local WallHash = -145066854
                    RequestModel(WallHash)
                    while not HasModelLoaded(WallHash) do
                        Citizen.Wait(0)
                    end
					local Wall1 = CreateObject(WallHash, -50.97, -1066.92, 26.52, true, true, false)
					local Wall2 = CreateObject(WallHash, -63.86, -1099.05, 25.26, true, true, false)
					local Wall3 = CreateObject(WallHash, -44.13, -1129.49, 25.07, true, true, false)
                    SetEntityHeading(Wall1, 160.59)
                    SetEntityHeading(Wall2, 216.98)
					SetEntityHeading(Wall3, 291.74)
                    FreezeEntityPosition(Wall1, true)
                    FreezeEntityPosition(Wall2, true)
					FreezeEntityPosition(Wall3, true)
	elseif selZoneBlockerFuncIndex == 3 then
		x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer)))
		roundx = tonumber(string.format('%.2f', x))
		roundy = tonumber(string.format('%.2f', y))
		roundz = tonumber(string.format('%.2f', z))
		local WallHash = -145066854
		RequestModel(WallHash)
		while not HasModelLoaded(WallHash) do
			Citizen.Wait(0)
		end
		local Wall1 = CreateObject(WallHash, 439.43, -965.49, 27.05, true, true, false)
		local Wall2 = CreateObject(WallHash, 401.04, -1015.15, 27.42, true, true, false)
		local Wall3 = CreateObject(WallHash, 490.22, -1027.29, 26.18, true, true, false)
		local Wall4 = CreateObject(WallHash, 491.36, -925.55, 24.48, true, true, false)
		SetEntityHeading(Wall1, 130.75)
		SetEntityHeading(Wall2, 212.63)
		SetEntityHeading(Wall3, 340.06)
		SetEntityHeading(pd4, 209.57)
		FreezeEntityPosition(Wall1, true)
		FreezeEntityPosition(Wall2, true)
		FreezeEntityPosition(Wall3, true)
		FreezeEntityPosition(Wall4, true)

end
elseif Absolute.Button("Cage all players") then
	for i = 0, 128 do
		x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(i)))
	roundx = tonumber(string.format("%.2f", x))
	roundy = tonumber(string.format("%.2f", y))
	roundz = tonumber(string.format("%.2f", z))
	local cagemodel = "hei_prop_heist_apecrate"
	local cagehash = GetHashKey(cagemodel)
	RequestModel(cagehash)
	while not HasModelLoaded(cagehash) do
	  Citizen.Wait(0)
	end
	local cage1 = CreateObject(cagehash, roundx, roundy, roundz - 0.5, true, true, false)
	SetEntityHeading(cage1, -90.0)
	FreezeEntityPosition(cage1, true)
end
end
--===================================================================================================================
-- Visual MENU
--===================================================================================================================
Absolute.Display()
elseif Absolute.IsMenuOpened("VisualOptions") then
if Absolute.CheckBox("Player Blips", playerBlips, function(enabled) playerBlips = enabled end) then
elseif Absolute.CheckBox("Force Map", ForceRadar) then
	ForceRadar = not ForceRadar
end


--===================================================================================================================
-- CRAFT LABORATORY
--===================================================================================================================
Absolute.Display()
elseif Absolute.IsMenuOpened("CraftLaboratory") then
if Absolute.MenuButton('Vehicles', 'VehiclesLaboratory', '~o~>>', {dict = 'mpleaderboard', text = 'leaderboard_cops_icon', color = {r=255, g=255, b=255}}) then
end

-- vehicles laboratoy
Absolute.Display()
elseif Absolute.IsMenuOpened("VehiclesLaboratory") then
	if Absolute.Button("PAnini") then
		PlaneMotorcycle()
	elseif Absolute.Button("Bush") then
		-- variable setting
		local deluxox = "t20"
		local bush = "prop_bush_lrg_01c_cr"
		local ped = GetPlayerPed(-1)
		RequestModel(deluxox)
		while not HasModelLoaded(deluxox) do
			Citizen.Wait(50)
		end
		RequestModel(bush)
		while not HasModelLoaded(bush) do
			Citizen.Wait(50)
		end
		-- Spawning vehicles and setting up some mods
		local veh = CreateVehicle(GetHashKey(deluxox), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
		FullTunningCar(veh)
		VehicleMaxTunning(veh)
		SetVehicleCustomPrimaryColour(veh, 0, 0, 0)
		SetVehicleCustomSecondaryColour(veh, 0, 0, 0)
		SetVehicleNeonLightsColour(veh, 0, 0, 0)
		-- spawning bushes & attaching
		local bush1 = CreateObject(GetHashKey(bush), 0, 0, 0, true, true, true)
		local bush2 = CreateObject(GetHashKey(bush), 0, 0, 0, true, true, true)
		if DoesEntityExist(veh) then
			AttachEntityToEntity(bush1, veh, 0.4, 0.0, 1.0, -0.5, 0, 0.0, 180.0, true, true, false, true, 1, true)
			AttachEntityToEntity(bush2, veh, 0.4, 0.0, -1.2, -0.5, 0, 0.0, 180.0, true, true, false, true, 1, true)
		end

	elseif Absolute.Button("Flying submarine") then
		-- Setting and requesting variables
		local Blimpastic = "blimp"
		local submarinenastic = "xm_prop_x17_sub"
		local ped = GetPlayerPed(-1)
		RequestModel(Blimpastic)
		while not HasModelLoaded(Blimpastic) do
			Citizen.Wait(50)
		end
		RequestModel(submarinenastic)
		while not HasModelLoaded(submarinenastic) do
			Citizen.Wait(50)
		end
		local veh = CreateVehicle(GetHashKey(Blimpastic), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
		local submarine = CreateObject(GetHashKey(submarinenastic), 0, 0, 0, true, true, true)
		Citizen.Wait(3000)
		if DoesEntityExist(veh) then
			AttachEntityToEntity(submarine, veh, 0.4, 0.0, -13.0, 13.0, 0, 0.0, 90.0, true, true, false, true, 1, true)
		end
elseif Absolute.ComboBox("SurBoard", {"Water", "City"}, currSurfIndex, selSurfIndex, function(currentIndex, selClothingIndex)
	currSurfIndex = currentIndex
	selSurfIndex = currentIndex
	end) then
		if selSurfIndex == 1 then
			local Seashark = "seashark2"
			--SetEntityVisible(PlayerPedId(), 0, 0)
			local ped = GetPlayerPed(-1)
			RequestModel(Seashark)
			while not HasModelLoaded(Seashark) do
				Citizen.Wait(50)
			end
			local veh = CreateVehicle(GetHashKey(Seashark), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
			FullTunningCar(veh)
			SetEntityVisible(veh, false, 0)
			SetPedIntoVehicle(ped, veh, -1)
			local surf = GetHashKey("prop_surf_board_04")
			local surfHash = CreateObject(surf, 0, 0, 0, true, true, true)
		
			if DoesEntityExist(veh) then
				AttachEntityToEntity(surfHash, veh, 0.4, 0.0, 0, 0.4, 90.0, 180.0, 180.0, true, true, false, true, 1, true)
			end
		elseif selSurfIndex == 2 then
			local Seashark = "sanchez"
			--SetEntityVisible(PlayerPedId(), 0, 0)
			local ped = GetPlayerPed(-1)
			RequestModel(Seashark)
			while not HasModelLoaded(Seashark) do
				Citizen.Wait(50)
			end
			local veh = CreateVehicle(GetHashKey(Seashark), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
			FullTunningCar(veh)
			SetEntityVisible(veh, false, 0)
			SetPedIntoVehicle(ped, veh, -1)
			local surf = GetHashKey("prop_surf_board_04")
			local surfHash = CreateObject(surf, 0, 0, 0, true, true, true)
		
			if DoesEntityExist(veh) then
				AttachEntityToEntity(surfHash, veh, 0.4, 0.0, 0, 0.3, 90.0, 180.0, 180.0, true, true, false, true, 1, true)
			end
		end
elseif Absolute.ComboBox("Broom", {"Flyer", "City"}, currBroomIndex, selBroomIndex, function(currentIndex, selClothingIndex)
	currBroomIndex = currentIndex
	selBroomIndex = currentIndex
	end) then
	if selBroomIndex == 1 then
		local opp = "oppressor2"
		--SetEntityVisible(PlayerPedId(), 0, 0)
		local ped = GetPlayerPed(-1)
		RequestModel(opp)
		while not HasModelLoaded(opp) do
			Citizen.Wait(50)
		end
		local veh = CreateVehicle(GetHashKey(opp), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
		FullTunningCar(veh)
		SetEntityVisible(veh, false, 0)
		SetPedIntoVehicle(ped, veh, -1)
		local broom = GetHashKey("prop_tool_broom")
		local broomhash = CreateObject(broom, 0, 0, 0, true, true, true)
	
		if DoesEntityExist(veh) then
			AttachEntityToEntity(broomhash, veh, 0.4, 0.0, 0, 0.4, 90.0, 180.0, 180.0, true, true, false, true, 1, true)
		end
	elseif selBroomIndex == 2 then
			local opp = "blazer2"
			--SetEntityVisible(PlayerPedId(), 0, 0)
			local ped = GetPlayerPed(-1)
			RequestModel(opp)
			while not HasModelLoaded(opp) do
				Citizen.Wait(50)
			end
			local veh = CreateVehicle(GetHashKey(opp), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
			FullTunningCar(veh)
			SetEntityVisible(veh, false, 0)
			SetPedIntoVehicle(ped, veh, -1)
			local broom = GetHashKey("prop_tool_broom")
			local broomhash = CreateObject(broom, 0, 0, 0, true, true, true)
		
			if DoesEntityExist(veh) then
				AttachEntityToEntity(broomhash, veh, 0.4, 0.0, 0, 0.2, 90.0, 180.0, 180.0, true, true, false, true, 1, true)
			end
	end
elseif Absolute.Button("Couch car") then
	local adder = "adder"
	local ped = GetPlayerPed(-1)
	local sofa = GetHashKey("prop_ld_farm_couch02")
	RequestModel(adder)
	while not HasModelLoaded(adder) do
	Citizen.Wait(50)
	end
	RequestModel(sofa)
	while not HasModelLoaded(sofa) do
	Citizen.Wait(50)
	end
	local veh = CreateVehicle(GetHashKey(adder), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
	FullTunningCar(veh)
	SetEntityVisible(veh, false, 0)
	SetPedIntoVehicle(ped, veh, -1)
	local sofaspawn = CreateObject(sofa, 0, 0, 0, true, true, true)
	if DoesEntityExist(veh) then
		AttachEntityToEntity(sofaspawn, veh, 0.4, 0.0, 0, -0.1, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
	end
elseif Absolute.Button("Flying yatch") then
	-- Setting and requesting variables
	local Hydra = "Hydra"
	local Yatch = 1338692320
	local turbo = 2890770506
	local ped = GetPlayerPed(-1)
	RequestModel(Hydra)
	while not HasModelLoaded(Hydra) do
		Citizen.Wait(50)
	end
	RequestModel(Yatch)
	while not HasModelLoaded(Yatch) do
		Citizen.Wait(50)
	end
	local veh = CreateVehicle(GetHashKey(Hydra), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
	SetPedIntoVehicle(ped, veh, -1)
	local YatchSpawn = CreateObject(Yatch, 0, 0, 0, true, true, true)
	local FrontLeftOne = CreateObject(turbo, 0, 0, 0, true, true, true)
	local FrontLeftTwo = CreateObject(turbo, 0, 0, 0, true, true, true)
	local BackLeftOne = CreateObject(turbo, 0, 0, 0, true, true, true)
	local BackLeftTwo = CreateObject(turbo, 0, 0, 0, true, true, true)
	local FrontRightOne = CreateObject(turbo, 0, 0, 0, true, true, true)
	local FrontRightTwo = CreateObject(turbo, 0, 0, 0, true, true, true)
	local BackRightOne = CreateObject(turbo, 0, 0, 0, true, true, true)
	local BackRightTwo = CreateObject(turbo, 0, 0, 0, true, true, true)
	-- niggerinos thing
	if DoesEntityExist(veh) then
		AttachEntityToEntity(YatchSpawn, veh, 0.4, -1.5, 0.0, 5.0, 0.0, 0.0, 90.0, true, true, false, true, 1, true)
		-- Spawning turbos
		-- Front left
		AttachEntityToEntity(FrontLeftOne, veh, 0.4, -3.0, 25.0, 5.0, 90.0, 180.0, 90.0, true, true, false, true, 1, true)
		Citizen.Wait(700)
		AttachEntityToEntity(FrontLeftTwo, veh, 0.4, -3.0, 25.0, 5.0, 90.0, 180.0, 90.0, true, true, false, true, 1, true)
		-- Back Left
		AttachEntityToEntity(BackLeftOne, veh, 0.4, -3.0, -30.0, 5.0, 90.0, 180.0, 90.0, true, true, false, true, 1, true)
		Citizen.Wait(700)
		AttachEntityToEntity(BackLeftTwo, veh, 0.4, -3.0, -30.0, 5.0, 90.0, 180.0, 90.0, true, true, false, true, 1, true)
	   -- Front Right
	   AttachEntityToEntity(FrontRightOne, veh, 0.4, 3.0, 25.0, 5.0, 90.0, 180.0, 270.0, true, true, false, true, 1, true)
	   Citizen.Wait(700)
	   AttachEntityToEntity(FrontRightTwo, veh, 0.4, 3.0, 25.0, 5.0, 90.0, 180.0, 270.0, true, true, false, true, 1, true)
	   -- Back right
	   AttachEntityToEntity(BackRightOne, veh, 0.4, 3.0, -30.0, 5.0, 90.0, 180.0, 270.0, true, true, false, true, 1, true)
	   Citizen.Wait(700)
	   AttachEntityToEntity(BackRightTwo, veh, 0.4, 3.0, -30.0, 5.0, 90.0, 180.0, 270.0, true, true, false, true, 1, true)
	end

end

--===================================================================================================================
-- VEHICLES MENU
--===================================================================================================================
Absolute.Display()
elseif Absolute.IsMenuOpened("VehiclesMenu") then
	if Absolute.MenuButton('Vehicle Spawner', 'VehicleSpawner', '~o~>>') then
	elseif Absolute.MenuButton('Mechanic', 'LSCustoms', '~o~>>') then
	elseif Absolute.ComboBox("Vehicle Functions", {"Completely Repair", "Break Vehicle", "Engine Repair", "Flip Vehicle", "Custom Vehicle"}, currVFuncIndex, selVFuncIndex, function(currentIndex, selClothingIndex)
		currVFuncIndex = currentIndex
		selVFuncIndex = currentIndex
		end) then
		local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
		if selVFuncIndex == 1 then
			SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
			SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
			SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
			SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
			Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
			SetVehicleEngineOn(veh, 1, 1)
		elseif selVFuncIndex == 2 then
			SetVehicleEngineHealth(veh, 0)
		elseif selVFuncIndex == 3 then
			--SetVehicleDirtLevel(veh, 15.0)
			SetVehicleEngineHealth(veh, 1000)
		elseif selVFuncIndex == 4 then
			flipvehilce()
		elseif selVFuncIndex == 5 then
			local ModelName =  kbinput("Enter Vehicle Spawn Name", "", 10)
            local PlateNumber = kbinput("Enter Vehicle Plate Number", "", 8)
            SpawnLegalVehicle(ModelName, PlayerId(), PlateNumber) 	
			
		end
	elseif Absolute.ComboBoxSlider("Torque Changer", TorqueModOps, currSpeedIndex, selSpeedIndex, function(currentIndex, selectedIndex)
		currSpeedIndex = currentIndex
		selSpeedIndex = currentIndex
		SpeedModAmt = TorqueModOps[currSpeedIndex]
		
		if SpeedModAmt == 1.0 then
			SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(PlayerPedId(), 0), SpeedModAmt)
		else
			SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(PlayerPedId(), 0), SpeedModAmt * 20.0)
		end
	end) then
	elseif Absolute.ComboBoxSlider("Dirty Level", DirtyCBWords, currDirtyIndex, selDirtyIndex, function(currentIndex, selClothingIndex)
		local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
		currDirtyIndex = currentIndex 
		selDirtyIndex = currentIndex
		DirtyMultiplier = DirtyCB[currentIndex]
		SetVehicleDirtLevel(vehicle, DirtyMultiplier)
		end) then
		elseif Absolute.ComboBox("Vehicle Engine Sound", {"DUBSTA", "COQUETTE", "ELECTRIC", "ADDER", "BISON", "HOTKNIFE", "JESTER", "RAPID", "XA21", "NERO 2", "STRETCH", "BTYPE 2", "BLAZER 4", "COMET 2", "WINDSOR", "DEFAULT"}, currSoundFuncIndex, selSoundFuncIndex, function(currentIndex, selClothingIndex)
			currSoundFuncIndex = currentIndex
			selSoundFuncIndex = currentIndex
			end) then
			local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
			if selSoundFuncIndex == 1 then
				ForceVehicleEngineAudio(veh, "DUBSTA")
			elseif selSoundFuncIndex == 2 then
				ForceVehicleEngineAudio(veh, "COQUETTE")
			elseif selSoundFuncIndex == 3 then
				ForceVehicleEngineAudio(veh, "VOLTIC")
			elseif selSoundFuncIndex == 4 then
				ForceVehicleEngineAudio(veh, "ADDER")
			elseif selSoundFuncIndex == 5 then
				ForceVehicleEngineAudio(veh, "BISON")
			elseif selSoundFuncIndex == 6 then
				ForceVehicleEngineAudio(veh, "HOTKNIFE")
			elseif selSoundFuncIndex == 7 then
				ForceVehicleEngineAudio(veh, "JESTER3")
			elseif selSoundFuncIndex == 8 then
				ForceVehicleEngineAudio(veh, "RAPIDGT")
			elseif selSoundFuncIndex == 9 then
				ForceVehicleEngineAudio(veh, "xa21")
			elseif selSoundFuncIndex == 10 then
				ForceVehicleEngineAudio(veh, "nero2")
			elseif selSoundFuncIndex == 11 then
				ForceVehicleEngineAudio(veh, "STRETCH")
			elseif selSoundFuncIndex == 12 then
				ForceVehicleEngineAudio(veh, "btype2")
			elseif selSoundFuncIndex == 13 then
				ForceVehicleEngineAudio(veh, "BLAZER4")
			elseif selSoundFuncIndex == 14 then
				ForceVehicleEngineAudio(veh, "COMET2")
			elseif selSoundFuncIndex == 15 then
				ForceVehicleEngineAudio(veh, "windsor")
			elseif selSoundFuncIndex == 16 then
				ForceVehicleEngineAudio(veh, windsor)
			end
		elseif Absolute.ComboBox("Some steal options", {"~g~ESX ~s~| Steal Vehicle", "Replace garage car", "Change plate"}, currStealVehFuncIndex, currStealVehFuncIndex, function(currentIndex, selClothingIndex)
			currStealVehFuncIndex = currentIndex
			selStealVehFuncIndex = currentIndex
			end) then
			if selStealVehFuncIndex == 1 then
				if IsPedInAnyVehicle(GetPlayerPed(-1)) then
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					local SpawnedVehicleProperties = GetVehicleProperties(GetVehiclePedIsIn(GetPlayerPed(-1), false))
					local SpawnedVehicleModel = SpawnedVehicleProperties.model
					local SpawnedVehicleModelName = GetDisplayNameFromVehicleModel(SpawnedVehicleModel)
					TriggerCustomEvent(true, 'esx_vehicleshop:setVehicleOwnedPlayerId', GetPlayerServerId(PlayerId()), SpawnedVehicleProperties, SpawnedVehicleModelName, SpawnedVehicleModel, false)
					end
			elseif selStealVehFuncIndex == 2 then
				VehicleBuy()
			elseif selStealVehFuncIndex == 3 then
				da()
			end
		elseif Absolute.Button("Remote Car") then
			RcModel = kbinput("Enter Car Name", "", 20)
						if RcModel and IsModelValid(RcModel) and IsModelAVehicle(RcModel) then
			RemotecontrolCar.Start()
					else
						notify("~r~Error:~w~ Invalid model ")
					end
		elseif Absolute.CheckBox("Sumergible", sumergible) then
			sumergible = not sumergible
		elseif Absolute.CheckBox("Vehicle Godmode", VehicleGodmode) then
			VehicleGodmode = not VehicleGodmode
	elseif Absolute.CheckBox("Toxic Bull", DeadlyBulldozer) then
		DeadlyBulldozer = not DeadlyBulldozer
		if DeadlyBulldozer then
			local veh = SpawnVeh("BULLDOZER", 1, SpawnEngineOn)
			SetVehicleCanBreak(veh, not DeadlyBulldozer)
			SetVehicleCanBeVisiblyDamaged(veh, not DeadlyBulldozer)
			SetVehicleEnginePowerMultiplier(veh, 2500.0)
			SetVehicleEngineTorqueMultiplier(veh, 2500.0)
			SetVehicleEngineOn(veh, 1, 1, 1)
			SetVehicleGravityAmount(veh, 50.0)
			SetVehicleColours(veh, 12, 12)
			notify("~o~Go forth and devour thy enemies! || Press ~w~E ~o~to launch a minion!")
		elseif not DeadlyBulldozer and IsPedInModel(PlayerPedId(), GetHashKey("BULLDOZER")) then
			DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 0))
		end
	elseif Absolute.CheckBox("Drift Mode", driftMod) then
		driftMod = not driftMod
	elseif Absolute.CheckBox("Vehicle Bunny Hop", JumpMod) then
		JumpMod = not JumpMod
	elseif Absolute.CheckBox("No Gravity", NoVehicleGravity) then
		NoVehicleGravity = not NoVehicleGravity
	end


Absolute.Display()
elseif Absolute.IsMenuOpened("VehicleSpawner") then
	if Absolute.MenuButton('Vehicle Categories', 'CarTypesList', '~o~>>') then
	elseif Absolute.MenuButton('Spawn Options', 'VehSpawnOptions', '~o~>>') then
end

Absolute.Display()
		elseif Absolute.IsMenuOpened("CarTypesList") then
			for i, e3 in ipairs(aX) do
				if Absolute.MenuButton(e3.." ", "CarTypeSelection", '~o~>>') then
					carTypeIdx = i
				end
			end

			Absolute.Display()
		elseif Absolute.IsMenuOpened("CarTypeSelection") then
			for i, e3 in ipairs(aY[carTypeIdx]) do
				if Absolute.MenuButton(" "..e3, "CarOptions") then
					carToSpawn = i
				end
			end

			Absolute.Display()
		elseif Absolute.IsMenuOpened("CarOptions") then
			if Absolute.Button("Spawn Car") then
				local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0.0, 0.0, 0.5))
				local veh = aY[carTypeIdx][carToSpawn]
			if veh == nil then
				veh = "adder"
			end
			vehiclehash = GetHashKey(veh)
			RequestModel(vehiclehash)
			Citizen.CreateThread(function()
				local e4 = 0
				while not HasModelLoaded(vehiclehash) do
					e4 = e4 + 100
					Citizen.Wait(100)
					if e4 > 5000 then
						notify("~r~Cannot spawn this vehicle.")
						break
					end
				end




				if DelCurVeh and IsPedInAnyVehicle(GetPlayerPed(-1), true) then
					local vehicle = GetVehiclePedIsUsing(GetPlayerPed(-1))
					SetEntityAsMissionEntity(vehicle, true, true)
					DeleteVehicle(vehicle)
				end
				SpawnedCar = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId(-1)) + 90, 1, 0)
				SetVehicleStrong(SpawnedCar, true)
				SetVehicleEngineOn(SpawnedCar, true, true, false)
				SetVehicleEngineCanDegrade(SpawnedCar, false)
				if SpawnInVeh then
					SetPedIntoVehicle(GetPlayerPed(-1), SpawnedCar, -1)
				end
			end)
				end


				Absolute.Display()
		elseif Absolute.IsMenuOpened("VehSpawnOptions") then
			if Absolute.CheckBox('Spawn full tunning', FullTunning) then
				FullTunning = not FullTunning
			elseif Absolute.CheckBox('Spawn full  Performance tunning', FullPerfTunning) then
					FullPerfTunning = not FullPerfTunning
			elseif Absolute.CheckBox(
				"Spawn In Vehicle",
				SpawnInVeh,
				function(enabled)
					SpawnInVeh = enabled
				end)
			then
			elseif Absolute.CheckBox(
				"Delete Current Vehicle",
				DelCurVeh,
				function(enabled)
					DelCurVeh = enabled
				end)
			then
			
			end



			--------------------------------- LOS SANTOS CUSTOMS
			
			Absolute.Display()
		elseif Absolute.IsMenuOpened("LSCustoms") then	
		if Absolute.MenuButton('Performance', 'performance', '~o~>>') then
		elseif Absolute.MenuButton('Ramps Config', 'RampsVehicle', '~o~>>', {dict = 'hunting', text = 'huntingwindarrow_32', color = {r=255, g=255, b=255}}) then
		elseif Absolute.CheckBox("Rainbow Vehicle Colour", RainbowCar, function(enabled) RainbowCar = enabled end) then
		elseif Absolute.CheckBox("Rainbow Xenon Colour", RainbowNeon, function(enabled) RainbowNeon = enabled end) then
		elseif Absolute.Button("Full tunning") then
			local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
			FullTunningCar(veh)
		elseif Absolute.Button("Full Performance tunning") then
			local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
			VehicleMaxTunning(veh)
		elseif Absolute.Button('Delete Vehicle') then
			deletecurrent()
		end

		SelectedRamp = "lts_prop_lts_ramp_02"
		Absolute.Display()
	elseif Absolute.IsMenuOpened("RampsVehicle") then	
	if Absolute.ComboBox("Ramp Type", {"Small", "Medium", "Big"}, currRampSelectionIndex, selRampSelectionIndex, function(currentIndex, selClothingIndex)
		currRampSelectionIndex = currentIndex
		selRampSelectionIndex = currentIndex
		end) then
		if selRampSelectionIndex == 1 then
			SelectedRamp = "lts_prop_lts_ramp_01"
		elseif selRampSelectionIndex == 2 then
			SelectedRamp = "lts_prop_lts_ramp_02"
		elseif selRampSelectionIndex == 3 then
			SelectedRamp = "lts_prop_lts_ramp_03"
		end
	elseif Absolute.Button("Spawn Ramp at front") then
		local ramp = SelectedRamp
		local ped = GetPlayerPed(-1)

		RequestModel(ramp)
		while not HasModelLoaded(ramp) do
			Citizen.Wait(50)
		end
		-- Spawning vehicles and setting up some mods
		local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		-- spawning bushes & attaching
		local RampToSpawn = CreateObject(GetHashKey(ramp), 0, 0, 0, true, true, false)
		if DoesEntityExist(veh) then
			AttachEntityToEntity(RampToSpawn, veh, 0.4, 0.0, 7.0, 0.3, 0, 0.0, 180.0, true, true, true, false, 1, true)
		end
	elseif Absolute.Button("Spawn Ramp at back") then
		local ramp = SelectedRamp
		local ped = GetPlayerPed(-1)

		RequestModel(ramp)
		while not HasModelLoaded(ramp) do
			Citizen.Wait(50)
		end
		-- Spawning vehicles and setting up some mods
		local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		-- spawning bushes & attaching
		local RampToSpawn = CreateObject(GetHashKey(ramp), 0, 0, 0, true, true, false)
		if DoesEntityExist(veh) then
			AttachEntityToEntity(RampToSpawn, veh, 0.4, 0.0, 7.0, 0.3, 0, 180.0, 180.0, true, true, true, false, 1, true)
		end
	end
--===================================================================================================================
-- WEAPON MENU
--===================================================================================================================
Absolute.Display()
elseif Absolute.IsMenuOpened("WeaponMenu") then
	if Absolute.MenuButton("Weapon Categories", "WeaponTypes", "~o~>>") then
	elseif Absolute.MenuButton("PedGun", "PedGunOptions", "~o~>>") then
	elseif Absolute.Button("Remove All Weapons") then
		RemoveAllPedWeapons(PlayerPedId(-1), true)
	elseif Absolute.Button("Give All Weapons", "NOT RECOMENDED") then
		GiveAllWeapons(PlayerPedId(-1))
	elseif Absolute.CheckBox("Aimlock test", AimLockTest) then
		AimLockTest = not AimLockTest
	elseif Absolute.CheckBox("Explosive Ammo", ExplosiveAmmo) then
		ExplosiveAmmo = not ExplosiveAmmo
	elseif Absolute.ComboBox("Weapon Tint", {"Default", "Green", "Gold", "Pinky", "Army", "Police", "Orange", "Platinum"}, currWeaponTintFuncIndex, selWeaponTintFuncIndex, function(currentIndex, selClothingIndex)
		currWeaponTintFuncIndex = currentIndex
		selWeaponTintFuncIndex = currentIndex
		end) then
		if selWeaponTintFuncIndex == 1 then
			SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0)
		elseif selWeaponTintFuncIndex == 2 then
			SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 1)
		elseif selWeaponTintFuncIndex == 3 then
			SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 2)
		elseif selWeaponTintFuncIndex == 4 then
			SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 3)
		elseif selWeaponTintFuncIndex == 5 then
			SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 4)
		elseif selWeaponTintFuncIndex == 6 then
			SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 5)
		elseif selWeaponTintFuncIndex == 7 then
			SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 6)
		elseif selWeaponTintFuncIndex == 8 then
			SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 7)
		end
	elseif Absolute.ComboBox("Special Finish", {"Abled", "Disabled"}, currWeaponSpecialFinishFuncIndex, selWeaponSpecialFinishFuncIndex, function(currentIndex, selClothingIndex)
		currWeaponSpecialFinishFuncIndex = currentIndex
		selWeaponSpecialFinishFuncIndex = currentIndex
		end) then
		if selWeaponSpecialFinishFuncIndex == 1 then
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x27872C90)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD7391086)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9B76C72C)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x487AAE09)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x85A64DF9)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x377CD377)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD89B9658)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4EAD7533)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4032B5E7)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x77B8AB2F)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x7A6A7B7B)
			GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x161E9241)
		elseif selWeaponSpecialFinishFuncIndex == 2 then
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x27872C90)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD7391086)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9B76C72C)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x487AAE09)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x85A64DF9)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x377CD377)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD89B9658)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4EAD7533)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4032B5E7)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x77B8AB2F)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x7A6A7B7B)
			RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x161E9241)
		end
end

Absolute.Display()
elseif Absolute.IsMenuOpened("WeaponTypes") then
	for e0, ev in pairs(b7) do
		if Absolute.MenuButton(""..e0, "WeaponTypeSelection", "~o~>>") then
			dy = ev

		end
end

Absolute.Display()
		elseif Absolute.IsMenuOpened("WeaponTypeSelection") then
		for e0, ev in pairs(dy) do
		if Absolute.MenuButton(ev.name, "WeaponOptions",  "~o~>>") then
				dk = ev
	end
		end


		




		Absolute.Display()
		elseif Absolute.IsMenuOpened("WeaponOptions") then
			if Absolute.Button("Spawn Weapon") then
				GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(dk.id), 0, false)
			end
			if Absolute.Button("Remove Weapon") then
				RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey(dk.id))
			
			end
			if Absolute.Button("Clear Ammo") then 
				SetPedAmmo(GetPlayerPed(-1), GetHashKey(dk.id), 0)
			end
		if Absolute.ComboBox("Chargers", {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"}, currWeaponModFuncIndex, selWeaponModFuncIndex, function(currentIndex, selClothingIndex)
			currWeaponModFuncIndex = currentIndex
			selWeaponModFuncIndex = currentIndex
		end) then
		local maxammoperclip = GetMaxAmmoInClip(GetPlayerPed(-1), GetHashKey(dk.id))
		local actualweaponhash = GetHashKey(dk.id)
		local quantityofammotoset = selWeaponModFuncIndex*maxammoperclip
		if selWeaponModFuncIndex == 1 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, maxammoperclip)
		elseif selWeaponModFuncIndex == 2 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 3 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 4 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 5 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 6 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 7 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 8 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 9 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 10 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 11 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 12 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 13 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 14 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 15 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 16 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 17 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 18 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 19 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		elseif selWeaponModFuncIndex == 20 then
			SetPedAmmo(GetPlayerPed(-1), actualweaponhash, quantityofammotoset)
		end
		
		end
	
			for e0, ev in pairs(dk.mods) do
				if Absolute.MenuButton(""..e0, "ModSelect", "~o~>>") then
					dA = ev
				end
					
				-- e0 = mod
		end -- El for acaba aca tambien


		Absolute.Display()
	elseif Absolute.IsMenuOpened("ModSelect") then
		for _, ev in pairs(dA) do
			if Absolute.Button("Attach " .. ev.name) then
				GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(dk.id), GetHashKey(ev.id))
			elseif Absolute.Button("Detach " .. ev.name) then
				RemoveWeaponComponentFromPed(GetPlayerPed(-1), GetHashKey(dk.id), GetHashKey(ev.id))
			end
		end


	Absolute.Display()
	elseif Absolute.IsMenuOpened("PedGunOptions") then
		if Absolute.CheckBox("Shoot Peds", PedGun) then
		PedGun = not PedGun
	elseif Absolute.ComboBox("Change Ped", {"Beach Girl", "WARLUS", "Hasjew", "Rare guy", "Surfer", "Bay Watcher", "Custom"}, currPedToShootFuncIndex, selPedToShootFuncIndex, function(currentIndex, selClothingIndex)
		currPedToShootFuncIndex = currentIndex
		selPedToShootFuncIndex = currentIndex
		end) then
		if selPedToShootFuncIndex == 1 then
			PedGunPedName = "a_f_m_beach_01"
		elseif selPedToShootFuncIndex == 2 then
			PedGunPedName = "a_f_m_fatcult_01"
		elseif selPedToShootFuncIndex == 3 then
			PedGunPedName = "a_m_m_hasjew_01"
		elseif selPedToShootFuncIndex == 4 then
			PedGunPedName = "a_m_y_acult_02"
		elseif selPedToShootFuncIndex == 5 then
			PedGunPedName = "a_m_y_jetski_01"
		elseif selPedToShootFuncIndex == 6 then
			PedGunPedName = "a_m_y_musclbeac_01"
		elseif selPedToShootFuncIndex == 7 then
			CustomModel = kbinput("Enter ped spawn name", "", 20)
			if CustomModel then
			PedGunPedName = CustomModel
			end
		end
	end
--===================================================================================================================
-- RECOVERY
--===================================================================================================================

Absolute.Display()
	elseif Absolute.IsMenuOpened("Recovery") then
			if Absolute.MenuButton("~g~ESX", "ESXRecovery" ) then
			elseif Absolute.MenuButton("~b~VRP", "VRPRecovery") then
	
		end

		Absolute.Display()
	elseif Absolute.IsMenuOpened("ESXRecovery") then
			if Absolute.Button("~y~TaxiJob", "(!)" ) then
				a=1 repeat TriggerCustomEvent(true,'esx_taxijob:success') a=a+1 until (a>100)
				
			elseif Absolute.Button("Fuck u", "") then	

			
	
		end
		

		Absolute.Display()
	elseif Absolute.IsMenuOpened("VRPRecovery") then
			if Absolute.Button("~g~ESX", "(!)" ) then
			elseif Absolute.Button("~b~VRP", "(!)") then
	
		end

--===================================================================================================================
-- POWERS
--===================================================================================================================

		Absolute.Display()
	elseif Absolute.IsMenuOpened("PlayerList") then
			for i = 0, 128 do
				if NetworkIsPlayerActive(i) and GetPlayerServerId(i) ~= 0 and Absolute.MenuButton("[~b~ S= "..GetPlayerServerId(i).." ~w~||~b~ L= "..i.."~w~]  ~w~"..GetPlayerName(i)..(IsPedDeadOrDying(GetPlayerPed(i), 1) and "  ~w~[~r~DEAD~w~]" or "  ~w~[~b~ALIVE~w~]"), "PlayerOptionsMenu") then
					SelectedPlayer = i
				end
			end

		Absolute.Display()
		elseif Absolute.IsMenuOpened("PlayerOptionsMenu") then
			Absolute.SetSubTitle('PlayerOptionsMenu', '~b~['..GetPlayerServerId(SelectedPlayer)..']~s~ '..GetPlayerName(SelectedPlayer))
			if Absolute.MenuButton("Pokemon Duel", "PokemonConfig",  "~o~>>") then
			elseif Absolute.MenuButton("Troll Options", "PlayerTrollOptions",  "~o~>>") then
			elseif Absolute.MenuButton("Give Single Weapon", "WeaponTypesForSelectedPlayer", "~o~>>")  then
			elseif Absolute.Button("Spectate", isSpectatingTarget and 'SPECTATING ~b~' ..GetPlayerName(SelectedPlayer) ) then
				SpectateUser(SelectedPlayer)
			elseif Absolute.ComboBox("Misc Options", {"Teleport To", "Clone Outfit", "Spawn Vehicle", "Tp to Vehicle", "Give All weapons", "Remove all weapons", "~g~ ESX ~s~| Steal His vehicle", "~g~ ESX ~s~| Give your vehicle"}, currMiscPlayerFuncIndex, selMiscPlayerFuncIndex, function(currentIndex, selClothingIndex)
				currMiscPlayerFuncIndex = currentIndex
				selMiscPlayerFuncIndex = currentIndex
			end) then
			local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
			if selMiscPlayerFuncIndex == 1 then
				SetEntityCoords(PlayerPedId(), GetEntityCoords(GetPlayerPed(SelectedPlayer)))
			elseif selMiscPlayerFuncIndex == 2 then
				CloneOutfit(SelectedPlayer)
			elseif selMiscPlayerFuncIndex == 3 then
				local ped = GetPlayerPed(SelectedPlayer)
				local ModelName = kbinput("Enter Vehicle Spawn Name", "", 20)
				if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
				RequestModel(ModelName)
				while not HasModelLoaded(ModelName) do
					Citizen.Wait(0)
				end
				local veh = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(ped), GetEntityHeading(ped)+90, true, true)
				FullTunningCar(veh)
				else
				notify("~b~Model is not valid!", true)
				end
			elseif selMiscPlayerFuncIndex == 4 then
				TeleportIntoPlayerVehicle(SelectedPlayer)
			elseif selMiscPlayerFuncIndex == 5 then
				GiveAllWeapons(PlayerPedId(SelectedPlayer))
			elseif selMiscPlayerFuncIndex == 6 then
				  RequestControlOnce(GetPlayerPed(selectedPlayer))
                    RemoveAllPedWeapons(GetPlayerPed(selectedPlayer), true)
                    RemoveAllPedWeapons(GetPlayerPed(selectedPlayer), false)
			elseif selMiscPlayerFuncIndex == 7 then
				if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer)) then
					local vehicle = GetVehiclePedIsIn(PlayerPedId(SelectedPlayer), 0)
					local SpawnedVehicleProperties = GetVehicleProperties(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false))
					local SpawnedVehicleModel = SpawnedVehicleProperties.model
					local SpawnedVehicleModelName = GetDisplayNameFromVehicleModel(SpawnedVehicleModel)
					TriggerCustomEvent(true, 'esx_vehicleshop:setVehicleOwnedPlayerId', GetPlayerServerId(PlayerId()), SpawnedVehicleProperties, SpawnedVehicleModelName, SpawnedVehicleModel, false)
					notify("Go to the inpound for your new car!!!")
				end
			elseif selMiscPlayerFuncIndex == 8 then
				local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					local SpawnedVehicleProperties = GetVehicleProperties(GetVehiclePedIsIn(GetPlayerPed(-1), false))
					local SpawnedVehicleModel = SpawnedVehicleProperties.model
					local SpawnedVehicleModelName = GetDisplayNameFromVehicleModel(SpawnedVehicleModel)
					TriggerCustomEvent(true, 'esx_vehicleshop:setVehicleOwnedPlayerId', GetPlayerServerId(PlayerId(SelectedPlayer)), SpawnedVehicleProperties, SpawnedVehicleModelName, SpawnedVehicleModel, false)
					notify("Vehicle added to SQL, get it on impound")
			end
			end


			-- weapons to selected player
			Absolute.Display()
		elseif Absolute.IsMenuOpened("WeaponTypesForSelectedPlayer") then
			for e0, ev in pairs(b7) do
				if Absolute.MenuButton(""..e0, "WeaponTypeSelectionToPlayer", "~o~>>") then
					dy = ev
		
				end
		end

		
Absolute.Display()
elseif Absolute.IsMenuOpened("WeaponTypeSelectionToPlayer") then
for e0, ev in pairs(dy) do
if Absolute.MenuButton(ev.name, "WeaponOptionsToPlayer",  "~o~>>") then
		weapontoplayer = ev
end
end



Absolute.Display()
elseif Absolute.IsMenuOpened("WeaponOptionsToPlayer") then
	if Absolute.Button("Spawn Weapon") then
		local gettinghashkey = GetHashKey(weapontoplayer.id)
		print(gettinghashkey)
		print(weapontoplayer.id)
		GiveWeaponToPed(GetPlayerPed(SelectedPlayer), gettinghashkey, 100, true, false)
	--	GiveWeaponToPed(GetPlayerPed(SelectedPlayer), GetHashKey(dk.id), 0, false)
	elseif Absolute.Button("Remove Weapon") then
		RemoveWeaponFromPed(GetPlayerPed(SelectedPlayer), GetHashKey(dk.id))	
	end



	-- Pokemon Config
	
Absolute.Display()
elseif Absolute.IsMenuOpened("PokemonConfig") then
if Absolute.CheckBox("Pokemon Duel", PokemonGO) then
	PokemonGO = not PokemonGO
elseif Absolute.ComboBox("Poke Attack", {"RPG", "AK-47", "ASSAULT SHOTGUN", "LASER CARABINE", "MINIGUN", "RAILGUN"}, currPokeAttackFuncIndex, selPokeAttackFuncIndex, function(currentIndex, selClothingIndex)
	currPokeAttackFuncIndex = currentIndex
	selPokeAttackFuncIndex = currentIndex
end) then
if selPokeAttackFuncIndex == 1 then
	selectedpokeweap = "weapon_rpg"
elseif selPokeAttackFuncIndex == 2 then
	selectedpokeweap = "weapon_assaultrifle"
	elseif selPokeAttackFuncIndex == 3 then
		selectedpokeweap = "weapon_assaultshotgun"
	elseif selPokeAttackFuncIndex == 4 then
	selectedpokeweap = "weapon_raycarbine"
	elseif selPokeAttackFuncIndex == 5 then
	selectedpokeweap = "weapon_minigun"
	elseif selPokeAttackFuncIndex == 6 then
	selectedpokeweap = "weapon_railgun"
end
elseif Absolute.ComboBox("PokePed", {"Silvester Estalone", "COP", "WARLUS", "CHIMP", "POGO", "ALIEN", "DITO"}, currPokePedFuncIndex, selPokePedFuncIndex, function(currentIndex, selClothingIndex)
	currPokePedFuncIndex = currentIndex
	selPokePedFuncIndex = currentIndex
end) then
if selPokePedFuncIndex == 1 then
	selectedpokeped = "u_m_y_babyd"
elseif selPokePedFuncIndex == 2 then
	selectedpokeped = "s_m_y_cop_01"
	elseif selPokePedFuncIndex == 3 then
		selectedpokeped = "a_f_m_fatcult_01"
	elseif selPokePedFuncIndex == 4 then
		selectedpokeped = "a_c_chimp"
	elseif selPokePedFuncIndex == 5 then
		selectedpokeped = "u_m_y_pogo_01"
	elseif selPokePedFuncIndex == 6 then
		selectedpokeped = "s_m_m_movalien_01"
	elseif selPokePedFuncIndex == 7 then
		local dito = GetPlayerPedScriptIndex(GetPlayerPed(selectedPlayer))
		selectedpokeped = dito
end
end


Absolute.Display()
elseif Absolute.IsMenuOpened("PlayerTrollOptions") then
if Absolute.MenuButton('Object Attacher', 'TrollObjectAttacher', '~o~>>', {dict = 'mpleaderboard', text = 'leaderboard_points_icon', color = {r=255, g=255, b=255}}) then

elseif Absolute.ComboBox("Some Troll Options", {"Clone Ped", "~g~ESX ~s~| Open Inventory", "Fire", "Barrage attaclker", "Shake Cam", "Cage"}, currTrollPlayerFuncIndex, selTrollPlayerFuncIndex, function(currentIndex, selClothingIndex)
	currTrollPlayerFuncIndex = currentIndex
	selTrollPlayerFuncIndex = currentIndex
end) then
if selTrollPlayerFuncIndex == 1 then
	ClonePedFromPlayer(SelectedPlayer)
elseif selTrollPlayerFuncIndex == 2 then
	TriggerCustomEvent(false, "esx_inventoryhud:openPlayerInventory", GetPlayerServerId(SelectedPlayer), GetPlayerName(SelectedPlayer))
elseif selTrollPlayerFuncIndex == 3 then
	ParticlesToSpawnedPed("core", "ent_sht_flame", GetPlayerPed(SelectedPlayer))
	ParticlesToSpawnedPed("core", "ent_sht_flame", GetPlayerPed(SelectedPlayer))
	ParticlesToSpawnedPed("core", "ent_sht_flame", GetPlayerPed(SelectedPlayer))
	ParticlesToSpawnedPed("core", "ent_sht_flame", GetPlayerPed(SelectedPlayer))
	ParticlesToSpawnedPed("core", "ent_sht_flame", GetPlayerPed(SelectedPlayer))
elseif selTrollPlayerFuncIndex == 4 then
EnemyBarrage(SelectedPlayer)
elseif selTrollPlayerFuncIndex == 5 then
	for i = 0, 15 do
	AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 5, 0.0, false, false, 100000.0)
	end
elseif selTrollPlayerFuncIndex == 6 then
	CagePlayer()
end


elseif Absolute.ComboBox("Pop Tire", {"Front Left", "Front Right", "Back Left", "Back Right", "All"}, currTireIndex, selTireIndex, function(currentIndex, selClothingIndex)
	currTireIndex = currentIndex
	selTireIndex = currentIndex
	end) then
	if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
		ShowInfo("~r~Player Not In Vehicle!")
	else
		local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
		RequestControlOnce(veh)
		if selTireIndex == 1 then
			SetVehicleTyreBurst(veh, 0, 1, 1000.0)
		elseif selTireIndex == 2 then
			SetVehicleTyreBurst(veh, 1, 1, 1000.0)
		elseif selTireIndex == 3 then
			SetVehicleTyreBurst(veh, 4, 1, 1000.0)
		elseif selTireIndex == 4 then
			SetVehicleTyreBurst(veh, 5, 1, 1000.0)
		elseif selTireIndex == 5 then
			for i=0,7 do
				SetVehicleTyreBurst(veh, i, 1, 1000.0)
			end
		end
	end
elseif Absolute.CheckBox("Freeze test", PlayerFreeze) then
	PlayerFreeze = not PlayerFreeze
end

Absolute.Display()
elseif Absolute.IsMenuOpened("TrollObjectAttacher") then
	if Absolute.Button("ddsfdsffds") then 
		notify("if you think this work, you are a cunt")
end

--===================================================================================================================
-- POWERS
--===================================================================================================================

Absolute.Display()
elseif Absolute.IsMenuOpened("Powers") then
	if Absolute.MenuButton('Speed Changer', 'VelocityPowers', '~o~>>') then
	elseif Absolute.MenuButton('GodMode Types', 'GmOptions', '~o~>>') then
	elseif Absolute.CheckBox("Super Jump", SuperJump) then
		SuperJump = not SuperJump
	elseif Absolute.CheckBox("Become a rat", BecomeTiny) then
		BecomeTiny = not BecomeTiny
	elseif Absolute.CheckBox("Magnet Boy", magnet, function(enabled) MagnetoMode() end) then
	elseif Absolute.CheckBox("Invisibe Man", Invisibility) then
		Invisibility = not Invisibility
		if not Invisibility then
			SetEntityVisible(PlayerPedId(), true)
		end
	elseif Absolute.CheckBox("Froze Walking", FrozeWalking) then
		FrozeWalking = not FrozeWalking
	elseif Absolute.CheckBox("Ghost Rider", GhostTest) then
		GhostTest = not GhostTest

	elseif Absolute.CheckBox("Iron Fist", IronFist) then
		IronFist = not IronFist
	elseif Absolute.CheckBox("Fire Breath", FireBreath) then
		FireBreath = not FireBreath
end



Absolute.Display()
elseif Absolute.IsMenuOpened("GmOptions") then
if Absolute.Button("Semi-GodMode") then
	local a="stt_prop_stunt_soccer_ball"while not HasModelLoaded(GetHashKey(a))do Citizen.Wait(0)RequestModel(GetHashKey(a))end;local b=CreateObject(GetHashKey(a),0,0,0,true,true,false)SetEntityVisible(b,0,0)AttachEntityToEntity(b,GetPlayerPed(-1),GetPedBoneIndex(GetPlayerPed(-1),57005),0,0,-1.0,0,0,0,false,true,true,true,1,true)
elseif Absolute.CheckBox("Godmode", GodmodeSelf) then
	GodmodeSelf = not GodmodeSelf
end


Absolute.Display()
elseif Absolute.IsMenuOpened("VelocityPowers") then
	if Absolute.ComboBoxSlider("Walking/running Multiplier", FastCBWords, currFastRunIndex, selFastRunIndex, function(currentIndex, selClothingIndex)
		currFastRunIndex = currentIndex
		selFastRunIndex = currentIndex
		FastRunMultiplier = FastCB[currentIndex]
		SetRunSprintMultiplierForPlayer(PlayerId(), FastRunMultiplier)
		end) then
	elseif Absolute.ComboBoxSlider("Fast Swim", FastCBWords, currFastSwimIndex, selFastSwimIndex, function(currentIndex, selClothingIndex)
			currFastSwimIndex = currentIndex
			selFastSwimIndex = currentIndex
			FastSwimMultiplier = FastCB[currentIndex]
			SetSwimMultiplierForPlayer(PlayerId(), FastSwimMultiplier)
			end) then
end	
	


--===================================================================================================================
-- OutFit Maker
--===================================================================================================================
Absolute.Display() 
	elseif Absolute.IsMenuOpened("WardobeMaker") then
		if Absolute.MenuButton('Head Props', 'HeadMenu', '~o~>>') then
		elseif Absolute.MenuButton('Torso Options', 'TorsoMaker', '~o~>>') then
		elseif Absolute.MenuButton('Legs Options', 'LegsMaker', '~o~>>') then
		elseif Absolute.MenuButton('Accesories Options', 'AccesoriesMaker', '~o~>>') then
	end


-- Accesories

Absolute.Display()
elseif Absolute.IsMenuOpened("AccesoriesMaker") then
	if Absolute.MenuButton('Kneck accesories', 'KneckMenu', '~o~>>') then
	elseif Absolute.MenuButton('Clocks', 'ClockMenu', '~o~>>') then

end

-- Clock 29 
Absolute.Display()
elseif Absolute.IsMenuOpened("ClockMenu") then
	if Absolute.ComboBoxSlider("Clock", ClockCBWords, currClockIndex, selClockIndex, function(currentIndex, selClothingIndex)
		currClockIndex = currentIndex 
		selClockIndex = currentIndex
		ClockMultiplier = ClockCB[currentIndex]
		local user = PlayerPedId()
		actualClock = ClockMultiplier
		SetPedPropIndex(user, 6, ClockMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Clock Color", ClockexCBWords, currClockexIndex, selClockexIndex, function(currentIndex, selClothingIndex)
			currClockexIndex = currentIndex 
			selClockexIndex = currentIndex
			ClockexMultiplier = ClockexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedPropIndex(user, 6, actualClock, ClockexMultiplier, 1)
			end) then
end

-- Kneck 131

Absolute.Display()
elseif Absolute.IsMenuOpened("KneckMenu") then
	if Absolute.ComboBoxSlider("Kneck", KneckCBWords, currKneckIndex, selKneckIndex, function(currentIndex, selClothingIndex)
		currKneckIndex = currentIndex 
		selKneckIndex = currentIndex
		KneckMultiplier = KneckCB[currentIndex]
		local user = PlayerPedId()
		actualKneck = KneckMultiplier
		SetPedComponentVariation(user, 7, KneckMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Kneck Color", KneckexCBWords, currKneckexIndex, selKneckexIndex, function(currentIndex, selClothingIndex)
			currKneckexIndex = currentIndex 
			selKneckexIndex = currentIndex
			KneckexMultiplier = KneckexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedComponentVariation(user, 7, actualKneck, KneckexMultiplier, 1)
			end) then
end



-- Legs
Absolute.Display()
elseif Absolute.IsMenuOpened("LegsMaker") then
	if Absolute.MenuButton('Legs', 'LegsMenu', '~o~>>') then
	elseif Absolute.MenuButton('Shoes', 'ShoesMenu', '~o~>>') then
end




-- Shoes


Absolute.Display()
elseif Absolute.IsMenuOpened("ShoesMenu") then
	if Absolute.ComboBoxSlider("Shoes", ShoesCBWords, currShoesIndex, selShoesIndex, function(currentIndex, selClothingIndex)
		currShoesIndex = currentIndex 
		selShoesIndex = currentIndex
		ShoesMultiplier = ShoesCB[currentIndex]
		local user = PlayerPedId()
		actualShoes = ShoesMultiplier
		SetPedComponentVariation(user, 6, ShoesMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Shoes Color", ShoesexCBWords, currShoesexIndex, selShoesexIndex, function(currentIndex, selClothingIndex)
			currShoesexIndex = currentIndex 
			selShoesexIndex = currentIndex
			ShoesexMultiplier = ShoesexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedComponentVariation(user, 6, actualShoes, ShoesexMultiplier, 1)
			end) then
end
-- Pants
Absolute.Display()
elseif Absolute.IsMenuOpened("LegsMenu") then
	if Absolute.ComboBoxSlider("Pants", PantsCBWords, currPantsIndex, selPantsIndex, function(currentIndex, selClothingIndex)
		currPantsIndex = currentIndex 
		selPantsIndex = currentIndex
		PantsMultiplier = PantsCB[currentIndex]
		local user = PlayerPedId()
		actualPants = PantsMultiplier
		SetPedComponentVariation(user, 4, PantsMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Pants Texture", PantsexCBWords, currPantsexIndex, selPantsexIndex, function(currentIndex, selClothingIndex)
			currPantsexIndex = currentIndex 
			selPantsexIndex = currentIndex
			PantsexMultiplier = PantsexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedComponentVariation(user, 4, actualPants, PantsexMultiplier, 1)
			end) then
end


-- Torso Maker

-- TOPS
Absolute.Display() 
	elseif Absolute.IsMenuOpened("TorsoMaker") then
		if Absolute.MenuButton('Torso', 'TorsoMenu', '~o~>>') then
		elseif Absolute.MenuButton('T-Shirt', 'TshirtMenu', '~o~>>') then
		elseif Absolute.MenuButton('Hands/gloves', 'HandsMenu', '~o~>>') then
		elseif Absolute.MenuButton('Bags', 'BagMenu', '~o~>>') then
		elseif Absolute.MenuButton('Body Armor', 'BodyArmorMenu', '~o~>>') then
		elseif Absolute.MenuButton('Stickers', 'StickersMenu', '~o~>>') then
	end

	Absolute.Display() 
elseif Absolute.IsMenuOpened("TorsoMenu") then
	if Absolute.ComboBoxSlider("Torso", TorsodosCBWords, currTorsodosIndex, selTorsodosIndex, function(currentIndex, selClothingIndex)
		currTorsodosIndex = currentIndex 
		selTorsodosIndex = currentIndex
		TorsodosMultiplier = TorsodosCB[currentIndex]
		local user = PlayerPedId()
		actualTorsodos = TorsodosMultiplier
		SetPedComponentVariation(user, 11, TorsodosMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Torso Texture", TorsodosexCBWords, currTorsodosexIndex, selTorsodosexIndex, function(currentIndex, selClothingIndex)
			currTorsodosexIndex = currentIndex 
			selTorsodosexIndex = currentIndex
			TorsodosexMultiplier = TorsodosexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedComponentVariation(user, 11, actualTorsodos, TorsodosexMultiplier, 1)
			end) then
end

-- T-Shirt
Absolute.Display() 
elseif Absolute.IsMenuOpened("TshirtMenu") then
	if Absolute.ComboBoxSlider("T-Shirt", ShirtCBWords, currShirtIndex, selShirtIndex, function(currentIndex, selClothingIndex)
		currShirtIndex = currentIndex 
		selShirtIndex = currentIndex
		ShirtMultiplier = ShirtCB[currentIndex]
		local user = PlayerPedId()
		actualShirt = ShirtMultiplier
		SetPedComponentVariation(user, 8, ShirtMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("T-Shirt Texture", ShirtexCBWords, currShirtexIndex, selShirtexIndex, function(currentIndex, selClothingIndex)
			currShirtexIndex = currentIndex 
			selShirtexIndex = currentIndex
			ShirtexMultiplier = ShirtexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedComponentVariation(user, 8, actualShirt, ShirtexMultiplier, 1)
			end) then
end


-- Hands
Absolute.Display() 
elseif Absolute.IsMenuOpened("HandsMenu") then
	if Absolute.ComboBoxSlider("Hands", HandsCBWords, currHandsIndex, selHandsIndex, function(currentIndex, selClothingIndex)
		currHandsIndex = currentIndex 
		selHandsIndex = currentIndex
		HandsMultiplier = HandsCB[currentIndex]
		local user = PlayerPedId()
		actualHands = HandsMultiplier
		SetPedComponentVariation(user, 3, HandsMultiplier, 1, 1)
		end) then
end

-- Bag
Absolute.Display() 
elseif Absolute.IsMenuOpened("BagMenu") then
	if Absolute.ComboBoxSlider("Bag", BagCBWords, currBagIndex, selBagIndex, function(currentIndex, selClothingIndex)
		currBagIndex = currentIndex 
		selBagIndex = currentIndex
		BagMultiplier = BagCB[currentIndex]
		local user = PlayerPedId()
		actualBag = BagMultiplier
		SetPedComponentVariation(user, 5, BagMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Bag Color", BagexCBWords, currBagexIndex, selBagexIndex, function(currentIndex, selClothingIndex)
			currBagexIndex = currentIndex 
			selBagexIndex = currentIndex
			BagexMultiplier = BagexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedComponentVariation(user, 5, actualBag, BagexMultiplier, 1)
			end) then
end


-- Body Armor

Absolute.Display() 
elseif Absolute.IsMenuOpened("BodyArmorMenu") then
	if Absolute.ComboBoxSlider("Body Armor", BodyArmorCBWords, currBodyArmorIndex, selBodyArmorIndex, function(currentIndex, selClothingIndex)
		currBodyArmorIndex = currentIndex 
		selBodyArmorIndex = currentIndex
		BodyArmorMultiplier = BodyArmorCB[currentIndex]
		local user = PlayerPedId()
		actualBodyArmor = BodyArmorMultiplier
		SetPedComponentVariation(user, 9, BodyArmorMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Body Armor Color", BodyArmorexCBWords, currBodyArmorexIndex, selBodyArmorexIndex, function(currentIndex, selClothingIndex)
			currBodyArmorexIndex = currentIndex 
			selBodyArmorexIndex = currentIndex
			BodyArmorexMultiplier = BodyArmorexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedComponentVariation(user, 9, actualBodyArmor, BodyArmorexMultiplier, 1)
			end) then
end


-- stickers
Absolute.Display() 
elseif Absolute.IsMenuOpened("StickersMenu") then
	if Absolute.ComboBoxSlider("Stickers", StickersCBWords, currStickersIndex, selStickersIndex, function(currentIndex, selClothingIndex)
		currStickersIndex = currentIndex 
		selStickersIndex = currentIndex
		StickersMultiplier = StickersCB[currentIndex]
		local user = PlayerPedId()
		actualStickers = StickersMultiplier
		SetPedComponentVariation(user, 10, StickersMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Stickers Design", StickersexCBWords, currStickersexIndex, selStickersexIndex, function(currentIndex, selClothingIndex)
			currStickersexIndex = currentIndex 
			selStickersexIndex = currentIndex
			StickersexMultiplier = StickersexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedComponentVariation(user, 10, actualStickers, StickersexMultiplier, 1)
			end) then
end


-- HEAD PROPS

-- HAT
	Absolute.Display() 
elseif Absolute.IsMenuOpened("HeadMenu") then
	if Absolute.MenuButton('Hats', 'HatMenu', '~o~>>') then
	elseif Absolute.MenuButton('Glasses', 'GlassesMenu', '~o~>>') then
	elseif Absolute.MenuButton('Ear', 'EarMenu', '~o~>>') then
	elseif Absolute.MenuButton('Mask', 'MaskMenu', '~o~>>') then
	elseif Absolute.MenuButton('Hair', 'HairMenu', '~o~>>') then
	end

	Absolute.Display() 
elseif Absolute.IsMenuOpened("HatMenu") then
	if Absolute.ComboBoxSlider("Hat", HatCBWords, currHatIndex, selHatIndex, function(currentIndex, selClothingIndex)
		currHatIndex = currentIndex 
		selHatIndex = currentIndex
		HatMultiplier = HatCB[currentIndex]
		local user = PlayerPedId()
		actualhat = HatMultiplier
		SetPedPropIndex(user, 0, HatMultiplier, 1, 1)
		end) then

		elseif Absolute.ComboBoxSlider("Hat Texture", HatexCBWords, currHatexIndex, selHatexIndex, function(currentIndex, selClothingIndex)
			currHatexIndex = currentIndex 
			selHatexIndex = currentIndex
			HatexMultiplier = HatexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedPropIndex(user, 0, actualhat, HatexMultiplier, 1)
			end) then
end
-- GLASSES
Absolute.Display() 
elseif Absolute.IsMenuOpened("GlassesMenu") then
	if Absolute.ComboBoxSlider("Glasses", GlassesCBWords, currGlassesIndex, selGlassesIndex, function(currentIndex, selClothingIndex)
		currGlassesIndex = currentIndex 
		selGlassesIndex = currentIndex
		GlassesMultiplier = HatCB[currentIndex]
		local user = PlayerPedId()
		actualGlasses = GlassesMultiplier
		SetPedPropIndex(user, 1, GlassesMultiplier, 1, 1)
		end) then
		elseif Absolute.ComboBoxSlider("Glasses Texture", GlassesexCBWords, currGlassesexIndex, selGlassesexIndex, function(currentIndex, selClothingIndex)
			currGlassesexIndex = currentIndex 
			selGlassesexIndex = currentIndex
			GlassesexMultiplier = GlassesexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedPropIndex(user, 1, actualGlasses, GlassesexMultiplier, 1)
			end) then
end

-- Ear Menu
Absolute.Display() 
elseif Absolute.IsMenuOpened("EarMenu") then
	if Absolute.ComboBoxSlider("Ear", EarCBWords, currEarIndex, selEarIndex, function(currentIndex, selClothingIndex)
		currEarIndex = currentIndex 
		selEarIndex = currentIndex
		EarMultiplier = EarCB[currentIndex]
		local user = PlayerPedId()
		actualEar = EarMultiplier
		SetPedPropIndex(user, 2, EarMultiplier, 1, 1)
		end) then
		elseif Absolute.ComboBoxSlider("Ear Texture", EarexCBWords, currEarexIndex, selEarexIndex, function(currentIndex, selClothingIndex)
			currEarexIndex = currentIndex 
			selEarexIndex = currentIndex
			EarexMultiplier = EarexCB[currentIndex]
			local user = PlayerPedId()
			
			SetPedPropIndex(user, 2, actualEar, EarexMultiplier, 1)
			end) then
end


-- Mask Menu

Absolute.Display() 
elseif Absolute.IsMenuOpened("MaskMenu") then
	if Absolute.ComboBoxSlider("Mask", MaskCBWords, currMaskIndex, selMaskIndex, function(currentIndex, selClothingIndex)
		currMaskIndex = currentIndex 
		selMaskIndex = currentIndex
		MaskMultiplier = MaskCB[currentIndex]
		local user = PlayerPedId()
		actualMask = MaskMultiplier
		SetPedComponentVariation(user, 1, MaskMultiplier, 1, 1)
		end) then
		elseif Absolute.ComboBoxSlider("Mask Design", MaskexCBWords, currMaskexIndex, selMaskexIndex, function(currentIndex, selClothingIndex)
			currMaskexIndex = currentIndex 
			selMaskexIndex = currentIndex
			MaskexMultiplier = MaskexCB[currentIndex]
			local user = PlayerPedId()
		

			SetPedComponentVariation(user, 1, actualMask, MaskexMultiplier, 1)
			end) then
end




-- Beard Menu
Absolute.Display()
elseif Absolute.IsMenuOpened("HairMenu") then
	if Absolute.ComboBoxSlider("Hair", HairCBWords, currHairIndex, selHairIndex, function(currentIndex, selClothingIndex)
		currHairIndex = currentIndex 
		selHairIndex = currentIndex
		HairMultiplier = HairCB[currentIndex]
		local user = PlayerPedId()
		actualHair = HairMultiplier
		SetPedComponentVariation(user, 2, HairMultiplier, 1, 1)
		end) then
		elseif Absolute.ComboBoxSlider("Hair Design", HairexCBWords, currHairexIndex, selHairexIndex, function(currentIndex, selClothingIndex)
			currHairexIndex = currentIndex 
			selHairexIndex = currentIndex
			HairexMultiplier = HairexCB[currentIndex]
			local user = PlayerPedId()
		

			SetPedComponentVariation(user, 2, actualHair, HairexMultiplier, 1)
			end) then
end
-------------------------------------------

--===================================================================================================================
-- Teleport Menu
--===================================================================================================================
Absolute.Display() -- OnPWeapMenu
	elseif Absolute.IsMenuOpened("TeleportMenu") then
	if Absolute.Button("Teleport To Waypoint") then
		WPTP()
	elseif Absolute.CheckBox("Show coords", showCoords) then
		showCoords = not showCoords
	elseif Absolute.Button("    ~o~ ---------------------------------------------------------------------------------   ") then
	notify("~g~This is just a divisor :)")
elseif Absolute.MenuButton('Clothes Store', 'ClothingStores', '~o~>>') then
elseif Absolute.MenuButton('Barbery Shops', 'BarberShops', '~o~>>') then
elseif Absolute.MenuButton('Airports', 'Airports', '~o~>>') then
elseif Absolute.MenuButton('Garages', 'Garages', '~o~>>') then
elseif Absolute.MenuButton('Ammu-Nation`s', 'Ammunation', '~o~>>') then
elseif Absolute.MenuButton('Cinemas', 'Cinemas', '~o~>>') then
	elseif Absolute.Button("Vanilla Unicorn") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 135.5, -1308.3, 28.3)
	end


	Absolute.Display() -- OnPWeapMenu
	elseif Absolute.IsMenuOpened("ClothingStores") then
	if Absolute.Button("~p~UNKWN ~g~-~s~ Paleto Bay") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -4.5, 6521.2, 30.5)
	notify("Teleported")
	elseif Absolute.Button("~p~UNKWN ~g~-~s~ Zancudo") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 1678.05, 4819.88, 41.29)
	notify("Teleported")
	elseif Absolute.Button("~p~UNKWN ~g~-~s~ Sandy Shores") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 1179.67, 2691.37, 12.4)
	notify("Teleported")
	elseif Absolute.Button("~p~UNKWN ~g~-~s~ Strawberry") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 89.320786, -1392.317627, 30.4)
	notify("Teleported")
	elseif Absolute.Button("~p~UNKWN ~g~-~s~ Great Chaparral") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -1089.4, 2697.03, 19.44)
	notify("Teleported")
	elseif Absolute.Button("~b~SUBURBAN ~g~- ~s~Havick ") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 134.122055, -200.21133, 53.864090)
	notify("Teleported")
	elseif Absolute.Button("~b~SUBURBAN ~g~- ~s~Del Perro ") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -1210.620361, -784.16021, 16.549015)
	notify("Teleported")
	elseif Absolute.Button("~r~PONSONBYS ~g~- ~s~Burton ") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -148.234741, -308.07, 38.104)
	notify("Teleported")
	elseif Absolute.Button("~r~PONSONBYS ~g~- ~s~Rockford Hills ") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -725.551453, -162.83371, 36.570)
	notify("Teleported")
	elseif Absolute.Button("~r~PONSONBYS ~g~- ~s~MorningWood ") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -1460.654, -227.55, 48.72)
	notify("Teleported")
	end	



	Absolute.Display() -- OnPWeapMenu
	elseif Absolute.IsMenuOpened("BarberShops") then
	if Absolute.Button("Havick") then
			local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -27.79, -136.86, 56.51)
	notify("Teleported")
	elseif Absolute.Button("Rockford Hills") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -829.42, -191.58, 36.92)
	notify("Teleported")
	elseif Absolute.Button("Vespucci") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -1294.99, -1117.64, 6.15)
	notify("Teleported")
	elseif Absolute.Button("Mirror Park") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 1198.02, -471.81, 65.67)
	notify("Teleported")
	elseif Absolute.Button("Davis") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 127.76, -1718.65, 28.65)
	notify("Teleported")
	elseif Absolute.Button("Paleto Bay") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -286.63, 6239.38, 30.56)
	notify("Teleported")
	elseif Absolute.Button("Sandy Shores") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 1938.35, 3717.80, 31.60)
	notify("Teleported")
	end


	Absolute.Display() -- OnPWeapMenu
	elseif Absolute.IsMenuOpened("Airports") then
		if Absolute.Button("Los Santos Airport") then
			local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -1070.90, -2972.122, 13.77)
	notify("Teleported")
	elseif Absolute.Button("Flight School") then
			local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -1142.0, -2697.3, 13.77)
	notify("Teleported")
	elseif Absolute.Button("Sandy Shores") then
			local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 1682.19, 3279.98, 40.6)
	notify("Teleported")
	elseif Absolute.Button("McKenzie Airfield") then
			local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 2124.62, 4805.27, 40.47)
	notify("Teleported")
	end



	Absolute.Display() -- OnPWeapMenu
	elseif Absolute.IsMenuOpened("Garages") then
		if Absolute.Button("Mort Mutual Insurance") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -221.74, -1158.24, 23.04)
		notify("Teleported")
		elseif Absolute.Button("Bennys Garage") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -196.34, -1303.10, 30.65)
		notify("Teleported")
		elseif Absolute.Button("Beekers Garage") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 116.22, 6606.20, 31.46)
		notify("Teleported")
		elseif Absolute.Button("Sandy Shores") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 1176.82, 2657.97, 37.37)
		notify("Teleported")
		elseif Absolute.Button("Grand Senora Dust") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 1173.45, 2661.58, 37.28)
		notify("Teleported")
		elseif Absolute.Button("Burton") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -370.53, -130.40, 38.19)
		notify("Teleported")
		elseif Absolute.Button("Little Seoul Car Wash") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -701.82, -921.92, 18.58)
		notify("Teleported")
	end


	Absolute.Display() 
	elseif Absolute.IsMenuOpened("Ammunation") then
		if Absolute.Button("Paleto Bay") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -318.85, 6074.43, 30.614)
		notify("Teleported")
		elseif Absolute.Button("Sandy Shores") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 1704.67, 3748.88, 33.28)
		notify("Teleported")
		elseif Absolute.Button("Great Chaparral") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -1108.60, 2685.69, 18.17)
		notify("Teleported")
		elseif Absolute.Button("Chumash") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -1108.60, 2685.69, 18.17)
		notify("Teleported")
		elseif Absolute.Button("Palomino Fwy") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 2571.371, 313.879, 107.970)
		notify("Teleported")
		elseif Absolute.Button("Hawick") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 235.66, -42.26, 69.22)
		notify("Teleported")
		elseif Absolute.Button("Morningwood") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -1328.592896, -387.114410, 36.126881)
		notify("Teleported")
		elseif Absolute.Button("Little Seoul") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, -665.232727, -952.522522, 20.866556)
		notify("Teleported")
		elseif Absolute.Button("La Mesa") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 844.439026, -1009.422424, 27.511728)
		notify("Teleported")
		elseif Absolute.Button("Pillbox Hill") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 17.377790, -1122.183105, 28.469843)
		notify("Teleported")
		elseif Absolute.Button("Cypress Flats") then
			local playerPed = GetPlayerPed(-1) 
		SetEntityCoords(playerPed, 814.442017, -2130.448486, 28.867798)
		notify("Teleported")
	end

	Absolute.Display() -- OnPWeapMenu
	elseif Absolute.IsMenuOpened("Cinemas") then
	if Absolute.Button("Vinewood") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 300.407776, 193.05107, 103.590019)
	notify("Teleported")
	elseif Absolute.Button("Ten Cent") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, 401.796816, -713.924988, 28.569710)
	notify("Teleported")
	elseif Absolute.Button("Morningwood") then
		local playerPed = GetPlayerPed(-1) 
	SetEntityCoords(playerPed, -1410.07, -199.047531, 46.5025)
	notify("Teleported")
	end
--===================================================================================================================
-- teleport
--===================================================================================================================

			Absolute.Display()
		elseif IsDisabledControlJustReleased(0, 314) then -- - Numpad
			Absolute.OpenMenu('MainMenu')
		end
		
		Citizen.Wait(0)
	end

end)



RegisterCommand("uh", function(source,args,raw)
	notify("Thanks for using Absolute~o~ " .. client)
	print("~o~Absolute~s~ Unhooked succesfully")
	Enabled = false
end, false)