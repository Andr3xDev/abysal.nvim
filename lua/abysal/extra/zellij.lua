local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local zellij = util.template(
    [=[
// Abysal Zellij Colors
// Add this file to your `CONFIG_DIR/themes` directory as described here:
// https://zellij.dev/documentation/themes#getting-zellij-to-pick-up-the-theme

themes {
    ${_name} {
        fg "${fg}"
        bg "${bg_highlight}"
        // Black should match the terminal background color
        // This ensures the top and bottom bars are transparent
        black "${bg}"
        red "${gold}"
        green "${green}"
        yellow "${amber}"
        blue "${blue}"
        magenta "${primary}"
        cyan "${blue}"
        white "${fg_secondary}"
        orange "${primary}"
    }
}

]=],
    colors
  )

  return zellij
end

return M
