function onImprovisedSilencer_OnTest(item)
		if SandboxVars.Firearms.ImprovisedSuppressors then
			return true;
		else
			return false;
		end
end

function onImprovisedSilencer_OnCreate(craftRecipeData, character)
	local items = craftRecipeData:getAllConsumedItems();
	local result = craftRecipeData:getAllCreatedItems():get(0);
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getType() == "Torch" or item:getType() == "HandTorch" then
			if item:getCurrentUsesFloat() > 0 then
				local battery = character:getInventory():AddItem("Base.Battery")
				if battery then
					battery:setUsedDelta(item:getCurrentUsesFloat())
				end
			end
		end
		end
end

-- Sawn-off recipe callback, copies modData to the new sawn-off.
function firearms_onCreate_ShotgunSawnoff(craftRecipeData, character)
	local items = craftRecipeData:getAllConsumedItems();
	local result = craftRecipeData:getAllCreatedItems():get(0);
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getSubCategory() == "Firearm" then
			local modData = result:getModData()
			for k,v in pairs(item:getModData()) do
				modData[k] = v
			end
			local parts = item:getAllWeaponParts()
			for i=1,parts:size() do
				tryAttachPart(result, parts:get(i-1), character)
			end
			local modelIndex = item:getModelIndex()
			if modelIndex then
				result:setModelIndex(modelIndex)
				result:setName("Sawn-off " .. item:getDisplayName())
				if item:getIconsForTexture() then
					iconTexture = getTexture("media/textures/Item_" .. result:getIconsForTexture():get(modelIndex) .. ".png")
					if iconTexture then
						result:setTexture(getTexture(iconTexture))
					end
				end
			end
			return
		end
	end
end

function onToggleStock_OnTest(item)
		if item:getSubCategory() == "Firearm" then
				local stock = item:getWeaponPart("Stock")
				if stock then
						local type = stock:getType()
						-- Returns true if it's either Extended or Detracted
						if string.find(type, "Extend") or string.find(type, "Detract") then
								return true
						end
				end
		end
		return false
end

function onToggleStock_OnCreate(craftRecipeData, character, firstHand, secondHand)
	local weapon = nil
	local inputs = craftRecipeData:getAllInputItems()
	for i = 0, inputs:size() - 1 do
		local item = inputs:get(i)
		if item and item:IsWeapon() then
			weapon = item
			break
		end
		if weapon then break end
	end

	if not weapon then
			print("DEBUG: Still no weapon found. Trying Fallback...")
			weapon = character:getPrimaryHandItem()
			if not weapon or weapon:getSubCategory() ~= "Firearm" then
					return -- Exit if we really can't find it
			end
	end

	local currentStock = weapon:getWeaponPart("Stock")
	local weaponType = weapon:getType()
	local newPartType = "Base." .. weaponType .. (string.find(currentStock:getType(), "Extended") and "_Stock_Detracted" or "_Stock_Extended")

	weapon:attachWeaponPart(instanceItem(newPartType), true)

	--weapon:updateWeight()
	character:resetModelNextFrame()
end
