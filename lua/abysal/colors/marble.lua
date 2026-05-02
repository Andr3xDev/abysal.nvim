---@type Palette
return {
  -- Backgrounds
  bg            = "#dcdcdc", -- base: main editor background
  bg_dark       = "#cfcfcf", -- surface: panels/sidebars (slightly darker)
  bg_dark1      = "#c4c4c4", -- highlight2: deeper panel layer
  bg_highlight  = "#c4c4c4", -- cursor line (highlight2: medium selection)

  -- Foregrounds
  fg            = "#2f2f2f", -- main text
  fg_dark       = "#555555", -- secondary text, statusline (dark gray secondary)
  fg_gutter     = "#8c8c8c", -- line numbers, gutter (visible on light bg)

  -- Grays
  comment       = "#737373", -- comments (equal contrast in both variants)
  dark3         = "#737373", -- NonText, SpecialKey
  dark5         = "#555555", -- Conceal, qfLineNr (dark gray secondary)

  -- Blue family (color5: steel blue, darkened for light bg)
  blue          = "#365ca8", -- constants, properties, numbers, booleans
  blue0         = "#4a6dc0", -- bg_visual source, bg_search
  blue1         = "#2a4d94", -- Special, Type, border highlight
  blue2         = "#2c9279", -- info diagnostics
  blue5         = "#5878b8", -- operators, punctuation (medium blue)
  blue6         = "#8090c0", -- regex strings (muted blue)
  blue7         = "#bfcce0", -- diff change bg source, inlay hints (very light)

  -- Teal/green family (color1: turquoise, darkened for light bg)
  cyan          = "#2c9279", -- functions, methods, tags, headings, YAML/JSON root keys
  teal          = "#2c9279", -- markup links
  green         = "#2c9279", -- strings, characters
  green1        = "#2c9279", -- @property, @variable.member, healthSuccess
  green2        = "#237864", -- diff add bg source (slightly muted)

  -- Warm colors
  orange        = "#a04e1e", -- keywords, control flow, MatchParen
  yellow        = "#7a6020", -- strings, warnings (dark sand)

  -- Red family (color4: soft red, darkened for light bg)
  red           = "#a8474a", -- @tag, @variable.builtin
  red1          = "#8c2d30", -- errors, diff delete bg source

  -- Purple family (color6: lavender, darkened for light bg)
  magenta       = "#824699", -- constructors, @keyword.function
  magenta2      = "#a83280", -- vivid accent (rarely seen)
  purple        = "#824699", -- @keyword

  -- Terminal
  terminal_black = "#bcbcbc", -- terminal black, markdown inline code bg (light)

  -- Git indicators (shown in gutter)
  git = {
    add    = "#2c9279", -- color1: turquoise (darkened)
    change = "#365ca8", -- color5: steel blue (darkened)
    delete = "#a8474a", -- color4: soft red (darkened)
  },
}
