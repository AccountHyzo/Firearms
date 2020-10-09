
-- Sawn-off recipe callback, copies modData to the new sawn-off.
function RifleSawnOff_OnCreate(items, result, player)
	local inv = player:getInventory();
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getSubCategory() == "Firearm" then
			result:setCurrentAmmoCount(item:getCurrentAmmoCount())
			if result:haveChamber() and item:haveChamber() and item:isRoundChambered() then
				result:setRoundChambered(true)
			end
			local modData = result:getModData()
			for k,v in pairs(item:getModData()) do
				modData[k] = v
			end
			result:attachWeaponPart(item:getScope())
			result:attachWeaponPart(item:getClip())
			inv:AddItem(item:getSling())
			inv:AddItem(item:getCanon())
			inv:AddItem(item:getStock())
			inv:AddItem(item:getRecoilpad())
			return
		end
    end
end
