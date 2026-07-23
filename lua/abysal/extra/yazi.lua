local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local yazi = util.template(
    [[
[manager]
border_symbol = "│"
border_style  = { fg = "${blue}" }

[status]
overall   = { fg = "${fg}", bg = "${bg}" }
sep_left  = { open = "", close = "" }
sep_right = { open = "", close = "" }

[filetype]

rules = [
	# Images
	{ mime = "image/*", fg = "${amber}" },

	# Media
	{ mime = "{audio,video}/*", fg = "${primary}" },

	# Archives
	{ mime = "application/*zip", fg = "${gold}" },
	{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "${gold}" },

	# Documents
	{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${blue}" },

	# Empty files
	# { mime = "inode/x-empty", fg = "${gold}" },

	# Special files
	{ name = "*", is = "orphan", bg = "${gold}" },
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