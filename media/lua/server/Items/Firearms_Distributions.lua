Distributions = Distributions or {};

local distributionTable = {

	--	gunstore
	gunstore = {

		counter = {
			rolls = 1,
			items = {
				"Firearms.45Silencer",			0.2,
				"Firearms.9mmSilencer",			0.25,
				"Firearms.223Silencer",			0.15,
				"Firearms.308Silencer",			0.15,
				"Firearms.ShotgunStock",		2,
				"Firearms.TacticalStock",		3,
				"Firearms.LightShotgunStock",		2,
				"Firearms.AmmoStock",			2,
				"Firearms.MP5_Stock_Detracted",				2,
				"Firearms.ExtendedRecoilPad",				2,
				"Firearms.Rifle_Bipod",			4,
				"Firearms.MP5Mag",			1,
				"Firearms.Glock17Mag",				1,
				"Base.556Clip",			0.5,
				"Base.556Box",			1,
				"Base.4440Box",		2,
				"Base.762Box",		2,
				"Base.223Box",		2,
				"Base.308Box",		2,
				"Base.Bullets38Box",		2,
				"Base.Bullets44Box",		2,
				"Base.Bullets45Box",		2,
				"Base.Bullets9mmBox",		2,
				"Base.ShotgunShellsBox",				5,
			},
		},

		displaycase = {
			rolls = 1,
			items = {
				"Base.Pistol",					1,
				"Base.Pistol2",				1,
				"Base.Pistol3",					1,
				"Firearms.Glock17",				1,
				"Firearms.Glock17Mag",				1,
				"Firearms.ColtPeacemaker",				1,
				"Base.Revolver",				1,
				"Base.Revolver_Long",				1,
				"Base.Revolver_Short",				1,
				"Base.Shotgun",				1,
				"Base.DoubleBarrelShotgun",				1,
				"Firearms.Remington870Wood",				1,
				"Firearms.Mossberg500",			0.5,
				"Firearms.Mossberg500Tactical",			0.5,
				"Firearms.UZI", 		0.5,
				"Firearms.MP5",		0.5,
				"Firearms.Winchester94", 				0.5,
				"Firearms.Winchester73",			0.5,
				"Base.4440Box",		2,
				"Base.Bullets38Box",		2,
				"Base.Bullets44Box",		2,
				"Base.Bullets45Box",		2,
				"Base.Bullets9mmBox",		2,
				"Base.ShotgunShellsBox",				5,
			},
		},

		locker ={
			rolls = 2,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
				"Base.HuntingRifle",			3,
				"Base.VarmintRifle",			2,
				"Firearms.M24Rifle",			1,
				"Base.AssaultRifle",			1,
				"Firearms.M16A2",					1,
				"Base.556Clip",		2,
				"Base.556Box",			1,
				"Base.4440Box",		2,
				"Base.762Box",		2,
				"Base.223Box",		2,
				"Base.308Box",		2,
				"Base.ShotgunShellsBox",				5,
				"Base.Sling",				1,
				"Base.Scope2x",				1,
				"Base.Scope4x",				1,
				"Base.Scope8x",				1,
				"Base.RedDot",				1,
				"Base.Rifle_Bipod",				1,
				"Base.RecoilPad",				1,
				"Firearms.ExtendedRecoilPad",				1,
				"Firearms.ShotgunStock",		1,
				"Firearms.TacticalStock",		1,
				"Firearms.LightShotgunStock",		1,
				"Firearms.AmmoStock",			1,
				"Firearms.MP5_Stock_Detracted",				1,
				"Firearms.Rifle_Bipod",			1,
				"Firearms.45Silencer",			0.2,
				"Firearms.9mmSilencer",			0.25,
				"Firearms.223Silencer",			0.15,
				"Firearms.308Silencer",			0.15,
			},
		},

	        shelves = {
			rolls = 3,
			items = {
				"Base.Sling",				1,
				"Base.Rifle_Bipod",				1,
				"Base.RecoilPad",				1,
				"Firearms.ShotgunStock",		1,
				"Firearms.TacticalStock",		1,
				"Firearms.LightShotgunStock",		1,
				"Firearms.AmmoStock",			1,
				"Firearms.Rifle_Bipod",			1,
			},
		},

		metal_shelves = {
			rolls = 3,
			items = {
				"Base.556Box",			1,
				"Base.4440Box",		1,
				"Base.762Box",		1,
				"Base.223Box",		1,
				"Base.308Box",		1,
				"Base.Bullets38Box",		4,
				"Base.Bullets44Box",		3,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
			},
		},
	},

