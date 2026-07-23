local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIconsGrey   = { fg = c.fg },
    MiniIconsPurple = { fg = c.blue },
    MiniIconsBlue   = { fg = c.blue },
    MiniIconsAzure  = { fg = c.info },
    MiniIconsCyan   = { fg = c.primary_anchor },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsYellow = { fg = c.amber },
    MiniIconsOrange = { fg = c.primary },
    MiniIconsRed    = { fg = c.gold },
  }
end

return M
