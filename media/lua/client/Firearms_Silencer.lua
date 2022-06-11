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

local CALIBER = {
  caliberBullets22 = {SandboxVars.Firearms.SuppressorEffectiveness22;'Firearm9mmSuppressed'};
  caliberBullets9mm = {SandboxVars.Firearms.SuppressorEffectiveness9mm;'Firearm9mmSuppressed'};
  caliberBullets45 = {SandboxVars.Firearms.SuppressorEffectiveness45;'Firearm45Suppressed'};
  caliberBullets44 = {SandboxVars.Firearms.SuppressorEffectiveness44;'Firearm45Suppressed'};
  caliberBullets4440 = {SandboxVars.Firearms.SuppressorEffectiveness44;'Firearm45Suppressed'};
  caliberBullets38 = {SandboxVars.Firearms.SuppressorEffectiveness38;'Firearm45Suppressed'};
  caliber223Bullets = {SandboxVars.Firearms.SuppressorEffectiveness223;'FirearmARSuppressed'};
  caliber308Bullets = {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
  caliber556Bullets = {SandboxVars.Firearms.SuppressorEffectiveness223;'FirearmARSuppressed'};
  caliber762x51Bullets = {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
  caliber762x39Bullets = {SandboxVars.Firearms.SuppressorEffectiveness308;'FirearmARSuppressed'};
  caliberShotgunShells = {SandboxVars.Firearms.SuppressorEffectivenessShotgunShells;'FirearmShotgunSilencerShot'};
}

local SUPPRESSORTYPE = {
  type22Silencer = 1;
  type9mmSilencer = 1;
  type45Silencer = 1;
  type44Silencer = 1;
  type38Silencer = 1;
  type223Silencer = 1;
  type308Silencer = 1;
  typeShotgunSilencer = 1;
  typeImprovisedSilencer = SandboxVars.Firearms.SuppressorEffectivenessImprovised;
  typeSilencer_PopBottle = SandboxVars.Firearms.SuppressorEffectivenessImprovised;
}

local function silence(wielder, weapon)

  if weapon == nil then return end
	if not weapon:IsWeapon() or not weapon:isRanged() then return; end
    local scriptItem = weapon:getScriptItem()

    local soundVolume = scriptItem:getSoundVolume()
    local soundRadius = scriptItem:getSoundRadius()
    local swingSound = scriptItem:getSwingSound()

    local canon = weapon:getCanon()
    if canon then
      if getDebug() then print(canon:getType()) end
      if string.find(canon:getType(), "Silencer") then
        local weaponAmmo, replaced = string.gsub(weapon:getAmmoType(), "Base.", "")
        local suppressor = "type" .. canon:getType()
        local ammo = "caliber" .. weaponAmmo
        if getDebug() then
          print(suppressor)
          print(ammo)
          print("Suppressor Effectiveness: " .. SUPPRESSORTYPE[suppressor])
          print("Suppression Sandbox Effectiveness: " .. CALIBER[ammo][1])
          print("Suppressor Sound: " .. CALIBER[ammo][2])
          print("Firearm Condition Lower Chance: " .. weapon:getConditionLowerChance())
        end
    	  soundVolume = soundVolume *  (0.6)
    	  soundRadius = soundRadius * (EFFECTIVENESS[CALIBER[ammo][1]]*EFFECTIVENESS[SUPPRESSORTYPE[suppressor]])
        swingSound = CALIBER[ammo][2]
      end
    end

    weapon:setSoundVolume(soundVolume)
    weapon:setSoundRadius(soundRadius)
    weapon:setSwingSound(swingSound)
    print("Firearm sound volume: " .. weapon:getSoundVolume())
    print("Firearm sound radius: " .. weapon:getSoundRadius())
    print("Firearm sound: " .. weapon:getSwingSound())
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

  local canon = weapon:getCanon()
  if canon then
    if string.find(canon:getType(), "ImprovisedSilencer") then
      if ZombRand(BREAKCHANCE[SandboxVars.Firearms.FlashlightSuppressorBreakChance]) == 1 then
        weapon:detachWeaponPart(canon)
        playerObj:getCurrentSquare():AddWorldInventoryItem(canon:getType() .. "_Broken", 0.0, 0.0, 0.0);
        playerObj:resetEquippedHandsModels();
        silence(playerObj, weapon)
      end
    elseif string.find(canon:getType(), "Silencer_PopBottle") then
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
