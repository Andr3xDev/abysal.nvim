local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.dark3, nocombine = true }, -- indent lines: same gray in both variants
    IndentBlanklineContextChar = { fg = c.dark3, nocombine = true }, -- context line: same gray
    IblIndent                  = { fg = c.dark3, nocombine = true },
    IblScope                   = { fg = c.dark3, nocombine = true },
  }
end

return M
