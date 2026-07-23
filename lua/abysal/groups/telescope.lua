local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Borders: normal (passive panels), strong (active prompt input)
    TelescopeBorder           = { fg = c.border, bg = c.bg },
    TelescopeResultsBorder    = { fg = c.border, bg = c.bg },
    TelescopePreviewBorder   = { fg = c.border, bg = c.bg },
    TelescopePromptBorder    = { fg = c.border_strong, bg = c.bg },
    TelescopeNormal          = { fg = c.fg, bg = c.bg },
    TelescopePromptNormal    = { fg = c.fg, bg = c.bg },
    TelescopeSelection       = { fg = c.amber, bg = c.bg_elevated }, -- selected: surface bg, yellow text
    TelescopeMultiSelection  = { fg = c.amber, bg = c.bg_elevated }, -- multi-select: surface bg, yellow text
    -- Details: orange
    TelescopePromptTitle     = { fg = c.primary, bg = c.bg }, -- prompt title: orange
    TelescopeResultsTitle     = { fg = c.primary, bg = c.bg },
    TelescopePreviewTitle    = { fg = c.primary, bg = c.bg },
    -- Matching chars in prompt
    TelescopeMatching        = { fg = c.primary, bold = true },
    -- Status line
    TelescopeStatusLine      = { fg = c.blue, bg = c.bg },
    TelescopeStatusLineNC    = { fg = c.fg_muted, bg = c.bg },
    -- Comment in results
    TelescopeResultsComment  = { fg = c.fg_muted },
  }
end

return M
