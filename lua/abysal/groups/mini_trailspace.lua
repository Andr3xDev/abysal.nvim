local M = {}

M.url = "https://github.com/echasnovski/mini.trailspace"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTrailspace = { bg = c.gold },
  }
end

return M
