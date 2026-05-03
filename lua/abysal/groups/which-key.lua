local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Structure: cyan
    WhichKey           = { fg = c.cyan }, -- top-level label
    WhichKeyNormal    = { fg = c.fg, bg = c.bg_sidebar },
    WhichKeyBorder    = { fg = c.cyan, bg = c.bg_sidebar }, -- border: cyan
    WhichKeyFloat     = { fg = c.cyan, bg = c.bg_float }, -- floating: cyan border
    -- Separator
    WhichKeySeparator = { fg = c.border_highlight },
    -- Details: orange
    WhichKeyGroup     = { fg = c.orange }, -- group name: orange
    WhichKeyDesc       = { fg = c.orange }, -- key-binding description: orange
    WhichKeyValue     = { fg = c.fg_dark }, -- value hint: subdued
  }
end

return M
