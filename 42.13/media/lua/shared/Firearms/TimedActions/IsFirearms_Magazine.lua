function ISInsertMagazine:complete()
	local magType = self.gun:getMagazineType()
	local fullPartName = magType .. "_Attachment"
	local itemScript = ScriptManager.instance:getItem(fullPartName)
	if itemScript then
		local magazinePart = instanceItem(fullPartName)
		if magazinePart then
			self.gun:attachWeaponPart(magazinePart, true)
		end
	else
		if getDebug() then
			print("INFO: No visual attachment defined for " .. tostring(fullPartName) .. ". Skipping part attachment.")
		end
	end
	return true
end

function ISEjectMagazine:complete()
	local Magazine = self.gun:getWeaponPart("Clip")
	if Magazine then
		self.gun:detachWeaponPart(self.character, Magazine)
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
