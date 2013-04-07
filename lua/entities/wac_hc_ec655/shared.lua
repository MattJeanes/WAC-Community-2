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

function ENT:AddSeatTable()
		return{
		[1]={
			Pos=Vector(42.5,0,68),
			ExitPos=Vector(50,-70,0),
			wep={
				wac.aircraft.getWeapon("Hydra 70",{
					Name="SNEB",
					Ammo=24,
					MaxAmmo=24,
					Damage=70,
					ShootDelay=0.2,
					ShootPos={
						Vector(3.22,85,45),
						Vector(3.22,-85,45),
					}
				})
			},
		},
		[2]={
			Pos=Vector(105, 0, 50),
			ExitPos=Vector(105,-70,0),
			wep={
				[1]=wac.aircraft.getWeapon("No Weapon"),
				[2]=wac.aircraft.getWeapon("M197",{Name="GIAT 30",Ammo=450,MaxAmmo="450"}),
				[3]=wac.aircraft.getWeapon("Hellfire",{
				Name="AGM-114 Hellfire",
				Ammo=8,
				MaxAmmo=8,
				ShootPos={
						Vector(3.22,58,55),
						Vector(3.22,-58,55)},
							}),


			},
		},
	}

end
			

function ENT:AddSounds()
	self.Sound={
		Start=CreateSound(self.Entity,"WAC/tiger/start.wav"),
		Blades=CreateSound(self.Entity,"Tiger.External"),
		Engine=CreateSound(self.Entity,"Tiger.Internal"),
		MissileAlert=CreateSound(self.Entity,"HelicopterVehicle/MissileNearby.mp3"),
		MissileShoot=CreateSound(self.Entity,"HelicopterVehicle/MissileShoot.mp3"),
		MinorAlarm=CreateSound(self.Entity,"WAC/Heli/fire_alarm_tank.wav"),
		LowHealth=CreateSound(self.Entity,"WAC/Heli/fire_alarm.wav"),
		CrashAlarm=CreateSound(self.Entity,"WAC/Heli/FireSmoke.wav"),
	}
end
