local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    -- Borders: strong (active cmdline input)
    NoiceCmdlinePopupBorder        = { fg = c.border_strong }, -- default ":" cmdline border: matches Input variant
    NoiceCmdlinePopupBorderInput   = { fg = c.border_strong }, -- input cmdline border: strong
    NoiceCmdlinePopupBorderLua     = { fg = c.border_strong }, -- lua cmdline border: strong
    -- Icons: details in orange/gold
    NoiceCmdlineIcon               = { fg = c.primary }, -- default ":" cmdline icon: turquoise
    NoiceCmdlineIconInput          = { fg = c.primary }, -- input icon: orange
    NoiceCmdlineIconLua            = { fg = c.gold }, -- lua icon: gold (detail, non-alert variant)
    -- Titles
    NoiceCmdlinePopupTitle         = { fg = c.primary }, -- default ":" cmdline title: turquoise
    NoiceCmdlinePopupTitleInput    = { fg = c.primary },
    NoiceCmdlinePopupTitleLua      = { fg = c.gold }, -- lua title: gold (detail, non-alert variant)
    -- Completion
    NoiceCompletionItemKindDefault = { fg = c.fg_secondary, bg = c.none },
    -- Scrollbar
    NoiceScrollbar                 = { fg = c.primary_muted }, -- scrollbar track: muted turquoise
    NoiceScrollbarThumb           = { fg = c.primary },
  }
  require("abysal.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
