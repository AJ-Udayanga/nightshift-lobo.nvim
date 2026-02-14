-- lua/nightshift-lobo/highlights.lua
local palette = require("nightshift-lobo.palette").colors

local M = {}

function M.setup()
  local set = vim.api.nvim_set_hl

  set(0, "Normal", { fg = palette.fg, bg = palette.bg })
  set(0, "NormalFloat", { bg = palette.surface })

  set(0, "Comment", { fg = palette.comment, italic = true })
  set(0, "Keyword", { fg = palette.blue })
  set(0, "String", { fg = palette.green })
  set(0, "Function", { fg = palette.cyan })
  set(0, "Type", { fg = palette.yellow })
  set(0, "Identifier", { fg = palette.teal })

  set(0, "LineNr", { fg = palette.fg_dim })
  set(0, "CursorLineNr", { fg = palette.yellow })

  set(0, "Visual", { bg = palette.bg_alt })

  set(0, "DiagnosticError", { fg = palette.red })
  set(0, "DiagnosticWarn", { fg = palette.yellow })
  set(0, "DiagnosticInfo", { fg = palette.blue })
  set(0, "DiagnosticHint", { fg = palette.cyan })
end

return M
