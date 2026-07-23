local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fishColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fishColors[k] = v:gsub("^#", "")
    end
  end

  local fish = util.template(
    [[
# Abysal

# Syntax Highlighting Colors
fish_color_normal ${fg}
fish_color_command ${blue}
fish_color_keyword ${primary}
fish_color_quote ${amber}
fish_color_redirection ${fg}
fish_color_end ${primary}
fish_color_option ${primary}
fish_color_error ${gold}
fish_color_param ${blue}
fish_color_comment ${fg_muted}
fish_color_selection --background=${bg_visual}
fish_color_search_match --background=${bg_visual}
fish_color_operator ${green}
fish_color_escape ${primary}
fish_color_autosuggestion ${fg_muted}

# Completion Pager Colors
fish_pager_color_progress ${fg_muted}
fish_pager_color_prefix ${blue}
fish_pager_color_completion ${fg}
fish_pager_color_description ${fg_muted}
fish_pager_color_selected_background --background=${bg_visual}
]],
    fishColors
  )

  return fish
end

return M
