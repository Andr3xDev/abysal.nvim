local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local zathura = util.template(
    [[
# Abysal color theme for Zathura
# Swaps Foreground for Background to get a light version if the user prefers
#
# Abysal color theme
#
set notification-error-bg "${gold}"
set notification-error-fg "${fg}"
set notification-warning-bg "${amber}"
set notification-warning-fg "${bg_elevated}"
set notification-bg "${bg}"
set notification-fg "${fg}"
set completion-bg "${bg}"
set completion-fg "${fg_secondary}"
set completion-group-bg "${bg}"
set completion-group-fg "${fg_secondary}"
set completion-highlight-bg "${bg_elevated}"
set completion-highlight-fg "${fg}"
set index-bg "${bg}"
set index-fg "${fg}"
set index-active-bg "${bg_elevated}"
set index-active-fg "${fg}"
set inputbar-bg "${bg}"
set inputbar-fg "${fg}"
set statusbar-bg "${bg}"
set statusbar-fg "${fg}"
set highlight-color "${amber}"
set highlight-active-color "${green}"
set default-bg "${bg}"
set default-fg "${fg}"
set render-loading true
set render-loading-fg "${bg}"
set render-loading-bg "${fg}"
#
# Recolor mode settings
# <C-r> to switch modes
#
set recolor-lightcolor "${bg}"
set recolor-darkcolor "${fg}"
]],
    colors
  )
  return zathura
end

return M
