function firearms_setRackAfterShoot(_player, _firearm)
	if not player or not firearm then return; end
	if firearm:hasTag("SemiShotgun") then
		local firemode = firearm:getFireMode()
		if not firearm then return; end
		if "Auto" == firemode then
			firearm:setRackAfterShoot(false);
		elseif "Single" == firemode then
			firearm:setRackAfterShoot(true)
		end
	end
end

Events.OnEquipPrimary.Add(firearms_setRackAfterShoot)

function ISReloadWeaponAction:ejectSpentRounds()
	if self.gun:getSpentRoundCount() > 0 then
		self.gun:setSpentRoundCount(0)
		ejectCasing(self.character, self.gun)
		syncHandWeaponFields(self.character, self.gun)
	elseif self.gun:isSpentRoundChambered() then
		self.gun:setSpentRoundChambered(false)
		ejectCasing(self.character, self.gun)
		syncHandWeaponFields(self.character, self.gun)
	else
		return
	end
	if self.gun:getShellFallSound() then
		self.character:getEmitter():playSound(self.gun:getShellFallSound())
	end
end

local original_attackHook

ISReloadWeaponAction.attackHookFirearms = function(character, chargeDelta, weapon)
	ISTimedActionQueue.clear(character)
	if character:isAttackStarted() then return; end
	if instanceof(character, "IsoPlayer") and not character:isAuthorizeMeleeAction() then
		return;
	end
	if weapon:isRanged() and not character:isDoShove() then
    local canon = weapon:getWeaponPart("Canon")
		if not canon then
			original_attackHook(character, chargeDelta, weapon)
		elseif not canon:hasTag("Silencer") then
			original_attackHook(character, chargeDelta, weapon)
		elseif ISReloadWeaponAction.canShoot(weapon) then
			character:playSound(weapon:getSwingSound());
			local radius = weapon:getSoundRadius() * getSandboxOptions():getOptionByName("FirearmNoiseMultiplier"):getValue();
			if not character:isOutside() then
				radius = radius * 0.5
			end
			--if isClient() then -- limit sound radius in MP
			--	radius = radius / 1.8;
			--end
			character:addWorldSoundUnlessInvisible(radius, weapon:getSoundVolume(), false);
			if not canon then
				if getDebug() then print(canon); end
				character:startMuzzleFlash()
			--[[elseif canon and not string.find(canon:getType(), "Silencer") then
				if getDebug() then print(canon); end
				character:startMuzzleFlash()
			end]]--
			elseif canon and not canon:hasTag("Silencer") then
				if getDebug() then print(canon); end
				character:startMuzzleFlash()
			end
			character:DoAttack(0);
		else
			character:DoAttack(0);
			character:setRangedWeaponEmpty(true);
		end
	-- else
	-- nerf so players in vehicles cannot use melee attacks
	elseif (not character:getVehicle() or character:isDoShove()) then
		ISTimedActionQueue.clear(character)
		if(chargeDelta == nil) then
			character:DoAttack(0);
		else
			character:DoAttack(chargeDelta);
		end
	end
end

Events.OnGameBoot.Add(function()
    Hook.Attack.Remove(ISReloadWeaponAction.attackHook);
    Hook.Attack.Add(ISReloadWeaponAction.attackHookFirearms) -- add our new callback

    -- store the original function.
    original_attackHook = ISReloadWeaponAction.attackHook
    -- overwrite is probably redundant at this point, but best done just in case.
    ISReloadWeaponAction.attackHook = ISReloadWeaponAction.attackHookFirearms
end)
