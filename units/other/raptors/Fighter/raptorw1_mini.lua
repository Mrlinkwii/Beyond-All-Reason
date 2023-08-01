return {
	raptorw1_mini = {
		acceleration = 2,
		airsightdistance = 600,
		amphibious = true,
		bankscale = "1",

		brakerate = 0.2,
		buildcostenergy = 2200,
		buildcostmetal = 72,
		builder = false,
		buildpic = "raptors/raptorw1_mini.DDS",
		buildtime = 1950,
		cancrash = false,
		canfly = true,
		canguard = true,
		canland = true,
		canloopbackattack = true,
		canmove = true,
		canpatrol = true,
		canstop = true,
		cansubmerge = false,
		capturable = false,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP NOTHOVER RAPTOR",
		collide = false,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "58 58 58",
		collisionvolumetype = "sphere",
		cruisealt = 200,
		defaultmissiontype = "VTOL_standby",
		explodeas = "TALON_DEATH",
		floater = true,
		footprintx = 1,
		footprintz = 1,
		hidedamage = 1,
		idleautoheal = 2,
		idletime = 0,
		maneuverleashlength = "1280",
		mass = 90,
		maxacc = 0.25,
		maxaileron = 0.025,
		maxbank = 0.8,
		maxdamage = 85,
		maxelevator = 0.025,
		maxpitch = 0.75,
		maxrudder = 0.025,
		maxvelocity = 12,
		moverate1 = "32",
		noautofire = false,
		nochasecategory = "NOTAIR",
		objectname = "Raptors/raptorw1_mini.s3o",
		script = "Raptors/raptorw1.cob",
		seismicsignature = 0,
		selfdestructas = "TALON_DEATH",
		separation = "0.2",
		side = "THUNDERBIRDS",
		sightdistance = 400,
		smoothanim = true,
		speedtofront = 0.07,
		turninplace = true,
		turnradius = 64,
		turnrate = 1600,
		unitname = "raptorw1_mini",
		usesmoothmesh = true,
		wingangle = 0.06593,
		wingdrag = 0.435,
		workertime = 0,
		customparams = {
			subfolder = "other/raptors",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_m_normals.png",
			treeshader = "yes",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			weapon = {
				accuracy = 200,
				collidefriendly = 0,
				collidefeature = 0,
				avoidfeature = 0,
				avoidfriendly = 0,
				areaofeffect = 32,
				burnblow = true,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:raptorspike-large-sparks-burn",
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 0,
				model = "Raptors/spike.s3o",
				name = "Spike",
				noselfdamage = true,
				range = 500,
				reloadtime = 1.1,
				soundstart = "talonattack",
				startvelocity = 200,
				submissile = 1,
				turret = true,
				waterweapon = true,
				weaponacceleration = 100,
				weapontimer = 1,
				weaponvelocity = 1000,
				damage = {
					default = 100,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "WEAPON",
				def = "WEAPON",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "VTOL",
			},
		},
	},
}
