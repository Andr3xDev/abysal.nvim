local M = {}

M.url = "https://github.com/zbirenbaum/copilot.lua"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CopilotAnnotation = { fg = c.bg_elevated },
    CopilotSuggestion = { fg = c.bg_elevated },
  }
  return ret
end

return M
