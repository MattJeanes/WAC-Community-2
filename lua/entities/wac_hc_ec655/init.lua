
include("shared.lua")
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
ENT.WheelStabilize	=-150

ENT.Wheels={
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mil mi-28_wheel.mdl",
		pos=Vector(58,45,10),
		friction=100,
		mass=250,
	},
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mil mi-28_wheel.mdl",
		pos=Vector(58,-45,10),
		friction=100,
		mass=250
	},
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mi28_w2.mdl",
		pos=Vector(-244,0,5),
		friction=100,
		mass=250
	},
}

ENT.EngineForce			= 50
ENT.Weight				= 13000
ENT.MaxEnterDistance	= 100
ENT.RotorWidth	= 42


function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) then return end
	local ent=ents.Create(ClassName)
	ent:SetPos(tr.HitPos+tr.HitNormal*10)
	ent.Owner=ply
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:PhysicsUpdate(ph)
	self:base("wac_hc_base").PhysicsUpdate(self,ph)
	if IsValid(self.GunMount1) and IsValid(self.GunMount2) and IsValid(self.Radar1) and IsValid(self.Radar2) and IsValid(self.Gun) then
		local avel=ph:GetAngleVelocity()
		local v=self.MouseVector or Vector(0,0,0)
		local ph1=self.Radar1:GetPhysicsObject()
		ph1:AddAngleVelocity(ph:GetAngleVelocity()-ph1:GetAngleVelocity()+Vector(0,0,v.y*200))
		local ph2=self.Radar2:GetPhysicsObject()
		ph2:AddAngleVelocity(ph:GetAngleVelocity()-ph2:GetAngleVelocity()+Vector(0,v.z*-200,0))
		
		local tr=util.QuickTrace(self.Radar2:GetPos(),self.Radar2:GetForward()*5000,{self,self.Radar1,self.Radar2})
		
		local ph3=self.GunMount1:GetPhysicsObject()
		local dir1=self.GunMount1:WorldToLocal(tr.HitPos):GetNormal()*20
		ph3:AddAngleVelocity(avel-ph3:GetAngleVelocity()+Vector(0,0,dir1.y*50)+Vector(0,0,v.y*150))
		
		local ph4=self.GunMount2:GetPhysicsObject()
		local dir2=self.GunMount2:WorldToLocal(tr.HitPos):GetNormal()*20
		ph4:AddAngleVelocity(avel-ph4:GetAngleVelocity()-Vector(0,dir2.z*50,0)+Vector(0,v.z*-200,0))
		
		local ph5=self.Gun:GetPhysicsObject()
		ph5:AddAngleVelocity(ph5:GetAngleVelocity()*-0.03)

	end

end
