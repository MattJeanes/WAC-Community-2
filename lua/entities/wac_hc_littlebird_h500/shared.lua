if not wac then return end
	
ENT.Base 				= "wac_hc_base"
ENT.Type 				= "anim"

ENT.PrintName			= "Hughes 500D"
ENT.Author				= "}{ornet/Vest"
ENT.Category			= wac.aircraft.spawnCategory
ENT.Contact    			= ""
ENT.Purpose 			= ""
ENT.Instructions 		= ""
ENT.Spawnable			= true
ENT.AdminSpawnable	= true

ENT.Model			= "models/military2/air/air_h500.mdl"
ENT.RotorPhModel	= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel		= "models/military2/air/air_h500_r.mdl"
ENT.BackRotorModel= "models/military2/air/air_h500_sr.mdl"
ENT.BackRotorDir	= 1
ENT.TopRotorPos	= Vector(0,0,48)
ENT.BackRotorPos	= Vector(-185,3.4,13.2)
ENT.RotorWidth		= 180
ENT.EngineForce	= 44
ENT.Weight			= 1361
ENT.SeatSwitcherPos	= Vector(0,0,0)
ENT.SmokePos		= Vector(-70,0,-12)
ENT.FirePos		= Vector(0,0,46)

ENT.Seats = {
	{
		pos=Vector(28, 14.5, -14),
		exit=Vector(28,70,-56),
	},
	{
		pos=Vector(28, -14.5, -14),
		exit=Vector(28,-70,-56),
	},
	{
		pos=Vector(-8, -11, -17),
		exit=Vector(-10,-70,-56),
	},
	{
		pos=Vector(-8, 11, -17),
		exit=Vector(-10,70,-56),
	},
}


ENT.Sounds={
	Start="WAC/Heli/h6_start.wav",
	Blades="WAC/Heli/heli_loop_ext.wav",
	Engine="WAC/Heli/heli_loop_int.wav",
	MissileAlert="HelicopterVehicle/MissileNearby.mp3",
	MissileShoot="HelicopterVehicle/MissileShoot.mp3",
	MinorAlarm="HelicopterVehicle/MinorAlarm.mp3",
	LowHealth="HelicopterVehicle/LowHealth.mp3",
	CrashAlarm="HelicopterVehicle/CrashAlarm.mp3",
}
