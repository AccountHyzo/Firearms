require "Items/ProceduralDistributions"
require "Items/ItemPicker"

local i, j, d

-- Distributions for ProceduralDistributions.lua
local myDistTableBoxes = {
	"LockerArmyBedroom", 1,
	"CrateMetalwork", 1,
	"GunStoreAmmunition", 1,
	"GarageFirearms", 6,
	"DrugLabGuns", 1,
	"DrugLabSupplies", 2,
	"DrugShackDrugs", 1,
	"DrugShackMisc", 2,
	"PoliceEvidence", 2,
}

local myDistTableMolds = {
	"CrateTools", 0.1,
	"LockerArmyBedroom", 1,
	"GarageFirearms", 6,
	"CrateMetalwork", 1,
	"GarageMetalwork", 0.1,
	"CrateBlacksmithing", 4,
	"PoliceEvidence", 4,
}

local myDistTableLit = {
	"SafehouseBookShelf", 2,
	"GunStoreLiterature", 2,
	"GunStoreMagazineRack", 2,
	"ArmySurplusLiterature", 2,
	"CampingLockers", 2,
	"ClassroomMisc", 1,
	"ComicStoreCounter", 1,
	"CrateBlacksmithing", 1,
	"CyberCafeDesk", 1,
	"DrugLabGuns", 1,
	"DrugLabMoney", 1,
	"DrugLabOutfit", 2,
	"DrugLabSupplies", 2,
	"DrugShackDrugs", 1,
	"DrugShackMisc", 2,
	"GarageFirearms", 2,
	"GunStoreLiterature", 10,
	"LivingRoomShelf", 0.005,
	"LivingRoomShelfClassy", 0.005,
	"LivingRoomShelfRedneck", 0.01,
	"LivingRoomSideTable", 0.01,
	"LivingRoomSideTableClassy", 0.005,
	"LivingRoomSideTableRedneck", 0.05,
	"SafehouseFireplace", 0.05,
	"SafehouseFireplace_Late", 0.15,
	"PoliceCaptainDesk", 0.05,
	"PoliceEvidence", 0.05,
	"SecurityLockers", 0.05,
	"SecurityDesk", 0.05,
}

local myDistTableTools = {
	"LockerArmyBedroom", 1,
	"CrateBlacksmithing", 1,
	"GarageFirearms", 2,
	"StoreShelfMechanics", 1,
	"GarageTools", 0.1,
	"CrateTools", 1,
	"GigamartTools", 0.1,
	"GarageMetalwork", 0.1,
}

local myDistTableChemicals = {
	"CrateFertilizer", 25,
}

for i = 1, #myDistTableBoxes, 2 do
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets9mm_casingbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets45_casingbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets44_casingbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/2)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets38_casingbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.308Bullets_casingbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/3)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.223Bullets_casingbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/3)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.ShotgunShells_casingbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]*2)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets9mm_tipbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets45_tipbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets44_tipbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/2)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets38_tipbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.308Bullets_tipbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/3)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.223Bullets_tipbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/3)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.ShotgunShells_tipbox")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]*2)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.SP_Primers_box")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1])
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.LP_Primers_box")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/2)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.R_Primers_box")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/4)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.SG_Primers_box")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]*2)
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.GunpowderJar")
	table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]*2)
end

for i = 1, #myDistTableMolds, 2 do
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.9mmBulletsMold")
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1])
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.45BulletsMold")
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1]/2)
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.44BulletsMold")
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1]/3)
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.38BulletsMold")
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1]/2)
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.308BulletsMold")
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1]/5)
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.223BulletsMold")
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1]/5)
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, "Base.ShotgunShellsMold")
	table.insert(ProceduralDistributions.list[myDistTableMolds[i]].items, myDistTableMolds[i+1]*2)
end

