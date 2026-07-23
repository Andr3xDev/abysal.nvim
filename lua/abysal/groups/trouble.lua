local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TroubleText   = { fg = c.fg_secondary },
    TroubleCount  = { fg = c.primary, bg = c.fg_muted },
    TroubleNormal = { fg = c.fg, bg = c.bg_sidebar },
  }
end

return M
