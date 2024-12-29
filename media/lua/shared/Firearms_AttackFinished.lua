--[[require "ISBaseObject"

function spawnCasing(playerObj, weapon)
	CALIBER = {
		caliberBullets22		= 'Bullets22_casing_spent';
		caliberBullets9mm		= 'Bullets9mm_casing_spent';
		caliberBullets45		= 'Bullets45_casing_spent';
		caliberBullets44		= 'Bullets44_casing_spent';
		caliberBullets4440		= 'Bullets44_casing_spent';
		caliberBullets38		= 'Bullets38_casing_spent';
		caliber223Bullets		= '223Bullets_casing_spent';
		caliber556Bullets		= '223Bullets_casing_spent';
		caliber308Bullets		= '308Bullets_casing_spent';
		caliber762x51Bullets	= '308Bullets_casing_spent';
		caliber762x39Bullets	= '762x39Bullets_casing_spent';
		caliberShotgunShells	= 'ShotgunShells_casing_spent';
		caliberBullets357		= 'Bullets357_casing_spent';
		caliberBullets3006		= 'Bullets3006_casing_spent';
		caliberBullets10mm		= 'Bullets10mm_casing_spent';
	}
	if not playerObj or playerObj:isDead() then return end;
	if not weapon then return end;
	if not weapon:isRanged() then return end;
	if weapon:getWeaponReloadType() == "revolver" then return end;
	local options = PZAPI.ModOptions:getOptions("Firearms")
	local spawnCasingOption = options:getOption(1)

	local gun = weapon:getType();
	local gunAmmo, replaced = string.gsub(weapon:getAmmoType(), "Base.", "")
	local ammo = "caliber" .. gunAmmo
	if getDebug() then
		print(spawnCasingOption)
	end
	if spawnCasingOption then
		if weapon and weapon:isRanged() then
			if getDebug() then
				print("Drop Casing")
			end
			playerObj:getCurrentSquare():AddWorldInventoryItem(CALIBER[ammo], 0.0, 0.0, 0.0);
		end
	else
		if weapon and weapon:isRanged() then
			if getDebug() then
				print("Keep Casing")
			end
			playerObj:getInventory():AddItem(CALIBER[ammo]);
		end
	end
end

Events.OnPlayerAttackFinished.Add(spawnCasing);

function ejectCasing(playerObj, weapon)
	if not playerObj or playerObj:isDead() then return end;
	if not weapon then return end;
	if not weapon:isRanged() then return end;
	local options = PZAPI.ModOptions:getOptions("Ammocraft")
	local spawnCasingOption = options:getOption(1)

	local gun = weapon:getType();
	local gunAmmo, replaced = string.gsub(weapon:getAmmoType(), "Base.", "")
	local ammo = "caliber" .. gunAmmo
	if getDebug() then
		print(spawnCasingOption)
	end
	if spawnCasingOption then
		if weapon and weapon:isRanged() then
			if getDebug() then
				print("Drop Casing")
			end
			playerObj:getCurrentSquare():AddWorldInventoryItem(CALIBER[ammo], 0.0, 0.0, 0.0);
		end
	else
		if weapon and weapon:isRanged() then
			if getDebug() then
				print("Keep Casing")
			end
			playerObj:getInventory():AddItem(CALIBER[ammo]);
		end
	end
end]]--
