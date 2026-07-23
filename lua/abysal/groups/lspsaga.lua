local M = {}

M.url = "https://github.com/glepnir/lspsaga.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DefinitionCount            = { fg = c.blue },
    DefinitionIcon             = { fg = c.blue },
    DiagnosticInformation      = "DiagnosticInfo",
    DiagnosticWarning          = "DiagnosticWarn",
    LspFloatWinBorder          = { fg = c.border_highlight },
    LspFloatWinNormal          = { bg = c.bg_float },
    LspSagaBorderTitle         = { fg = c.border },
    LspSagaCodeActionBorder    = { fg = c.border },
    LspSagaCodeActionContent   = { fg = c.blue },
    LspSagaCodeActionTitle     = { fg = c.primary_anchor },
    LspSagaDefPreviewBorder    = { fg = c.green },
    LspSagaFinderSelection     = { fg = c.bg_visual },
    LspSagaHoverBorder         = { fg = c.border },
    LspSagaRenameBorder        = { fg = c.green },
    LspSagaSignatureHelpBorder = { fg = c.gold },
    ReferencesCount            = { fg = c.blue },
    ReferencesIcon             = { fg = c.blue },
    TargetWord                 = { fg = c.blue },
  }
end

return M
