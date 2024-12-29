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
