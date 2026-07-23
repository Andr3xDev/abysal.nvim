local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local terminator = util.template(
    [=[
[[${_style_name}]]
  palette = "${black}:${gold}:${green}:${amber}:${blue}:${primary}:${blue}:${fg_secondary}:${bg_elevated}:${gold}:${green}:${amber}:${blue}:${primary}:${blue}:${blue}"
  background_color = "${bg}"
  foreground_color = "${fg}"
  ]=],
    colors
  )
  return terminator
end

return M
