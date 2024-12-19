-- ISEquipWeaponAction:isValid
-- ISEquipWeaponAction:start

--[[ISInventoryPaneContextMenu.onRemoveUpgradeWeapon = function(weapon, part, playerObj)
  ISInventoryPaneContextMenu.transferIfNeeded(playerObj, weapon)
  ISTimedActionQueue.add(ISRemoveWeaponUpgrade:new(playerObj, weapon, part:getPartType()));
end


ISInventoryPaneContextMenu.onUpgradeWeapon = function(weapon, part, player)
  ISInventoryPaneContextMenu.transferIfNeeded(player, weapon)
  ISInventoryPaneContextMenu.transferIfNeeded(player, part)
  ISInventoryPaneContextMenu.equipWeapon(part, false, false, player:getPlayerNum());
  ISTimedActionQueue.add(ISUpgradeWeapon:new(player, weapon, part));
end]]--
