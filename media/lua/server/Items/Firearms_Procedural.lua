require "Items/ProceduralDistributions"
require "Items/ItemPicker"

LootSuppressor = (SandboxVars.Firearms.LootSuppressor)

SpawnAK47 = (SandboxVars.Firearms.SpawnAK47)
SpawnAKM = (SandboxVars.Firearms.SpawnAKM)
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
SpawnColtPeacemaker = (SandboxVars.Firearms.SpawnColtPeacemaker)
SpawnColtAce = (SandboxVars.Firearms.SpawnColtAce)
SpawnColtScout = (SandboxVars.Firearms.SpawnColtScout)
SpawnM733 = (SandboxVars.Firearms.SpawnM733)
SpawnM4 = (SandboxVars.Firearms.SpawnM4)
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

--[[
GunStoreAccessories
GunStoreAmmunition

]]--
local i, j, d

-- Distributions for ProceduralDistributions.lua

local FirearmsDistributionAmmoBoxes = {
	"GunStoreAmmunition", 8,
	"HuntingLockers", 2,
}

local FirearmsDistributionArmyAmmoBoxes = {
	"ArmyStorageGuns", 5,
	"ArmyStorageAmmunition", 8,
	"ArmySurplusAmmoBoxes", 5,
}

local FirearmsDistribution = {
	"FirearmWeapons", 6,
	"GunStoreGuns", 5,
	"DrugShackWeapons", 4,
}

local FirearmsDistributionPistols = {
	"GunStorePistols", 6,
	"DrugLabGuns", 4,
	"DrugShackWeapons", 4,
}

local FirearmsDistributionRifles = {
	"GunStoreRifles", 5,
	"PoliceEvidence", 3,
	"DrugLabGuns", 1,
	"DrugShackWeapons", 2,
}

local FirearmsDistributionMagazines = {
	"GunStoreMagsAmmo", 8,
	"DrugShackWeapons", 8,
}

local FirearmsArmyDistribution = {
	"LockerArmyBedroom", 3,
	"ArmyStorageGuns", 8,
	"DrugLabGuns", 1,
	"DrugShackWeapons", 2,
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
	"PoliceStorageGuns", 0.001 * (LootSuppressor * 1.25),
	"LockerArmyBedroom", 0.01 * (LootSuppressor * 1.25),
	"ArmyStorageGuns", 0.005  * (LootSuppressor * 2),
	"GunStoreAccessories", 0.0005  * (LootSuppressor * 1.2),
	"DrugLabGuns", 0.001  * (LootSuppressor * 1.2),
}

local FirearmsDistributionAttachments = {
	"PoliceStorageGuns", 3,
	"ArmyStorageGuns", 6,
	"LockerArmyBedroom", 3,
	"GunStoreAccessories", 6,
	"DrugLabGuns", 3,
}

local FirearmsDistributionStocks = {
	"GunStoreAccessories", 1,
}

local FirearmsDistributionPoliceAmmo = {
	"PoliceStorageAmmunition", 7,
	"PrisonGuardLockers", 3,
}

local FirearmsDistributionPolice = {
	"PoliceStorageGuns", 6,
	"PrisonGuardLockers", 3,
}

local FirearmsDistributionSchoolLocker = {
	"SchoolLockers", 0.005,
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
	"ArmyHangarOutfit", 1,
	"CampingStoreGear", 1,
	"ArmyStorageGuns", 2,
	"GunStoreAccessories", 1,
}

local FirearmsDistributionOld = {
	"BarCounterWeapon", 5,
	"PawnShopGunsSpecial", 8,
}

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
	if SpawnAKM then
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.AKM_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, FirearmsDistributionMagazines[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionMagazines[i]].items, "Base.AKM_Mag")
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
	if SpawnAK47 or SpawnSKS or SpawnAKM then
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
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/10)
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
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/10)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/8)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/6)
	end
	if SpawnAKM then
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AKM")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AKM_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, FirearmsDistributionRifles[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistributionRifles[i]].items, "Base.AKM_Mag")
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
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP5Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP5Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP510")
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
	if SpawnAKM then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AKM")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AKM_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AKM_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
	end
	if SpawnAK47 then
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AK47")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/10)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/8)
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AK_Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/6)
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
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.556Clip")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.556Clip")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
	end
	if SpawnM24 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M24Rifle")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/4)
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
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.G3_Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
	end
	if SpawnM60 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M60")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/20)
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M60Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M60Mag")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
	end
	if SpawnMP5 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "MP5SD");
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/10);
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
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/10)
	end
	if SpawnM4 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M4")
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/10)
	end
	if SpawnM37 then
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "M37");
		table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]);
	end
	table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.GunToolKit")
	table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
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
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/8)
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, "Base.556Clip")
		table.insert(ProceduralDistributions.list[FirearmsDistributionSchoolLocker[i]].items, FirearmsDistributionSchoolLocker[i+1]/5)
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
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/10);
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
	table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]);
	if SpawnGlock17 then
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Base.Glock17")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]*2)
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]*4)
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Base.Glock17Mag")
		table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1])
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
		table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]/4);
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
	if SpawnWinchester94 then
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
