local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- rainbow-delimiters
    RainbowDelimiterRed    = { fg = c.gold },
    RainbowDelimiterOrange = { fg = c.primary },
    RainbowDelimiterYellow = { fg = c.amber },
    RainbowDelimiterGreen  = { fg = c.green },
    RainbowDelimiterBlue   = { fg = c.blue },
    RainbowDelimiterViolet = { fg = c.blue },
    RainbowDelimiterCyan   = { fg = c.blue },
  }
end

return M
