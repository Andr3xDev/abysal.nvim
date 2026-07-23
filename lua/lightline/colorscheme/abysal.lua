local colors = require("abysal.colors").setup()

local abysal = {}

abysal.normal = {
  left = { { colors.black, colors.blue }, { colors.blue, colors.fg_muted } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue }, { colors.blue, colors.fg_muted } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

abysal.insert = {
  left = { { colors.black, colors.green }, { colors.blue, colors.bg } },
}

abysal.visual = {
  left = { { colors.black, colors.primary }, { colors.blue, colors.bg } },
}

abysal.replace = {
  left = { { colors.black, colors.gold }, { colors.blue, colors.bg } },
}

abysal.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.fg_muted, colors.bg } },
  middle = { { colors.fg_muted, colors.bg_statusline } },
  right = { { colors.fg_muted, colors.bg_statusline }, { colors.fg_muted, colors.bg } },
}

abysal.tabline = {
  left = { { colors.fg_muted, colors.bg_highlight }, { colors.fg_muted, colors.bg } },
  middle = { { colors.fg_muted, colors.bg_statusline } },
  right = { { colors.fg_muted, colors.bg_statusline }, { colors.fg_muted, colors.bg } },
  tabsel = { { colors.blue, colors.fg_muted }, { colors.fg_muted, colors.bg } },
}

return abysal
