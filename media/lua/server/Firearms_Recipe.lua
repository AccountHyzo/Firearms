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

function onExtDetStock_OnCreate(craftRecipeData, character, firstHand, secondHand)
	local items = craftRecipeData:getAllKeepInputItems();
	local result = craftRecipeData:getAllCreatedItems():get(0);
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getSubCategory() == "Firearm" then
			print("setWeaponpPart")
			item:setWeaponPart(result)
			character:getInventory():Remove(result);
			--tryAttachPart(item, result, character)
			--[[if secondHand or firstHand then
	        character:setSecondaryHandItem(result);
	        if not character:getPrimaryHandItem() then
	            character:setPrimaryHandItem(result);
	        end
	    end]]--
			return
		end
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
			newstock = character:getInventory():AddItem('Base.' .. result:getType() .. '_Stock_Extended');
			print('Base.' .. result:getType() .. '_Stock_Extended')
			for i=1,parts:size() do
				if parts:get(i-1) == stock then
					if newstock then
						tryAttachPart(result, newstock, character)
					end
				else
					tryAttachPart(result, parts:get(i-1), character)
				end
			end
			if secondHand or firstHand then
	        character:setSecondaryHandItem(result);
	        if not character:getPrimaryHandItem() then
	            character:setPrimaryHandItem(result);
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
			newstock = character:getInventory():AddItem('Base.' .. result:getType() .. '_Stock_Extended');
			print('Base.' .. result:getType() .. '_Stock_Extended')
			for i=1,parts:size() do
				if parts:get(i-1) == stock then
					if newstock then
						tryAttachPart(result, newstock, character)
					end
				else
					tryAttachPart(result, parts:get(i-1), character)
				end
			end
			if secondHand or firstHand then
	        character:setSecondaryHandItem(result);
	        if not character:getPrimaryHandItem() then
	            character:setPrimaryHandItem(result);
	        end
	    end
			return
		end
    end
end
