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
			if getDebug() then print("original_attackHook"); end
			original_attackHook(character, chargeDelta, weapon)
		elseif not canon:hasTag(FirearmsTags.firearmsSuppressor) then
			if getDebug() then print("original_attackHook"); end
			original_attackHook(character, chargeDelta, weapon)
		elseif ISReloadWeaponAction.canShoot(character, weapon) then
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
			elseif canon and not canon:hasTag(FirearmsTags.firearmsSuppressor) then
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
end)
