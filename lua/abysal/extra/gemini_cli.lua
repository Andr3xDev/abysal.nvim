local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
--- @return string
function M.generate(colors)
  return util.template(
    [[
{
  "name": "${_style_name}",
  "type": "custom",
  "text": {
    "primary": "${fg}",
    "secondary": "${fg_secondary}",
    "response": "${fg}"
  },
  "background": {
    "primary": "${bg}",
    "diff": {
      "added": "${diff.add}",
      "removed": "${diff.delete}"
    }
  },
  "border": {
    "default": "${bg_highlight}",
    "focused": "${blue}"
  },
  "ui": {
    "comment": "${fg_muted}",
    "symbol": "${fg_secondary}",
    "gradient": ["${blue}", "${primary}", "${blue}"]
  },
  "Background": "${bg}",
  "Foreground": "${fg}",
  "LightBlue": "${primary_anchor}",
  "AccentBlue": "${primary}",
  "AccentPurple": "${blue}",
  "AccentCyan": "${blue}",
  "AccentGreen": "${primary}",
  "AccentYellow": "${green}",
  "AccentRed": "${gold}",
  "DiffAdded": "${diff.add}",
  "DiffRemoved": "${diff.delete}",
  "Comment": "${fg_muted}",
  "Gray": "${fg_secondary}",
  "DarkGray": "${bg_elevated}",
  "GradientColors": ["${blue}", "${primary}", "${blue}"]
}
]],
    colors
  )
end

return M
