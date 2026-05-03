local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    -- ============================================
    -- NOTIFIER: borders cyan, icons by severity
    -- ============================================
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = c.cyan, bg = opts.transparent and c.none or c.bg }, -- border: cyan
    SnacksNotifierIconDebug   = { fg = c.comment },
    SnacksNotifierTitleDebug  = { fg = c.comment },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = c.cyan, bg = opts.transparent and c.none or c.bg }, -- border: cyan
    SnacksNotifierIconError   = { fg = c.error },
    SnacksNotifierTitleError  = { fg = c.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = c.cyan, bg = opts.transparent and c.none or c.bg }, -- border: cyan
    SnacksNotifierIconInfo    = { fg = c.info },
    SnacksNotifierTitleInfo   = { fg = c.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = c.cyan, bg = opts.transparent and c.none or c.bg }, -- border: cyan
    SnacksNotifierIconTrace   = { fg = c.purple },
    SnacksNotifierTitleTrace  = { fg = c.purple },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = c.cyan, bg = opts.transparent and c.none or c.bg }, -- border: cyan
    SnacksNotifierIconWarn    = { fg = c.warning },
    SnacksNotifierTitleWarn   = { fg = c.warning },

    -- ============================================
    -- DASHBOARD: cyan for structure, orange for keys
    -- ============================================
    SnacksDashboardHeader     = { fg = c.cyan }, -- header: cyan
    SnacksDashboardFooter     = { fg = c.cyan },
    SnacksDashboardDesc       = { fg = c.blue }, -- description: blue
    SnacksDashboardIcon       = { fg = c.blue1 },
    SnacksDashboardKey        = { fg = c.orange }, -- key: orange
    SnacksDashboardSpecial    = { fg = c.purple },
    SnacksDashboardDir        = { fg = c.dark3 },

    -- ============================================
    -- INPUT / PICKER: borders cyan, titles orange
    -- ============================================
    SnacksInputBorder         = { fg = c.cyan, bg = c.bg_float }, -- input border: cyan
    SnacksInputTitle         = { fg = c.orange, bg = c.bg_float }, -- title: orange
    SnacksInputIcon           = { fg = c.blue1 },
    SnacksPickerInputBorder   = { fg = c.cyan, bg = c.bg_float }, -- border: cyan
    SnacksPickerInputTitle    = { fg = c.orange, bg = c.bg_float }, -- title: orange
    SnacksPickerBoxTitle      = { fg = c.orange, bg = c.bg_float }, -- title: orange
    SnacksPickerSelected      = { fg = c.orange, bold = true }, -- selected: orange
    SnacksPickerToggle        = { fg = c.blue1 },
    SnacksPickerPickWinCurrent= { fg = c.fg, bg = c.cyan, bold = true },
    SnacksPickerPickWin       = { fg = c.fg, bg = c.bg_search, bold = true },

    -- ============================================
    -- PROFILER
    -- ============================================
    SnacksProfilerIconInfo    = { fg = c.cyan },
    SnacksProfilerBadgeInfo   = { fg = c.cyan },
    SnacksProfilerIconTrace   = { fg = c.purple },
    SnacksProfilerBadgeTrace  = { fg = c.purple },
    SnacksFooterKey           = "SnacksProfilerIconInfo",
    SnacksFooterDesc          = "SnacksProfilerBadgeInfo",

    -- ============================================
    -- INDIENTS / MISC
    -- ============================================
    SnacksIndent              = { fg = c.fg_gutter, nocombine = true },
    SnacksIndentScope         = { fg = c.blue1, nocombine = true },
    SnacksZenIcon             = { fg = c.purple },
    SnacksGhLabel             = { fg = c.blue1, bold = true },
    SnacksDiffLabel           = { fg = c.blue1, bold = true },
    SnacksGhDiffHeader        = { fg = c.blue1 },
  }
  for i, color in ipairs(c.rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return ret
end

return M
