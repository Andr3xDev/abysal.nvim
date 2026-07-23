local M = {}

M.url = "https://github.com/lambdalisue/glyph-palette.vim"

---@type abysal.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.red },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.amber },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.green_anchor },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.gold },
  }
end

return M
