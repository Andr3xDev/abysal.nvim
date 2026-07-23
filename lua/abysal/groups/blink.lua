local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                 = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.bg_elevated },
    BlinkCmpKindCodeium         = { fg = c.primary_anchor, bg             = c.none },
    BlinkCmpKindCopilot         = { fg = c.primary_anchor, bg             = c.none },
    BlinkCmpKindDefault         = { fg = c.fg_secondary, bg          = c.none },
    BlinkCmpKindSupermaven      = { fg = c.primary_anchor, bg             = c.none },
    BlinkCmpKindTabNine         = { fg = c.primary_anchor, bg             = c.none },
    BlinkCmpLabel               = { fg = c.fg, bg               = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.fg_muted, bg        = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.primary_anchor, bg            = c.none },
    BlinkCmpMenu                = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.border_strong, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border_highlight, bg = c.bg_float },
  }

  require("abysal.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
