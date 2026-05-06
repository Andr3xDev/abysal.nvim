local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Borders: cyan (structural)
    TelescopeBorder           = { fg = c.cyan, bg = c.bg_float },
    TelescopeResultsBorder    = { fg = c.cyan, bg = c.bg_float },
    TelescopePreviewBorder   = { fg = c.cyan, bg = c.bg_float },
    TelescopePromptBorder    = { fg = c.cyan, bg = c.bg_float },
    TelescopeNormal          = { fg = c.fg, bg = c.bg_float },
    TelescopePromptNormal    = { fg = c.fg, bg = c.bg_float },
    TelescopeSelection       = { fg = c.yellow, bg = c.bg_dark }, -- selected: surface bg, yellow text
    TelescopeMultiSelection  = { fg = c.yellow, bg = c.bg_dark }, -- multi-select: surface bg, yellow text
    -- Details: orange
    TelescopePromptTitle     = { fg = c.orange, bg = c.bg_float }, -- prompt title: orange
    TelescopeResultsTitle     = { fg = c.orange, bg = c.bg_float },
    TelescopePreviewTitle    = { fg = c.orange, bg = c.bg_float },
    -- Matching chars in prompt
    TelescopeMatching        = { fg = c.orange, bold = true },
    -- Status line
    TelescopeStatusLine      = { fg = c.cyan, bg = c.bg_float },
    TelescopeStatusLineNC    = { fg = c.comment, bg = c.bg_float },
    -- Comment in results
    TelescopeResultsComment  = { fg = c.comment },
  }
end

return M
