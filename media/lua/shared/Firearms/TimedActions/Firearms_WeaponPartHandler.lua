
function ISRemoveWeaponUpgrade:isValid()
	if isClient() and self.weapon then
			return self.character:getInventory():containsID(self.weapon:getID())
	else
			if not self.character:getInventory():contains(self.weapon) then return false end
	end
	return self.weapon:getWeaponPart(self.partType) ~= nil
end

function ISUpgradeWeapon:isValid()
	if self.weapon:getWeaponPart(self.part:getPartType()) then return false end
	if isClient() and self.part and self.weapon then
			return self.character:getInventory():containsID(self.part:getID()) and self.character:getInventory():containsID(self.weapon:getID());
	else
			return self.character:getInventory():contains(self.part);
	end
end

function ISRemoveWeaponUpgrade:perform()
		-- needed to remove from queue / start next.
		self.character:resetEquippedHandsModels();
		ISBaseTimedAction.perform(self);
end

function ISUpgradeWeapon:perform()
		local playerObj = self.character
		local wep = self.weapon
		self.weapon:setJobDelta(0.0);
		self.part:setJobDelta(0.0);
		self.character:setSecondaryHandItem(nil);
		self.character:removeFromHands(self.weapon);
		-- needed to remove from queue / start next.
		ISBaseTimedAction.perform(self);
end
