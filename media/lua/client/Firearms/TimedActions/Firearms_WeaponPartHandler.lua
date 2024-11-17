-- ISEquipWeaponAction:isValid
-- ISEquipWeaponAction:start

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
    local playerObj = self.character
    local wep = self.weapon
    self.weapon:detachWeaponPart(self.part)
    self.character:getInventory():AddItem(self.part);
    self.character:resetEquippedHandsModels();
    self.character:removeFromHands(self.weapon);
    ISTimedActionQueue.add(ISEquipWeaponAction:new(playerObj, wep, 20, true, wep:isTwoHandWeapon()));
    -- needed to remove from queue / start next.
    ISBaseTimedAction.perform(self);
end

function ISUpgradeWeapon:perform()
    local playerObj = self.character
    local wep = self.weapon
    self.weapon:setJobDelta(0.0);
    self.part:setJobDelta(0.0);
    self.weapon:attachWeaponPart(self.part)
    self.character:getInventory():Remove(self.part);
    self.character:setSecondaryHandItem(nil);
    self.character:removeFromHands(self.weapon);
    ISTimedActionQueue.add(ISEquipWeaponAction:new(playerObj, wep, 20, true, wep:isTwoHandWeapon()));
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