--Gunstore Storage
	gunstorestorage = {

		crate = {
			rolls = 1,
			items = {
				"Base.556Box",			1,
				"Base.4440Box",		1,
				"Base.762Box",		1,
				"Base.223Box",		1,
				"Base.308Box",		1,
				"Base.Bullets38Box",		4,
				"Base.Bullets44Box",		3,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
				"Base.Sling",				1,
				"Base.Scope2x",				1,
				"Base.Scope4x",				1,
				"Base.Scope8x",				1,
				"Base.RedDot",				1,
				"Base.Rifle_Bipod",				1,
				"Base.RecoilPad",				1,
				"Firearms.ExtendedRecoilPad",				1,
				"Firearms.ShotgunStock",		1,
				"Firearms.TacticalStock",		1,
				"Firearms.LightShotgunStock",		1,
				"Firearms.AmmoStock",			1,
				"Firearms.MP5_Stock_Detracted",				1,
				"Firearms.Rifle_Bipod",			1,
				"Firearms.45Silencer",			0.2,
				"Firearms.9mmSilencer",			0.25,
				"Firearms.223Silencer",			0.15,
				"Firearms.308Silencer",			0.15,
			},
		},

		locker ={
			rolls = 3,
			items = {
			"Firearms.MP5Mag",			1,
			"Firearms.Glock17Mag",				2,
			"Base.556Clip",			1,
			"Firearms.Glock17",				1,
			"Firearms.UZI", 		1,
			"Firearms.MP5",		2,
			"Base.AssaultRifle",		1,
			"Firearms.M16A2",		1,
			"Firearms.M24Rifle",		1,
			"Firearms.M60",		0.25,
			},
		},

		metal_shelves = {
			rolls = 3,
			items = {
				"Base.556Box",			1,
				"Base.762Box",		1,
				"Base.Bullets9mmBox",		4,
			},
		},
	},

