require "Definitions/AttachedWeaponDefinitions"
--require "Items/ItemPicker"

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

-- Distributions for AttachedWeaponDefinitions.lua

local FirearmsHandgunHolster = {
	"handgunHolsterShoulder",
}

local FirearmsHandgunHolsterPolice = {
	"handgunHolsterPolice",
	"handgunHolsterRanger",
	"handgunHolsterSheriff",
	"handgunHolsterSWAT",
}

local FirearmsHandgunHolsterSheriff = {
	"handgunHolsterRanger",
	"handgunHolsterSheriff",
}

local FirearmsHandgunHolster = {
	"handgunHolsterArmy",
	"handgunHolsterSWAT",
	"handgunHolsterGhillie",
}

local FirearmsGunOnBack = {
	"shotgunPolice",
	"gunOnBackSWAT",
	"assaultRifleOnBack",
	"assaultRifleArmyOnBack",
	"gunOnBackMisc",
	"gunOnBackHunter",
	"gunOnBackBagSurvivalist",
	"huntingRifleOnBack",
	"rifleOnBackGhillie",
	"gunOnBackCrime",
	"gunOnBackBountyHunter",
}

local FirearmsGunOnBackPolice = {
	"shotgunPolice",
	"gunOnBackSWAT",
	"assaultRifleOnBack",
	"gunOnBackBagSurvivalist",
}

local FirearmsGunOnBackSurvivalist = {
	"gunOnBackMisc",
	"gunOnBackHunter",
	"gunOnBackBagSurvivalist",
	"gunOnBackCrime",
}

local FirearmsGunOnBackArmy = {
	"assaultRifleArmyOnBack",
	"rifleOnBackGhillie",
}

for i = 1, #FirearmsHandgunHolsterPolice, 1 do
	if SpawnGlock17 then
		table.insert(AttachedWeaponDefinitions[FirearmsHandgunHolsterPolice[i]].weapons, "Base.Glock17")
	end
end

for i = 1, #FirearmsHandgunHolsterSheriff, 1 do
	if SpawnPython then
		table.insert(AttachedWeaponDefinitions[FirearmsHandgunHolsterSheriff[i]].weapons, "Base.ColtPython")
	end
  if SpawnAnaconda then
    table.insert(AttachedWeaponDefinitions[FirearmsHandgunHolsterSheriff[i]].weapons, "Base.ColtAnaconda")
  end
  if SpawnColtPeacemaker then
    table.insert(AttachedWeaponDefinitions[FirearmsHandgunHolsterSheriff[i]].weapons, "Base.ColtPeacemaker")
  end
end

for i = 1, #FirearmsGunOnBackPolice, 1 do
	if SpawnMP5 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackPolice[i]].weapons, "Base.MP5")
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackPolice[i]].weapons, "Base.MP510")
	end
	if SpawnM37 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackPolice[i]].weapons, "Base.M37")
	end
	if SpawnSPAS12 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackPolice[i]].weapons, "Base.LAW12")
	end
end

for i = 1, #FirearmsGunOnBackSurvivalist, 1 do
	if SpawnWinchester94 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackSurvivalist[i]].weapons, "Base.Winchester94")
	end
	if SpawnWinchester73 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackSurvivalist[i]].weapons, "Base.Winchester73")
	end
	if SpawnM1Garand then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackSurvivalist[i]].weapons, "Base.M1Garand")
	end
	if SpawnSKS then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackSurvivalist[i]].weapons, "Base.SKS")
	end
	if SpawnM37 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackSurvivalist[i]].weapons, "Base.M37")
	end
	if SpawnUZI then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackSurvivalist[i]].weapons, "Base.Uzi")
	end
	if SpawnMAC10 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackSurvivalist[i]].weapons, "Base.Mac10")
	end
	if SpawnAK47 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackSurvivalist[i]].weapons, "Base.AK47")
	end
end

for i = 1, #FirearmsGunOnBackArmy, 1 do
	if SpawnM16A2 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackArmy[i]].weapons, "Base.M16A2")
	end
	if SpawnM733 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackArmy[i]].weapons, "Base.M733")
	end
	if SpawnM4 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackArmy[i]].weapons, "Base.M4")
	end
	if SpawnM24 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackArmy[i]].weapons, "Base.M24Rifle")
	end
	if SpawnMP5 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackArmy[i]].weapons, "Base.MP5SD")
	end
	if SpawnG3 then
		table.insert(AttachedWeaponDefinitions[FirearmsGunOnBackArmy[i]].weapons, "Base.G3")
	end
end
