local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Borders: cyan (structural)
    TelescopeBorder           = { fg = c.cyan, bg = c.bg },
    TelescopeResultsBorder    = { fg = c.cyan, bg = c.bg },
    TelescopePreviewBorder   = { fg = c.cyan, bg = c.bg },
    TelescopePromptBorder    = { fg = c.cyan, bg = c.bg },
    TelescopeNormal          = { fg = c.fg, bg = c.bg },
    TelescopePromptNormal    = { fg = c.fg, bg = c.bg },
    TelescopeSelection       = { fg = c.yellow, bg = c.bg_dark }, -- selected: surface bg, yellow text
    TelescopeMultiSelection  = { fg = c.yellow, bg = c.bg_dark }, -- multi-select: surface bg, yellow text
    -- Details: orange
    TelescopePromptTitle     = { fg = c.orange, bg = c.bg }, -- prompt title: orange
    TelescopeResultsTitle     = { fg = c.orange, bg = c.bg },
    TelescopePreviewTitle    = { fg = c.orange, bg = c.bg },
    -- Matching chars in prompt
    TelescopeMatching        = { fg = c.orange, bold = true },
    -- Status line
    TelescopeStatusLine      = { fg = c.cyan, bg = c.bg },
    TelescopeStatusLineNC    = { fg = c.comment, bg = c.bg },
    -- Comment in results
    TelescopeResultsComment  = { fg = c.comment },
  }
end

return M
