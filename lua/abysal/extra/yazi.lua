local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local yazi = util.template(
    [[
[manager]
border_symbol = "│"
border_style  = { fg = "${cyan}" }

[status]
overall   = { fg = "${fg}", bg = "${bg}" }
sep_left  = { open = "", close = "" }
sep_right = { open = "", close = "" }

[filetype]

rules = [
	# Images
	{ mime = "image/*", fg = "${yellow}" },

	# Media
	{ mime = "{audio,video}/*", fg = "${magenta}" },

	# Archives
	{ mime = "application/*zip", fg = "${red}" },
	{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "${red}" },

	# Documents
	{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${cyan}" },

	# Empty files
	# { mime = "inode/x-empty", fg = "${red}" },

	# Special files
	{ name = "*", is = "orphan", bg = "${red}" },
	{ name = "*", is = "exec"  , fg = "${green}" },

	# Fallback
	{ name = "*/", fg = "${blue}" },
	{ name = "*", fg = "${fg}" }
]
    ]],
    colors
  )
  return yazi
end

return M