--local MoodleAPI = require("MoodleAPI/MoodleAPIClient");

local HEARINGLOSSCHANCE = {
  1;
  25;
  50;
  100;
}

function hearingLoss(playerObj, weapon)
  if not SandboxVars.Firearms.HearingLoss then
    return
  end

  if not playerObj or playerObj:isDead() or not weapon or not weapon:isRanged() then
    return
  end

  local hearingLossChance = HEARINGLOSSCHANCE[SandboxVars.Firearms.HearingLossChance]
  if getDebug() then
    print("Hearing Loss Chance: " .. hearingLossChance)
  end
  if not hearingLossChance or ZombRand(hearingLossChance) ~= 1 then
    return
  end

  if not playerObj:HasTrait("Deaf") then
    local hearingLossAmount = ZombRand(25)
    if getDebug() then
      print("Hearing Loss Amount: " .. hearingLossAmount)
    end
    FirearmsHearingLoss.hearingLossIncrease(playerObj, hearingLossAmount);
  end
end


Events.OnPlayerAttackFinished.Add(hearingLoss);

FirearmsHearingLoss = {}

FirearmsHearingLoss.hearingLossIncrease = function(player, loss)
	print("Hearing Loss Logger: running FirearmsHearingLoss.hearingLossIncrease function")
	print("hearingLoss: " .. loss)
  if player:HasTrait("HardOfHearing") then
    loss = loss * 0.25;
    if getDebug() then
      print("Hearing Loss Logger: player has trait HardOfHearing")
      print("Hearing Loss Logger: decrease: " .. loss)
    end
  elseif player:HasTrait("KeenHearing") then
    loss = loss * 1.5;
    if getDebug() then
      print("Hearing Loss Logger: player has trait KeenHearing")
      print("Hearing Loss Logger: decrease: " .. loss)
    end
  end

	player:getModData().hearingLoss = player:getModData().hearingLoss + loss
	if player:getModData().hearingLoss > 100 then
		player:getModData().hearingLoss = 100;
	end
end

FirearmsHearingLoss.hearingLossDecrease = function(player)
	print("Hearing Loss Logger: running FirearmsHearingLoss.hearingLossDecrease function")
	if ZombRand(100) == 0 then
		local decrease = ZombRand(5);
		print("decrease: " .. decrease)
    if player:HasTrait("HardOfHearing") then
			decrease = decrease * 0.1;
      if getDebug() then
			     print("Hearing Loss Logger: player has trait HardOfHearing");
			     print("Hearing Loss Logger: decrease: " .. decrease);
      end
		elseif player:HasTrait("KeenHearing") then
			decrease = decrease * 1.25;
      if getDebug() then
			     print("Hearing Loss Logger: player has trait KeenHearing");
			     print("Hearing Loss Logger: decrease: " .. decrease);
      end
		end
		print("decrease: " .. decrease)
		player:getModData().hearingLoss = player:getModData().hearingLoss - decrease;
		if player:getModData().hearingLoss < 0 then
			player:getModData().hearingLoss = 0;
		end
	end
	print("player:getModData().hearingLoss: " .. player:getModData().hearingLoss);
end

local function getHearingLossMoodleValue()
    local player = getPlayer();
    if player:getModData().hearingLoss > 75 and player:getModData().hearingLoss <= 100 then
        return 1;
    end
    return 0;
end

--MoodleAPI.AddMoodle("HearingLoss", "media/ui/moodles/hearingloss.png", "BAD", getHearingLossMoodleValue);
