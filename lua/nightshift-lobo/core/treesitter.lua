local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local styles = cfg.styles

  util.apply({
    ["@comment"] = vim.tbl_extend("force", { fg = c.comment }, styles.comments),
    ["@comment.documentation"] = { fg = c.fg_soft, italic = true },

    ["@constant"] = { fg = c.constant },
    ["@constant.builtin"] = { fg = c.constant },
    ["@constant.macro"] = { fg = c.decorator },

    ["@string"] = vim.tbl_extend("force", { fg = c.string }, styles.strings),
    ["@string.escape"] = { fg = c.keyword },
    ["@string.regex"] = { fg = c.fg },
    ["@string.special"] = { fg = c.keyword },

    ["@character"] = { fg = c.string },
    ["@character.special"] = { fg = c.keyword },

    ["@number"] = { fg = c.constant },
    ["@boolean"] = { fg = c.constant },
    ["@float"] = { fg = c.constant },

    ["@annotation"] = { fg = c.decorator, italic = true },
    ["@attribute"] = { fg = c.decorator, italic = true },

    ["@module"] = { fg = c.type, italic = true },
    ["@module.builtin"] = { fg = c.type, italic = true },
    ["@label"] = { fg = c.accent },

    ["@function"] = vim.tbl_extend("force", { fg = c.func }, styles.functions),
    ["@function.builtin"] = { fg = c.builtin },
    ["@function.call"] = vim.tbl_extend("force", { fg = c.func }, styles.functions),
    ["@function.macro"] = { fg = c.decorator },

    ["@method"] = vim.tbl_extend("force", { fg = c.func }, styles.functions),
    ["@method.call"] = vim.tbl_extend("force", { fg = c.func }, styles.functions),
    ["@constructor"] = { fg = c.type, italic = true },

    ["@parameter"] = { fg = c.constant, italic = true },
    ["@parameter.reference"] = { fg = c.constant, italic = true },

    ["@keyword"] = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    ["@keyword.function"] = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    ["@keyword.operator"] = { fg = c.punctuation },
    ["@keyword.return"] = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    ["@keyword.import"] = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    ["@keyword.conditional"] = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    ["@keyword.repeat"] = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    ["@keyword.exception"] = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),

    ["@operator"] = { fg = c.punctuation },
    ["@punctuation.delimiter"] = { fg = c.fg_soft },
    ["@punctuation.bracket"] = { fg = c.fg_soft },
    ["@punctuation.special"] = { fg = c.fg_soft },

    ["@variable"] = vim.tbl_extend("force", { fg = c.fg }, styles.variables),
    ["@variable.builtin"] = { fg = c.builtin, italic = true },
    ["@variable.parameter"] = { fg = c.constant, italic = true },
    ["@variable.member"] = { fg = c.property },

    ["@property"] = { fg = c.property },
    ["@field"] = { fg = c.property },

    ["@type"] = { fg = c.type, italic = true },
    ["@type.builtin"] = { fg = c.type, italic = true },
    ["@type.definition"] = { fg = c.type, italic = true },

    ["@storageclass"] = { fg = c.keyword },
    ["@namespace"] = { fg = c.type, italic = true },

    ["@tag"] = { fg = c.accent },
    ["@tag.attribute"] = { fg = c.property },
    ["@tag.delimiter"] = { fg = c.fg_soft },

    ["@markup.heading"] = { fg = c.heading_1, bold = true },
    ["@markup.heading.1"] = { fg = c.heading_1, bold = true },
    ["@markup.heading.2"] = { fg = c.heading_2, bold = true },
    ["@markup.heading.3"] = { fg = c.heading_3, bold = true },
    ["@markup.heading.4"] = { fg = c.heading_4, bold = true },
    ["@markup.heading.5"] = { fg = c.heading_5, bold = true },
    ["@markup.heading.6"] = { fg = c.heading_6, bold = true },
    ["@markup.italic"] = { fg = c.heading_1, italic = true },
    ["@markup.strong"] = { fg = c.heading_1, bold = true },
    ["@markup.strikethrough"] = { fg = c.fg_soft, strikethrough = true },
    ["@markup.quote"] = { fg = c.keyword, italic = true },
    ["@markup.math"] = { fg = c.heading_1 },
    ["@markup.link"] = { fg = c.blue_soft, underline = true },
    ["@markup.link.label"] = { fg = c.blue_soft },
    ["@markup.link.url"] = { fg = c.accent, underline = true },
    ["@markup.raw"] = { fg = c.string },
    ["@markup.raw.block"] = { fg = c.string, bg = c.bg_alt },
    ["@markup.list"] = { fg = c.property },

    ["@property.yaml"] = { fg = c.accent },
    ["@string.yaml"] = { fg = c.string },
    ["@number.yaml"] = { fg = c.constant },
    ["@boolean.yaml"] = { fg = c.constant },
    ["@punctuation.special.yaml"] = { fg = c.keyword },

    ["@property.json"] = { fg = c.accent },
    ["@string.json"] = { fg = c.string },
    ["@number.json"] = { fg = c.constant },
    ["@boolean.json"] = { fg = c.constant },

    ["@property.toml"] = { fg = c.accent },
    ["@string.toml"] = { fg = c.string },
    ["@number.toml"] = { fg = c.constant },
    ["@boolean.toml"] = { fg = c.constant },

    ["@type.typescript"] = { fg = c.type, italic = true },
    ["@type.builtin.typescript"] = { fg = c.type, italic = true },
    ["@keyword.typescript"] = { fg = c.keyword },
    ["@keyword.operator.typescript"] = { fg = c.punctuation },
    ["@constructor.typescript"] = { fg = c.type, italic = true },
    ["@property.typescript"] = { fg = c.property },
    ["@variable.member.typescript"] = { fg = c.property },
    ["@function.typescript"] = vim.tbl_extend("force", { fg = c.func }, styles.functions),
    ["@function.call.typescript"] = vim.tbl_extend("force", { fg = c.func }, styles.functions),
    ["@type.tsx"] = { fg = c.type, italic = true },
    ["@tag.tsx"] = { fg = c.accent },
    ["@tag.attribute.tsx"] = { fg = c.property },

    ["@variable.parameter.function.language.special.self.python"] = { fg = c.builtin, italic = true },
    ["@variable.language.special.self.python"] = { fg = c.builtin, italic = true },
    ["@function.decorator.python"] = { fg = c.decorator, italic = true },
    ["@function.builtin.python"] = { fg = c.builtin },
    ["@type.python"] = { fg = c.type, italic = true },
    ["@keyword.python"] = { fg = c.keyword },

    ["@attribute.rust"] = { fg = c.decorator, italic = true },
    ["@type.rust"] = { fg = c.type, italic = true },
    ["@module.rust"] = { fg = c.type, italic = true },
    ["@lifetime.rust"] = { fg = c.keyword },
  })
end

return M
