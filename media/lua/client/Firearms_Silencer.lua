local function silence(wielder, weapon)
  if weapon == nil then return end
  if weapon:getCategory() == "Weapon" then
    local scriptItem = weapon:getScriptItem()

    local soundVolume = scriptItem:getSoundVolume()
    local soundRadius = scriptItem:getSoundRadius()
    local swingSound = scriptItem:getSwingSound()

    if weapon:getSubCategory() == nil then return
  	elseif weapon:getSubCategory() == "Firearm" then
      local canon = weapon:getCanon()
      if canon then
  			if string.find(canon:getType(), "Silencer") then
  				if weapon:getWeaponReloadType() == "handgun" then
  		      soundVolume = soundVolume *  (0.40)
  		      soundRadius = soundRadius * (0.40)
  		      swingSound = 'silencer'
  		    elseif weapon:getWeaponReloadType() == "boltaction" then
  		      soundVolume = soundVolume *  (0.3)
  		      soundRadius = soundRadius * (0.3)
  		      swingSound = 'silencer'
  				end
  	    end
  		end
  	end

    weapon:setSoundVolume(soundVolume)
    weapon:setSoundRadius(soundRadius)
    weapon:setSwingSound(swingSound)
  end
end

Events.OnEquipPrimary.Add(silence);

Events.OnGameStart.Add(function() -- make sure our player is setup on game start
	local player = getPlayer()
	silence(player, player:getPrimaryHandItem())
end)
