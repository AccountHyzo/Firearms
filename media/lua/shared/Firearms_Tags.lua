local FirearmsService = {
  "Base.DishCloth",
  "Base.RippedSheets",
  "Base.DenimStrips",
  "Base.AlcoholRippedSheets",
  "Base.Socks_Ankle",
  "Base.Socks_Long",
}

local FirearmsBrush = {
  "Base.Paintbrush",
  "Base.Toothbrush",
}

local FirearmsSolvent = {
  "Base.Solvent",
}

local FirearmsSuppresors = {
  "Base.22Silencer",
  "Base.9mmSilencer",
  "Base.45Silencer",
  "Base.38Silencer",
  "Base.223Silencer",
  "Base.308Silencer",
  "Base.ShotgunSilencer",
  "Base.ImprovisedSilencer",
  "Base.Silencer_PopBottle",
}

for i = 1, #FirearmsService, 1 do
  local scriptItem = ScriptManager.instance:getItem(FirearmsService[i])
  if scriptItem then
      print(scriptItem:getType())
      scriptItem:getTags():add("Firearms_Service")
  end
end

for i = 1, #FirearmsBrush, 1 do
  local scriptItem = ScriptManager.instance:getItem(FirearmsService[i])
  if scriptItem then
      print(scriptItem:getType())
      scriptItem:getTags():add("Firearms_Brush")
  end
end

for i = 1, #FirearmsSolvent, 1 do
  local scriptItem = ScriptManager.instance:getItem(FirearmsService[i])
  if scriptItem then
      print(scriptItem:getType())
      scriptItem:getTags():add("Firearms_Solvent")
  end
end