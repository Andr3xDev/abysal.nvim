local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.delta = {
    add = util.blend_bg(colors.green, 0.45),
    delete = util.blend_bg(colors.red, 0.45),
  }
  local delta = util.template(
    [[
[delta]
  minus-style                   = syntax "${diff.delete}"
  minus-non-emph-style          = syntax "${diff.delete}"
  minus-emph-style              = syntax "${delta.delete}"
  minus-empty-line-marker-style = syntax "${diff.delete}"
  line-numbers-minus-style      = "${git.delete}"
  plus-style                    = syntax "${diff.add}"
  plus-non-emph-style           = syntax "${diff.add}"
  plus-emph-style               = syntax "${delta.add}"
  plus-empty-line-marker-style  = syntax "${diff.add}"
  line-numbers-plus-style       = "${git.add}"
  line-numbers-zero-style       = "${fg_muted}"
]],
    colors
  )
  return delta
end

return M
