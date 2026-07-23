local util = require("abysal.util")

local M = {}

-- @param colors ColorScheme
function M.generate(colors)
  local xfceterm = util.template(
    [[
[Scheme]
Name="${_name}"
ColorBackground=${bg}
ColorForeground=${fg}

ColorSelectionBackground=${bg_visual}
ColorSelection=${fg}

ColorPalette=${black};${gold};${green};${amber};${blue};${primary};${blue};${fg_secondary};${bg_elevated};${gold};${green};${amber};${blue};${primary};${blue};${fg}
]],
    colors
  )
  return xfceterm
end

return M
