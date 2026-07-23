local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.fg_muted, nocombine = true },
    IndentLineCurrent          = { fg = c.primary_anchor, nocombine = true },
  }
end

return M
