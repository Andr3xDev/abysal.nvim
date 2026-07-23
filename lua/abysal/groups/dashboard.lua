local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.blue },
    DashboardFooter           = { fg = c.primary_anchor },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.blue },
    DashboardProjectTitleIcon = { fg = c.primary },
    DashboardProjectIcon      = { fg = c.amber },
    DashboardMruTitle         = { fg = c.blue },
    DashboardMruIcon          = { fg = c.blue },
    DashboardFiles            = { fg = c.blue },
    DashboardShortCutIcon     = { fg = c.primary },
    -- Doome theme
    DashboardDesc             = { fg = c.blue },
    DashboardKey              = { fg = c.primary },
    DashboardIcon             = { fg = c.blue },
    DashboardShortCut         = { fg = c.blue },
  }
end

return M
