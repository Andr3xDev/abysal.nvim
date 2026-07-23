local M = {}

M.url = "https://github.com/petertriho/nvim-scrollbar"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    ScrollbarError        = { fg = c.error, bg = c.none },
    ScrollbarErrorHandle  = { fg = c.error, bg = c.bg_highlight },
    ScrollbarHandle       = { fg = c.none, bg = c.bg_highlight },
    ScrollbarHint         = { fg = c.hint, bg = c.none },
    ScrollbarHintHandle   = { fg = c.hint, bg = c.bg_highlight },
    ScrollbarInfo         = { fg = c.info, bg = c.none },
    ScrollbarInfoHandle   = { fg = c.info, bg = c.bg_highlight },
    ScrollbarMisc         = { fg = c.blue, bg = c.none },
    ScrollbarMiscHandle   = { fg = c.blue, bg = c.bg_highlight },
    ScrollbarSearch       = { fg = c.primary, bg = c.none },
    ScrollbarSearchHandle = { fg = c.primary, bg = c.bg_highlight },
    ScrollbarWarn         = { fg = c.warning, bg = c.none },
    ScrollbarWarnHandle   = { fg = c.warning, bg = c.bg_highlight },

  }
end

return M
