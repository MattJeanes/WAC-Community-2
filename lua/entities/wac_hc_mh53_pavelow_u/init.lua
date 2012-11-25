
include("shared.lua")
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

ENT.RotorWidth		= 480
ENT.TopRotorDir	= 1
ENT.BackRotorDir	= -1
ENT.TopRotorPos	= Vector(0,0,168.5)
ENT.BackRotorPos	= Vector(-691,22,236)
ENT.MaxEnterDistance= 100
ENT.EngineForce	= 40
ENT.BrakeMul		= 1
ENT.AngBrakeMul	= 0.015
ENT.Weight			= 46000

ENT.WheelInfo={
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mil mi-28_wheel.mdl",
		pos=Vector(278,-8,-12),
		friction=100,
		mass=400,
	},
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mil mi-28_wheel.mdl",
		pos=Vector(278,8,-12),
		friction=100,
		mass=400,
	},
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mil mi-28_wheel.mdl",
		pos=Vector(-56,-88,-12),
		friction=100,
		mass=400,
	},
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mil mi-28_wheel.mdl",
		pos=Vector(-56,88,-12),
		friction=100,
		mass=400,
	},
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mil mi-28_wheel.mdl",
		pos=Vector(-56,-72,-12),
		friction=100,
		mass=400,
	},
	{
		mdl="models/BF2/helicopters/Mil Mi-28/mil mi-28_wheel.mdl",
		pos=Vector(-56,72,-12),
		friction=100,
		mass=400,
	},
}

function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) then return end
	local ent=ents.Create(ClassName)
	ent:SetPos(tr.HitPos+tr.HitNormal*30)
	ent.Owner=ply
	ent:Spawn()
	ent:Activate()
	self.Sounds=table.Copy(sndt)
	return ent
end

function ENT:AddStuff()
	local e1=ents.Create("prop_physics")
	e1:SetModel("models/bf2/helicopters/MH-53J Pave Low IIIE/mh-53j_gear.mdl")
	e1:SetPos(self:LocalToWorld(Vector(278,0,25)))
	e1:Spawn()
	e1:SetParent(self)
	self:AddOnRemove(e1)

local e2=ents.Create("prop_physics")
	e2:SetModel("models/bf2/helicopters/MH-53J Pave Low IIIE/mh-53j_gear.mdl")
	e2:SetPos(self:LocalToWorld(Vector(-56,80,25)))
	e2:Spawn()
	e2:SetParent(self)
	self:AddOnRemove(e2)

local e3=ents.Create("prop_physics")
	e3:SetModel("models/bf2/helicopters/MH-53J Pave Low IIIE/mh-53j_gear.mdl")
	e3:SetPos(self:LocalToWorld(Vector(-56,-80,25)))
	e3:Spawn()
	e3:SetParent(self)
	self:AddOnRemove(e3)
end
