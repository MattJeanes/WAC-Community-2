if not wac then return end

ENT.Base 			= "wac_hc_base_u"
ENT.Type 			= "anim"

ENT.PrintName		= "Mil Mi-35"
ENT.Author			= "SentryGunMan,Nirrti"
ENT.Category		= wac.aircraft.spawnCategoryU
ENT.Contact    		= ""
ENT.Purpose 		= ""
ENT.Instructions 	= ""
ENT.Model			= "models/sentry/mi-35.mdl"
ENT.RotorPhModel	= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel		= "models/sentry/mi-35_tr.mdl"
ENT.BackRotorModel	= "models/sentry/mi-35_rr.mdl"

ENT.Spawnable		= true
ENT.AdminSpawnable	= true

ENT.TopRotorPos		= Vector(-7.5,0,160)
ENT.TopRotorDir		= -1
ENT.BackRotorPos	= Vector(-415.5,25,174.5)
ENT.BackRotorDir	= -1
ENT.SmokePos		= Vector(-7.5,0,155)
ENT.FirePos			= Vector(-7.5,0,155)

ENT.Seats = {
	{
		pos=Vector(125, 0, 68),
		exit=Vector(125, 70, 0),
		weapons={"S-5"},
	},
	{
		pos=Vector(180, 0, 40),
		exit=Vector(180, 70, 0),
		weapons={"2A42", "9M17 Phalanga"},
	},
}


ENT.Weapons = {
	["S-5"] = {
		class = "wac_pod_hydra",
		info = {
			Sequential = true,
			Pods = {
				Vector(3.22,95,60),
				Vector(3.22,-95,60)
			}
		},
	},
	["9M17 Phalanga"] = {
		class = "wac_pod_hydra",
		info = {
			Sequential = true,
			Pods = {
				Vector(-15,152.5,55),
				Vector(-15,-152.5,55)
			},
		},
	},
	["2A42"] = {
		class = "wac_pod_aimedgun",
		info = {
			ShootPos = Vector(219,0,34),
			ShootOffset = Vector(25,0,0),
			FireRate = 300,
			Sounds = {
				spin = "",
				shoot1p = "WAC/cannon/havoc_cannon_1p.wav",
				shoot3p = "WAC/cannon/havoc_cannon_3p.wav"
			}
		}
	},
}

ENT.WeaponAttachments = {

	gunMount1 = {
		model = "models/sentry/mi-35_gun1.mdl",
		pos = Vector(219,0,34),
	},
	
	gunMount2 = {
		model = "models/sentry/mi-35_gun2.mdl",
		pos = Vector(219,0,34),
		localTo = "gunMount1",
	},
	
	gun = {
		model = "models/sentry/mi-35_barrel.mdl",
		pos = Vector(20,0,0),
		localTo = "gunMount2",
	},
	
	radar1 = {
		model = "models/sentry/apachecam.mdl",
		pos = Vector(190,18,10),
	},
	
}

ENT.Camera = {
	model = "models/BF2/helicopters/AH-1 Cobra/ah1z_radar1.mdl",
	pos = Vector(200,0,0),
	offset = Vector(-1,0,0),
	viewPos = Vector(2, 0, 3.5),
	maxAng = Angle(45, 90, 0),
	minAng = Angle(-2, -90, 0),
	seat = 2
}

ENT.Sounds={
	Start="WAC/mi35/start.wav",
	Blades="WAC/mi35/external.wav",
	Engine="WAC/mi35/internal.wav",
	MissileAlert="HelicopterVehicle/MissileNearby.mp3",
	MissileShoot="HelicopterVehicle/MissileShoot.mp3",
	MinorAlarm="WAC/Heli/fire_alarm_tank.wav",
	LowHealth="WAC/Heli/fire_alarm.wav",
	CrashAlarm="WAC/Heli/FireSmoke.wav",
}