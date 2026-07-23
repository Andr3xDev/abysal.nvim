local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.primary },
    AlphaHeader      = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.primary },
    AlphaFooter      = { fg = c.primary_anchor },
    AlphaButtons     = { fg = c.blue },
  }
end

return M
