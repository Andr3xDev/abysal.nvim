local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText           = { fg = c.bg_elevated },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.fg_muted, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.primary_anchor, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.primary_anchor, bg = c.none },
    CmpItemKindCodeium     = { fg = c.primary_anchor, bg = c.none },
    CmpItemKindCopilot     = { fg = c.primary_anchor, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.primary_anchor, bg = c.none },
    CmpItemKindDefault     = { fg = c.fg_secondary, bg = c.none },
    CmpItemKindTabNine     = { fg = c.primary_anchor, bg = c.none },
    CmpItemMenu            = { fg = c.fg_muted, bg = c.none },
  }

  require("abysal.groups.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
