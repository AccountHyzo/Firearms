require "Items/ProceduralDistributions"
require "Items/ItemPicker"

LootSuppressor = (SandboxVars.Firearms.LootSuppressor)

SpawnAK47 = (SandboxVars.Firearms.SpawnAK47)
SpawnSKS = (SandboxVars.Firearms.SpawnSKS)
SpawnM1Garand = (SandboxVars.Firearms.SpawnM1Garand)
SpawnMP5 = (SandboxVars.Firearms.SpawnMP5)
SpawnMAC10 = (SandboxVars.Firearms.SpawnMAC10)
SpawnUZI = (SandboxVars.Firearms.SpawnUZI)
SpawnSPAS12 = (SandboxVars.Firearms.SpawnSPAS12)
SpawnWinchester73 = (SandboxVars.Firearms.SpawnWinchester73)
SpawnWinchester94 = (SandboxVars.Firearms.SpawnWinchester94)
SpawnRossi92 = (SandboxVars.Firearms.SpawnRossi92)
SpawnPython = (SandboxVars.Firearms.SpawnPython)
SpawnAR15 = (SandboxVars.Firearms.SpawnAR15)
SpawnColtAce = (SandboxVars.Firearms.SpawnColtAce)
SpawnColtScout = (SandboxVars.Firearms.SpawnColtScout)
SpawnM733 = (SandboxVars.Firearms.SpawnM733)
SpawnGlock17 = (SandboxVars.Firearms.SpawnGlock17)
SpawnAnaconda = (SandboxVars.Firearms.SpawnAnaconda)
SpawnFNFal = (SandboxVars.Firearms.SpawnFNFal)
SpawnG3 = (SandboxVars.Firearms.SpawnG3)
SpawnM37 = (SandboxVars.Firearms.SpawnM37)
SpawnM16A2 = (SandboxVars.Firearms.SpawnM16A2)
SpawnM24 = (SandboxVars.Firearms.SpawnM24)
SpawnRuger22 = (SandboxVars.Firearms.SpawnRuger22)
SpawnMossberg500 = (SandboxVars.Firearms.SpawnMossberg500)
SpawnMossberg500Tactical = (SandboxVars.Firearms.SpawnMossberg500Tactical)
SpawnRemington870 = (SandboxVars.Firearms.SpawnRemington870)
SpawnICA19 = (SandboxVars.Firearms.SpawnICA19)

SpawnSuppressors = (SandboxVars.Firearms.SpawnSuppressors)
SpawnHandgunSuppressors = (SandboxVars.Firearms.SpawnHandgunSuppressors)
SpawnRifleSuppressors = (SandboxVars.Firearms.SpawnRifleSuppressors)
SpawnShotgunSuppressors = (SandboxVars.Firearms.SpawnShotgunSuppressors)

SpawnAmmocraft = (SandboxVars.Firearms.Ammocraft)

--[[
GunStoreAccessories
GunStoreAmmunition

]]--
local i, j, d

-- Distributions for ProceduralDistributions.lua

