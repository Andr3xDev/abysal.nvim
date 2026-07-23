local M = {}

M.url = "https://github.com/RRethy/vim-illuminate"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    IlluminatedWordRead  = { bg = c.fg_muted },
    IlluminatedWordText  = { bg = c.fg_muted },
    IlluminatedWordWrite = { bg = c.fg_muted },
    illuminatedCurWord   = { bg = c.fg_muted },
    illuminatedWord      = { bg = c.fg_muted },
  }
end

return M