--Police Storage
	policestorage = {
		counter = {
			rolls = 3,
			items = {

			},
		},

		locker = {
			rolls = 3,
			items = {
				"Firearms.Remington870Wood",		4,
				"Firearms.Mossberg590",     4,
				"Firearms.Mossberg500Tactical", 4,
				"Firearms.Glock17",	2,
				"Firearms.Glock17Mag",			3,
				"Base.AssaultRifle",			0.5,
				"Firearms.M16A2",					0.5,
				"Base.556Clip",		2,
				"Firearms.M24Rifle",			0.5,
	      "Firearms.MP5",       0.5,
	      "Firearms.MP5Mag",      2,
				"Base.556Box",			1,
				"Base.4440Box",		1,
				"Base.762Box",		1,
				"Base.223Box",		1,
				"Base.308Box",		1,
				"Base.Bullets38Box",		4,
				"Base.Bullets44Box",		3,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
			},
		},
		metal_shelves = {
			rolls = 3,
			items = {
				"Base.556Box",			1,
				"Base.4440Box",		1,
				"Base.762Box",		1,
				"Base.223Box",		1,
				"Base.308Box",		1,
				"Base.Bullets38Box",		4,
				"Base.Bullets44Box",		3,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
				"Base.Sling",				1,
				"Base.Scope2x",				1,
				"Base.Scope4x",				1,
				"Base.Scope8x",				1,
				"Base.RedDot",				1,
				"Base.Rifle_Bipod",				1,
				"Base.RecoilPad",				1,
				"Firearms.ExtendedRecoilPad",				1,
				"Firearms.ShotgunStock",		1,
				"Firearms.TacticalStock",		1,
				"Firearms.LightShotgunStock",		1,
				"Firearms.AmmoStock",			1,
				"Firearms.MP5_Stock_Detracted",				1,
				"Firearms.Rifle_Bipod",			1,
				"Firearms.9mmSilencer",			0.25,
				"Firearms.223Silencer",			0.15,
				"Firearms.308Silencer",			0.15,
			},
		},
		filingcabinet = {
			rolls = 1,
			items = {
			},
		},
		crate = {
			rolls = 3,
			items = {
			},
		},
	},
	-- Army storage
	armystorage = {

		locker = {
			rolls = 3,
			items = {
				"Base.Pistol",					1,
				"Firearms.Remington870Wood",				1,
				"Firearms.Mossberg500",			0.5,
				"Firearms.Mossberg500Tactical",			0.5,
				"Firearms.MP5",		0.5,
				"Base.Bullets38Box",		2,
				"Base.Bullets44Box",		2,
				"Base.Bullets45Box",		2,
				"Base.Bullets9mmBox",		2,
				"Base.ShotgunShellsBox",				5,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.M24Rifle",			1,
				"Firearms.M60",		0.25,
				"Base.AssaultRifle",			1,
				"Firearms.M16A2",					1,
				"Base.Sling",				1,
				"Base.Scope2x",				1,
				"Base.Scope4x",				1,
				"Base.Scope8x",				1,
				"Base.RedDot",				1,
				"Base.Rifle_Bipod",				1,
				"Base.RecoilPad",				1,
				"Firearms.ExtendedRecoilPad",				1,
				"Firearms.ShotgunStock",		1,
				"Firearms.TacticalStock",		1,
				"Firearms.LightShotgunStock",		1,
				"Firearms.AmmoStock",			1,
				"Firearms.MP5_Stock_Detracted",				1,
				"Firearms.Rifle_Bipod",			1,
				"Firearms.45Silencer",			0.2,
				"Firearms.9mmSilencer",			0.25,
				"Firearms.223Silencer",			0.15,
				"Firearms.308Silencer",			0.15,
			},
		},

		metal_shelves = {
			rolls = 2,
			items = {
				"Base.556Clip",		1,
				"Base.9mmClip",		2,
				"Firearms.MP5Mag",		2,
				"Firearms.M60Mag",		2,
				"Base.556Box",			1,
				"Base.762Box",		1,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
			},
		},

		crate = {
			rolls = 1,
			items = {
			"Base.556Clip",		1,
			"Base.9mmClip",		2,
			"Firearms.MP5Mag",		2,
			"Firearms.M60Mag",		2,
			"Base.556Box",			1,
			"Base.762Box",		1,
			"Base.Bullets45Box",		4,
			"Base.Bullets9mmBox",		4,
			"Base.ShotgunShellsBox",				5,
			},
		},
	},
	armyhanger = {
		metal_shelves = {
			rolls = 1,
			items = {
			},
		},
	},

	security = {
		counter = {
			rolls = 3,
			items = {
			"Base.Pistol",					1,
			"Base.Pistol2",				1,
			"Base.Pistol3",					1,
			"Firearms.Glock17",				1,
			"Firearms.Glock17Mag",				1,
			"Firearms.Mossberg500",			0.5,
			"Firearms.Mossberg500Tactical",			0.5,
			"Firearms.MP5",		0.5,
			},
		},
		locker = {
			rolls = 3,
			items = {
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Base.VarmintRifle",			2,
				"Base.AssaultRifle",			1,
			},
		},
		metal_shelves = {
			rolls = 3,
			items = {
				"Base.556Box",			1,
				"Base.4440Box",		1,
				"Base.762Box",		1,
				"Base.223Box",		1,
				"Base.308Box",		1,
				"Base.Bullets38Box",		4,
				"Base.Bullets44Box",		3,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
			},
		},
		crate = {
			rolls = 3,
			items = {
			},
		},
	},

	hunting = {
		counter = {
			rolls = 3,
			items = {
				"Base.ShotgunShellsBox",				5,
				"Base.Sling",				1,
				"Base.Scope2x",				1,
				"Base.Scope4x",				1,
				"Base.Scope8x",				1,
				"Base.RedDot",				1,
				"Base.Rifle_Bipod",				1,
				"Base.RecoilPad",				1,
				"Firearms.ExtendedRecoilPad",				1,
				"Firearms.ShotgunStock",		1,
				"Firearms.TacticalStock",		1,
				"Firearms.LightShotgunStock",		1,
				"Firearms.AmmoStock",			1,
				"Firearms.MP5_Stock_Detracted",				1,
				"Firearms.Rifle_Bipod",			1,
			},
		},
		displaycase = {
			rolls = 1,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
			},
		},
		locker = {
			rolls = 2,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
				"Base.HuntingRifle",			3,
				"Base.VarmintRifle",			2,
				"Base.AssaultRifle",			1,
				"Firearms.M16A2",					1,
				"Base.556Clip",		2,
			},
		},
		metal_shelves = {
			rolls = 3,
			items = {
				"Base.556Box",			1,
				"Base.4440Box",		1,
				"Base.762Box",		1,
				"Base.223Box",		1,
				"Base.308Box",		1,
				"Base.Bullets38Box",		4,
				"Base.Bullets44Box",		3,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
			},
		},
		crate = {
			rolls = 3,
			items = {
			},
		},
	},

	armysurplus = {
		counter = {
			rolls = 3,
			items = {
				"Base.Sling",				1,
				"Base.Scope2x",				1,
				"Base.Scope4x",				1,
				"Base.Scope8x",				1,
				"Base.RedDot",				1,
				"Base.Rifle_Bipod",				1,
				"Base.RecoilPad",				1,
				"Firearms.ExtendedRecoilPad",				1,
				"Firearms.ShotgunStock",		1,
				"Firearms.TacticalStock",		1,
				"Firearms.LightShotgunStock",		1,
				"Firearms.AmmoStock",			1,
				"Firearms.MP5_Stock_Detracted",				1,
				"Firearms.Rifle_Bipod",			1,
				"Base.556Clip",		2,
				"Firearms.Glock17Mag",				1,
				"Firearms.UZIMag",          1,
			},
		},
		displaycase = {
			rolls = 3,
			items = {
				"Base.Shotgun",		3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
				"Base.VarmintRifle",			2,
				"Base.AssaultRifle",			1,
				"Firearms.M16A2",					1,
				"Base.556Clip",		2,
				"Firearms.ColtPeacemaker",				1,
				"Base.Pistol2",				1,
				"Base.45Clip",				1,
			},
		},
		locker = {
			rolls = 3,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
				"Base.HuntingRifle",			3,
				"Base.VarmintRifle",			2,
				"Firearms.M24Rifle",			1,
				"Base.AssaultRifle",			1,
				"Firearms.M16A2",					1,
			},
		},
		metal_shelves = {
			rolls = 3,
			items = {
				"Base.556Box",			1,
				"Base.4440Box",		1,
				"Base.762Box",		1,
				"Base.223Box",		1,
				"Base.308Box",		1,
				"Base.Bullets38Box",		4,
				"Base.Bullets44Box",		3,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
			},
		},
		crate = {
			rolls = 3,
			items = {
			},
		},
	},

	camping = {

		displaycase = {
			rolls = 3,
			items = {
				"Firearms.UZIMag",          1,
				"Firearms.Glock17Mag",				1,
				"Base.556Clip",		2,
			},
		},
		locker = {
			rolls = 3,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
				"Base.HuntingRifle",			3,
				"Base.VarmintRifle",			2,
				"Firearms.M24Rifle",			1,
				"Base.AssaultRifle",			1,
				"Firearms.M16A2",					1,
				"Firearms.UZI", 		0.5,
			},
		},
		metal_shelves = {
			rolls = 3,
			items = {
				"Base.556Box",			1,
				"Base.4440Box",		1,
				"Base.762Box",		1,
				"Base.223Box",		1,
				"Base.308Box",		1,
				"Base.Bullets38Box",		4,
				"Base.Bullets44Box",		3,
				"Base.Bullets45Box",		4,
				"Base.Bullets9mmBox",		4,
				"Base.ShotgunShellsBox",				5,
			},
		},
		crate = {
			rolls = 3,
			items = {
			},
		},
	},

	toolstore = {
		shelves = {
			rolls = 3,
			items = {
			},
		},
		counter = {
			rolls = 2,
			items = {
			},
		},
	},

	bar = {
		counter = {
			rolls = 1,
			items = {
				"Firearms.ShotgunShellsBox",5,
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
			},
		},
	},
	zippeestore = {
		counter = {
			rolls = 1,
			items = {
			},
			fillRand=3,
		},
	},
	gigamart = {
		counter = {
			rolls = 1,
			items = {
			},
		},
	},
	fossoil = {
		counter = {
			rolls = 1,
			items = {
			},
		},
	},
	loggingfactory = {
		counter = {
			rolls = 1,
			items = {
			},
		},
		crate = {
			rolls = 1,
			items = {
			},
		},
	},
	toystore = {
		counter = {
			rolls = 1,
			items = {
			},
		},
		shelves = {
			rolls = 1,
			items = {
			},
		},
	},

	bedroom = {
		sidetable = {
			rolls = 1,
			items = {
				"Firearms.Civilian_Small",	0.01,
			},
		},
		all = {
			rolls = 1,
			items = {
				"Firearms.Civilian_Small",		0.01,
				"Firearms.Hunting",	0.01,
			},
		},
	},
	garagestorage = {
		other = {
			rolls = 2,
			items = {
				"Firearms.Civilian_Small", 0.2,
				"Firearms.Hunting",		0.1,
			},
		},
	},
	garage = {
		metal_shelves = {
			rolls = 2,
			items = {
				"Firearms.Civilian_Small",	0.2,
				"Firearms.Hunting",	0.1,
			},
		},
	},
	shed = {
		metal_shelves = {
			rolls = 2,
			items = {
				"Firearms.BB177Box",		0.5,
				"Firearms.Bayonet_AK",		0.5,
				"Firearms.Bayonet_M1917",	0.5,
				"Firearms.BGMachete",		0.2,
				"Firearms.Butterfly",		0.2,
				"Firearms.DingDong",		0.2,
				"Firearms.Karambit",		0.1,
				"Firearms.PushDagger",		0.2,
				"Firearms.RamboKnife",		0.5,
				"Firearms.RussianMachete",	0.2,
				"Firearms.Tactical_Axe",	0.2,
				"Firearms.Tactical_Sickle", 0.2,
				"Firearms.AmmoCan30_MIX",	0.1,
				"Firearms.AmmoCan50_MIX",	0.1,
				"Firearms.Suppressor_Oil",	1,
				"Firearms.Cleaning",		1,
				"Firearms.WD",				1,
			},
		},
	},
	farmstorage = {
		locker = {
			rolls = 3,
			items = {
				"Firearms.Civilian_Small",		0.2,
				"Firearms.Hunting",		0.1,
			},
		},
		all = {
			rolls = 1,
			items = {
				"Firearms.Civilian_Small",		0.2,
				"Firearms.Hunting",		0.1,
			},
		},
	},
	gasstorage = {
		all = {
			rolls = 1,
			items = {
			},
		},
	},
	mechanic = {
		all = {
			rolls = 1,
			items = {
			},
		},
	},
	storageunit = {

		locker = {
			rolls = 3,
			items = {
				"Firearms.45Silencer",			0.2,
				"Firearms.9mmSilencer",			0.25,
				"Firearms.223Silencer",			0.15,
				"Firearms.308Silencer",			0.15,
			},
		},

		all ={
			rolls = 1,
			items = {
				"Firearms.Civilian_Small",			0.1,	-- 22 LR
				"Firearms.Hunting",			0.1,	-- 22LR
				"Firearms.LawEnforcement",			0.1,	-- 380
			},
		},
--		metal_shelves ={
--			rolls = 1,
--			items = {
--
--			},
--		},
	},

	Guitarcase = {
		rolls = 1,
		items = {
		},
	},

	Toolbox = {
		rolls = 1,
		items = {
		},
	},

	Bag_Schoolbag = {
		rolls = 1,
		items = {
		},
	},

	Bag_WeaponBag = {
		rolls = 3,
		items = {
			"Firearms.308Box",			5,
			"Firearms.308Box",			5,
			"Firearms.Bullets357Box",	5,
			"Firearms.Bullets357Box",	5,
			"Firearms.1903Clip",		5,
			"Firearms.1903Clip",		5,
			"Firearms.M1Clip",			5,
			"Firearms.M1Clip",			5,
			"Firearms.M1",				5,
			"Firearms.M1903",			5,
			"Firearms.Marlin_1894",		5,
			"Firearms.Mosin",			5,
			"Firearms.NEF_Handi_38",	5,
			"Firearms.Savage12",		5,
			"Firearms.Win_1894",		5,
			"Firearms.Win_1895",		5,
		},
	},

	Bag_SurvivorBag = {
		rolls = 1,
		items = {
			"Base.HuntingRifle",			3,
			"Base.VarmintRifle",			2,
			"Firearms.M24Rifle",			1,
			"Base.AssaultRifle",			1,
			"Firearms.M16A2",					1,
			"Base.556Clip",		2,
			"Base.556Box",			1,
			"Base.762Box",		2,
			"Base.223Box",		2,
			"Base.308Box",		2,
		},
	},

	ShotgunCache1 = {
		ShotgunBox = {
			rolls = 1,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
			}
		},
		Bag_DuffelBagTINT = {
			rolls = 1,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
			},
		},
	},

	ShotgunCache2 = {
		ShotgunBox = {
			rolls = 1,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
			}
		},
		counter = {
			rolls = 1,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
			},
		},
	},

	GunCache1 = {
		GunBox = {
			rolls = 1,
			items = {
				"Bullets357Box",	10,
				"Firearms.AMT1911",		25,	-- 45
				"Firearms.CZ75",		25,	-- 9
				"Firearms.DEagle",		25,	-- 44
				"Firearms.M5238",		25,	-- 38/357
			},
		dontSpawnAmmo = true,
		},
		counter = {
			rolls = 1,
			items = {
				"Firearms.38Clip",		25,	-- 38/357
				"Firearms.44Clip",		25,	-- 44
				"Firearms.45Clip",		15,	-- 45
				"Firearms.9mmClip",		15,	-- 9
			},
		},
		Bag_DuffelBagTINT = {
			rolls = 1,
			items = {
				"Base.DoubleBarrelShotgun",			2,
				"Base.Shotgun",		3,
				"Firearms.Mossberg500",			3,
				"Firearms.Mossberg500Tactical",			3,
				"Firearms.Winchester94",			2,
				"Firearms.Winchester73",				2,
			},
		},
	},

	GunCache2 = {
		GunBox = {
			rolls = 1,
			items = {
				"Base.Revolver",				1,
				"Base.Revolver_Long",				1,
				"Base.Revolver_Short",				1,
				"Base.Shotgun",				1,
				"Base.DoubleBarrelShotgun",				1,
				"Firearms.Remington870Wood",				1,
				"Firearms.Mossberg500",			0.5,
				"Firearms.Mossberg500Tactical",			0.5,
				"Firearms.UZI", 		0.5,
				"Firearms.MP5",		0.5,
				"Firearms.Winchester94", 				0.5,
				"Firearms.Winchester73",			0.5,
			},
		},
		Bag_DuffelBagTINT = {
			rolls = 1,
			items = {
				"Base.Revolver",				1,
				"Base.Revolver_Long",				1,
				"Base.Revolver_Short",				1,
				"Base.Shotgun",				1,
				"Base.DoubleBarrelShotgun",				1,
				"Firearms.Remington870Wood",				1,
				"Firearms.Mossberg500",			0.5,
				"Firearms.Mossberg500Tactical",			0.5,
				"Firearms.UZI", 		0.5,
				"Firearms.MP5",		0.5,
				"Firearms.Winchester94", 				0.5,
				"Firearms.Winchester73",			0.5,
			},
		},
	},
}

table.insert(Distributions, 1, distributionTable);

--for mod compat:
--SuburbsDistributions = distributionTable;
