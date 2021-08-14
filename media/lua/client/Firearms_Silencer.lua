local function silence(wielder, weapon)
  if weapon == nil then return end
	if not weapon:IsWeapon() or not weapon:isRanged() then return; end
    local scriptItem = weapon:getScriptItem()

    local soundVolume = scriptItem:getSoundVolume()
    local soundRadius = scriptItem:getSoundRadius()
    local swingSound = scriptItem:getSwingSound()

    if weapon:getMinAngle() >= 1.0 then
      weapon:setMinAngle(0.99)
    end

    local canon = weapon:getCanon()
    if canon then
  		if string.find(canon:getType(), "Silencer") then
  			if weapon:getWeaponReloadType() == "handgun" then
          if weapon:getAmmoType() == "Bullets9mm" then
    	      soundVolume = soundVolume *  (1)
    	      soundRadius = soundRadius * (0.5)
            swingSound = 'Firearm9mmSuppressed'
          elseif weapon:getAmmoType() == "Bullets45" then
            soundVolume = soundVolume *  (1)
    	      soundRadius = soundRadius * (0.55)
            swingSound = 'Firearm45Suppressed'
          else
          soundVolume = soundVolume *  (1)
          soundRadius = soundRadius * (0.5)
          swingSound = 'Firearm9mmSuppressed'
          end
  	    elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag" then
  	      soundVolume = soundVolume *  (1)
  	      soundRadius = soundRadius * (0.6)
  	      swingSound = 'FirearmARSuppressed'
  			end
      elseif string.find(canon:getType(), "ImprovisedSilencer") then
        if weapon:getWeaponReloadType() == "handgun" then
          if weapon:getAmmoType() == "Bullets9mm" then
            soundVolume = soundVolume *  (1.3)
            soundRadius = soundRadius * (0.6)
          elseif weapon:getAmmoType() == "Bullets45" then
            soundVolume = soundVolume *  (1.3)
            soundRadius = soundRadius * (0.65)
          else
            soundVolume = soundVolume *  (1)
            soundRadius = soundRadius * (0.6)
          end
          swingSound = 'Firearm45Suppressed'
        elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag " then
          soundVolume = soundVolume *  (1.3)
          soundRadius = soundRadius * (0.7)
          swingSound = 'FirearmARSuppressed'
        end
      elseif string.find(canon:getType(), "Silencer_PopBottle") then
        if weapon:getWeaponReloadType() == "handgun" then
          if weapon:getAmmoType() == "Bullets9mm" then
            soundVolume = soundVolume *  (1.3)
            soundRadius = soundRadius * (0.7)
          elseif weapon:getAmmoType() == "Bullets45" then
            soundVolume = soundVolume *  (1.3)
            soundRadius = soundRadius * (0.75)
          else
            soundVolume = soundVolume *  (1)
            soundRadius = soundRadius * (0.7)
          end
          swingSound = 'Firearm45Suppressed'
        elseif weapon:getWeaponReloadType() == "boltaction" or weapon:getWeaponReloadType() == "boltactionnomag " then
          soundVolume = soundVolume *  (1.3)
          soundRadius = soundRadius * (0.8)
          swingSound = 'FirearmARSuppressed'
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
