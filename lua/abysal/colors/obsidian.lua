---@type Palette
return {
  -- Backgrounds
  bg            = "#1c1c1c", -- base: main editor background
  bg_dark       = "#262626", -- surface: secondary background (sidebars/panels)
  bg_dark1      = "#0f0f0f", -- darkest layer
  bg_highlight  = "#333333", -- cursor line, medium selection (highlight2)

  -- Foregrounds
  fg            = "#d4d4d4", -- main text
  fg_dark       = "#8c8c8c", -- secondary text, statusline
  fg_gutter     = "#525252", -- line numbers, gutter

  -- Grays
  comment       = "#737373", -- color8: comments (always dimmer than fg_dark)
  dark3         = "#737373", -- NonText, SpecialKey
  dark5         = "#8c8c8c", -- Conceal, qfLineNr

  -- Blue family (color5: steel blue)
  blue          = "#6b92e3", -- functions, titles, labels
  blue0         = "#2d4299", -- bg_visual source, bg_search
  blue1         = "#89aae8", -- Special, Type, border highlight
  blue2         = "#52c9b0", -- info diagnostics
  blue5         = "#8ca8e0", -- operators, punctuation (muted blue)
  blue6         = "#b0ccf0", -- regex strings (light blue)
  blue7         = "#2c4470", -- diff change bg source, inlay hints

  -- Teal/green family (color1: turquoise)
  cyan          = "#52c9b0", -- keywords, preprocessor
  teal          = "#52c9b0", -- markup links
  green         = "#52c9b0", -- strings, characters
  green1        = "#52c9b0", -- @property, @variable.member, healthSuccess
  green2        = "#3ea897", -- diff add bg source (slightly muted)

  -- Warm colors
  orange        = "#e28e5a", -- constants, MatchParen, IncSearch bg
  yellow        = "#d1b171", -- warnings, @variable.parameter (sand)

  -- Red family (color4: soft red)
  red           = "#d47779", -- @tag, @variable.builtin
  red1          = "#c44040", -- errors, diff delete bg source

  -- Purple family (color6: lavender)
  magenta       = "#b87bce", -- identifiers, statements, @keyword.function
  magenta2      = "#d45daa", -- vivid accent (rarely seen, Foo test highlight)
  purple        = "#b87bce", -- @keyword

  -- Terminal
  terminal_black = "#2e2e2e", -- terminal black, markdown inline code bg

  -- Git indicators (shown in gutter)
  git = {
    add    = "#52c9b0", -- color1: turquoise
    change = "#6b92e3", -- color5: steel blue
    delete = "#d47779", -- color4: soft red
  },
}
