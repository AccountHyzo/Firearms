require "Items/SuburbsDistributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"
require "Items/ItemPicker"

if getActivatedMods():contains("FRUsedCarsBETA") then
	table.insert(VehicleDistributions.Military["TruckBed"].items, "Firearms.Military");
	table.insert(VehicleDistributions.Military["TruckBed"].items, 3);
end

table.insert(VehicleDistributions.Police["TruckBed"].items, "Firearms.LawEnforcement");
table.insert(VehicleDistributions.Police["TruckBed"].items, 2);

table.insert(VehicleDistributions.Hunter["TruckBed"].items, "Firearms.Hunting");
table.insert(VehicleDistributions.Hunter["TruckBed"].items, 2);

table.insert(VehicleDistributions.Survivalist["TruckBed"].items, "Firearms.Military");
table.insert(VehicleDistributions.Survivalist["TruckBed"].items, 0.3);
table.insert(VehicleDistributions.Survivalist["TruckBed"].items, "Firearms.LawEnforcement");
table.insert(VehicleDistributions.Survivalist["TruckBed"].items, 0.3);

table.insert(VehicleDistributions.TrunkStandard.items, "Firearms.Civilian_Small");
table.insert(VehicleDistributions.TrunkStandard.items, 0.1);
table.insert(VehicleDistributions.TrunkStandard.items, "Firearms.Hunting");
table.insert(VehicleDistributions.TrunkStandard.items, 0.1);
table.insert(VehicleDistributions.TrunkStandard.items, "Firearms.LawEnforcement");
table.insert(VehicleDistributions.TrunkStandard.items, 0.05);

table.insert(VehicleDistributions.TrunkHeavy.items, "Firearms.Civilian_Small");
table.insert(VehicleDistributions.TrunkHeavy.items, 0.1);
table.insert(VehicleDistributions.TrunkHeavy.items, "Firearms.Hunting");
table.insert(VehicleDistributions.TrunkHeavy.items, 0.1);

table.insert(VehicleDistributions.TrunkSports.items, "Firearms.Civilian_Small");
table.insert(VehicleDistributions.TrunkSports.items, 0.1);

table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.Glock17");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.ColtPeacemaker");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.Remington870Wood");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.Mossberg500");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.Mossberg500Tactical");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.Winchester94");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.Winchester73");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.UZI");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.MP5");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 3);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.M24Rifle");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 2);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.M16A2");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 2);
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, "Firearms.M60");
table.insert(ProceduralDistributions.list["FirearmWeapons"].items, 1);

local function isMod(mod_Name)
	local mods = getActivatedMods();
	for i=0, mods:size()-1, 1 do
		if mods:get(i) == mod_Name then
			return true;
		end
	end
	return false;
end
