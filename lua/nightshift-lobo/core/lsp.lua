local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local c = palette.get(config.options.flavour)
  util.apply({
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticOk = { fg = c.green },

    DiagnosticVirtualTextError = { fg = c.red, bg = c.bg_alt },
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.bg_alt },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = c.bg_alt },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = c.bg_alt },
    DiagnosticVirtualTextOk = { fg = c.green, bg = c.bg_alt },

    DiagnosticSignError = { fg = c.red, bg = "NONE" },
    DiagnosticSignWarn = { fg = c.yellow, bg = "NONE" },
    DiagnosticSignInfo = { fg = c.info, bg = "NONE" },
    DiagnosticSignHint = { fg = c.hint, bg = "NONE" },
    DiagnosticSignOk = { fg = c.green, bg = "NONE" },

    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },
    DiagnosticUnderlineOk = { undercurl = true, sp = c.green },

    LspReferenceText = { bg = c.selection },
    LspReferenceRead = { bg = c.selection },
    LspReferenceWrite = { bg = c.surface_alt },

    LspCodeLens = { fg = c.fg_soft },
    LspCodeLensSeparator = { fg = c.fg_soft },
    LspSignatureActiveParameter = { fg = c.accent, bold = true },
    LspInlayHint = { fg = c.fg_soft, bg = c.bg_alt },

    ["@lsp.type.class"] = { fg = c.type, italic = true },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { fg = c.decorator, italic = true },
    ["@lsp.type.enum"] = { fg = c.type, italic = true },
    ["@lsp.type.enumMember"] = { fg = c.property },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { fg = c.type, italic = true },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.macro"] = { fg = c.decorator, italic = true },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.namespace"] = { fg = c.type, italic = true },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { fg = c.type, italic = true },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { fg = c.type, italic = true },
    ["@lsp.type.variable"] = { link = "@variable" },

    ["@lsp.mod.deprecated"] = { strikethrough = true, fg = c.fg_soft },
    ["@lsp.mod.readonly"] = { fg = c.fg },
    ["@lsp.mod.defaultLibrary"] = { fg = c.constant },
  })
end

return M
