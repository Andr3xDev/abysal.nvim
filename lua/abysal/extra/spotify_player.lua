local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [=[
[[themes]]
name = "${_style_name}"
[themes.palette]
background = "${bg_elevated}"
foreground = "${fg_secondary}"
black = "${bg_elevated}"
red = "${gold}"
green = "${green}"
yellow = "${amber}"
blue = "${blue}"
magenta = "${primary}"
cyan = "${blue}"
white = "${terminal.white}"
bright_black = "${bg}"
bright_red = "${red}"
bright_green = "${green_anchor}"
bright_yellow = "${primary}"
bright_blue = "${primary_anchor}"
bright_magenta = "${primary_anchor}"
bright_cyan = "${fg_muted}"
bright_white = "${fg}"
]=]

return M
