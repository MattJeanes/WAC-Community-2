if SERVER then AddCSLuaFile() end

local found=false
local f=file.Find('wac/*.lua', "LUA")
for k,v in pairs(f) do
	if v=="aircraft.lua" then
		include('wac/aircraft.lua')
		found=true
	end
end

timer.Simple(5,function()
	if not found and not WACFrame then
		if CLIENT then
			WACFrame=vgui.Create('DFrame')
			WACFrame:SetTitle("WAC is not installed")
			WACFrame:SetSize(ScrW()*0.95, ScrH()*0.95)
			WACFrame:SetPos((ScrW() - WACFrame:GetWide()) / 2, (ScrH() - WACFrame:GetTall()) / 2)
			WACFrame:MakePopup()
			
			local h=vgui.Create('DHTML')
			h:SetParent(WACFrame)
			h:SetPos(WACFrame:GetWide()*0.005, WACFrame:GetTall()*0.03)
			local x,y = WACFrame:GetSize()
			h:SetSize(x*0.99,y*0.96)
			h:SetAllowLua(true)
			h:OpenURL('http://mattjeanes.com/abyss/wac-warning.html')
		elseif SERVER then
			timer.Create("WAC-NotInstalled", 10, 0, function() print("WAC Aircraft is not installed!") end)
		end
	end
end)

if not found then return end

wac.aircraft.spawnCategoryU = "WAC Unbreakable"

sound.Add(
{
	name = "Tiger.External",
	channel = CHAN_STATIC,
	soundlevel = 120,
	sound = "wac/tiger/external.wav"
})

sound.Add(
{
	name = "Tiger.Internal",
	channel = CHAN_STATIC,
	soundlevel = 60,
	sound = "wac/tiger/internal.wav"
})

sound.Add(
{
	name = "H500.External",
	channel = CHAN_STATIC,
	soundlevel = 105,
	sound = "WAC/Heli/heli_loop_ext.wav"
})

sound.Add(
{
	name = "H500.Internal",
	channel = CHAN_STATIC,
	soundlevel = 60,
	sound = "WAC/Heli/heli_loop_int.wav"
})

sound.Add(
{
	name = "MH53.External",
	channel = CHAN_STATIC,
	soundlevel = 125,
	sound = "WAC/pavelow/external.wav"
})

sound.Add(
{
	name = "MH53.Internal",
	channel = CHAN_STATIC,
	soundlevel = 75,
	sound = "WAC/pavelow/internal.wav"
})

sound.Add(
{
	name = "MI35.External",
	channel = CHAN_STATIC,
	soundlevel = 120,
	sound = "WAC/mi35/external.wav"
})

sound.Add(
{
	name = "MI35.Internal",
	channel = CHAN_STATIC,
	soundlevel = 120,
	sound = "WAC/mi35/internal.wav"
})

sound.Add(
{
	name = "R22.External",
	channel = CHAN_STATIC,
	soundlevel = 105,
	sound = "WAC/r22/external.wav"
})

sound.Add(
{
	name = "R22.Internal",
	channel = CHAN_STATIC,
	soundlevel = 90,
	sound = "WAC/r22/internal.wav"
})

sound.Add(
{
	name = "Venom.External",
	channel = CHAN_STATIC,
	soundlevel = 110,
	sound = "npc/attack_helicopter/aheli_rotor_loop1.wav"
})

sound.Add(
{
	name = "Venom.Internal",
	channel = CHAN_STATIC,
	soundlevel = 95,
	sound = "WAC/Heli/jet_whine.wav"
})