local FirearmsDistributionBoxes = {
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

local FirearmsDistributionMolds = {
	"CrateTools", 0.1,
	"LockerArmyBedroom", 1,
	"GarageFirearms", 6,
	"CrateMetalwork", 1,
	"GarageMetalwork", 0.1,
	"CrateBlacksmithing", 4,
	"PoliceEvidence", 4,
}

local FirearmsDistributionLit = {
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

local FirearmsDistributionTools = {
	"LockerArmyBedroom", 1,
	"CrateBlacksmithing", 1,
	"GarageFirearms", 2,
	"StoreShelfMechanics", 1,
	"GarageTools", 0.1,
	"CrateTools", 1,
	"GigamartTools", 0.1,
	"GarageMetalwork", 0.1,
}

local FirearmsDistributionChemicals = {
	"CrateFertilizer", 25,
}

local FirearmsDistributionAmmoBoxes = {
	"GunStoreAmmunition", 10,
	"HuntingLockers", 2,
}

local FirearmsDistributionArmyAmmoBoxes = {
	"ArmyStorageGuns", 5,
	"ArmyStorageAmmunition", 10,
	"ArmySurplusAmmoBoxes", 5,
}

local FirearmsDistribution = {
	"FirearmWeapons", 10,
	"GunStoreGuns", 5,
	"DrugShackWeapons", 5,
}

local FirearmsDistributionPistols = {
	"GunStorePistols", 10,
	"DrugLabGuns", 10,
	"DrugShackWeapons", 10,
}

local FirearmsDistributionRifles = {
	"GunStoreRifles", 10,
	"PoliceEvidence", 5,
	"DrugLabGuns", 2,
	"DrugShackWeapons", 2,
}

local FirearmsDistributionMagazines = {
	"GunStoreMagsAmmo", 10,
	"DrugShackWeapons", 10,
}

local FirearmsArmyDistribution = {
	"LockerArmyBedroom", 5,
	"ArmyStorageGuns", 10,
	"DrugLabGuns", 1,
	"DrugShackWeapons", 1,
}

local FirearmsDistributionShotguns = {
	"PoliceStorageGuns", 10,
	"BarCounterWeapon", 5,
	"GarageFirearms", 5,
	"GunStoreShotguns", 10,
	"DrugLabGuns", 5,
	"DrugShackWeapons", 5,
}

local FirearmsDistributionSilencers = {
	"PoliceStorageGuns", 0.05 * (LootSuppressor * 1.25),
	"LockerArmyBedroom", 0.075 * (LootSuppressor * 1.25),
	"ArmyStorageGuns", 0.075  * (LootSuppressor * 2),
	"GunStoreAccessories", 0.025  * (LootSuppressor * 1.2),
	"DrugLabGuns", 0.025  * (LootSuppressor * 1.2),
}

local FirearmsDistributionAttachments = {
	"PoliceStorageGuns", 5,
	"ArmyStorageGuns", 10,
	"LockerArmyBedroom", 5,
	"GunStoreAccessories", 10,
	"DrugLabGuns", 5,
}

local FirearmsDistributionStocks = {
	"GunStoreAccessories", 5,
}

local FirearmsDistributionPoliceAmmo = {
	"PoliceStorageAmmunition", 10,
	"PrisonGuardLockers", 5,
}

local FirearmsDistributionPolice = {
	"PoliceStorageGuns", 10,
	"PrisonGuardLockers", 5,
}

local FirearmsDistributionSchoolLocker = {
	"SchoolLockers", 0.1,
}

local FirearmsDistributionCleaning = {
	"StoreShelfMechanics", 5,
	"ToolStoreMetalwork", 2,
	"ToolStoreCarpentry", 0.5,
	"ToolStoreMisc", 5,
	"JanitorChemicals", 5,
	"CrateTools", 0.5,
	"CrateMechanics", 0.5,
	"GarageTools", 0.5,
	"LockerArmyBedroom", 5,
}

local FirearmsDistributionSlings = {
	"ArmyHangarOutfit", 2,
	"CampingStoreGear", 2,
	"ArmyStorageGuns", 2,
	"GunStoreAccessories", 1,
}

local FirearmsDistributionOld = {
	"BarCounterWeapon", 3,
	"PawnShopGunsSpecial", 5,
}

for i = 1, #FirearmsDistributionBoxes, 2 do
	if SpawnAmmocraft then
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.Bullets9mm_casingbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.Bullets45_casingbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.Bullets44_casingbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.Bullets38_casingbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.308Bullets_casingbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]/3)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.223Bullets_casingbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]/3)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.ShotgunShells_casingbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.Bullets9mm_tipbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.Bullets45_tipbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.Bullets44_tipbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.Bullets38_tipbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.308Bullets_tipbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]/3)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.223Bullets_tipbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]/3)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.ShotgunShells_tipbox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.SP_Primers_box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.LP_Primers_box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.R_Primers_box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.SG_Primers_box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, "Base.GunpowderJar")
		table.insert(ProceduralDistributions.list[FirearmsDistributionBoxes[i]].items, FirearmsDistributionBoxes[i+1]*2)
	end
end

