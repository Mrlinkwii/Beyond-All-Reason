return {
	e_chickenq = {
		acceleration = 1.38,
		airsightdistance = 2400,
		autoheal = 10,
		bmcode = "1",
		brakerate = 2.3,
		buildcostenergy = 2000000,
		buildcostmetal = 50000,
		builder = false,
		buildpic = "chickens/e_chickenq.DDS",
		buildtime = 1500000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		cantbetransported = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CHICKEN EMPABLE",
		collisionspherescale = 1.75,
		collisionvolumeoffsets = "0 -20 15",
		collisionvolumescales = "60 130 140",
		collisionvolumetest = 1,
		collisionvolumetype = "box",
		defaultmissiontype = "Standby",
		explodeas = "QUEEN_DEATH",
		footprintx = 3,
		footprintz = 3,
		leavetracks = true,
		maneuverleashlength = 2000,
		mass = 2000000,
		maxdamage = 300000,
		maxslope = 40,
		maxvelocity = 2.8,
		maxwaterdepth = 0,
		movementclass = "CHICKQUEEN",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "Chickens/e_chickenq.s3o",
		pushresistant = true,
		script = "Chickens/e_chickenq.cob",
		seismicsignature = 4,
		selfdestructas = "QUEEN_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 1250,
		smoothanim = true,
		steeringmode = "2",
		tedclass = "BOT",
		trackoffset = 18,
		trackstrength = 3,
		trackstretch = 1,
		tracktype = "ChickenTrack",
		trackwidth = 85,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 500,
		unitname = "e_chickenq",
		upright = false,
		workertime = 0,
		customparams = {
			subfolder = "other/chickens",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_l_normals.png",
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
			goo = {
				areaofeffect = 200,
				avoidfeature = 0,
				avoidfriendly = 0,
				burst = 6,
				burstrate = 0.03333,
				cegtag = "nuketrail-roost",
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.63,
				explosiongenerator = "custom:genericshellexplosion-large",
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.7,
				interceptedbyshieldtype = 4,
				model = "Chickens/SGreyRock1.S3O",
				name = "Blob",
				noselfdamage = true,
				proximitypriority = -4,
				range = 2000,
				reloadtime = 5,
				rgbcolor = "0.1 0.6 1",
				size = 8,
				sizedecay = 0,
				soundhit = "e16",
				soundstart = "bigchickenroar",
				sprayangle = 4096,
				tolerance = 5000,
				turret = true,
				weapontimer = 0.2,
				weaponvelocity = 400,
				damage = {
					default = 900,
				},
			},
			melee = {
				areaofeffect = 60,
				avoidfeature = 0,
				avoidfriendly = 0,
				camerashake = 0,
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				firesubmersed = true,
				impulseboost = 1.5,
				impulsefactor = 1.5,
				interceptedbyshieldtype = 4,
				model = "Chickens/spike.s3o",
				name = "ChickenClaws",
				noselfdamage = true,
				range = 280,
				reloadtime = 1.63333,
				soundstart = "bigchickenbreath",
				tolerance = 5000,
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 2500,
				damage = {
					default = 1750,
				},
			},
			spores1 = {
				areaofeffect = 60,
				avoidfriendly = 0,
				burnblow = 1,
				burst = 3,
				burstrate = 0.1,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				dance = 20,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				firestarter = 0,
				flighttime = 5,
				groundbounce = 1,
				heightmod = 0.5,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "Chickens/spike.s3o",
				name = "Missiles",
				noselfdamage = true,
				proximitypriority = 3,
				range = 700,
				reloadtime = 1.5,
				smoketrail = true,
				soundhit = "chickens/e25",
				startvelocity = 200,
				texture1 = "",
				texture2 = "sporetrail",
				tolerance = 10000,
				tracks = true,
				trajectoryheight = 2,
				turnrate = 48000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 200,
				weapontype = "MissileLauncher",
				weaponvelocity = 1000,
				wobble = 64000,
				damage = {
					default = 145,
				},
			},
			spores2 = {
				areaofeffect = 60,
				avoidfeature = 0,
				avoidfriendly = false,
				burnblow = 1,
				burst = 3,
				burstrate = 0.06667,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				dance = 20,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				firestarter = 0,
				flighttime = 5,
				groundbounce = 1,
				heightmod = 0.5,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "Chickens/spike.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 700,
				reloadtime = 1.23333,
				smoketrail = true,
				soundhit = "chickens/e25",
				startvelocity = 200,
				texture1 = "",
				texture2 = "sporetrail",
				tolerance = 10000,
				tracks = true,
				trajectoryheight = 2,
				turnrate = 48000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 200,
				weapontype = "MissileLauncher",
				weaponvelocity = 1000,
				wobble = 64000,
				damage = {
					default = 145,
				},
			},
			spores3 = {
				areaofeffect = 60,
				avoidfriendly = false,
				burnblow = 1,
				burst = 3,
				burstrate = 0.1,
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				dance = 20,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				firestarter = 0,
				flighttime = 5,
				groundbounce = 1,
				heightmod = 0.5,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "Chickens/spike.s3o",
				name = "Missiles",
				noselfdamage = true,
				proximitypriority = -3,
				range = 700,
				reloadtime = 1.73333,
				smoketrail = true,
				soundhit = "chickens/e25",
				startvelocity = 200,
				texture1 = "",
				texture2 = "sporetrail",
				tolerance = 10000,
				tracks = true,
				trajectoryheight = 2,
				turnrate = 48000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 200,
				weapontype = "MissileLauncher",
				weaponvelocity = 1000,
				wobble = 64000,
				damage = {
					default = 145,
				},
			},
		},
		weapons = {
			[1] = {
				def = "MELEE",
				maindir = "0 0 1",
				maxangledif = 155,
			},
			[2] = {
				badtargetcategory = "NOTAIR",
				def = "SPORES1",
			},
			[3] = {
				badtargetcategory = "WEAPON",
				def = "SPORES2",
			},
			[4] = {
				badtargetcategory = "NOWEAPON",
				def = "SPORES3",
			},
			[5] = {
				def = "GOO",
				maindir = "0 0 1",
				maxangledif = 180,
			},
		},
	},
}
