local function silence(wielder, weapon)
  if weapon == nil then return end
	if not weapon:isRanged() then return; end
    local scriptItem = weapon:getScriptItem()

    local soundVolume = scriptItem:getSoundVolume()
    local soundRadius = scriptItem:getSoundRadius()
    local swingSound = scriptItem:getSwingSound()

    local canon = weapon:getCanon()
    if canon then
  		if string.find(canon:getType(), "Silencer") then
  			if weapon:getWeaponReloadType() == "handgun" then
  	      soundVolume = soundVolume *  (1)
  	      soundRadius = soundRadius * (0.70)
  	      swingSound = 'FirearmPistolSilencerShot'
  	    elseif weapon:getWeaponReloadType() == "boltaction" then
  	      soundVolume = soundVolume *  (1)
  	      soundRadius = soundRadius * (0.4)
  	      swingSound = 'FirearmRifleSilencerShot'
  			end
      elseif string.find(canon:getType(), "ImprovisedSilencer") then
        if weapon:getWeaponReloadType() == "handgun" then
          soundVolume = soundVolume *  (1)
          soundRadius = soundRadius * (0.70)
          swingSound = 'FirearmPistolSilencerShot'
        elseif weapon:getWeaponReloadType() == "boltaction" then
          soundVolume = soundVolume *  (1)
          soundRadius = soundRadius * (0.4)
          swingSound = 'FirearmRifleSilencerShot'
        end
      end
    end

    weapon:setSoundVolume(soundVolume)
    weapon:setSoundRadius(soundRadius)
    weapon:setSwingSound(swingSound)
end

Events.OnEquipPrimary.Add(silence);

Events.OnGameStart.Add(function() -- make sure our player is setup on game start
	local player = getPlayer()
	silence(player, player:getPrimaryHandItem())
end)
