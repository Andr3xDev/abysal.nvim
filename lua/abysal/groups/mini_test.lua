local M = {}

M.url = "https://github.com/echasnovski/mini.test"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.gold, bold = true },
    MiniTestPass = { fg = c.green, bold = true },
  }
end

return M