for i = 1, #FirearmsDistributionMolds, 2 do
	if SpawnAmmocraft then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, "Base.9mmBulletsMold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, FirearmsDistributionMolds[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, "Base.45BulletsMold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, FirearmsDistributionMolds[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, "Base.44BulletsMold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, FirearmsDistributionMolds[i+1]/3)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, "Base.38BulletsMold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, FirearmsDistributionMolds[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, "Base.308BulletsMold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, FirearmsDistributionMolds[i+1]/5)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, "Base.223BulletsMold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, FirearmsDistributionMolds[i+1]/5)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, "Base.ShotgunShellsMold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMolds[i]].items, FirearmsDistributionMolds[i+1]*2)
	end
end

for i = 1, #FirearmsDistributionLit, 2 do
	if SpawnAmmocraft then
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, "Base.GunnutMonthly1")
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, FirearmsDistributionLit[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, "Base.GunnutMonthly2")
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, FirearmsDistributionLit[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, "Base.GunnutMonthly3")
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, FirearmsDistributionLit[i+1]*0.8)
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, "Base.GunnutMonthly4")
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, FirearmsDistributionLit[i+1]*0.6)
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, "Base.GunnutMonthly5")
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, FirearmsDistributionLit[i+1]*0.4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, "Base.GunnutMonthly6")
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, FirearmsDistributionLit[i+1]*0.2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, "Base.GunnutBible")
		table.insert(ProceduralDistributions.list[FirearmsDistributionLit[i]].items, FirearmsDistributionLit[i+1]/10)
	end
end

for i = 1, #FirearmsDistributionTools, 2 do
	if SpawnAmmocraft then
	table.insert(ProceduralDistributions.list[FirearmsDistributionTools[i]].items, "Base.Reloadpress")
	table.insert(ProceduralDistributions.list[FirearmsDistributionTools[i]].items, FirearmsDistributionTools[i+1]/4)
	end
end

for i = 1, #FirearmsDistributionChemicals, 2 do
	if SpawnAmmocraft then
		table.insert(ProceduralDistributions.list[FirearmsDistributionChemicals[i]].items, "Base.Sulfur")
		table.insert(ProceduralDistributions.list[FirearmsDistributionChemicals[i]].items, FirearmsDistributionChemicals[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionChemicals[i]].items, "Base.Saltpeter")
		table.insert(ProceduralDistributions.list[FirearmsDistributionChemicals[i]].items, FirearmsDistributionChemicals[i+1])
	end
end

--[[
			FirearmsDistributionMagazines
]]--

for i = 1, #FirearmsDistributionMagazines, 2 do
	if SpawnWinchester94 or SpawnPython then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets357Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets357Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
	end
	if SpawnRuger22 or SpawnColtAce or SpawnColtScout then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.22Clip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.22Clip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets22Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets22Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1])
	end
	if SpawnM1Garand then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.M1GarandClip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.M1GarandClip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets3006Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets3006Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/4)
	end
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.MP510Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.MP510Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets10mmBox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets10mmBox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
	end
	if SpawnColtPeacemaker or SpawnWinchester73 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets4440Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.Bullets4440Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/4)
	end
	if SpawnAK47 or SpawnSKS then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.762x39Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.762x39Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/4)
	end
	if SpawnFNFal then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.FN_FAL_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.FN_FAL_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
	end
	if SpawnG3 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
	end
	if SpawnGlock17 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
	end
	table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, "Base.762x51Box")
	table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, FirearmsDistributionArmyAmmoBoxes[i+1]/2)
	table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, "Base.762x51Box")
	table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, FirearmsDistributionArmyAmmoBoxes[i+1]/2)
end

--[[
			FirearmsDistributionAmmoBoxes
]]--

for i = 1, #FirearmsDistributionAmmoBoxes, 2 do
	table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets44Box")
	table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1])
	table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets44Box")
	table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/2)
	if SpawnWinchester94 or SpawnPython then
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets357Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets357Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/2)
	end
	if SpawnRuger22 or SpawnColtAce or SpawnColtScout then
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets22Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]*10)
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets22Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]*5)
	end
	if SpawnM1Garand then
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets3006Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets3006Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/4)
	end
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets10mmBox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets10mmBox")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/2)
	end
	if SpawnColtPeacemaker or SpawnWinchester73 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets4440Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets4440Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/4)
	end
	if SpawnAK47 or SpawnSKS then
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.762x39Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.762x39Box")
		table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/4)
	end
