local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local windows_terminal = util.template(
    [[
# Add the following object to your Windows Terminal configuration
# https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme
{
    "background": "${bg}",
    "black": "${black}",
    "blue": "${blue}",
    "brightBlack": "${bg_elevated}",
    "brightBlue": "${blue}",
    "brightCyan": "${blue}",
    "brightGreen": "${green}",
    "brightPurple": "${blue}",
    "brightRed": "${gold}",
    "brightWhite": "${fg}",
    "brightYellow": "${amber}",
    "cursorColor": "${fg}",
    "cyan": "${blue}",
    "foreground": "${fg}",
    "green": "${green}",
    "name": "${_style_name}",
    "purple": "${primary}",
    "red": "${gold}",
    "selectionBackground": "${bg_visual}",
    "white": "${fg_secondary}",
    "yellow": "${amber}"
}
]],
    colors
  )

  return windows_terminal
end

return M
