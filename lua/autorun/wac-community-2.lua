if SERVER then AddCSLuaFile() end

local f=file.Find('wac/*.lua', "LUA")
local found=false
for k,v in pairs(f) do
	if v=="aircraft.lua" then
		include('wac/aircraft.lua')
		found=true
	end
end

timer.Simple(2,function()
	if not found and CLIENT then
		LocalPlayer():ChatPrint("WAC Aircraft is not installed, opening steam browser..")
		timer.Simple(3,function()
			gui.OpenURL('http://steamcommunity.com/sharedfiles/filedetails/?id=104990330')
		end)
	elseif not found and SERVER then
		print("WAC is not installed!")
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