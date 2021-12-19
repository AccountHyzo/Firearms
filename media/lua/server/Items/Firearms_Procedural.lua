require "Items/ProceduralDistributions"
require "Items/ItemPicker"

local i, j, d

-- Distributions for ProceduralDistributions.lua
local FirearmsDistributionAmmoBoxes = {
  "GunStoreAmmunition", 3,
  "GunStoreCounter", 1,
  "GunStoreDisplayCase", 1,
  "HuntingLockers", 2,
}

local FirearmsDistributionArmyAmmoBoxes = {
  "ArmyStorageGuns", 5,
}

local FirearmsDistributionCans = {
  "GunStoreAmmunition", 0.5,
  "GunStoreCounter", 0.5,
  "GunStoreDisplayCase", 0.5,
  "HuntingLockers", 1,
  "PoliceStorageGuns", 2,
}

local FirearmsDistributionArmyCans = {
  "LockerArmyBedroom", 2,
  "ArmyStorageGuns", 1,
}

local FirearmsDistribution = {
  "GunStoreDisplayCase", 1,
  "FirearmWeapons", 2,
}

local FirearmsArmyDistribution = {
  "LockerArmyBedroom", 10,
  "ArmyStorageGuns", 10,
}

local FirearmsDistributionShotguns = {
  "PoliceStorageGuns", 1,
  "BarCounterWeapon", 1,
  "GarageFirearms", 0.5,
}

local FirearmsDistributionSilencers = {
  "PoliceStorageGuns", 1,
  "LockerArmyBedroom", 3,
  "ArmyStorageGuns", 5,
}

local FirearmsDistributionAttachments = {
  "PoliceStorageGuns", 2,
  "GunStoreShelf", 3,
  "ArmyStorageGuns", 5,
  "LockerArmyBedroom", 5,
  "GunStoreShelf", 10,
}

local FirearmsDistributionPolice = {
  "PoliceStorageGuns", 1,
  "PrisonGuardLockers", 1,
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
  "ArmySurplusBackpacks", 2,
  "ArmyHangarOutfit", 2,
  "CampingStoreGear", 2,
  "ArmyStorageGuns", 2,
}

local FirearmsDistributionOld = {
  "BarCounterWeapon", 2,
  "GunStoreDisplayCase", 1,
  "PawnShopGunsSpecial", 5,
}

for i = 1, #FirearmsDistributionAmmoBoxes, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets4440Box")
  table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]/2)
  table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets44Box")
  table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1])
  table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, "Base.Bullets22Box")
  table.insert(ProceduralDistributions.list[FirearmsDistributionAmmoBoxes[i]].items, FirearmsDistributionAmmoBoxes[i+1]*10)
end

for i = 1, #FirearmsDistributionArmyAmmoBoxes, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, "Base.762x51Box")
  table.insert(ProceduralDistributions.list[FirearmsDistributionArmyAmmoBoxes[i]].items, FirearmsDistributionArmyAmmoBoxes[i+1])
end

for i = 1, #FirearmsDistribution, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AR15")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/4)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.FN_FAL")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/10)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.FN_FAL_Mag")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/8)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP5")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.MP5Mag")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]/3)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Remington870Wood")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Mossberg500")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Mossberg500Tactical")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17Mag")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Rugerm7722")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.UZI")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.UZIMag")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1])
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Solvent")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistribution[i+1]*2)
end

for i = 1, #FirearmsArmyDistribution, 2 do
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M16A2")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.FN_FAL")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.FN_FAL_Mag")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/3)
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.MP5")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.MP5Mag")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.Remington870Wood")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.Mossberg500Tactical")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]*2)
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.Glock17")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]*2)
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.Glock17Mag")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1])
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.M24Rifle")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]/2)
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, "Base.GunToolKit")
  table.insert(ProceduralDistributions.list[FirearmsArmyDistribution[i]].items, FirearmsArmyDistribution[i+1]*2)
end

