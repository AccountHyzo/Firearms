
local function predicateNotBroken(item)
	return not item:isBroken()
end

local original_onChangefiremode = ISInventoryPaneContextMenu.onChangefiremode

ISInventoryPaneContextMenu.onChangefiremode = function(playerObj, weapon, newfiremode)
	if weapon:hasTag("SemiShotgun") then
		if "Auto" == newfiremode then
			weapon:setRackAfterShoot(false);
		elseif "Single" == newfiremode then
			weapon:setRackAfterShoot(true)
		end
		original_onChangefiremode(playerObj, weapon, newfiremode)
	else
		original_onChangefiremode(playerObj, weapon, newfiremode)
	end
end

local original_onRemoveUpgradeWeapon = ISInventoryPaneContextMenu.onRemoveUpgradeWeapon

ISInventoryPaneContextMenu.onRemoveUpgradeWeapon = function(weapon, part, playerObj)
	if getDebug() then
		print(part:getPartType())
	end
	if part:getPartType() == "Clip" then return end
	local screwdriver = playerObj:getInventory():getFirstTagEvalRecurse("Screwdriver", predicateNotBroken)
	if screwdriver then
			original_onRemoveUpgradeWeapon(weapon, part, playerObj)
	else
		ISInventoryPaneContextMenu.transferIfNeeded(playerObj, weapon)
		ISInventoryPaneContextMenu.equipWeapon(weapon, false, false, playerObj:getPlayerNum());
		ISTimedActionQueue.add(ISRemoveWeaponUpgrade:new(playerObj, weapon, part:getPartType()));
	end
end

local original_onUpgradeWeapon = ISInventoryPaneContextMenu.onUpgradeWeapon

ISInventoryPaneContextMenu.onUpgradeWeapon = function(weapon, part, player)
	if getDebug() then
		print(part:getPartType())
	end
	if part:getPartType() == "Clip" then return end
	local screwdriver = player:getInventory():getFirstTagEvalRecurse("Screwdriver", predicateNotBroken)
	if screwdriver then
		original_onUpgradeWeapon(weapon, part, player)
	else
		ISInventoryPaneContextMenu.transferIfNeeded(player, weapon)
		ISInventoryPaneContextMenu.transferIfNeeded(player, part)
		ISInventoryPaneContextMenu.equipWeapon(weapon, false, false, player:getPlayerNum());
		ISTimedActionQueue.add(ISUpgradeWeapon:new(player, weapon, part));
	end
end

--Override addAttachment function if the Screwdriver Requirement is turned off in the sandbox settings
local function addAttachment(player, context, items)
	--if SandboxVars.Firearms.ScrewdriverReq then return end;

	local playerObj = getSpecificPlayer(player)
	local playerInv = playerObj:getInventory()

	local isHandWeapon = nil;

	local testItem = nil;
	local editItem = nil;
	for i,v in ipairs(items) do
			testItem = v;
			if not instanceof(v, "InventoryItem") then
					--print(#v.items);
					if #v.items == 2 then
							editItem = v.items[1];
					end
					testItem = v.items[1];
			else
					editItem = v
			end
			if instanceof(testItem, "HandWeapon") then
					isHandWeapon = testItem
			end
	end
	-- weapon upgrades
	isWeapon = isHandWeapon -- to allow upgrading broken weapons
	local hasScrewdriver = playerInv:containsTagEvalRecurse("Screwdriver", predicateNotBroken)
	if isWeapon and instanceof(isWeapon, "HandWeapon") and not hasScrewdriver then
		local isWeapon = isWeapon
		-- add parts
		local weaponParts = getSpecificPlayer(player):getInventory():getItemsFromCategory("WeaponPart");
		if weaponParts and not weaponParts:isEmpty() then
			local subMenuUp = context:getNew(context);
			local doIt = false;
			local alreadyDoneList = {};
			for i=0, weaponParts:size() - 1 do
				local part = weaponParts:get(i);
				if part:hasTag("NoScrewdriver") or not SandboxVars.Firearms.ScrewdriverReq then
					if not alreadyDoneList[part:getName()] and part:canAttach(getSpecificPlayer(player), isWeapon) and not isWeapon:getWeaponPart(part:getPartType()) then
						subMenuUp:addOption(part:getName(), isWeapon, ISInventoryPaneContextMenu.onUpgradeWeapon, part, getSpecificPlayer(player));
						alreadyDoneList[part:getName()] = true;
						doIt = true;
					end
				end
			end
			if doIt then
					local upgradeOption = context:addOption(getText("ContextMenu_Add_Weapon_Upgrade"), items, nil);
					context:addSubMenu(upgradeOption, subMenuUp);
			end
		end
		-- remove parts
		weaponParts = isWeapon:getAllWeaponParts()
		if not hasScrewdriver and weaponParts:size() > 0 then
			local removeUpgradeOption = context:addOption(getText("ContextMenu_Remove_Weapon_Upgrade"), items, nil);
			local subMenuRemove = context:getNew(context);
			context:addSubMenu(removeUpgradeOption, subMenuRemove);
			for i = 0, weaponParts:size() -1 do
				local part = weaponParts:get(i);
				if part:hasTag("NoScrewdriver") or not SandboxVars.Firearms.ScrewdriverReq then
					subMenuRemove:addOption(part:getName(), isWeapon, ISInventoryPaneContextMenu.onRemoveUpgradeWeapon, part, getSpecificPlayer(player));
				end
			end
		end
	end
end

Events.OnFillInventoryObjectContextMenu.Add(addAttachment);
