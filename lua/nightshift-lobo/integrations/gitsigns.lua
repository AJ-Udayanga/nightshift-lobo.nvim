local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local c = palette.get(config.options.flavour)
  util.apply({
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.constant },
    GitSignsDelete = { fg = c.red },
    GitSignsTopdelete = { fg = c.red },
    GitSignsChangedelete = { fg = c.constant },

    GitSignsCurrentLineBlame = { fg = c.fg_soft, italic = true },

    GitSignsAddLn = { bg = c.diff_add },
    GitSignsChangeLn = { bg = c.bg_alt },
    GitSignsDeleteLn = { bg = c.bg_alt },

    GitSignsAddNr = { fg = c.green },
    GitSignsChangeNr = { fg = c.constant },
    GitSignsDeleteNr = { fg = c.red },
  })
end

return M
