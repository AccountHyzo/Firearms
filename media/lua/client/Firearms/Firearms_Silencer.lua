local EFFECTIVENESS = {
	0;
	0.1;
	0.2;
	0.3;
	0.4;
	0.5;
	0.6;
	0.7;
	0.8;
	0.9;
}

local BREAKCHANCE = {
	1;
	25;
	100;
	500;
}


local function silence(wielder, weapon)
	CALIBER = {
		caliberBullets22		= {SandboxVars.Firearms.SuppressorEffectiveness22;'Firearm9mmSuppressed'};
		caliberBullets9mm		= {SandboxVars.Firearms.SuppressorEffectiveness9mm;'Firearm9mmSuppressed'};
		caliberBullets45		= {SandboxVars.Firearms.SuppressorEffectiveness45;'Firearm45Suppressed'};
		caliberBullets44		= {SandboxVars.Firearms.SuppressorEffectiveness44;'Firearm45Suppressed'};
		caliberBullets4440		= {SandboxVars.Firearms.SuppressorEffectiveness44;'Firearm45Suppressed'};
		caliberBullets38		= {SandboxVars.Firearms.SuppressorEffectiveness38;'Firearm45Suppressed'};
		caliber223Bullets		= {SandboxVars.Firearms.SuppressorEffectiveness223;'FirearmARSuppressed'};
		caliber556Bullets		= {SandboxVars.Firearms.SuppressorEffectiveness223;'FirearmARSuppressed'};
		caliber308Bullets		= {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
		caliber762x51Bullets	= {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
		caliber762x39Bullets	= {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
		caliberShotgunShells	= {SandboxVars.Firearms.SuppressorEffectivenessShotgunShells;'FirearmShotgunSilencerShot'};
		caliberBullets357		= {SandboxVars.Firearms.SuppressorEffectiveness38;'Firearm45Suppressed'};
		caliberBullets3006		= {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
		caliberBullets10mm		= {SandboxVars.Firearms.SuppressorEffectiveness10mm;'Firearm45Suppressed'};
	}

	SUPPRESSORTYPE		= {
		type22Silencer			= 1;
		type9mmSilencer			= 1;
		type10mmSilencer			= 1;
		type45Silencer			= 1;
		type44Silencer			= 1;
		type38Silencer			= 1;
		type223Silencer			= 1;
		type308Silencer			= 1;
		typeShotgunSilencer		= 1;
		typeImprovisedSilencer	= EFFECTIVENESS[SandboxVars.Firearms.SuppressorEffectivenessImprovised];
		typeSilencer_PopBottle	= EFFECTIVENESS[SandboxVars.Firearms.SuppressorEffectivenessImprovised];
	}

	if weapon == nil then return end
	if not weapon:IsWeapon() or not weapon:isRanged() then return; end
	local scriptItem = weapon:getScriptItem()

	local soundVolume = scriptItem:getSoundVolume()
	local soundRadius = scriptItem:getSoundRadius()
	local swingSound = scriptItem:getSwingSound()

	local canon = weapon:getWeaponPart("Canon")
	if canon then
	if getDebug() then print(canon:getType()) end
		if canon:hasTag("Silencer") then
			local weaponAmmo, replaced = string.gsub(weapon:getAmmoType(), "Base.", "")
			local suppressor = "type" .. canon:getType()
			local ammo = "caliber" .. weaponAmmo
			if getDebug() then
				print("Ammo type: " .. ammo)
				print("Suppressor Type: " .. canon:getType())
				print("Caliber Effectiveness: " .. CALIBER[ammo][1])
				print("Suppressor Sound: " .. CALIBER[ammo][2])
				print("Firearm Condition Lower Chance: " .. weapon:getConditionLowerChance())
			end
			soundVolume = soundVolume *  (0.6)
			local effectivness = (EFFECTIVENESS[CALIBER[ammo][1]]+((1-EFFECTIVENESS[CALIBER[ammo][1]])*(1-SUPPRESSORTYPE[suppressor])))
			if weapon:getWeaponReloadType() == "revolver" then
				effectivness = effectivness+((1-effectivness)*(1-EFFECTIVENESS[SandboxVars.Firearms.SuppressorEffectivenessRevolver]))
			end
			print("Suppressor Effectiveness: " .. (1-effectivness)*100 .. "%")
			soundRadius = soundRadius * effectivness
			swingSound = CALIBER[ammo][2]
		end
	elseif weapon:hasTag("Silenced") then
	if getDebug() then print("Permanent Suppressor") end
			local weaponAmmo, replaced = string.gsub(weapon:getAmmoType(), "Base.", "")
			local ammo = "caliber" .. weaponAmmo
			if getDebug() then
				print("Ammo type: " .. ammo)
				print("Caliber Effectiveness: " .. CALIBER[ammo][1])
				print("Suppressor Sound: " .. CALIBER[ammo][2])
				print("Firearm Condition Lower Chance: " .. weapon:getConditionLowerChance())
			end
			soundVolume = soundVolume *  (0.6)
			local effectivness = (EFFECTIVENESS[CALIBER[ammo][1]])
			if weapon:getWeaponReloadType() == "revolver" then
				effectivness = effectivness+((1-effectivness)*(1-EFFECTIVENESS[SandboxVars.Firearms.SuppressorEffectivenessRevolver]))
			end
			print("Suppressor Effectiveness: " .. (1-effectivness)*100 .. "%")
			soundRadius = soundRadius * effectivness
			swingSound = CALIBER[ammo][2]
	end

	weapon:setSoundVolume(soundVolume)
	weapon:setSoundRadius(soundRadius)
	weapon:setSwingSound(swingSound)
	if getDebug() then
		print("Firearm sound volume: " .. weapon:getSoundVolume())
		print("Firearm sound radius: " .. weapon:getSoundRadius())
		print("Firearm sound: " .. weapon:getSwingSound())
	end
end

Events.OnEquipPrimary.Add(silence);

Events.OnGameStart.Add(function() -- make sure our player is setup on game start
	local player = getPlayer()
	silence(player, player:getPrimaryHandItem())
end)

function breakSuppressor(playerObj, weapon)
	if not SandboxVars.Firearms.SuppressorBreak then return end;
	if not playerObj or playerObj:isDead() then return end;
	if not weapon then return end;
	if not weapon:isRanged() then return end;

	local canon = weapon:getWeaponPart("Canon")
	if canon then
	if canon:hasTag("ImprovisedSilencer") then
		if ZombRand(BREAKCHANCE[SandboxVars.Firearms.FlashlightSuppressorBreakChance]) == 1 then
		weapon:detachWeaponPart(canon)
		playerObj:getCurrentSquare():AddWorldInventoryItem(canon:getType() .. "_Broken", 0.0, 0.0, 0.0);
		playerObj:resetEquippedHandsModels();
		silence(playerObj, weapon)
		end
	elseif canon:hasTag("ImprovisedSilencerBottle") then
		if ZombRand(BREAKCHANCE[SandboxVars.Firearms.BottleSuppressorBreakChance]) == 1 then
		weapon:detachWeaponPart(canon)
		playerObj:getCurrentSquare():AddWorldInventoryItem(canon:getType() .. "_Broken", 0.0, 0.0, 0.0);
		playerObj:resetEquippedHandsModels();
		silence(playerObj, weapon)
		end
	end
	end
end

Events.OnPlayerAttackFinished.Add(breakSuppressor);
