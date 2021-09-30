require "Items/SuburbsDistributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"
require "Items/ItemPicker"

	SuburbsDistributions["LawEnforcement"] = {		-- Police Base
		rolls = 2,
		items = {
			"Base.Remington870Wood",		10,
      "Base.Mossberg590",     10,
      "Base.Mossberg500Tactical", 10,
			"Base.Glock17",	1,
			"Base.Glock17Mag",			5,
			"Base.VarmintRifle",			1,
			"Base.308Clip",			3,
      "Base.MP5",       0.5,
      "Base.MP5Mag",      1,
		},
	};

  SuburbsDistributions["Military"] = {		-- Military Base
		rolls = 2,
		items = {
      "Base.AssaultRifle", 5,
			"Base.M16A2",		5,
      "Base.Mossberg590",     10,
      "Base.Mossberg500Tactical", 10,
			"Base.M24Rifle",			0.5,
      "Base.M60",       0.1,
      "Base.M60Mag",    1,
      "Base.762x51Box",          10,
		},
	};

  SuburbsDistributions["Hunting"] = {		-- Hunting Base
		rolls = 2,
		items = {
      "Base.Mossberg500",     10,
      "Base.Mossberg500Tactical", 10,
      "Base.Winchester73",      1,
      "Base.Winchester94",    1,
			"Base.Rugerm7722",			3,
			"Base.HuntingRifle",			3,
      "Base.762x51Box",          10,
			"Base.Bullets22Box",          10,
      "Base.4440Box",          10,
			"Base.GunToolKit",				1,
		},
	};

  SuburbsDistributions["Civilian_Small"] = {		-- Small Civilian Base
    rolls = 2,
    items = {
      "Base.Pistol",					1,
      "Base.Pistol2",				1,
      "Base.Pistol3",					1,
      "Base.Glock17", 1,
      "Base.Glock17Mag",      5,
      "Base.ColtPeacemaker",    1,
      "Base.UZI",    0.5,
      "Base.UZIMag",    0.5,
      "Base.Revolver",				1,
      "Base.Revolver_Long",				1,
      "Base.Revolver_Short",				1,
      "Base.Bullets38Box",		4,
      "Base.Bullets44Box",		3,
      "Base.Bullets45Box",		4,
      "Base.Bullets9mmBox",		4,
      "Base.4440Box",		5,
    },
		};

		SuburbsDistributions["Attachments"] = {		-- Military Base
			rolls = 2,
			items = {
	      "Base.Sling", 5,
				"Base.Sling_Camo",		5,
	      "Base.Sling_Leather",     5,
	      "Base.Sling_Olive", 5,
				"Base.IronSight",			5,
				"Base.RedDot",			2,
				"Base.x2Scope",			1,
	      "Base.x4Scope",       0.5,
	      "Base.x8Scope",    0.5,
	      "Base.x4-x12Scope",          1,
				"Base.Laser",				2,
				"Base.ChokeTubeFull",				2,
				"Base.ChokeTubeImproved",				1,
				"Base.TacticalStock",			1,
	      "Base.ShotgunStock",       1,
	      "Base.LightShotgunStock",    1,
				"Base.AmmoStock",			1,
				"Base.RecoilPad",			2,
				"Base.ExtendedRecoilPad",    1,
				"Base.Rifle_Bipod",			1,
				"Base.9mmCompensator",			1,
			},
		};
