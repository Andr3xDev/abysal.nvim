local util = require("abysal.util")

local M = {}

---@param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)

  local btop = util.template(
    [[
# Theme: ${_name}
# By: Folke Lemaitre

theme[main_bg]="${bg}"
theme[main_fg]="${fg}"

# Title color for boxes
theme[title]="${fg}"

# Highlight color for keyboard shortcuts
theme[hi_fg]="${primary}"

# Selected item in processes box
theme[selected_bg]="${bg_highlight}"
theme[selected_fg]="${blue}"

# Misc colors for processes box including mini cpu graphs, details memory graph and details status text
theme[proc_misc]="${blue}"

# Cpu box outline color
theme[cpu_box]="${border_highlight}"

# Memory/disks box outline color
theme[mem_box]="${border_highlight}"

# Net up/down box outline color
theme[net_box]="${border_highlight}"

# Processes box outline color
theme[proc_box]="${border_highlight}"

# Box divider line and small boxes line color
theme[div_line]="${border_highlight}"

# Temperature graph colors
theme[temp_start]="${green}"
theme[temp_mid]="${amber}"
theme[temp_end]="${gold}"

# CPU graph colors
theme[cpu_start]="${green}"
theme[cpu_mid]="${amber}"
theme[cpu_end]="${gold}"

# Mem/Disk free meter
theme[free_start]="${green}"
theme[free_mid]="${amber}"
theme[free_end]="${gold}"

# Mem/Disk cached meter
theme[cached_start]="${green}"
theme[cached_mid]="${amber}"
theme[cached_end]="${gold}"

# Mem/Disk available meter
theme[available_start]="${green}"
theme[available_mid]="${amber}"
theme[available_end]="${gold}"

# Mem/Disk used meter
theme[used_start]="${green}"
theme[used_mid]="${amber}"
theme[used_end]="${gold}"

# Download graph colors
theme[download_start]="${green}"
theme[download_mid]="${amber}"
theme[download_end]="${gold}"

# Upload graph colors
theme[upload_start]="${green}"
theme[upload_mid]="${amber}"
theme[upload_end]="${gold}"]],
    colors
  )

  return btop
end

return M
