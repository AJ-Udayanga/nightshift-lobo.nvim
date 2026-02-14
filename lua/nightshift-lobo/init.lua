-- lua/nightshift-lobo/init.lua
local M = {}

function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "nightshift-lobo"

  require("nightshift-lobo.highlights").setup()
  require("nightshift-lobo.integrations").setup()
end

return M
