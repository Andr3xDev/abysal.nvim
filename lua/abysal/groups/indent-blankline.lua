local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.terminal_black, nocombine = true }, -- obsidian: #2e2e2e, marble: #bcbcbc
    IndentBlanklineContextChar = { fg = c.terminal_black, nocombine = true }, -- same as indent
    IblIndent                  = { fg = c.terminal_black, nocombine = true },
    IblScope                   = { fg = c.terminal_black, nocombine = true },
  }
end

return M
