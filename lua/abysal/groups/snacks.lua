local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    -- ============================================
    -- NOTIFIER: borders normal, icons by severity
    -- ============================================
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = c.border, bg = opts.transparent and c.none or c.bg }, -- border: normal
    SnacksNotifierIconDebug   = { fg = c.fg_muted },
    SnacksNotifierTitleDebug  = { fg = c.fg_muted },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = c.border, bg = opts.transparent and c.none or c.bg }, -- border: normal
    SnacksNotifierIconError   = { fg = c.error },
    SnacksNotifierTitleError  = { fg = c.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = c.border, bg = opts.transparent and c.none or c.bg }, -- border: normal
    SnacksNotifierIconInfo    = { fg = c.info },
    SnacksNotifierTitleInfo   = { fg = c.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = c.border, bg = opts.transparent and c.none or c.bg }, -- border: normal
    SnacksNotifierIconTrace   = { fg = c.blue },
    SnacksNotifierTitleTrace  = { fg = c.blue },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = c.border, bg = opts.transparent and c.none or c.bg }, -- border: normal
    SnacksNotifierIconWarn    = { fg = c.warning },
    SnacksNotifierTitleWarn   = { fg = c.warning },

    -- ============================================
    -- DASHBOARD: cyan for structure, orange for keys
    -- ============================================
    SnacksDashboardHeader     = { fg = c.blue }, -- header: cyan
    SnacksDashboardFooter     = { fg = c.blue },
    SnacksDashboardDesc       = { fg = c.blue }, -- description: blue
    SnacksDashboardIcon       = { fg = c.primary_anchor },
    SnacksDashboardKey        = { fg = c.primary }, -- key: orange
    SnacksDashboardSpecial    = { fg = c.blue },
    SnacksDashboardDir        = { fg = c.fg_muted },

    -- ============================================
    -- INPUT / PICKER: borders strong (active input), titles orange
    -- ============================================
    SnacksInputBorder         = { fg = c.border_strong, bg = c.bg_float }, -- input border: strong
    SnacksInputTitle         = { fg = c.primary, bg = c.bg_float }, -- title: orange
    SnacksInputIcon           = { fg = c.primary_anchor },
    SnacksPickerInputBorder   = { fg = c.border_strong, bg = c.bg_float }, -- border: strong
    SnacksPickerInputTitle    = { fg = c.primary, bg = c.bg_float }, -- title: orange
    SnacksPickerBoxTitle      = { fg = c.primary, bg = c.bg_float }, -- title: orange
    SnacksPickerSelected      = { fg = c.bg, bg = c.amber, bold = true }, -- selected: yellow bg, dark text
    SnacksPickerPickWinCurrent= { fg = c.bg, bg = c.amber, bold = true }, -- current win: yellow
    SnacksPickerPickWin       = { fg = c.fg, bg = c.bg_search, bold = true },

    -- ============================================
    -- PROFILER
    -- ============================================
    SnacksProfilerIconInfo    = { fg = c.blue },
    SnacksProfilerBadgeInfo   = { fg = c.blue },
    SnacksProfilerIconTrace   = { fg = c.blue },
    SnacksProfilerBadgeTrace  = { fg = c.blue },
    SnacksFooterKey           = "SnacksProfilerIconInfo",
    SnacksFooterDesc          = "SnacksProfilerBadgeInfo",

    -- ============================================
    -- INDIENTS / MISC
    -- ============================================
    SnacksIndent              = { fg = c.fg_muted, nocombine = true },
    SnacksIndentScope         = { fg = c.primary_anchor, nocombine = true },
    SnacksZenIcon             = { fg = c.blue },
    SnacksGhLabel             = { fg = c.primary_anchor, bold = true },
    SnacksDiffLabel           = { fg = c.primary_anchor, bold = true },
    SnacksGhDiffHeader        = { fg = c.primary_anchor },
  }
  for i, color in ipairs(c.rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return ret
end

return M
