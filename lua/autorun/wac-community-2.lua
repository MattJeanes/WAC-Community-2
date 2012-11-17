if SERVER then AddCSLuaFile() end
include("wac/aircraft.lua")
assert(wac, "WAC has not been installed.")

wac.aircraft.spawnCategoryU = "WAC Unbreakable"

sound.Add(
{
	name = "UH1D.External",
	channel = CHAN_STATIC,
	soundlevel = 140,
	sound = "uh1d/uh1d_blades.wav"
})

sound.Add(
{
	name = "UH1D.Internal",
	channel = CHAN_STATIC,
	soundlevel = 60,
	sound = "uh1d/uh1d_cockpit.wav"
})

sound.Add(
{
	name = "OH58D.External",
	channel = CHAN_STATIC,
	soundlevel = 110,
	sound = "Kiowa/external.wav"
})

sound.Add(
{
	name = "OH58D.Internal",
	channel = CHAN_STATIC,
	soundlevel = 60,
	sound = "Kiowa/internal.wav"
})