local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.primary_anchor, bold = true },
    HopNextKey1 = { fg = c.blue, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.blue, 0.6) },
    HopUnmatched = { fg = c.fg_muted },
  }
end

return M