for i = 1, #FirearmsDistributionSchoolLocker, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Remington870Wood")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1]/2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Revolver_Short")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1]*2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1])
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Glock17Mag")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1]/2)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.Rugerm7722")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1]/5)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.UZI")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1]/10)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.UZIMag")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1]/10)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.AR15")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1]/10)
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, "Base.556Clip")
  table.insert(ProceduralDistributions.list[FirearmsDistribution[i]].items, FirearmsDistributionSchoolLocker[i+1]/10)
end

for i = 1, #FirearmsDistributionPolice, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP5");
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "MP5Mag");
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "AR15");
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/4);
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "556Clip");
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/4);
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Revolver_Short");
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]*6);
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Glock17");
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]*4);
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "Glock17Mag");
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]*2);
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, "GunToolKit");
  table.insert(ProceduralDistributions.list[FirearmsDistributionPolice[i]].items, FirearmsDistributionPolice[i+1]/2);
end

for i = 1, #FirearmsDistributionShotguns, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "Remington870Wood");
  table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "Mossberg500");
  table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "Mossberg500Tactical");
  table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, "Base.M37")
  table.insert(ProceduralDistributions.list[FirearmsDistributionShotguns[i]].items, FirearmsDistributionShotguns[i+1])
end

for i = 1, #FirearmsDistributionOld, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.ColtPeacemaker")
  table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1])
  table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.Winchester94")
  table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1])
  table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, "Base.Winchester73")
  table.insert(ProceduralDistributions.list[FirearmsDistributionOld[i]].items, FirearmsDistributionOld[i+1]/2)
end

for i = 1, #FirearmsDistributionSilencers, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "9mmSilencer");
  table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, FirearmsDistributionSilencers[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "45Silencer");
  table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, FirearmsDistributionSilencers[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "223Silencer");
  table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, FirearmsDistributionSilencers[i+1]/5);
  table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, "308Silencer");
  table.insert(ProceduralDistributions.list[FirearmsDistributionSilencers[i]].items, FirearmsDistributionSilencers[i+1]/5);
end

for i = 1, #FirearmsDistributionCans, 2 do
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, "AmmoCan9mm");
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, FirearmsDistributionCans[i+1]*2);
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, "AmmoCan223");
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, FirearmsDistributionCans[i+1]/2);
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, "AmmoCan308");
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, FirearmsDistributionCans[i+1]);
end

for i = 1, #FirearmsDistributionArmyCans, 2 do
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, "AmmoCan9mm");
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, FirearmsDistributionCans[i+1]*2);
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, "AmmoCan556");
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, FirearmsDistributionCans[i+1]/2);
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, "AmmoCan762");
table.insert(ProceduralDistributions.list[FirearmsDistributionCans[i]].items, FirearmsDistributionCans[i+1]/2);
end

for i = 1, #FirearmsDistributionAttachments, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "x4-x12Scope");
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/3);
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "ShotgunStock");
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/2);
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "AmmoStock");
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/2);
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "TacticalStock");
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/4);
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "ExtendedRecoilPad");
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/4);
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, "Rifle_Bipod");
  table.insert(ProceduralDistributions.list[FirearmsDistributionAttachments[i]].items, FirearmsDistributionAttachments[i+1]/4);
end

for i = 1, #FirearmsDistributionCleaning, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Solvent");
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, 5);
end

for i = 1, #FirearmsDistributionSlings, 2 do
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling");
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Leather");
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Camo");
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "Sling_Olive");
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]);
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, "AmmoStraps");
  table.insert(ProceduralDistributions.list[FirearmsDistributionCleaning[i]].items, FirearmsDistributionCleaning[i+1]/2);
end

table.insert(ProceduralDistributions.list["PoliceStorageGuns"].items, "Base.556Box")
table.insert(ProceduralDistributions.list["PoliceStorageGuns"].items, 1)
table.insert(ProceduralDistributions.list["PoliceStorageGuns"].items, "Base.Bullets38Box")
table.insert(ProceduralDistributions.list["PoliceStorageGuns"].items, 2)
