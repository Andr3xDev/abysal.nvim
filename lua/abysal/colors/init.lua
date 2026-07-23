local Util = require("abysal.util")

local M = {}

---@type table<string, Palette|fun(opts:abysal.Config):Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("abysal.colors." .. style))
  end,
})

---@param opts? abysal.Config
function M.setup(opts)
  opts = require("abysal.config").extend(opts)

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts) --[[@as Palette]]
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green, 0.25),
    delete = Util.blend_bg(colors.red, 0.25),
    change = Util.blend_bg(colors.blue, 0.15),
    text = colors.blue,
  }

  colors.git.ignore = colors.fg_muted
  colors.black = colors.bg_dark
  colors.border_highlight = colors.border_emphasis

  -- Popups and statusline always get an elevated background
  colors.bg_popup = colors.bg_elevated
  colors.bg_statusline = colors.bg_elevated

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_elevated
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or colors.bg

  colors.bg_visual = colors.selection_bg
  colors.bg_search = Util.blend_bg(colors.primary, 0.35)
  colors.fg_sidebar = colors.fg_secondary
  colors.fg_float = colors.fg

  colors.error = colors.red
  colors.todo = colors.amber
  colors.warning = colors.amber
  colors.info = colors.blue
  colors.hint = colors.fg_muted

  colors.rainbow = {
    colors.primary,
    colors.amber,
    colors.green,
    colors.blue,
    colors.gold,
    colors.red,
    colors.primary_muted,
    colors.amber_mid,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.border,
    black_bright   = colors.fg_muted,
    red            = colors.red_anchor,
    red_bright     = colors.red,
    green          = colors.primary_anchor,
    green_bright   = colors.primary,
    yellow         = colors.amber,
    yellow_bright  = Util.brighten(colors.amber),
    blue           = colors.amber_mid,
    blue_bright    = Util.brighten(colors.amber_mid),
    magenta        = colors.primary_anchor,
    magenta_bright = colors.primary,
    cyan           = colors.blue,
    cyan_bright    = Util.brighten(colors.blue),
    white          = colors.fg_secondary,
    white_bright   = colors.fg,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
