-- define weapons to be attached to zombies when creating them
-- random knives inside their neck, spear in their stomach, meatcleaver in their back...
-- this is used in IsoZombie.addRandomAttachedWeapon()

AttachedWeaponDefinitions = AttachedWeaponDefinitions or {};

AttachedWeaponDefinitions.chanceOfAttachedWeapon = 6; -- Global chance of having an attached weapon, if we pass this we gonna add randomly one from the list

-- random spear in the stomach
AttachedWeaponDefinitions.spearStomach = {
	chance = 5, -- chance is total, we'll get the chance of every definition and take one from there
	weaponLocation = {"Stomach"}, -- defined in AttachedLocations.lua
	bloodLocations = {"Torso_Lower","Back"}, -- we add blood & hole on this part
	addHoles = true, -- if true, you need at least one bloodLocation
	daySurvived = 30, -- needed day of survival before seeing this one
	weapons = { -- list of possible weapons, we'll take one randomly from there
		"Base.SpearKnife",
		"Base.SpearCrafted",
		"Base.SpearHuntingKnife",
		"Base.SpearScrewdriver",
		"Base.SpearScissors",
		"Base.SpearScalpel",
		"Base.SpearButterKnife",
		"Base.SpearHuntingKnife",
	},
}

-- katana in stomach
AttachedWeaponDefinitions.katanaStomach = {
	chance = 1,
	weaponLocation = {"Stomach"},
	bloodLocations = {"Torso_Lower","Back"},
	addHoles = true,
	daySurvived = 60,
	weapons = {
		"Base.Katana",
	},
}

-- meat cleaver & some others low weapons (Hand Axes..) in the back
AttachedWeaponDefinitions.meatCleaverBackLowQuality = {
	chance = 5,
	weaponLocation = {"MeatCleaver in Back"},
	bloodLocations = {"Back"},
	addHoles = true,
	daySurvived = 0,
	weapons = {
		"Base.MeatCleaver",
		"Base.HandAxe",
	},
}

-- Better weapons in the back
AttachedWeaponDefinitions.meatCleaverBack = {
	chance = 1,
	weaponLocation = {"MeatCleaver in Back"},
	bloodLocations = {"Back"},
	addHoles = true,
	daySurvived = 20,
	weapons = {
		"Base.Machete",
		"Base.HandAxe",
	},
}

-- random knife (low quality weapon) in the back
AttachedWeaponDefinitions.knifeLowQualityBack = {
	chance = 30,
	weaponLocation = {"Knife in Back"},
	bloodLocations = {"Back"},
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.HandFork",
		"Base.Fork",
		"Base.Screwdriver",
		"Base.ButterKnife",
		"Base.Scissors",
		"Base.LetterOpener",
	},
}

-- Axe in the back
AttachedWeaponDefinitions.axeBack = {
	chance = 2,
	weaponLocation = {"Axe Back"},
	bloodLocations = {"Back"},
	addHoles = true,
	daySurvived = 15,
	weapons = {
		"Base.Axe",
	},
}

-- random knife (better quality) in the back
AttachedWeaponDefinitions.knifeBack = {
	chance = 10,
	weaponLocation = {"Knife in Back"},
	bloodLocations = {"Back"},
	addHoles = false,
	daySurvived = 10,
	weapons = {
		"Base.HuntingKnife",
		"Base.BreadKnife",
		"Base.KitchenKnife",
	},
}

-- random knife (low quality weapon) in the left leg
AttachedWeaponDefinitions.knifeLowQualityLeftLeg = {
	chance = 30,
	weaponLocation = {"Knife Left Leg"},
	bloodLocations = {"UpperLeg_L"},
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.HandFork",
		"Base.Fork",
		"Base.Screwdriver",
		"Base.ButterKnife",
		"Base.Scissors",
		"Base.LetterOpener",
	},
}

-- random knife (better quality) in the left leg
AttachedWeaponDefinitions.knifeLeftLeg = {
	chance = 10,
	weaponLocation = {"Knife Left Leg"},
	bloodLocations = {"UpperLeg_L"},
	addHoles = false,
	daySurvived = 10,
	weapons = {
		"Base.HuntingKnife",
		"Base.BreadKnife",
		"Base.KitchenKnife",
	},
}

-- random knife (low quality weapon) in the right leg
AttachedWeaponDefinitions.knifeLowQualityLeftLeg = {
	chance = 30,
	weaponLocation = {"Knife Right Leg"},
	bloodLocations = {"UpperRight_L"},
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.HandFork",
		"Base.Fork",
		"Base.Screwdriver",
		"Base.ButterKnife",
		"Base.Scissors",
		"Base.LetterOpener",
	},
}

