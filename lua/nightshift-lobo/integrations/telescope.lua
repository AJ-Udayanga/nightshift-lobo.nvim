local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local c = palette.get(config.options.flavour)
  util.apply({
    TelescopeNormal = { fg = c.fg, bg = c.surface },
    TelescopeBorder = { fg = c.border, bg = c.surface },

    TelescopePromptNormal = { fg = c.fg, bg = c.bg_alt },
    TelescopePromptBorder = { fg = c.border, bg = c.bg_alt },
    TelescopePromptPrefix = { fg = c.accent, bg = c.bg_alt },
    TelescopePromptCounter = { fg = c.fg_soft, bg = c.bg_alt },
    TelescopePromptTitle = { fg = c.bg, bg = c.accent, bold = true },

    TelescopePreviewNormal = { fg = c.fg, bg = c.surface },
    TelescopePreviewBorder = { fg = c.border, bg = c.surface },
    TelescopePreviewTitle = { fg = c.bg, bg = c.property, bold = true },

    TelescopeResultsNormal = { fg = c.fg_dim, bg = c.surface },
    TelescopeResultsBorder = { fg = c.border, bg = c.surface },
    TelescopeResultsTitle = { fg = c.bg, bg = c.type, bold = true },
    TelescopeSelection = { fg = c.fg, bg = c.surface_alt },
    TelescopeSelectionCaret = { fg = c.accent, bg = c.surface_alt },
    TelescopeMatching = { fg = c.func, bold = true },

    TelescopeMultiSelection = { fg = c.keyword, bg = c.surface_alt, bold = true },
    TelescopeMultiIcon = { fg = c.keyword, bg = c.surface_alt },
  })
end

return M