end

--[[
			FirearmsDistributionArmyAmmoBoxes
]]--

for i = 1, #FirearmsDistributionArmyAmmoBoxes, 2 do
	table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, "Base.762x51Box")
	table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, FirearmsDistributionArmyAmmoBoxes[i+1])
	table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, "Base.762x51Box")
	table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, FirearmsDistributionArmyAmmoBoxes[i+1]/2)
end

--[[
			FirearmsDistributionPistols
]]--

for i = 1, #FirearmsDistributionPistols, 2 do
	if SpawnGlock17 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.Glock17")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
	end
	if SpawnICA19 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.ICA19")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.ICA19_Gold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1]/4)
	end
	if SpawnPython then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.ColtPython")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.ColtPythonHunter")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
	end
	if SpawnAnaconda then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.ColtAnaconda")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
	end
	if SpawnColtScout then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.ColtSingleAction22")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
	end
	if SpawnColtAce then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.ColtAce")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.22Clip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, "Base.22Clip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPistols[i]].items, FirearmsDistributionPistols[i+1])
	end
end

--[[
			FirearmsDistributionRifles
]]--

for i = 1, #FirearmsDistributionRifles, 2 do
	if SpawnAR15 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AR15")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
	end
	if SpawnFNFal then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.FN_FAL")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.FN_FAL_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
	end
	if SpawnG3 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.G3")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
	end
	if SpawnRossi92 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.Rossi92");
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2);
	end
	if SpawnRuger22 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.Rugerm7722")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]*2)
	end
	if SpawnM1Garand then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.M1Garand")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.M1GarandClip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.M1GarandClip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/4)
	end
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.MP5")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.MP5SD")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.MP5Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.MP5Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.MP510")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.MP510Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.MP510Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
	end
	if SpawnUZI then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.UZI")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.UZIMag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.UZIMag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
	end
	if SpawnMAC10 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.Mac10")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.Mac10Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.Mac10Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
	end
	if SpawnAK47 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AK47")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
	end
	if SpawnSKS then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.SKS")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]*2)
	end
end

--[[
			FirearmsDistribution
]]--

for i = 1, #FirearmsDistribution, 2 do
	if SpawnAR15 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AR15")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
	end
	if SpawnFNFal then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.FN_FAL")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.FN_FAL_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
	end
	if SpawnG3 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.G3")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
	end
	if SpawnRemington870 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Remington870Wood");
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]);
	end
	if SpawnMossberg500 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Mossberg500");
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]);
	end
	if SpawnMossberg500Tactical then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Mossberg500Tactical");
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]);
	end
	if SpawnM37 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.M37");
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]);
	end
	if SpawnGlock17 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
	end
	if SpawnICA19 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.ICA19")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/6)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.ICA19_Gold")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/8)
	end
	if SpawnPython then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.ColtPython")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.ColtPythonHunter")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
	end
	if SpawnAnaconda then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.ColtAnaconda")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
	end
	if SpawnColtScout then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.ColtSingleAction22")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
	end
	if SpawnRossi92 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Rossi92");
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2);
	end
	if SpawnColtAce then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.ColtAce")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.22Clip")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.22Clip")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
	end
	if SpawnRuger22 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Rugerm7722")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
	end
	if SpawnM1Garand then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.M1Garand")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.M1GarandClip")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.M1GarandClip")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/4)
	end
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP5")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP5SD")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP5Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP5Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP510")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP510Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP510Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
	end
	if SpawnUZI then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.UZI")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.UZIMag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.UZIMag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
	end
	if SpawnMAC10 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Mac10")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Mac10Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Mac10Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
	end
	if SpawnSPAS12 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.SPAS12")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
	end
	if SpawnAK47 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AK47")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
	end
	if SpawnSKS then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.SKS")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
	end
