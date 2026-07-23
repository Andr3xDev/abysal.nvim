local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.primary_anchor, fg = c.fg, bold = true },
    LeapLabel          = { fg = c.primary_anchor, bold = true },
    LeapBackdrop       = { fg = c.fg_muted },
  }
end

return M
