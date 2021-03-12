local T, L, P = unpack(select(2, ...))

T.Options = {
  name = "WelcomeHome",
  handler = T,
  type = "group",
  args = {
      msg = {
        order = 1,
        type = "input",
        name = L["Message"],
        desc = L["The message to be displayed when you get home."],
        usage = L["<Your message>"],
        get = function(info) return T.db.profile.message end,
        set = function(info, value) T.db.profile.message = value end,
      },
      showInChat = {
        order = 2,
        type = "toggle",
        name = L["Show in Chat"],
        desc = L["Toggles the display of the message in the chat window."],
        get = function(info) return T.db.profile.showInChat end,
        set = function(info, value) T.db.profile.showInChat = value end,
      },
      font = {
        order = 3,
        type = 'select',
        dialogControl = 'LSM30_Font',
        name = L["Font"],
        values = AceGUIWidgetLSMlists.font,
        get = function(info) return T.db.profile.font end,
				set = function(info, value) T.db.profile.font = value end,
      },
      fontOutline = {
        order = 4,
        type = "select",
        name = L["Font Outline"],
        values = {
          NONE = L["NONE"],
          OUTLINE = L["OUTLINE"],
          MONOCHROME = L["MONOCHROME"],
          MONOCHROMEOUTLINE = L["MONOCROMEOUTLINE"],
          THICKOUTLINE = L["THICKOUTLINE"]
        },
        get = function(info) return T.db.profile.fontOutline end,
				set = function(info, value) T.db.profile.fontOutline = value end,
      },
      texture = {
        order = 5,
        type = "select",
        dialogControl = "LSM30_Statusbar",
        name = L["Texture"],
        desc = L["Set the statusbar texture."],
        values = _G.AceGUIWidgetLSMlists.statusbar,
        get = function(info) return T.db.profile.texture end,
				set = function(info, value) T.db.profile.texture = value end,
      },
      keywordSound = {
        order = 6,
        type = 'select',
        dialogControl = 'LSM30_Sound',
        name = L["Sound"],
        width = 'double',
        values = AceGUIWidgetLSMlists.sound,
        get = function(info) return T.db.profile.sound end,
				set = function(info, value) T.db.profile.sound = value end,
      },
  },
}
