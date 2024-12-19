
local function predicateNotBroken(item)
	return not item:isBroken()
end

local original_onChangefiremode = ISInventoryPaneContextMenu.onChangefiremode

ISInventoryPaneContextMenu.onChangefiremode = function(playerObj, weapon, newfiremode)
	if not weapon:hasTag("SemiShotgun") then
		original_onChangefiremode(playerObj, weapon, newfiremode)
	end
	if "Auto" == newfiremode then
		weapon:setRackAfterShoot(false);
	elseif "Single" == newfiremode then
		weapon:setRackAfterShoot(true)
	end
	original_onChangefiremode(playerObj, weapon, newfiremode)
end
--[[
--Override addAttachment function if the Screwdriver Requirement is turned off in the sandbox settings
local function addAttachment(player, context, items)
  if SandboxVars.Firearms.ScrewdriverReq then return end;

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
	if isWeapon and instanceof(isWeapon, "HandWeapon") and hasScrewdriver then
			local isWeapon = isWeapon
			-- add parts
			local weaponParts = getSpecificPlayer(player):getInventory():getItemsFromCategory("WeaponPart");
			if weaponParts and not weaponParts:isEmpty() then
					local subMenuUp = context:getNew(context);
					local doIt = false;
					local alreadyDoneList = {};
					for i=0, weaponParts:size() - 1 do
							local part = weaponParts:get(i);
							if not alreadyDoneList[part:getName()] and part:canAttach(getSpecificPlayer(player), isWeapon) and not isWeapon:getWeaponPart(part:getPartType()) then
									subMenuUp:addOption(weaponParts:get(i):getName(), isWeapon, ISInventoryPaneContextMenu.onUpgradeWeapon, part, getSpecificPlayer(player));
									alreadyDoneList[part:getName()] = true;
									doIt = true;
							end
					end
					if doIt then
							local upgradeOption = context:addOption(getText("ContextMenu_Add_Weapon_Upgrade"), items, nil);
							context:addSubMenu(upgradeOption, subMenuUp);
					end
			end
			-- remove parts
			weaponParts = isWeapon:getAllWeaponParts()
			if hasScrewdriver and weaponParts:size() > 0 then
					local removeUpgradeOption = context:addOption(getText("ContextMenu_Remove_Weapon_Upgrade"), items, nil);
					local subMenuRemove = context:getNew(context);
					context:addSubMenu(removeUpgradeOption, subMenuRemove);
					for i = 0, weaponParts:size() -1 do
							subMenuRemove:addOption(weaponParts:get(i):getName(), isWeapon, ISInventoryPaneContextMenu.onRemoveUpgradeWeapon, weaponParts:get(i), getSpecificPlayer(player));
					end
			end
	end
end

Events.OnFillInventoryObjectContextMenu.Add(addAttachment);]]--