end

--[[
			FirearmsArmyDistribution
]]--

for i = 1, #FirearmsArmyDistribution, 2 do
	if SpawnM16A2 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M16A2")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.556Clip")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.556Clip")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
	end
	if SpawnM24 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M24Rifle")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
	end
	if SpawnFNFal then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.FN_FAL")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.FN_FAL_Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.FN_FAL_Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
	end
	if SpawnG3 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.G3")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/4)
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
	end
	if SpawnM60 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M60")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/6)
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M60Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M60Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
	end
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "MP5");
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "MP5SD");
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "MP5Mag");
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "MP5Mag");
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2);
	end
	if SpawnMossberg500Tactical then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Mossberg500Tactical");
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]*2);
	end
	if SpawnM733 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M733")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/4)
	end
	if SpawnRemington870 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Remington870Wood");
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]*2);
	end
	table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.GunToolKit")
	table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]*2)
	table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.GunToolKit")
	table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
	table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.GunToolKit")
	table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/4)
end

for i = 1, #FirearmsDistributionSchoolLocker, 2 do
	table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.Revolver_Short")
	table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]*2)
	if SpawnGlock17 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.Glock17")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/2)
	end
	if SpawnICA19 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.ICA19")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.ICA19_Gold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/4)
	end
	if SpawnRuger22 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.Rugerm7722")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/2)
	end
	if SpawnUZI then
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.UZI")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/5)
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.UZIMag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/2)
	end
	if SpawnAR15 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.AR15")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.556Clip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1])
	end
end

--[[
			FirearmsDistributionPolice
]]--

for i = 1, #FirearmsDistributionPolice, 2 do
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP5");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP5SD");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP5Mag");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP5Mag");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP510");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP510Mag");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP510Mag");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
	end
	if SpawnAR15 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "AR15");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "556Clip");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "556Clip");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/4);
	end
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Revolver_Short");
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]*6);
	if SpawnGlock17 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Base.Glock17")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]*4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1])
	end
	if SpawnICA19 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Base.ICA19")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/15)
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Base.ICA19_Gold")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/20)
	end
	if SpawnSPAS12 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "LAW12");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]);
	end
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "GunLight");
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/3);
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Rifle_Flashlight");
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/3);
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "GunToolKit");
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "GunToolKit");
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
end

for i = 1, #FirearmsDistributionPoliceAmmo, 2 do
	if SpawnWinchester94 or SpawnPython then
	table.insert(ProceduralDistributions.list[FirearmsDistributionPoliceAmmo[i]].items, "Bullets357Box");
	table.insert(ProceduralDistributions.list[FirearmsDistributionPoliceAmmo[i]].items, FirearmsDistributionPoliceAmmo[i+1]);
	table.insert(ProceduralDistributions.list[FirearmsDistributionPoliceAmmo[i]].items, "Bullets357Box");
	table.insert(ProceduralDistributions.list[FirearmsDistributionPoliceAmmo[i]].items, FirearmsDistributionPoliceAmmo[i+1]/2);
	table.insert(ProceduralDistributions.list[FirearmsDistributionPoliceAmmo[i]].items, "Bullets357Box");
	table.insert(ProceduralDistributions.list[FirearmsDistributionPoliceAmmo[i]].items, FirearmsDistributionPoliceAmmo[i+1]/4);
	end
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Bullets10mmBox");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Bullets10mmBox");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Bullets10mmBox");
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
	end
end

--[[
			FirearmsDistributionShotguns
]]--

for i = 1, #FirearmsDistributionShotguns, 2 do
	if SpawnRemington870 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "Remington870Wood");
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]);
	end
	if SpawnMossberg500 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "Mossberg500");
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]);
	end
	if SpawnMossberg500Tactical then
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "Mossberg500Tactical");
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]);
	end
	if SpawnM37 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "Base.M37");
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]);
	end
	if SpawnSPAS12 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "SPAS12");
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]);
	end
end

--[[
			FirearmsDistributionOld
]]--

