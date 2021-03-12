local addonName = select(1, ...)
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true)

L["Message"] = true
L["The message to be displayed when you get home."] = true
L["<Your message>"] = true -- usage

L["Show in Chat"] = true
L["Toggles the display of the message in the chat window."] = true

L["Font"] = true
L["Font Outline"] = true

L["NONE"] = "None"
L["OUTLINE"] = "Outline"
L["MONOCHROME"] = "Monochrome"
L["MONOCROMEOUTLINE"] = "Monochrome Outline"
L["THICKOUTLINE"] = "Thick Outline"

L["Texture"] = true
L["Set the statusbar texture."] = true

L["Sound"] = true
