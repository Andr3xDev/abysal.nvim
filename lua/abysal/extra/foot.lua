local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local footColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      footColors[k] = v:gsub("^#", "")
    end
  end

  local foot = util.template(
    [[
[cursor]
color=${fg} ${bg_visual}

[colors]
foreground=${fg}
background=${bg}
selection-foreground=${fg}
selection-background=${bg_visual}
urls=${green_anchor}

regular0=${black}
regular1=${gold}
regular2=${green}
regular3=${amber}
regular4=${blue}
regular5=${primary}
regular6=${blue}
regular7=${fg_secondary}

bright0=${bg_elevated}
bright1=${gold}
bright2=${green}
bright3=${amber}
bright4=${blue}
bright5=${primary}
bright6=${blue}
bright7=${fg}

16=${primary}
17=${red}]],
    footColors
  )

  return foot
end

return M
