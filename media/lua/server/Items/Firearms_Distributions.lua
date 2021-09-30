Distributions = Distributions or {};

local distributionTable = {

	AmmoCan762 = {
			rolls = 2,
			items = {
					"762x51Box", 100,
					"762x51Box", 50,
					"762x51Box", 25,
					"762x51Box", 10,
					"762x51Box", 5,
			},
			fillRand = 0,
	},

	AmmoCan308 = {
			rolls = 2,
			items = {
				"308Box", 100,
				"308Box", 50,
				"308Box", 25,
				"308Box", 10,
				"308Box", 5,
			},
			fillRand = 0,
	},

	AmmoCan556 = {
			rolls = 2,
			items = {
					"556Box", 100,
					"556Box", 50,
					"556Box", 25,
					"556Box", 10,
					"556Box", 5,
			},
			fillRand = 0,
	},

	AmmoCan9mm = {
			rolls = 2,
			items = {
				"Bullets9mmBox", 100,
				"Bullets9mmBox", 50,
				"Bullets9mmBox", 25,
				"Bullets9mmBox", 10,
				"Bullets9mmBox", 5,
			},
			fillRand = 0,
	},
}

table.insert(Distributions, 1, distributionTable);

--for mod compat:
--SuburbsDistributions = distributionTable;
