local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tilix = util.template(
    [[
{
    "name": "${_style_name}",
    "comment": "",
    "use-theme-colors": false,
    "foreground-color": "${fg}",
    "background-color": "${bg}",
    "palette": [
        "${black}",
        "${gold}",
        "${green}",
        "${amber}",
        "${blue}",
        "${primary}",
        "${blue}",
        "${fg_secondary}",
        "${bg_elevated}",
        "${gold}",
        "${green}",
        "${amber}",
        "${blue}",
        "${primary}",
        "${blue}",
        "${fg}"
    ]
}
  ]],
    colors
  )
  return tilix
end

return M
