
function onImprovisedSilencer_OnCreate(items, result, player)
	local inv = player:getInventory();
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getType() == "HandTorch" and item:getUsedDelta() > 0 then
			battery = inv:AddItem("Base.Battery");
			battery:setUsedDelta(item:getUsedDelta());
		end
    end
end

-- Sawn-off recipe callback, copies modData to the new sawn-off.
function onSawnOff_OnCreate(items, result, player)
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

function onExtendStock_OnTest(item)
		if item:getSubCategory() == "Firearm" then
			local stock = item:getStock()
			if stock and string.find(stock:getType(), "Detract") then
			return true;
			else
			return false;
			end
    else
		return false;
		end
end

function onDetractStock_OnTest(item)
		if item:getSubCategory() == "Firearm" then
			local stock = item:getStock()
			if stock and string.find(stock:getType(), "Extend") then
			return true;
			else
			return false;
			end
    else
		return false;
		end
end

function onExtendStock_OnCreate(items, result, player, firstHand, secondHand)
	local inv = player:getInventory();
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getSubCategory() == "Firearm" then
			if result:haveChamber() and item:haveChamber() and item:isRoundChambered() then
				result:setRoundChambered(true)
			end
			local modData = result:getModData()
			for k,v in pairs(item:getModData()) do
				modData[k] = v
			end
			local clip = item:isContainsClip()
			local scope = item:getScope()
			local sling = item:getSling()
			local canon = item:getCanon()
			local stock = item:getStock()
			local pad = item:getRecoilpad()
			if clip then
			result:setContainsClip(true)
			result:setCurrentAmmoCount(item:getCurrentAmmoCount())
			end
			if scope then
			result:attachWeaponPart(scope)
			end
			if sling then
			result:attachWeaponPart(sling)
			end
			if canon then
			result:attachWeaponPart(canon)
			end
			if stock then
				newstock = InventoryItemFactory.CreateItem('Base.' .. result:getType() .. '_Stock_Extended');
				if newstock then
					result:attachWeaponPart(newstock)
				end
			end
			if pad then
			result:attachWeaponPart(pad)
			end
			if secondHand or firstHand then
	        player:setSecondaryHandItem(result);
	        if not player:getPrimaryHandItem() then
	            player:setPrimaryHandItem(result);
	        end
	    end
			return
		end
    end
end

function onDetractStock_OnCreate(items, result, player, firstHand, secondHand)
	local inv = player:getInventory();
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getSubCategory() == "Firearm" then
			if result:haveChamber() and item:haveChamber() and item:isRoundChambered() then
				result:setRoundChambered(true)
			end
			local modData = result:getModData()
			for k,v in pairs(item:getModData()) do
				modData[k] = v
			end
			local clip = item:isContainsClip()
			local scope = item:getScope()
			local sling = item:getSling()
			local canon = item:getCanon()
			local stock = item:getStock()
			local pad = item:getRecoilpad()
			if clip then
			result:setContainsClip(true)
			result:setCurrentAmmoCount(item:getCurrentAmmoCount())
			end
			if scope then
			result:attachWeaponPart(scope)
			end
			if sling then
			result:attachWeaponPart(sling)
			end
			if canon then
			result:attachWeaponPart(canon)
			end
			if stock then
				newstock = InventoryItemFactory.CreateItem('Base.' .. result:getType() .. '_Stock_Detracted');
				if newstock then
					result:attachWeaponPart(newstock)
				end
			end
			if pad then
			result:attachWeaponPart(pad)
			end
			if secondHand or firstHand then
	        player:setSecondaryHandItem(result);
	        if not player:getPrimaryHandItem() then
	            player:setPrimaryHandItem(result);
	        end
	    end
			return
		end
    end
end
