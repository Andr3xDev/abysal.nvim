local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.fg_muted },
    FlashLabel    = { bg = c.primary_anchor, bold = true, fg = c.fg },
  }
end

return M
