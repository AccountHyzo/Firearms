require "Items/ProceduralDistributions"
require "Items/ItemPicker"

local i, j, d

-- Distributions for ProceduralDistributions.lua
local myDistTableBoxes = {
  "GunStoreAmmunition", 1,
  "GunStoreCounter", 1,
  "GunStoreDisplayCase", 1,
  "ArmyStorageGuns", 1,
}

local myDistTableFirearmsCans = {
  "GunStoreAmmunition", 1,
  "GunStoreCounter", 1,
  "LockerArmyBedroom", 2,
  "GunStoreDisplayCase", 1,
  "ArmyStorageGuns", 1,
}

local myDistTableFirearms = {
  "GunStoreDisplayCase", 5,
  "FirearmWeapons", 5,
  "LockerArmyBedroom", 10,
  "ArmyStorageGuns", 10,
}

local myDistTableFirearmsShotguns = {
  "PoliceStorageGuns", 1,
  "BarCounterWeapon", 1,
}

local myDistTableFirearmsSilencers = {
  "PoliceStorageGuns", 1,
  "LockerArmyBedroom", 5,
  "ArmyStorageGuns", 3,
}

local myDistTableFirearmsAttachments = {
  "PoliceStorageGuns", 1,
  "GunStoreShelf", 1,
  "ArmyStorageGuns", 2,
  "LockerArmyBedroom", 5,
  "GunStoreShelf", 2,
}

local myDistTableFirearmsPolice = {
  "PoliceStorageGuns", 1,
  "PrisonGuardLockers", 1,
}

local myDistTableFirearmsSchoolLocker = {
  "SchoolLockers", 0.1,
}

local myDistTableFirearmsCleaning = {
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

local myDistTableFirearmsSlings = {
  "ArmySurplusBackpacks", 2,
  "ArmyHangarOutfit", 2,
  "CampingStoreGear", 2,
}

local myDistTableFirearmsOld = {
  "BarCounterWeapon", 2,
}

for i = 1, #myDistTableBoxes, 2 do
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets4440Box")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.Bullets22Box")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]*2)
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, "Base.762x51Box")
  table.insert(ProceduralDistributions.list[myDistTableBoxes[i]].items, myDistTableBoxes[i+1]/3)
end

for i = 1, #myDistTableFirearms, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.M16A2")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/4)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.FN_FAL")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/6)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.FN_FAL_Mag")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/8)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.MP5")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.MP5Mag")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/3)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Remington870Wood")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]*2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Mossberg500")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]*2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Mossberg500Tactical")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]*2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.ColtPeacemaker")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Glock17")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]*2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Glock17Mag")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1])
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Winchester94")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Winchester73")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Rugerm7722")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]*2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.UZI")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1])
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.UZIMag")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1])
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.M24Rifle")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.GunToolKit")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]*2)
end

for i = 1, #myDistTableFirearmsSchoolLocker, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Remington870Wood")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearmsSchoolLocker[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Revolver_Short")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearmsSchoolLocker[i+1]*2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Glock17")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearmsSchoolLocker[i+1])
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Glock17Mag")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearmsSchoolLocker[i+1]/2)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Rugerm7722")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearmsSchoolLocker[i+1]/5)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.UZI")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearmsSchoolLocker[i+1]/10)
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.UZIMag")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearmsSchoolLocker[i+1]/10)
end

for i = 1, #myDistTableFirearmsPolice, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "AssaultRifle");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]/4);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "M16A2");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]/2);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "556Clip");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]/2);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "MP5");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "MP5Mag");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]/2);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "Revolver_Short");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]*6);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "Glock17");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]*4);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "Glock17Mag");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]*2);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, "GunToolKit");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsPolice[i]].items, myDistTableFirearmsPolice[i+1]/2);
end

