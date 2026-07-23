local M = {}

M.url = "https://github.com/echasnovski/mini.statusline"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.fg_secondary, bg = c.fg_muted },
    MiniStatuslineFileinfo    = { fg = c.fg_secondary, bg = c.fg_muted },
    MiniStatuslineFilename    = { fg = c.fg_secondary, bg = c.bg_highlight },
    MiniStatuslineInactive    = { fg = c.blue, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.amber, bold = true },
    MiniStatuslineModeInsert  = { fg = c.black, bg = c.green, bold = true },
    MiniStatuslineModeNormal  = { fg = c.black, bg = c.blue, bold = true },
    MiniStatuslineModeOther   = { fg = c.black, bg = c.primary_anchor, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.gold, bold = true },
    MiniStatuslineModeVisual  = { fg = c.black, bg = c.primary, bold = true },
  }
end

return M
