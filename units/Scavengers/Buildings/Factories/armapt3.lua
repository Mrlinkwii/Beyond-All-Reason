return {
	armapt3 = {
		acceleration = 0,
		brakerate = 0,
		buildcostenergy = 60000,
		buildcostmetal = 8500,
		builder = true,
		buildpic = "ARMAP.DDS",
		buildtime = 72400,
		canmove = true,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 8 1",
		collisionvolumescales = "268 98 164",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 1000,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 18,
		footprintz = 12,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 11100,
		maxslope = 15,
		maxwaterdepth = 0,
		metalstorage = 1000,
		objectname = "Units/scavbuildings/ARMAPT3.s3o",
		radardistance = 500,
		radaremitheight = 72,
		script = "Units/scavbuildings/ARMAPT3.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 292,
		terraformspeed = 500,
		workertime = 600,
		yardmap = "oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo ",
		buildoptions = {
			"armaca",
			"armthundt4",
			"armfepocht4",
			"armlichet4",
		},
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armapt3_aoplane.dds",
			buildinggrounddecalsizey = 15,
			buildinggrounddecalsizex = 21,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'buildert3',
			model_author = "Cremuss",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbuildings/landfactories",
			techlevel = 3,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "11 -17 -23",
				collisionvolumescales = "170 78 98",
				collisionvolumetype = "Box",
				damage = 11100,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 14,
				footprintz = 12,
				height = 40,
				hitdensity = 100,
				metal = 5530,
				object = "Units/scavbuildings/armapt3_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 5550,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 2210,
				object = "Units/arm6X6B.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:YellowLight",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pairactv",
			},
		},
	},
}
