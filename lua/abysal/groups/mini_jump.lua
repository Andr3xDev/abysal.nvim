local M = {}

M.url = "https://github.com/echasnovski/mini.jump"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniJump             = { bg = c.primary_anchor, fg = "#ffffff" },
    MiniJump2dDim        = "Comment",
    MiniJump2dSpot       = { fg = c.primary_anchor, bold = true, nocombine = true },
    MiniJump2dSpotAhead  = { fg = c.hint, bg = c.bg_elevated, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.primary, bold = true, nocombine = true },
  }
end

return M
