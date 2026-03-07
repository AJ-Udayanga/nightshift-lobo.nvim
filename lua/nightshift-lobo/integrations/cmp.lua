local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local c = palette.get(config.options.flavour)
  util.apply({
    CmpDocumentation = { fg = c.fg, bg = c.surface },
    CmpDocumentationBorder = { fg = c.border, bg = c.surface },

    CmpItemAbbr = { fg = c.fg_dim },
    CmpItemAbbrDeprecated = { fg = c.fg_soft, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.accent, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.accent },

    CmpItemMenu = { fg = c.fg_soft },

    CmpItemKindText = { fg = c.fg_dim },
    CmpItemKindVariable = { fg = c.fg },
    CmpItemKindValue = { fg = c.fg },
    CmpItemKindProperty = { fg = c.property },
    CmpItemKindField = { fg = c.property },
    CmpItemKindEnumMember = { fg = c.property },

    CmpItemKindFunction = { fg = c.func },
    CmpItemKindMethod = { fg = c.func },

    CmpItemKindConstructor = { fg = c.type },
    CmpItemKindClass = { fg = c.type },
    CmpItemKindInterface = { fg = c.type },
    CmpItemKindStruct = { fg = c.type },
    CmpItemKindTypeParameter = { fg = c.type },
    CmpItemKindModule = { fg = c.type },
    CmpItemKindUnit = { fg = c.type },

    CmpItemKindKeyword = { fg = c.keyword },
    CmpItemKindOperator = { fg = c.punctuation },

    CmpItemKindConstant = { fg = c.constant },
    CmpItemKindEnum = { fg = c.type },

    CmpItemKindSnippet = { fg = c.string },
    CmpItemKindFile = { fg = c.accent },
    CmpItemKindFolder = { fg = c.accent },
    CmpItemKindReference = { fg = c.blue_soft },
    CmpItemKindEvent = { fg = c.decorator },
    CmpItemKindColor = { fg = c.decorator },
  })
end

return M
