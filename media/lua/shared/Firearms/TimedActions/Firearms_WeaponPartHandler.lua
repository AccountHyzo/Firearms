
--[[function ISRemoveWeaponUpgrade:isValid()
  print("ISRemoveWeaponUpgrade:isValid")
  if isClient() and self.weapon then
      return self.character:getInventory():containsID(self.weapon:getID())
  else
      if not self.character:getInventory():contains(self.weapon) then return false end
  end
  return self.weapon:getWeaponPart(self.partType) ~= nil
end

function ISUpgradeWeapon:isValid()
  print("ISUpgradeWeapon:isValid")
  if self.weapon:getWeaponPart(self.part:getPartType()) then return false end
  if isClient() and self.part and self.weapon then
      return self.character:getInventory():containsID(self.part:getID()) and self.character:getInventory():containsID(self.weapon:getID());
  else
      return self.character:getInventory():contains(self.part);
  end
end]]--
