-- 	self.character:getEmitter():playSound("M1EnBloc");
local original_attackHook

ISReloadWeaponAction.attackHookFirearms = function(character, chargeDelta, weapon)
	ISTimedActionQueue.clear(character)
	if character:isAttackStarted() then return; end
	if instanceof(character, "IsoPlayer") and not character:isAuthorizeMeleeAction() then
		return;
	end
	if weapon:isRanged() and not character:isDoShove() then
    local canon = weapon:getCanon()
		if ISReloadWeaponAction.canShoot(weapon) then
			character:playSound(weapon:getSwingSound());
			local radius = weapon:getSoundRadius();
			if isClient() then -- limit sound radius in MP
				radius = radius / 2.2;
			end
			character:addWorldSoundUnlessInvisible(radius, weapon:getSoundVolume(), false);
      if not canon then
        if getDebug() then print(canon); end
			  character:startMuzzleFlash()
      elseif canon and not string.find(canon:getType(), "Silencer") then
        if getDebug() then print(canon); end
        character:startMuzzleFlash()
      end
			character:DoAttack(0);
		else
			character:DoAttack(0);
			character:setRangedWeaponEmpty(true);
		end
	else
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

local original_setReloadSpeed = ISReloadWeaponAction.setReloadSpeed
-- This is used by other timed actions.
function ISReloadWeaponAction.setReloadSpeed(character, rack)
	local baseReloadSpeed = 1
  local gun = character:getPrimaryHandItem();
	if gun then
		baseReloadSpeed = baseReloadSpeed*gun:getReloadTime()/30;
	end
  if getDebug() then print(baseReloadSpeed); end
  if baseReloadSpeed < 0.5 then
    baseReloadSpeed = 0.5
  elseif baseReloadSpeed > 3 then
    baseReloadSpeed = 3
  end
  if getDebug() then print(baseReloadSpeed); end
	if rack then
		-- reloading skill has less impact on racking, panic does nothing
		baseReloadSpeed = baseReloadSpeed + (character:getPerkLevel(Perks.Reloading) * 0.03);
    if string.find(gun:getType(), "Winchester") then
      baseReloadSpeed = baseReloadSpeed + 0.15
    end
	else
		baseReloadSpeed = baseReloadSpeed + (character:getPerkLevel(Perks.Reloading) * 0.07);
		baseReloadSpeed = baseReloadSpeed - (character:getMoodles():getMoodleLevel(MoodleType.Panic) * 0.05);
	end

	-- check for ammo straps
	local strap = character:getWornItem("AmmoStrap");
	local strapFound = false;
	if gun and strap and strap:getClothingItem() then
		local shell = false;
		if gun:getAmmoType() == "Base.ShotgunShells" then
			shell = true;
		end
		if shell and strap:getClothingItemName() == "AmmoStrap_Shells" then
			strapFound = true;
		elseif not shell and  strap:getClothingItemName() == "AmmoStrap_Bullets" then
			strapFound = true;
		end
	end
	if strapFound then
		baseReloadSpeed = baseReloadSpeed * 1.15;
	end
	-- vehicles driver take bit longer to reload their weapon
	if character:getVehicle() and character:getVehicle():getDriver() == character then
		baseReloadSpeed = baseReloadSpeed * 0.8;
	end
	character:setVariable("ReloadSpeed", baseReloadSpeed * GameTime.getAnimSpeedFix());
end
