local M = {}

M.url = "https://github.com/echasnovski/mini.indentscope"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIndentscopeSymbol = { fg = c.primary_anchor, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible
  }
end

return M
