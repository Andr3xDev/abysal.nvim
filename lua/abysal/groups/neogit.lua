local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/TimUntersberger/neogit"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.primary },
    NeogitRemote               = { fg = c.blue },
    NeogitHunkHeader           = { bg = c.bg_highlight, fg = c.fg },
    NeogitHunkHeaderHighlight  = { bg = c.fg_muted, fg = c.blue },
    NeogitDiffContextHighlight = { bg = Util.blend_bg(c.fg_muted, 0.5), fg = c.fg_secondary },
    NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },
  }
end

return M
