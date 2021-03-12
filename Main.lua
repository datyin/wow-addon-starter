local addonName, addon = ...
local T = LibStub("AceAddon-3.0"):NewAddon(addonName, "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

T.Options = {}
T.Settings = {};

addon[1] = T
addon[2] = L -- L

function T:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New(addonName.."DB", T.Settings, true)
  LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, T.Options)

  self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName, "Tyin Addon Starter")

	self:RegisterChatCommand("wh", "ChatCommand")
	self:RegisterChatCommand("wht", "ShowMessage")
end

function T:OnEnable()
	self:RegisterEvent("UNIT_TARGET");
	self:RegisterEvent("PLAYER_TARGET_CHANGED");
end

function T:OnDisable()
	-- Called when the addon is disabled
end

function T:UNIT_TARGET(event, unit)
	print(event, unit)
	print(addonName)
end

function T:PLAYER_TARGET_CHANGED(event, unit)
	print(event, unit)
end

function T:ChatCommand(input)
	if not input or input:trim() == "" then
			InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
	else
			LibStub("AceConfigCmd-3.0"):HandleCommand("wh", addonName, input)
	end
end

function T:ShowMessage(input)
	print("MSG IS", self.db.profile.texture)
end
