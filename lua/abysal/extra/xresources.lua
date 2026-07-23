local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local xr = util.template(
    [[
! Abysal colors for Xresources

*background: ${bg}
*foreground: ${fg}

*color0: ${black}
*color1: ${gold}
*color2: ${green}
*color3: ${amber}
*color4: ${blue}
*color5: ${primary}
*color6: ${blue}
*color7: ${fg_secondary}

*color8: ${bg_elevated}
*color9: ${gold}
*color10: ${green}
*color11: ${amber}
*color12: ${blue}
*color13: ${primary}
*color14: ${blue}
*color15: ${fg}
 
]],
    colors
  )
  return xr
end

return M
