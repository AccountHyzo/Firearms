-- Storage array for all of our options
local config = {
		keyBind_FireMode   = nil,
		--spawnCasing  = false,
		--textEntry = nil,
		--multiBox  = nil,
		--comboBox  = nil,
		--colorPick = nil,
		--slider    = nil,
		--button    = nil
}

-- Hello! In this example, I'll be showing you all of the new Native ModOptions that is available to us!
-- I've tried to document all of the available options, and I recommend enabling the mod to check it out in action.
-- Settings are saved at: Zomboid\Lua\modOptions.ini
-- For translations, you can use `getText()` for each of the below options as well.  For this example, I opted to not.
local function AmmocraftConfig()
		-- Create the options object! This is required when adding the new Mod Options
		--- "UNIQUEID" should be replaced with your own unique ID. Possibly best to just use your mod's ID
		-- create(UID, name)
		local options = PZAPI.ModOptions:create("Firearms", "Firearms Options")

		-- Add a title.
		---- Not required, just adds larger text in the middle. Can be used to denote a different "section"
		---- Can be used any time
		-- addTitle(title)
		--options:addTitle("Ammocraft")

		-- Add a description
		---- Not required, just adds smaller text in the middle as a label.
		---- Can be used any time
		-- addDescription(desc)
		--options:addDescription("A small description can be placed here")

		-- Add a Separator
		---- Not required, just adds a horizontal line.
		---- Can be used any time
		-- addSeparator()
		--options:addSeparator()

		-- For each option that you create, you must specify an ID.
		-- In this example, I am just using stringified numbers, starting from 0.
		-- This ID MUST be a tring, and it MUST be unique to your options. But otherwise, it can be anything.
		-- If the ID is changed, then the saved option will not be preserved on next load!

		--- Each _tooltip is optional, except for with Buttons.

		-- addKeyBind(ID, name, value, _tooltip)
		--config.keyBind_FireMode = options:addKeyBind("Firearms_FireMode", getText("UI_options_Firearms_keyBind_FireMode"), Keyboard.KEY_Z, getText("UI_options_Firearms_keyBind_FireMode_tooltip"))
		--config.keyBind_FireMode = options:addKeyBind("Firearms_StockMode", getText("UI_options_Firearms_keyBind_StockMode"), Keyboard.KEY_B, getText("UI_options_Firearms_keyBind_StockMode_tooltip"))

		-- addTickBox(ID, name, value, _tooltip)
		--config.spawnCasing = options:addTickBox("1", getText("UI_options_Ammocraft_spawnCasing"), false, getText("UI_options_Ammocraft_spawnCasing_tooltip"))

		-- addTextEntry(ID, name, value, _tooltip)
		--config.textEntry = options:addTextEntry("2", getText("UI_options_UNIQUEID_textEntry"), "Enter Text Here!", getText("UI_options_UNIQUEID_textEntry_tooltip"))

		-- addMultipleTickBox(ID, name, _tooltip)
		--config.multiBox = options:addMultipleTickBox("3", getText("UI_options_UNIQUEID_multiTick"), getText("UI_options_UNIQUEID_multiTick_tooltip"))
		-- Create child boxes:
		--- addTickBox(name, value)
		---- Get each option's value with: getValue(X)
		--config.multiBox:addTickBox(getText("UI_options_UNIQUEID_multiTick_1"), false) -- getValue(1)
		--config.multiBox:addTickBox(getText("UI_options_UNIQUEID_multiTick_2"), true)  -- getValue(2)

		-- addComboBox(ID, name, _tooltip)
		--config.comboBox = options:addComboBox("4", getText("UI_options_UNIQUEID_comboBox"), getText("UI_options_UNIQUEID_comboBox_tooltip"))
		-- Create entries:
		--- addItem(name, selected)
		---- whichever is set to "true" will be the initially selected box.
		--- NOTE: calling getValue on the option will return the number of the entry.
		--config.comboBox:addItem(getText("UI_options_UNIQUEID_comboBox_1"), false) -- getValue(): 1
		--config.comboBox:addItem(getText("UI_options_UNIQUEID_comboBox_2"), true) -- getValue(): 2
		--config.comboBox:addItem(getText("UI_options_UNIQUEID_comboBox_3"), false) -- getValue(): 3

		-- addColorPicker(ID, name, r, g, b, a, _tooltip)
		--config.colorPick = options:addColorPicker("5",  getText("UI_options_UNIQUEID_colorPicker"), 0.5, 0.5, 0.5, 1.0,  getText("UI_options_UNIQUEID_colorPicker_tooltip"))
		-- NOTE: Color is stored as table { r, g, b, a }

		-- addSlider(ID, name, min, max, step, value, _tooltip)
		--config.slider = options:addSlider("6",  getText("UI_options_UNIQUEID_slider"), 0, 10, 1, 5, getText("UI_options_UNIQUEID_slider_tooltip"))

		---------
		-- quick local function for next option
		--local buttonFunc = function()
				--print("HELLO from Example Mod Options!")
				-- NOTE: This prints to the log "HELLO!"
		--end

		-- addButton(ID, name, tooltip, onclickfunc, target, arg1, arg2, arg3, arg4)
		--config.button = options:addButton("7", getText("UI_options_UNIQUEID_button"), getText("UI_options_UNIQUEID_button_tooltip"), buttonFunc)

		-- NOTE:
		--- You DO NOT have to store the items like I have.
		--- You can retrieve your `options` object at anytime by doing:
		------ local options = PZAPI.ModOptions:getOptions("Ammocraft")

		--- You can retrieve each individual option by doing:
		------ local option = options:getOption(ID)
		------- Where "ID" is the ID of the option you want to get.
		-------- In the above exmple, doing options:getOption("5") would return the colorPicker
		--config.spawnCasing:getValue()
end
AmmocraftConfig()

--[[
ISInventoryPaneContextMenu.doChangeFireModeMenu = function(playerObj, weapon, context)
    local firemodeOption = context:addOption(getText("ContextMenu_ChangeFireMode"))
    local subMenuFiremode = context:getNew(context)
    context:addSubMenu(firemodeOption, subMenuFiremode)
    for i=0, weapon:getFireModePossibilities():size() - 1 do
        local firemode = weapon:getFireModePossibilities():get(i);
        if firemode ~= weapon:getFireMode() then
            subMenuFiremode:addOption(getText("ContextMenu_FireMode_" .. firemode), playerObj, ISInventoryPaneContextMenu.onChangefiremode, weapon, firemode);
        end
    end
end

ISInventoryPaneContextMenu.onChangefiremode = function(playerObj, weapon, newfiremode)
    weapon:setFireMode(newfiremode);
    playerObj:setFireMode(newfiremode)
    --playerObj:setVariable("FireMode", newfiremode);
    if "Burst" == newfiremode then
        weapon:setAmmoPerShoot(3);
    end
end
]]--
