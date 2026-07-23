local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  local dark = opts.styles.sidebars == "transparent" and c.none
    or Util.blend(c.bg_sidebar, 0.8, opts.style == "marble" and c.blue or "#000000")
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.fg_muted },
    NeoTreeFileName            = { fg = c.fg_sidebar },
    NeoTreeGitModified         = { fg = c.primary },
    NeoTreeGitStaged           = { fg = c.green_anchor },
    NeoTreeGitUntracked        = { fg = c.primary },
    NeoTreeNormal              = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC            = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive           = { fg = c.blue, bg = c.bg_elevated, bold = true },
    NeoTreeTabInactive         = { fg = c.fg_muted, bg = dark },
    NeoTreeTabSeparatorActive  = { fg = c.blue, bg = c.bg_elevated },
    NeoTreeTabSeparatorInactive= { fg = c.bg, bg = dark },
  }
end

return M
