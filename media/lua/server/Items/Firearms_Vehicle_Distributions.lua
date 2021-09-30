require "Items/SuburbsDistributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"
require "Items/ItemPicker"


table.insert(VehicleDistributions.Police["TruckBed"].items, "Base.LawEnforcement");
table.insert(VehicleDistributions.Police["TruckBed"].items, 2);

table.insert(VehicleDistributions.Hunter["TruckBed"].items, "Base.Hunting");
table.insert(VehicleDistributions.Hunter["TruckBed"].items, 2);

table.insert(VehicleDistributions.Survivalist["TruckBed"].items, "Base.Military");
table.insert(VehicleDistributions.Survivalist["TruckBed"].items, 0.3);
table.insert(VehicleDistributions.Survivalist["TruckBed"].items, "Base.LawEnforcement");
table.insert(VehicleDistributions.Survivalist["TruckBed"].items, 0.3);

table.insert(VehicleDistributions.TrunkStandard.items, "Base.Civilian_Small");
table.insert(VehicleDistributions.TrunkStandard.items, 0.1);
table.insert(VehicleDistributions.TrunkStandard.items, "Base.Hunting");
table.insert(VehicleDistributions.TrunkStandard.items, 0.1);
table.insert(VehicleDistributions.TrunkStandard.items, "Base.LawEnforcement");
table.insert(VehicleDistributions.TrunkStandard.items, 0.05);

table.insert(VehicleDistributions.TrunkHeavy.items, "Base.Civilian_Small");
table.insert(VehicleDistributions.TrunkHeavy.items, 0.1);
table.insert(VehicleDistributions.TrunkHeavy.items, "Base.Hunting");
table.insert(VehicleDistributions.TrunkHeavy.items, 0.1);

table.insert(VehicleDistributions.TrunkSports.items, "Base.Civilian_Small");
table.insert(VehicleDistributions.TrunkSports.items, 0.1);

local function isMod(mod_Name)
	local mods = getActivatedMods();
	for i=0, mods:size()-1, 1 do
		if mods:get(i) == mod_Name then
			return true;
		end
	end
	return false;
end
