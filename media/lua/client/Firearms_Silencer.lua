local function silence(wielder, weapon)
  if weapon == nil then return end
	if not weapon:IsWeapon() or not weapon:isRanged() then return; end
    local scriptItem = weapon:getScriptItem()

    local soundVolume = scriptItem:getSoundVolume()
    local soundRadius = scriptItem:getSoundRadius()
    local swingSound = scriptItem:getSwingSound()

    --[[if weapon:getMinAngle() >= 1.0 then
      weapon:setMinAngle(0.99)
    end]]

    local canon = weapon:getCanon()
    if canon then
  		if string.find(canon:getType(), "Silencer") then
  			if weapon:getWeaponReloadType() == "handgun" then
          if weapon:getAmmoType() == "Bullets9mm" then
    	      soundVolume = soundVolume *  (0.6)
    	      soundRadius = soundRadius * (0.5)
          elseif weapon:getAmmoType() == "Bullets45" then
            soundVolume = soundVolume *  (0.6)
    	      soundRadius = soundRadius * (0.55)
          else
          soundVolume = soundVolume *  (0.6)
          soundRadius = soundRadius * (0.5)
          end
          swingSound = 'FirearmPistolSilencerShot'
  	    elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag" then
  	      soundVolume = soundVolume *  (0.6)
  	      soundRadius = soundRadius * (0.6)
  	      swingSound = 'FirearmPistolSilencerShot'
  			end
      elseif string.find(canon:getType(), "ImprovisedSilencer") then
        if weapon:getWeaponReloadType() == "handgun" then
          if weapon:getAmmoType() == "Bullets9mm" then
            soundVolume = soundVolume *  (0.6)
            soundRadius = soundRadius * (0.6)
          elseif weapon:getAmmoType() == "Bullets45" then
            soundVolume = soundVolume *  (0.6)
            soundRadius = soundRadius * (0.65)
          else
            soundVolume = soundVolume *  (0.6)
            soundRadius = soundRadius * (0.6)
          end
          swingSound = 'FirearmPistolSilencerShot'
        elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag " then
          soundVolume = soundVolume *  (0.6)
          soundRadius = soundRadius * (0.7)
          swingSound = 'FirearmPistolSilencerShot'
        end
      elseif string.find(canon:getType(), "Silencer_PopBottle") then
        if weapon:getWeaponReloadType() == "handgun" then
          if weapon:getAmmoType() == "Bullets9mm" then
            soundVolume = soundVolume *  (0.6)
            soundRadius = soundRadius * (0.7)
          elseif weapon:getAmmoType() == "Bullets45" then
            soundVolume = soundVolume *  (0.6)
            soundRadius = soundRadius * (0.75)
          else
            soundVolume = soundVolume *  (0.6)
            soundRadius = soundRadius * (0.7)
          end
          swingSound = 'FirearmPistolSilencerShot'
        elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag " then
          soundVolume = soundVolume *  (0.6)
          soundRadius = soundRadius * (0.8)
          swingSound = 'FirearmPistolSilencerShot'
        end
      end
    end

    weapon:setSoundVolume(soundVolume)
    weapon:setSoundRadius(soundRadius)
    weapon:setSwingSound(swingSound)
    print(scriptItem:getSoundRadius())
end

Events.OnEquipPrimary.Add(silence);

Events.OnGameStart.Add(function() -- make sure our player is setup on game start
	local player = getPlayer()
	silence(player, player:getPrimaryHandItem())
end)

--[[function breakSuppressor(playerObj, weapon)
	if not playerObj or playerObj:isDead() then return end;
	if not weapon then return end;
	if not weapon:isRanged() then return end;

  local canon = weapon:getCanon()
  if canon then
    if string.find(canon:getType(), "Silencer") then
      if weapon:getWeaponReloadType() == "handgun" then
        if weapon:getAmmoType() == "Bullets9mm" then
          weapon:detachWeaponPart(canon)
          playerObj:getInventory():AddItem(canon);
        elseif weapon:getAmmoType() == "Bullets45" then
          weapon:detachWeaponPart(canon)
          playerObj:getInventory():AddItem(canon);
        else
          weapon:detachWeaponPart(canon)
          playerObj:getInventory():AddItem(canon);
        end
      elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag" then
        weapon:detachWeaponPart(canon)
        playerObj:getInventory():AddItem(canon);
      end
    elseif string.find(canon:getType(), "ImprovisedSilencer") then
      if weapon:getWeaponReloadType() == "handgun" then
        weapon:detachWeaponPart(canon)
        playerObj:getInventory():AddItem(canon);
      elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag " then
        weapon:detachWeaponPart(canon)
        playerObj:getInventory():AddItem(canon);
      end
    elseif string.find(canon:getType(), "Silencer_PopBottle") then
      if weapon:getWeaponReloadType() == "handgun" then
        weapon:detachWeaponPart(canon)
        playerObj:getInventory():AddItem(canon);
      elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag " then
        weapon:detachWeaponPart(canon)
        playerObj:getInventory():AddItem(canon);
      end
    end
  end
end

Events.OnPlayerAttackFinished.Add(breakSuppressor);]]
