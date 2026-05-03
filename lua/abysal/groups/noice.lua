local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    -- Borders: cyan (structural)
    NoiceCmdlinePopupBorderInput   = { fg = c.cyan }, -- input cmdline border: cyan
    NoiceCmdlinePopupBorderLua     = { fg = c.cyan }, -- lua cmdline border: cyan
    -- Icons: details in orange/yellow
    NoiceCmdlineIconInput          = { fg = c.orange }, -- input icon: orange
    NoiceCmdlineIconLua            = { fg = c.yellow }, -- lua icon: yellow (detail)
    -- Titles
    NoiceCmdlinePopupTitleInput    = { fg = c.orange },
    NoiceCmdlinePopupTitleLua      = { fg = c.yellow },
    -- Completion
    NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },
    -- Scrollbar
    NoiceScrollbar                 = { fg = c.cyan },
    NoiceScrollbarThumb           = { fg = c.orange },
  }
  require("abysal.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
