require "Items/SuburbsDistributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"
require "Items/ItemPicker"

	SuburbsDistributions["LawEnforcement"] = {		-- Police Firearms
		rolls = 2,
		items = {
			"Firearms.Remington870Wood",		10,
      "Firearms.Mossberg590",     10,
      "Firearms.Mossberg500Tactical", 10,
			"Firearms.Glock17",	1,
			"Firearms.Glock17Mag",			5,
			"Base.VarmintRifle",			1,
      "Firearms.MP5",       0.5,
      "Firearms.MP5Mag",      1,
		},
	};

  SuburbsDistributions["Military"] = {		-- Military Firearms
		rolls = 2,
		items = {
      "Base.AssaultRifle", 5,
			"Firearms.M16A2",		5,
      "Firearms.Mossberg590",     10,
      "Firearms.Mossberg500Tactical", 10,
			"Firearms.M24Rifle",			0.5,
      "Firearms.M60",       0.1,
      "Firearms.M60Mag",    1,
      "Base.762Box",          10,
		},
	};

  SuburbsDistributions["Hunting"] = {		-- Hunting Firearms
		rolls = 2,
		items = {
      "Firearms.Mossberg500",     10,
      "Firearms.Mossberg500Tactical", 10,
      "Firearms.Winchester73",      1,
      "Firearms.Winchester94",    1,
			"Firearms.M24Rifle",			0.1,
      "Base.762Box",          10,
		},
	};

  SuburbsDistributions["Civilian_Small"] = {		-- Small Civilian Firearms
    rolls = 2,
    items = {
      "Base.Pistol",					1,
      "Base.Pistol2",				1,
      "Base.Pistol3",					1,
      "Firearms.Glock17", 1,
      "Firearms.Glock17Mag",      5,
      "Firearms.UZI",			0.1,
      "Firearms.ColtPeacemaker",    1,
      "Base.Revolver",				1,
      "Base.Revolver_Long",				1,
      "Base.Revolver_Short",				1,
      "Base.Bullets38Box",		4,
      "Base.Bullets44Box",		3,
      "Base.Bullets45Box",		4,
      "Base.Bullets9mmBox",		4,
      "Base.4440Box",		1,
    },
  };
