if not wac then return end

ENT.Base 				= "wac_hc_base"
ENT.Type 				= "anim"

ENT.PrintName			= "UH-1Y Venom"
ENT.Author				= "}{ornet/Vest"
ENT.Category			= wac.aircraft.spawnCategory
ENT.Contact    			= ""
ENT.Purpose 			= ""
ENT.Instructions 		= ""

ENT.Model			= "models/flyboi/uh1yvenom/uh1yvenom_fb.mdl"
ENT.RotorPhModel		= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel		= "models/flyboi/uh1yvenom/venomrotorm_fb.mdl"
ENT.BackRotorModel	= "models/flyboi/uh1yvenom/venomrotort_fb.mdl"

ENT.Spawnable		= true
ENT.AdminSpawnable	= true
ENT.SmokePos		= Vector(-65,0,80)
ENT.FirePos			= Vector(-25,0,130)

ENT.Seats = {
	{
		pos=Vector(95, -20, 48),
		exit=Vector(90,-80,10),
		weapons={"Hydra 70"},
	},
	{
		pos=Vector(95, 20, 48),
		exit=Vector(90,80,10),
	},
	{
		pos=Vector(-5, -45, 40),
		ang=Angle(0,-90,0),
		exit=Vector(-5,-80,10),
	},
	{
		pos=Vector(-5, 45, 40),
		ang=Angle(0,90,0),
		exit=Vector(-5,80,10),
	},
	{
		pos=Vector(58, 24.5, 46),
		ang=Angle(0,180,0),
		exit=Vector(0,80,10),
	},
	{
		pos=Vector(58, -24.5, 46),
		ang=Angle(0,180,0),
		exit=Vector(0,-80,10),
	},
}

ENT.Weapons = {
	["Hydra 70"] = {
		class = "wac_pod_hydra",
		info = {
			Pods = {
				Vector(40.25,60,32.93),
				Vector(40.25,-60,32.93),
				Sequential = true,
			},
		}
	}
}


ENT.Sounds={
	Start="WAC/Heli/ah1_start.wav",
	Blades="npc/attack_helicopter/aheli_rotor_loop1.wav",
	Engine="WAC/Heli/jet_whine.wav",
	MissileAlert="HelicopterVehicle/MissileNearby.mp3",
	MissileShoot="HelicopterVehicle/MissileShoot.mp3",
	MinorAlarm="HelicopterVehicle/MinorAlarm.mp3",
	LowHealth="HelicopterVehicle/LowHealth.mp3",
	CrashAlarm="HelicopterVehicle/CrashAlarm.mp3",
}
