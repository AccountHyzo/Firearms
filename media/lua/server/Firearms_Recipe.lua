require "recipecode"

function Recipe.GetItemTypes.Firearms_Service(scriptItems)
		scriptItems:addAll(getScriptManager():getItemsTag("Firearms_Service"))
end

function Recipe.GetItemTypes.Firearms_Part(scriptItems)
		scriptItems:addAll(getScriptManager():getItemsTag("Firearms_Part"))
end

function Recipe.GetItemTypes.Gun(scriptItems)
		scriptItems:addAll(getScriptManager():getItemsTag("Gun"))
end

GiveMaintenanceXP = Recipe.OnGiveXP.CleanGun

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
function onSawnOff_OnCreate(craftRecipeData, character)
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
			return
		end
		end
end


function onExtendStock_OnTest(item)
		if item:getSubCategory() == "Firearm" then
			local stock = item:getWeaponPart("Stock")
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
			local stock = item:getWeaponPart("Stock")
			if stock and string.find(stock:getType(), "Extend") then
				return true;
			else
				return false;
			end
		else
		return false;
		end
end

function onExtendStock_OnCreate(craftRecipeData, character, firstHand, secondHand)
	local items = craftRecipeData:getAllConsumedItems();
	local result = craftRecipeData:getAllCreatedItems():get(0);
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getSubCategory() == "Firearm" then
			local modData = result:getModData()
			for k,v in pairs(item:getModData()) do
				modData[k] = v
			end
			local stock = item:getWeaponPart("Stock")
			local parts = item:getAllWeaponParts()
			if getDebug() then
				print('Base.' .. item:getType() .. '_Stock_Extended')
			end
			for i=1,parts:size() do
				if parts:get(i-1) == stock then
					result:attachWeaponPart(instanceItem("Base." .. item:getType() .. "_Stock_Extended") , true)
				else
					result:setWeaponPart(parts:get(i-1))
				end
			end
			return
		end
		end
end

function onDetractStock_OnCreate(craftRecipeData, character, firstHand, secondHand)
	local items = craftRecipeData:getAllConsumedItems();
	local result = craftRecipeData:getAllCreatedItems():get(0);
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getSubCategory() == "Firearm" then
			local modData = result:getModData()
			for k,v in pairs(item:getModData()) do
				modData[k] = v
			end
			local stock = item:getWeaponPart("Stock")
			local parts = item:getAllWeaponParts()
			if getDebug() then
				print('Base.' .. item:getType() .. '_Stock_Detracted')
			end
			for i=1,parts:size() do
				if parts:get(i-1) == stock then
						result:attachWeaponPart(instanceItem("Base." .. item:getType() .. "_Stock_Detracted") , true)
				else
					result:setWeaponPart(parts:get(i-1))
				end
			end
			return
		end
		end
end
