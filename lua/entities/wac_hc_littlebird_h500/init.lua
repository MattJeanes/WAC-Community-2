
include("shared.lua")
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) then return end
	local ent=ents.Create(ClassName)
	ent:SetPos(tr.HitPos+tr.HitNormal*60)
	ent.Owner=ply
	ent:Spawn()
	ent:Activate()
	return ent
end
