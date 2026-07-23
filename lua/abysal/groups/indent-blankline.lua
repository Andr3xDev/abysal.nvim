local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.bg_elevated, nocombine = true }, -- obsidian: #2e2e2e, marble: #bcbcbc
    IndentBlanklineContextChar = { fg = c.bg_elevated, nocombine = true }, -- same as indent
    IblIndent                  = { fg = c.bg_elevated, nocombine = true },
    IblScope                   = { fg = c.bg_elevated, nocombine = true },
  }
end

return M