for i = 1, #FirearmsDistributionOld, 2 do
	if SpawnColtPeacemaker then
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.ColtPeacemaker");
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1]);
	end
	if SpawnWinchester93 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.Winchester94");
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1]);
	end
	if SpawnWinchester73 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.Winchester73");
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1]/2);
	end
	if SpawnM1Garand then
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.M1Garand");
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.M1GarandClip");
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1]/2)
	end
	if SpawnSKS then
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.SKS");
		table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1]/4)
	end
end

--[[
			FirearmsDistributionSilencers
]]--

if SpawnSuppressors then
	if SpawnHandgunSuppressors then
		for i = 1, #FirearmsDistributionSilencers, 2 do
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "9mmSilencer");
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, FirearmsDistributionSilencers[i+1]*SandboxVars.Firearms.LootSuppressor);
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "45Silencer");
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, FirearmsDistributionSilencers[i+1]*SandboxVars.Firearms.LootSuppressor);
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "10mmSilencer");
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, FirearmsDistributionSilencers[i+1]*SandboxVars.Firearms.LootSuppressor);
		end
	end
	if SpawnRifleSuppressors then
		for i = 1, #FirearmsDistributionSilencers, 2 do
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "223Silencer");
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, (FirearmsDistributionSilencers[i+1]/2)*SandboxVars.Firearms.LootSuppressor);
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "308Silencer");
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, (FirearmsDistributionSilencers[i+1]/2)*SandboxVars.Firearms.LootSuppressor);
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "22Silencer");
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, (FirearmsDistributionSilencers[i+1]/4)*SandboxVars.Firearms.LootSuppressor);
		end
	end
	if SpawnShotgunSuppressors then
		for i = 1, #FirearmsDistributionSilencers, 2 do
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "ShotgunSilencer");
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, (FirearmsDistributionSilencers[i+1]/4)*SandboxVars.Firearms.LootSuppressor);
		end
	end
	if SpawnRevolverSuppressors then
		for i = 1, #FirearmsDistributionSilencers, 2 do
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "38Silencer");
			table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, (FirearmsDistributionSilencers[i+1]/2)*SandboxVars.Firearms.LootSuppressor);
		end
	end
end

--[[
			FirearmsDistributionAttachments
]]--

for i = 1, #FirearmsDistributionAttachments, 2 do
	table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "x4-x12Scope");
	table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/2);
	table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "Rifle_Flashlight");
	table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]);
	if SpawnPython then
		table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "x2LeupoldScope");
		table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/2);
	end
	table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "AmmoStock");
	table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]);
	if SpawnM24 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "ExtendedRecoilPad");
		table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "Rifle_Bipod");
		table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/2);
	end
end

--[[
			FirearmsDistributionStocks
]]--

for i = 1, #FirearmsDistributionStocks, 2 do
	table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "AmmoStock");
	table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]);
	if SpawnMossberg500Tactical then
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "ShotgunStock");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "ShotgunStock");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "TacticalStock");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "TacticalStock");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]/2);
	end
	if SpawnSPAS12 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "SPAS12_Stock_Extended");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "SPAS12_Stock_Extended");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]/2);
	end
	if SpawnMAC10 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "Mac10_Stock_Extended");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "Mac10_Stock_Extended");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]/2);
	end
	if SpawnUZI then
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "UZI_Stock_Extended");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]);
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "UZI_Stock_Extended");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]/2);
	end
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "MP5_Stock_Extended");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]/2);
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, "MP5_Stock_Extended");
		table.insert(ProceduralDistributions.list[FirearmsDistributionStocks[i]].items, FirearmsDistributionStocks[i+1]/2);
	end
end

--[[
			FirearmsDistributionCleaning
]]--

for i = 1, #FirearmsDistributionCleaning, 2 do
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Solvent");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, 10);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Solvent");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, 5);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Solvent");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, 5);
end

--[[
			FirearmsDistributionSlings
]]--

for i = 1, #FirearmsDistributionSlings, 2 do
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]/2);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Leather");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Leather");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]/2);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Camo");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Camo");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]/2);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Olive");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Olive");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]/2);
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "AmmoStraps");
	table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]/2);
end
