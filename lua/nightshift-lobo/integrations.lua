-- lua/nightshift-lobo/integrations.lua
local palette = require("nightshift-lobo.palette").colors
local M = {}

function M.setup()
  local set = vim.api.nvim_set_hl

  -- Telescope
  set(0, "TelescopeBorder", { fg = palette.border })
  set(0, "TelescopeSelection", { bg = palette.bg_alt })

  -- CMP
  set(0, "CmpItemAbbrMatch", { fg = palette.blue })
  set(0, "CmpItemKindFunction", { fg = palette.cyan })
  set(0, "CmpItemKindVariable", { fg = palette.teal })
end

return M
