local M = {}

---@param style? string
function M.get(style)
  local colors, config = require("abysal.colors").setup({
    style = style,
  })

  local hl = {}

  hl.normal = {
    a = { bg = colors.primary, fg = colors.text_on_solid },
    b = { bg = colors.bg_elevated, fg = colors.fg },
    c = { bg = colors.bg, fg = colors.fg_muted },
    x = { bg = colors.bg, fg = colors.fg_muted },
    y = { bg = colors.bg_elevated, fg = colors.fg },
    z = { bg = colors.primary, fg = colors.text_on_solid },
  }

  hl.insert = {
    a = { bg = colors.amber, fg = colors.text_on_solid },
    b = { bg = colors.bg_elevated, fg = colors.fg },
  }

  hl.command = {
    a = { bg = colors.blue, fg = colors.text_on_solid },
    b = { bg = colors.bg_elevated, fg = colors.fg },
  }

  hl.visual = {
    a = { bg = colors.green, fg = colors.text_on_solid },
    b = { bg = colors.bg_elevated, fg = colors.fg },
  }

  hl.replace = {
    a = { bg = colors.gold, fg = colors.text_on_solid },
    b = { bg = colors.bg_elevated, fg = colors.fg },
  }

  hl.terminal = {
    a = { bg = colors.green_anchor, fg = colors.text_on_solid },
    b = { bg = colors.bg_elevated, fg = colors.fg },
  }

  hl.inactive = {
    a = { bg = colors.bg, fg = colors.fg_muted },
    b = { bg = colors.bg, fg = colors.fg_muted },
    c = { bg = colors.bg, fg = colors.fg_muted },
  }

  if config.lualine_bold then
    for _, mode in pairs(hl) do
      mode.a.gui = "bold"
      if mode.z then
        mode.z.gui = "bold"
      end
    end
  end
  return hl
end

return M
