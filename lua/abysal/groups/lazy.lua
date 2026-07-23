local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.primary_anchor },
    LazyProgressTodo = { bold = true, fg = c.fg_muted },
  }
end

return M