for i = 1, #myDistTableFirearmsShotguns, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearmsShotguns[i]].items, "Remington870Wood");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsShotguns[i]].items, 8);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsShotguns[i]].items, "Mossberg500");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsShotguns[i]].items, 8);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsShotguns[i]].items, "Mossberg500Tactical");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsShotguns[i]].items, 5);
end

for i = 1, #myDistTableFirearmsOld, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.ColtPeacemaker")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1])
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Winchester94")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1])
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, "Base.Winchester73")
  table.insert(ProceduralDistributions.list[myDistTableFirearms[i]].items, myDistTableFirearms[i+1]/2)
end

for i = 1, #myDistTableFirearmsSilencers, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearmsSilencers[i]].items, "9mmSilencer");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsSilencers[i]].items, myDistTableFirearmsSilencers[i+1]);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsSilencers[i]].items, "45Silencer");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsSilencers[i]].items, myDistTableFirearmsSilencers[i+1]);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsSilencers[i]].items, "223Silencer");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsSilencers[i]].items, myDistTableFirearmsSilencers[i+1]/5);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsSilencers[i]].items, "308Silencer");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsSilencers[i]].items, myDistTableFirearmsSilencers[i+1]/5);
end

for i = 1, #myDistTableFirearmsCans, 2 do
table.insert(ProceduralDistributions.list[myDistTableFirearmsCans[i]].items, "AmmoCan9mm");
table.insert(ProceduralDistributions.list[myDistTableFirearmsCans[i]].items, myDistTableFirearmsCans[i+1]*2);
table.insert(ProceduralDistributions.list[myDistTableFirearmsCans[i]].items, "AmmoCan556");
table.insert(ProceduralDistributions.list[myDistTableFirearmsCans[i]].items, myDistTableFirearmsCans[i+1]/2);
table.insert(ProceduralDistributions.list[myDistTableFirearmsCans[i]].items, "AmmoCan762");
table.insert(ProceduralDistributions.list[myDistTableFirearmsCans[i]].items, myDistTableFirearmsCans[i+1]/2);
table.insert(ProceduralDistributions.list[myDistTableFirearmsCans[i]].items, "AmmoCan308");
table.insert(ProceduralDistributions.list[myDistTableFirearmsCans[i]].items, myDistTableFirearmsCans[i+1]);
end

for i = 1, #myDistTableFirearmsAttachments, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, "x4-x12Scope");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, myDistTableFirearmsAttachments[i+1]/3);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, "ShotgunStock");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, myDistTableFirearmsAttachments[i+1]/2);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, "AmmoStock");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, myDistTableFirearmsAttachments[i+1]/2);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, "TacticalStock");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, myDistTableFirearmsAttachments[i+1]/4);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, "ExtendedRecoilPad");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, myDistTableFirearmsAttachments[i+1]/4);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, "Rifle_Bipod");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsAttachments[i]].items, myDistTableFirearmsAttachments[i+1]/4);
end

for i = 1, #myDistTableFirearmsCleaning, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, "Solvent");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, 5);
end

for i = 1, #myDistTableFirearmsSlings, 2 do
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, "Sling");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, myDistTableFirearmsCleaning[i+1]);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, "Sling_Leather");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, myDistTableFirearmsCleaning[i+1]);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, "Sling_Camo");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, myDistTableFirearmsCleaning[i+1]);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, "Sling_Olive");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, myDistTableFirearmsCleaning[i+1]);
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, "AmmoStraps");
  table.insert(ProceduralDistributions.list[myDistTableFirearmsCleaning[i]].items, myDistTableFirearmsCleaning[i+1]/2);
end

table.insert(ProceduralDistributions.list["PoliceStorageGuns"].items, "Base.556Box")
table.insert(ProceduralDistributions.list["PoliceStorageGuns"].items, 1)
table.insert(ProceduralDistributions.list["PoliceStorageGuns"].items, "Base.Bullets38Box")
table.insert(ProceduralDistributions.list["PoliceStorageGuns"].items, 2)
