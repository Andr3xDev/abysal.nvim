local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.fg_muted },
    GrugFarHelpHeaderKey          = { fg = c.blue },
    GrugFarInputLabel             = { fg = c.primary_anchor },
    GrugFarInputPlaceholder       = { fg = c.fg_muted },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.primary },
    GrugFarResultsLineColumn      = { fg = c.fg_muted },
    GrugFarResultsLineNo          = { fg = c.fg_muted },
    GrugFarResultsMatch           = { fg = c.black, bg = c.gold },
    GrugFarResultsStats           = { fg = c.blue },
  }
end

return M