-- random knife (better quality) in the right leg
AttachedWeaponDefinitions.knifeRightLeg = {
	chance = 10,
	weaponLocation = {"Knife Right Leg"},
	bloodLocations = {"UpperRight_L"},
	addHoles = false,
	daySurvived = 10,
	weapons = {
		"Base.HuntingKnife",
		"Base.BreadKnife",
		"Base.KitchenKnife",
	},
}

-- random knife (low quality weapon) in the shoulder
AttachedWeaponDefinitions.knifeLowQualityShoulder = {
	chance = 30,
	weaponLocation = {"Knife Shoulder"},
	bloodLocations = {"UpperArm_L", "Torso_Upper"},
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.HandFork",
		"Base.Fork",
		"Base.Screwdriver",
		"Base.ButterKnife",
		"Base.Scissors",
		"Base.LetterOpener",
	},
}

-- random knife (better quality) in the shoulder
AttachedWeaponDefinitions.knifeShoulder = {
	chance = 10,
	weaponLocation = {"Knife Shoulder"},
	bloodLocations = {"UpperArm_L", "Torso_Upper"},
	addHoles = false,
	daySurvived = 10,
	weapons = {
		"Base.HuntingKnife",
		"Base.BreadKnife",
		"Base.KitchenKnife",
	},
}

-- Machete in shoulder
AttachedWeaponDefinitions.MacheteShoulder = {
	chance = 1,
	weaponLocation = {"Knife Shoulder"},
	bloodLocations = {"UpperArm_L", "Torso_Upper"},
	addHoles = true,
	daySurvived = 20,
	weapons = {
		"Base.Machete",
	},
}

-- random knife (low quality weapon) in the stomach
AttachedWeaponDefinitions.knifeLowQualityStomach = {
	chance = 30,
	weaponLocation = {"Knife Stomach"},
	bloodLocations = {"Torso_Lower"},
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Stake",
		"Base.Fork",
		"Base.Screwdriver",
		"Base.ButterKnife",
		"Base.Scissors",
		"Base.LetterOpener",
		"Base.HandFork",
	},
}

-- random knife (better quality) in the stomach
AttachedWeaponDefinitions.knifeStomach = {
	chance = 10,
	weaponLocation = {"Knife Stomach"},
	bloodLocations = {"Torso_Lower", "Back"},
	addHoles = false,
	daySurvived = 10,
	weapons = {
		"Base.HuntingKnife",
		"Base.BreadKnife",
		"Base.KitchenKnife",
	},
}

-- random weapon in stomach
AttachedWeaponDefinitions.weaponInStomach = {
	chance = 3,
	weaponLocation = {"Knife Stomach"},
	bloodLocations = {"Torso_Lower", "Back"},
	addHoles = true,
	daySurvived = 10,
	weapons = {
		"Base.LeadPipe",
		"Base.MetalBar",
		"Base.Nightstick",
	},
}

-- crowbar in the back
AttachedWeaponDefinitions.crowbarBack = {
	chance = 3,
	weaponLocation = {"Crowbar Back"},
	bloodLocations = {"Back"},
	addHoles = true,
	daySurvived = 10,
	weapons = {
		"Base.Crowbar",
	},
}

-- random weapon on police zombies holster
AttachedWeaponDefinitions.handgunHolster = {
	chance = 50,
	outfit = {"Police", "PoliceState", "PoliceRiot", "PrisonGuard"},
	weaponLocation =  {"Holster Left", "Holster Right"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	ensureItem = "Base.HolsterSimple",
	weapons = {
		"Base.Pistol",
		"Base.Pistol2",
		"Base.Pistol3",
		"Base.Revolver_Short",
		"Firearms.Glock17",
		"Base.Nightstick",
	},
}

-- shotgun on police's back
AttachedWeaponDefinitions.shotgunPolice = {
	chance = 20,
	outfit = {"Police", "PoliceState", "PoliceRiot"},
	weaponLocation =  {"Rifle On Back"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Shotgun",
		"Firearms.Mossberg500",
		"Firearms.Mossberg500Tactical",
		"Firearms.MP5",
	},
}

-- random construction tools on construction worker
AttachedWeaponDefinitions.constructionWorker = {
	chance = 80,
	outfit = {"ConstructionWorker", "Foreman"},
	weaponLocation = {"Belt Left", "Belt Right"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Hammer",
		"Base.ClubHammer",
		"Base.WoodenMallet",
		"Base.BallPeenHammer",
	},
}

-- screwdriver on construction worker
AttachedWeaponDefinitions.constructionWorkerScrewdriver = {
	chance = 80,
	outfit = {"ConstructionWorker", "Foreman"},
	weaponLocation = {"Belt Left Screwdriver", "Belt Right Screwdriver"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.Screwdriver",
	},
}

-- hand axe on lumberjack
AttachedWeaponDefinitions.lumberjack = {
	chance = 80,
	outfit = {"McCoys"},
	weaponLocation = {"Belt Left", "Belt Right"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Base.HandAxe",
	},
}
