
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
			local clip = item:getClip()
			local scope = item:getScope()
			local sling = item:getSling()
			local canon = item:getCanon()
			local stock = item:getStock()
			local pad = item:getRecoilpad()
			if clip then
			result:attachWeaponPart(clip)
			end
			if scope then
			inv:AddItem(scope)
			end
			if sling then
			inv:AddItem(sling)
			end
			if canon then
			inv:AddItem(canon)
			end
			if stock then
			inv:AddItem(stock)
			end
			if pad then
			inv:AddItem(pad)
			end
			return
		end
    end
end
