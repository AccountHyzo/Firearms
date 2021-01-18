ISInventoryPaneContextMenu.onRemoveUpgradeWeapon = function(weapon, part, playerObj)
    ISInventoryPaneContextMenu.transferIfNeeded(playerObj, weapon)
    ISTimedActionQueue.add(ISRemoveWeaponUpgrade:new(playerObj, weapon, part, 50));
end

ISInventoryPaneContextMenu.onUpgradeWeapon = function(weapon, part, player)
    ISInventoryPaneContextMenu.transferIfNeeded(player, weapon)
    ISInventoryPaneContextMenu.transferIfNeeded(player, part)
    ISInventoryPaneContextMenu.equipWeapon(part, false, false, player:getPlayerNum());
    ISTimedActionQueue.add(ISUpgradeWeapon:new(player, weapon, part, 50));
end

function ISRemoveWeaponUpgrade:perform()
    self.weapon:detachWeaponPart(self.part)
    self.character:getInventory():AddItem(self.part);
    self.character:resetEquippedHandsModels();
    self.character:removeFromHands(self.weapon);
    print(self.weapon:getSoundRadius())
    -- needed to remove from queue / start next.
    ISBaseTimedAction.perform(self);
end

function ISUpgradeWeapon:perform()
    self.weapon:setJobDelta(0.0);
    self.part:setJobDelta(0.0);
    self.weapon:attachWeaponPart(self.part)
    self.character:getInventory():Remove(self.part);
    self.character:setSecondaryHandItem(nil);
    self.character:removeFromHands(self.weapon);
    -- needed to remove from queue / start next.
    ISBaseTimedAction.perform(self);
end

function ISRemoveWeaponUpgrade:isValid()
    if not self.character:getInventory():contains(self.weapon) then return false end
    return self.weapon:getWeaponPart(self.part:getPartType()) == self.part
end

function ISUpgradeWeapon:isValid()
    if self.weapon:getWeaponPart(self.part:getPartType()) then return false end
    return self.character:getInventory():contains(self.part);
end

local function predicateNotBroken(item)
	return not item:isBroken()
end

local function addAttachment(player, context, items)

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
  isWeapon = isHandWeapon -- to allow upgrading broken weapons

  -- weapon upgrades
  if isWeapon and instanceof(isWeapon, "HandWeapon") then
    -- add parts
    local weaponParts = playerInv:getItemsFromCategory("WeaponPart");
		local hasScrewdriver = playerInv:containsTagEvalRecurse("Screwdriver", predicateNotBroken)
    if isWeapon and instanceof(isWeapon, "HandWeapon") and not hasScrewdriver then
      local subMenuUp = context:getNew(context);
      local doIt = false;
      local addOption = false;
      local alreadyDoneList = {};
      for i=0, weaponParts:size() - 1 do
        local part = weaponParts:get(i);
        if part:getMountOn():contains(isWeapon:getFullType()) and not alreadyDoneList[part:getName()] then
          if (part:getPartType() == "Scope") and not isWeapon:getScope() then
          	addOption = true;
          elseif (part:getPartType() == "Clip") and not isWeapon:getClip() then
          	addOption = true;
          elseif (part:getPartType() == "Sling") and not isWeapon:getSling() then
            addOption = true;
          elseif (part:getPartType() == "Stock") and not isWeapon:getStock() then
            addOption = true;
          elseif (part:getPartType() == "Canon") and not isWeapon:getCanon() then
            addOption = true;
          elseif (part:getPartType() == "RecoilPad") and not isWeapon:getRecoilpad() then
          	addOption = true;
        end
      end
      if addOption then
      	doIt = true;
        subMenuUp:addOption(weaponParts:get(i):getName(), isWeapon, ISInventoryPaneContextMenu.onUpgradeWeapon, part, getSpecificPlayer(player));
        addOption = false;
        alreadyDoneList[part:getName()] = true;
      end
    end
    	if doIt then
	      local upgradeOption = context:addOption(getText("ContextMenu_Add_Weapon_Upgrade"), items, nil);
	    	context:addSubMenu(upgradeOption, subMenuUp);
  		end
		end
		-- remove parts
        if not hasScrewdriver and (isWeapon:getScope() or isWeapon:getClip() or isWeapon:getSling() or isWeapon:getStock() or isWeapon:getCanon() or isWeapon:getRecoilpad()) then
		  local removeUpgradeOption = context:addOption(getText("ContextMenu_Remove_Weapon_Upgrade"), items, nil);
		  local subMenuRemove = context:getNew(context);
		  context:addSubMenu(removeUpgradeOption, subMenuRemove);
		  if isWeapon:getScope() then
		    subMenuRemove:addOption(isWeapon:getScope():getName(), isWeapon, ISInventoryPaneContextMenu.onRemoveUpgradeWeapon, isWeapon:getScope(), getSpecificPlayer(player));
		  end
		  if isWeapon:getClip() then
		    subMenuRemove:addOption(isWeapon:getClip():getName(), isWeapon, ISInventoryPaneContextMenu.onRemoveUpgradeWeapon, isWeapon:getClip(), getSpecificPlayer(player));
		  end
		  if isWeapon:getSling() then
		  	subMenuRemove:addOption(isWeapon:getSling():getName(), isWeapon, ISInventoryPaneContextMenu.onRemoveUpgradeWeapon, isWeapon:getSling(), getSpecificPlayer(player));
		  end
		  if isWeapon:getStock() then
		    subMenuRemove:addOption(isWeapon:getStock():getName(), isWeapon, ISInventoryPaneContextMenu.onRemoveUpgradeWeapon, isWeapon:getStock(), getSpecificPlayer(player));
		  end
		  if isWeapon:getCanon() then
		    subMenuRemove:addOption(isWeapon:getCanon():getName(), isWeapon, ISInventoryPaneContextMenu.onRemoveUpgradeWeapon, isWeapon:getCanon(), getSpecificPlayer(player));
		  end
		  if isWeapon:getRecoilpad() then
		  	subMenuRemove:addOption(isWeapon:getRecoilpad():getName(), isWeapon, ISInventoryPaneContextMenu.onRemoveUpgradeWeapon, isWeapon:getRecoilpad(), getSpecificPlayer(player));
		  end
		end
	end
end

Events.OnFillInventoryObjectContextMenu.Add(addAttachment);
