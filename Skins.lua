--[[ Shadow ]]

local LibButtonFacade = LibStub("LibButtonFacade",true)
if not LibButtonFacade then
	return
end
local ADDON = ...
-- Simple method to retrieve our media paths
local path = function(name)
	return [[Interface\AddOns\]] .. ADDON .. [[\Media\]] .. name .. ".tga"
end
local mod = 1.5

local scale = function(contentSize, sourceTextureSize)
	return (sourceTextureSize or contentSize)/contentSize * 36 * mod
end



LibButtonFacade:AddSkin("Epix", {
	Normal = {
		Width = 42,
		Height = 42,
		Texture = path("Normal"),
		EmptyTexture = path("Normal"),
		Color = { 0, 0, 0, 1 },
		Static = true
	},
	Border = {
		Width = 42,
		Height = 42,
		BlendMode = "ADD",
		Color = { 1, 1, 1, 0.1 },
		Texture = path("Border"),
	},
	Highlight = {
		Width = 42,
		Height = 42,	
		BlendMode = "ADD",
		Texture = path("Overlay"),
		Color = { 1, 1, 1, 0.1 },
	},
	Backdrop = {
		Width = 42,
		Height = 42,
		Texture =  path("Backdrop"),
	},
	Checked = {
		Width = 38,
		Height = 38,
		BlendMode = "ADD",
		DrawLayer = "OVERLAY",
		DrawLevel = 0,
		Color = { 1, 1, 1, 1 },
		Texture = path("Border"),
	},
	Icon = {
		Width = 36,
		Height = 36,
		TexCoords = { 0.08, 0.92, 0.08, 0.92 },
	},
	Flash = {
		Width = 38,
		Height = 38,
		Color = { 1, 0, 0, 0.2 },
		Texture = path("Overlay"),
	},
	Pushed = {
		Width = 38,
		Height = 38,
		Texture = path("Overlay"),
		Color = { 1, 1, 1, 0.1 },
	},
	Gloss = {
		Hide = true,
		Width = scale(196,256),
		Height = scale(196,256),
		TexCoords = { 0, 1, 0, 1 },
		BlendMode = "BLEND",
		Color = { 1, 1, 1, 1 },
		Texture = path("actionbutton-glow-white")
	},
	Cooldown = {
		Width = 36,
		Height = 36,
	},
	ChargeCooldown = {
		Width = 36,
		Height = 36,
	},
	AutoCastable = {
		Hide = true,
		Width = 38,
		Height = 38,
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
	},
	AutoCast = {
		Width = 32,
		Height = 32,
		OffsetX = 1,
		OffsetY = -1
	},
	Disabled = {
		Hide = true,
	},
	Name = {
		Hide = true
	},
	Count = {
		Width = 42,
		Height = 10,
		OffsetX = -3,
		OffsetY = 6,
	},
	HotKey = {
		Width = 42,
		Height = 10,
		OffsetX = -20,
		OffsetY = 10,
	},
	Duration = {
		Width = 42,
		Height = 10,
		OffsetY = -3,
	},
}, true)