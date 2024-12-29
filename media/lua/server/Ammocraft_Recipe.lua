
--[[function recipe_Dismantle_Ammo(items, result, player)
	local inv = player:getInventory();
	for i=0, items:size()-1 do
		local item = items:get(i) -- Get item in question
		local ammo =  item:getType() -- Get the Item type so we can use it to figure out the caliber :- )
		if item:getType() == "Bullets9mm" or ammo == "Bullets38" then
			result:setUsedDelta(0.1) -- Set the Used Delta so we don't give too much
		end
		if item:getType() == "Bullets44" or ammo == "Bullets45" then
			result:setUsedDelta(0.2) -- Set the Used Delta so we don't give too much
		end
		if ammo == "308Bullets" or ammo == "556Bullets" then
			result:setUsedDelta(0.4) -- Set the Used Delta so we don't give too much
		end
		if ammo == "223Bullets" then
			result:setUsedDelta(0.3) -- Set the Used Delta so we don't give too much
		end
		if ammo == "ShotgunShells" then
			result:setUsedDelta(0.5) -- Set the Used Delta so we don't give too much
		end
		if string.find(ammo, "Bullets") then
			inv:AddItem("Base." .. ammo .. "_casing");
			inv:AddItem("Base." .. ammo .. "_tip");
		end
	end
end

function recipe_Gather_Gunpowder(items, result, player)
local inv = player:getInventory();
for i=0, items:size()-1 do
		local item = items:get(i) -- Get item in question
		local ammo =  item:getType() -- Get the Item type so we can use it to figure out the caliber :- )
		if item:getType() == "Bullets9mm" or ammo == "Bullets38" then
			result:setUsedDelta(0.1) -- Set the Used Delta so we don't give too much
		end
		if item:getType() == "Bullets44" or ammo == "Bullets45" then
			result:setUsedDelta(0.2) -- Set the Used Delta so we don't give too much
		end
		if ammo == "308Bullets" or ammo == "556Bullets" then
			result:setUsedDelta(0.4) -- Set the Used Delta so we don't give too much
		end
		if ammo == "223Bullets" then
			result:setUsedDelta(0.3) -- Set the Used Delta so we don't give too much
		end
		if ammo == "ShotgunShells" then
			result:setUsedDelta(0.5) -- Set the Used Delta so we don't give too much
		end
		if string.find(ammo, "Bullets") then
			inv:AddItem("Base." .. ammo .. "_casing");
			inv:AddItem("Base.Lead");
		end
	end
end

function recipe_Remove_Spent_Primer(items, result, player)
local inv = player:getInventory();
for i=0, items:size()-1 do
		local item = items:get(i)
		if string.find(item:getType(), "_spent") then
			inv:AddItem("Base." .. item:getType() .. "_noprimer");
		end
	end
end

function recipe_Remove_Primer(items, result, player)
local inv = player:getInventory();
for i=0, items:size()-1 do
		local item = items:get(i)
		local ammo =  item:getType()
		inv:AddItem("Base." .. ammo .. "_spent_noprimer");
		if item:getType() == "Bullets9mm" or ammo == "Bullets38" then
		inv:AddItem("Base.SP_Primers");
		end
		if item:getType() == "Bullets44" or ammo == "Bullets45" then
		inv:AddItem("Base.LP_Primers");
		end
		if ammo == "223Bullets" or ammo == "308Bullets" or ammo == "556Bullets" then
		inv:AddItem("Base.R_Primers");
		end
		if ammo == "ShotgunShells" then
		inv:AddItem("Base.SG_Primers");
		end
	end
end

function recipe_Assemble_Casing(items, result, player)
	local inv = player:getInventory();
		for i=0, items:size()-1 do
			local item = items:get(i)
			local ammo = item:getType()
			if ammo == "Base.Bullets9mm_casing_spent_noprimer" then
			inv:AddItem("Base.Bullets9mm_casing");
			end
			if ammo == "Base.Bullets38_casing_spent_noprimer" then
			inv:AddItem("Base.Bullets38_casing");
			end
			if ammo == "Base.Bullets44_casing_spent_noprimer" then
			inv:AddItem("Base.Bullets44_casing");
			end
			if ammo == "Base.Bullets45_casing_spent_noprimer" then
			inv:AddItem("Base.Bullets45_casing");
			end
			if ammo == "Base.223Bullets_casing_spent_noprimer" then
			inv:AddItem("Base.223Bullets_casing");
			end
			if ammo == "Base.308Bullets_casing_spent_noprimer" then
			inv:AddItem("Base.308Bullets_casing");
			end
			if ammo == "Base.556Bullets_casing_spent_noprimer" then
			inv:AddItem("Base.556Bullets_casing");
			end
			if ammo == "Base.ShotgunShells_casing_spent_noprimer" then
			inv:AddItem("Base.ShotgunShells_casing");
			end
		end
end

function Ammocraft_OpenJar_OnCreate(items, result, player)
	player:getInventory():AddItem("Base.JarLid");
	player:getInventory():AddItem("Base.EmptyJar");
end]]--
