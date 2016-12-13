return {
	corca = {
		acceleration = 0.06,
		brakerate = 0.4275,
		buildcostenergy = 4885,
		buildcostmetal = 117,
		builddistance = 136,
		builder = true,
		shownanospray = false,
		buildpic = "CORCA.DDS",
		buildtime = 9286,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE NOTLAND NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOWEAPON NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 75,
		description = "Tech Level 1",
		energymake = 5,
		energystorage = 25,
		energyuse = 5,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 145,
		maxslope = 10,
		maxvelocity = 6.7,
		maxwaterdepth = 0,
		metalmake = 0.05,
		metalstorage = 25,
		name = "Construction Aircraft",
		objectname = "CORCA",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongeneric",
		sightdistance = 351,
		terraformspeed = 225,
		turninplaceanglelimit = 360,
		turnrate = 94,
		workertime = 55,
		blocking = false,
		buildoptions = {
			[1] = "corsolar",
			[2] = "coradvsol",
			[3] = "corwin",
			[4] = "corgeo",
			[5] = "cormstor",
			[6] = "corestor",
			[7] = "cormex",
			[8] = "corexp",
			[9] = "cormakr",
			[10] = "corasp",
			[11] = "coraap",
			[12] = "corlab",
			[13] = "corvp",
			[14] = "corap",
			[15] = "corhp",
			[16] = "cornanotc",
			[17] = "coreyes",
			[18] = "corrad",
			[19] = "cordrag",
			[20] = "cormaw",
			[21] = "corllt",
			[22] = "hllt",
			[23] = "corhlt",
			[24] = "corpun",
			[25] = "corrl",
			[26] = "madsam",
			[27] = "corerad",
			[28] = "cordl",
			[29] = "corjamt",
			[30] = "cjuno",
			[31] = "corsy",
		},
		customparams = {
			death_sounds = "generic",
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			repair = "repair2",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
	},
}
