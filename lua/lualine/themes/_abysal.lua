local M = {}

---@param style? string
function M.get(style)
  local colors, config = require("abysal.colors").setup({
    style = style,
  })

  local hl = {}

  hl.normal = {
    a = { bg = colors.blue, fg = colors.black },
    b = { bg = colors.fg_muted, fg = colors.blue },
    c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
  }

  hl.insert = {
    a = { bg = colors.green, fg = colors.black },
    b = { bg = colors.fg_muted, fg = colors.green },
  }

  hl.command = {
    a = { bg = colors.amber, fg = colors.black },
    b = { bg = colors.fg_muted, fg = colors.amber },
  }

  hl.visual = {
    a = { bg = colors.primary, fg = colors.black },
    b = { bg = colors.fg_muted, fg = colors.primary },
  }

  hl.replace = {
    a = { bg = colors.gold, fg = colors.black },
    b = { bg = colors.fg_muted, fg = colors.gold },
  }

  hl.terminal = {
    a = { bg = colors.green_anchor, fg = colors.black },
    b = { bg = colors.fg_muted, fg = colors.green_anchor },
  }

  hl.inactive = {
    a = { bg = colors.bg_statusline, fg = colors.blue },
    b = { bg = colors.bg_statusline, fg = colors.fg_muted, gui = "bold" },
    c = { bg = colors.bg_statusline, fg = colors.fg_muted },
  }

  if config.lualine_bold then
    for _, mode in pairs(hl) do
      mode.a.gui = "bold"
    end
  end
  return hl
end

return M