for i = 1, #myDistTableLit, 2 do
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, "Base.GunnutMonthly1")
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, myDistTableLit[i+1]*2)
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, "Base.GunnutMonthly2")
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, myDistTableLit[i+1])
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, "Base.GunnutMonthly3")
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, myDistTableLit[i+1]*0.8)
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, "Base.GunnutMonthly4")
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, myDistTableLit[i+1]*0.6)
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, "Base.GunnutMonthly5")
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, myDistTableLit[i+1]*0.4)
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, "Base.GunnutMonthly6")
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, myDistTableLit[i+1]*0.2)
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, "Base.GunnutBible")
	table.insert(ProceduralDistributions.list[myDistTableLit[i]].items, myDistTableLit[i+1]/10)
end

for i = 1, #myDistTableTools, 2 do
	table.insert(ProceduralDistributions.list[myDistTableTools[i]].items, "Base.Tongs")
	table.insert(ProceduralDistributions.list[myDistTableTools[i]].items, myDistTableTools[i+1])
	table.insert(ProceduralDistributions.list[myDistTableTools[i]].items, "Base.Pliers")
	table.insert(ProceduralDistributions.list[myDistTableTools[i]].items, myDistTableTools[i+1])
	table.insert(ProceduralDistributions.list[myDistTableTools[i]].items, "Base.Reloadpress")
	table.insert(ProceduralDistributions.list[myDistTableTools[i]].items, myDistTableTools[i+1]/4)
end

for i = 1, #myDistTableChemicals, 2 do
	table.insert(ProceduralDistributions.list[myDistTableChemicals[i]].items, "Base.Sulfur")
	table.insert(ProceduralDistributions.list[myDistTableChemicals[i]].items, myDistTableChemicals[i+1])
	table.insert(ProceduralDistributions.list[myDistTableChemicals[i]].items, "Base.Saltpeter")
	table.insert(ProceduralDistributions.list[myDistTableChemicals[i]].items, myDistTableChemicals[i+1])
end

	table.insert(ProceduralDistributions.list["GarageTools"].items, "Pliers");
	table.insert(ProceduralDistributions.list["GarageTools"].items, 2);
	table.insert(ProceduralDistributions.list["GarageTools"].items, "Tongs");
	table.insert(ProceduralDistributions.list["GarageTools"].items, 2);

	table.insert(ProceduralDistributions.list["MechanicShelfTools"].items, "Pliers");
	table.insert(ProceduralDistributions.list["MechanicShelfTools"].items, 2);
	table.insert(ProceduralDistributions.list["MechanicShelfTools"].items, "Tongs");
	table.insert(ProceduralDistributions.list["MechanicShelfTools"].items, 2);

	table.insert(ProceduralDistributions.list["JanitorTools"].items, "Pliers");
	table.insert(ProceduralDistributions.list["JanitorTools"].items, 2);
	table.insert(ProceduralDistributions.list["JanitorTools"].items, "Tongs");
	table.insert(ProceduralDistributions.list["JanitorTools"].items, 2);

	table.insert(ProceduralDistributions.list["GigamartHouseElectronics"].items, "Pliers");
	table.insert(ProceduralDistributions.list["GigamartHouseElectronics"].items, 2);
	table.insert(ProceduralDistributions.list["GigamartHouseElectronics"].items, "Tongs");
	table.insert(ProceduralDistributions.list["GigamartHouseElectronics"].items, 2);

	table.insert(ProceduralDistributions.list["StoreShelfMechanics"].items, "Pliers");
	table.insert(ProceduralDistributions.list["StoreShelfMechanics"].items, 2);
	table.insert(ProceduralDistributions.list["StoreShelfMechanics"].items, "Tongs");
	table.insert(ProceduralDistributions.list["StoreShelfMechanics"].items, 2);

	table.insert(ProceduralDistributions.list["ElectronicStoreMisc"].items, "Pliers");
	table.insert(ProceduralDistributions.list["ElectronicStoreMisc"].items, 2);
	table.insert(ProceduralDistributions.list["ElectronicStoreMisc"].items, "Tongs");
	table.insert(ProceduralDistributions.list["ElectronicStoreMisc"].items, 2);
