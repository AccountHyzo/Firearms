SpecialLootSpawns = SpecialLootSpawns or {}

SpecialLootSpawns.FirearmsBlueprints = {
		"MakeImprovisedFlashlightSilencer",
		"MakeImprovisedBottleSilencer",
}

SpecialLootSpawns.OnCreateFirearmsBlueprint = function(item)
		SpecialLootSpawns.CreateSchematic(item, SpecialLootSpawns.FirearmsBlueprints, 30);
end

SpecialLootSpawns.OnCreateWeaponWithStock = function(item)
		if not item then return; end;
		if not item:IsWeapon() or not item:isRanged() then return; end
		if item:getType() == "MP510" then
			item:attachWeaponPart(instanceItem("MP5_Stock_Detracted") , true)
		else
			item:attachWeaponPart(instanceItem(item:getType() .. "_Stock_Detracted") , true)
		end
end

SpecialLootSpawns.OnCreateWeapon = function(item)
		if not item then return; end;
		if not item:IsWeapon() or not item:isRanged() then return; end
end

SpecialLootSpawns.OnCreateM4 = function(item)
		if not item then return; end;
		if not item:IsWeapon() or not item:isRanged() then return; end

		item:attachWeaponPart(instanceItem("Base.TacticalStock") , true)
		item:attachWeaponPart(instanceItem("Base.RIS_Grip") , true)
		item:attachWeaponPart(instanceItem("Base.M4_Carryhandle") , true)
end

SpecialLootSpawns.OnCreateAKM = function(item)
		if not item then return; end;
		if not item:IsWeapon() or not item:isRanged() then return; end
		if item:getModelIndex() == 0 then
			item:attachWeaponPart(instanceItem("Base.AKM_Handguard_Plastic") , true)
			item:attachWeaponPart(instanceItem("Base.AKM_Stock_Plastic") , true)
		elseif item:getModelIndex() == 1 then
			if ZombRand(2) == 0 then
				item:attachWeaponPart(instanceItem("Base.AKM_Handguard_Bakelite") , true)
				item:attachWeaponPart(instanceItem("Base.AKM_Stock_Bakelite") , true)
			else
				if ZombRand(10) == 0 then
					item:attachWeaponPart(instanceItem("Base.AKM_Foregrip_Wood") , true)
				else
					item:attachWeaponPart(instanceItem("Base.AKM_Handguard_Wood") , true)
				end
				item:attachWeaponPart(instanceItem("Base.AKM_Stock_Wood") , true)
			end
		end
end

SpecialLootSpawns.OnCreate1911 = function(item)
		if not item then return; end;
		if not item:IsWeapon() or not item:isRanged() then return; end
		local SpawnICA19 = (SandboxVars.Firearms.SpawnICA19)
		local SpawnSuppressors = (SandboxVars.Firearms.SpawnSuppressors)
		local SpawnHandgunSuppressors = (SandboxVars.Firearms.SpawnHandgunSuppressors)
		if SpawnICA19 and ZombRand(50) == 0 then
			if ZombRand(4) == 0 then
				item:setModelIndex(3)
				item:setName("ICA19 Goldballer")
				if SpawnSuppressors and SpawnHandgunSuppressors then
					item:attachWeaponPart(instanceItem("Base.45Silencer") , true)
				end
			else
				item:setModelIndex(2)
				item:setName("ICA19 Silverballer")
				if SpawnSuppressors and SpawnHandgunSuppressors then
					item:attachWeaponPart(instanceItem("Base.45Silencer") , true)
				end
			end
		else
			if ZombRand(3) == 0 then
				item:setModelIndex(1)
			else
				item:setModelIndex(0)
			end
		end
		if item:getIconsForTexture() then
			iconTexture = getTexture("media/textures/Item_" .. item:getIconsForTexture():get(item:getModelIndex()) .. ".png")
			if iconTexture then
				item:setTexture(iconTexture)
			end
		end
end

SpecialLootSpawns.OnCreateDEagle = function(item)
		if not item then return; end;
		if not item:IsWeapon() or not item:isRanged() then return; end
		if item:getModelIndex() == 2 then
			if ZombRand(10) == 0 then
				item:setModelIndex(2)
				item:setTexture(getTexture("media/textures/Item_" .. item:getIconsForTexture():get(item:getModelIndex()) .. ".png"))
				item:setName("Golden Desert Eagle")
			else
				item:setModelIndex(0)
				item:setTexture(getTexture("media/textures/Item_" .. item:getIconsForTexture():get(item:getModelIndex()) .. ".png"))
			end
		end
end

SpecialLootSpawns.OnCreateM16 = function(item)
		if not item then return; end;
		if not item:IsWeapon() or not item:isRanged() then return; end
		if ZombRand(10) == 0 then
			if ZombRand(25) == 0 then
				item:setModelIndex(2)
				item:setName("Colt Commando")
			else
				if ZombRand(2) == 0 then
					item:setModelIndex(1)
					item:setName("M16A2")
				else
					item:setModelIndex(0)
					item:setName("M16A1")
				end
			end
		else
			item:setModelIndex(1)
			item:setName("AR15")
		end
end
