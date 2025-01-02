function ISInsertMagazine:complete()
	local Magazine = instanceItem(self.gun:getMagazineType() .. "_Attachment")
	if Magazine then
		self.gun:attachWeaponPart(Magazine , true)
		--self.character:resetEquippedHandsModels();
	end
	return true
end

function ISEjectMagazine:complete()
	local Magazine = self.gun:getWeaponPart("Clip")
	if Magazine then
		self.gun:detachWeaponPart(self.character, Magazine)
		--self.character:resetEquippedHandsModels();
	end
	return true
end

local function ISAttachMagazine(wielder, weapon)
	if weapon == nil then return end
	if not weapon:IsWeapon() or not weapon:isRanged() then return; end

	local magazineType = weapon:getMagazineType()
	if magazineType and weapon:isContainsClip() then
		weapon:attachWeaponPart(instanceItem(magazineType .. "_Attachment"))
		--self.character:resetEquippedHandsModels();
	elseif magazineType and not weapon:isContainsClip() then
		weapon:detachWeaponPart(weapon:getWeaponPart("Clip"))
		--self.character:resetEquippedHandsModels();
	end
end

Events.OnEquipPrimary.Add(ISAttachMagazine);
