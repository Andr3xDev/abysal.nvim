local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.primary_anchor, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.primary, bold = true },
    OctoIssueTitle            = { fg = c.blue, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = Util.blend_bg(c.primary, 0.1), fg = c.primary },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.primary_anchor },

  }
end

return M
