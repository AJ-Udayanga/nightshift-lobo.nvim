local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local styles = cfg.styles

  util.apply({
    Comment = vim.tbl_extend("force", { fg = c.comment }, styles.comments),

    Constant = { fg = c.constant },
    String = vim.tbl_extend("force", { fg = c.string }, styles.strings),
    Character = { fg = c.string },
    Number = { fg = c.constant },
    Boolean = { fg = c.constant },
    Float = { fg = c.constant },

    Identifier = vim.tbl_extend("force", { fg = c.fg }, styles.variables),
    Function = vim.tbl_extend("force", { fg = c.func }, styles.functions),

    Statement = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    Conditional = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    Repeat = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    Label = { fg = c.accent },
    Operator = { fg = c.punctuation },
    Keyword = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    Exception = { fg = c.keyword },

    PreProc = { fg = c.type },
    Include = { fg = c.type },
    Define = { fg = c.decorator },
    Macro = { fg = c.decorator },
    PreCondit = { fg = c.type },

    Type = { fg = c.type, italic = true },
    StorageClass = { fg = c.keyword },
    Structure = { fg = c.type, italic = true },
    Typedef = { fg = c.type, italic = true },

    Special = { fg = c.property },
    SpecialChar = { fg = c.property },
    Tag = { fg = c.accent },
    Delimiter = { fg = c.fg_soft },
    SpecialComment = { fg = c.fg_dim, italic = true },
    Debug = { fg = c.red },

    Underlined = { fg = c.accent, underline = true },
    Ignore = { fg = c.fg_soft },
    Error = { fg = c.red, bold = true },
    Todo = { fg = c.bg, bg = c.type, bold = true },

    yamlKey = { fg = c.accent },
    yamlAnchor = { fg = c.keyword },
    yamlAlias = { fg = c.keyword },
    yamlDocumentStart = { fg = c.keyword },
    yamlBlockMappingKey = { fg = c.accent },
  })
end

return M
