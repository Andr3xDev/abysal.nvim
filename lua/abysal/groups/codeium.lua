local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CodeiumSuggestion = { fg = c.bg_elevated },
  }
  return ret
end

return M
