if not wac then return end

ENT.Base 			= "wac_hc_base"
ENT.Type 			= "anim"

ENT.PrintName		= "Eurocopter EC-655"
ENT.Author			= "SentryGunMan,Nirrti"
ENT.Category		= wac.aircraft.spawnCategory
ENT.Contact    		= ""
ENT.Purpose 		= ""
ENT.Instructions 	= ""
ENT.Model			= "models/sentry/tiger.mdl"
ENT.RotorPhModel	= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel		= "models/sentry/tiger_tr.mdl"
ENT.BackRotorModel	= "models/sentry/tiger_rr.mdl"

ENT.Spawnable		= true
ENT.AdminSpawnable	= true

ENT.TopRotorPos		= Vector(0,0,145)
ENT.TopRotorDir		= -1
ENT.BackRotorPos	= Vector(-315.5,0,117)
ENT.BackRotorDir	= -1
ENT.SmokePos		= Vector(0,0,145)
ENT.FirePos			= Vector(0,0,145)

ENT.Seats = {
	{
		pos=Vector(42.5,0,68),
		exit=Vector(50,-70,0),
		weapons={"SNEB"},
	},
	{
		pos=Vector(105, 0, 50),
		exit=Vector(105,-70,0),
		weapons={"2A42","Hellfire"},
	},
}

ENT.Weapons = {
	["SNEB"] = {
		class = "wac_pod_hydra",
		info = {
			Sequential = true,
			Pods = {
				Vector(3.22,85,45),
				Vector(3.22,-85,45)
			}
		},
	},
	["Hellfire"] = {
		class = "wac_pod_hydra",
		info = {
			Sequential = true,
			Pods = {
				Vector(3.22,58,55),
				Vector(3.22,-58,55)
			},
		},
	},
	["2A42"] = {
		class = "wac_pod_aimedgun",
		info = {
			ShootPos = Vector(177,0,27),
			ShootOffset = Vector(55,0,0),
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
		model = "models/sentry/tiger_gun1.mdl",
		pos = Vector(177,0,27),
	},
	
	gunMount2 = {
		model = "models/sentry/tiger_gun2.mdl",
		pos = Vector(177,0,27),
		localTo = "gunMount1",
	},
	
}

ENT.Camera = {
	model = "models/props_junk/PopCan01a.mdl",
	pos = Vector(170,0,50),
	offset = Vector(-1,0,0),
	viewPos = Vector(30, 0, 0),
	maxAng = Angle(45, 90, 0),
	minAng = Angle(-2, -90, 0),
	seat = 2
}
			

ENT.Sounds={
	Start="WAC/tiger/start.wav",
	Blades="wac/tiger/external.wav",
	Engine="wac/tiger/internal.wav",
	MissileAlert="HelicopterVehicle/MissileNearby.mp3",
	MissileShoot="HelicopterVehicle/MissileShoot.mp3",
	MinorAlarm="WAC/Heli/fire_alarm_tank.wav",
	LowHealth="WAC/Heli/fire_alarm.wav",
	CrashAlarm="WAC/Heli/FireSmoke.wav",
}