FirearmsBaseGameCharacterDetails = {}


FirearmsBaseGameCharacterDetails.DoNewCharacterInitializations = function(playernum, character)
    --print("DT Logger: running DTBaseGameCharacterDetails.DoNewCharacterInitializations function");
    local player = getSpecificPlayer(playernum);

    if player:getModData().hearingLoss == nil then
      player:getModData().hearingLoss = 0;
    end
end

Events.OnCreatePlayer.Add(FirearmsBaseGameCharacterDetails.DoNewCharacterInitializations);
