---@type Palette
return {
  -- Backgrounds
  bg              = "#0E161A", -- base: main editor background
  bg_dark         = "#0A0F11", -- darkest layer
  bg_elevated     = "#152025", -- surface: panels, popups, statusline
  bg_highlight    = "#19262C", -- cursor line, medium selection

  -- Borders
  border_subtle   = "#19262C", -- barely visible separators
  border          = "#1D2C34", -- default window borders
  border_strong   = "#324A54", -- emphasized borders
  border_emphasis = "#516E7A", -- focused/active borders

  -- Text
  fg              = "#E3EBEA", -- main text
  fg_secondary    = "#7A8B8E", -- secondary text, statusline
  fg_muted        = "#5B6E72", -- comments, gutter, disabled text

  -- Identity turquoise
  primary         = "#2DD4BF", -- keywords, functions: primary accent
  primary_text    = "#2DD4BF", -- primary accent on text
  primary_anchor  = "#14B8A6", -- links, deeper turquoise anchor
  primary_muted   = "#1F8F82", -- structural/secondary turquoise accent
  mauve           = "#AB8AB7", -- mauve: property/field/member access (distinct hue, ~285°, unused territory)

  -- Functional
  amber           = "#D9973A", -- warnings, class/type names (Python); merged from former amber_mid
  coral           = "#FF6B52", -- vivid warm accent
  red             = "#FF6369", -- errors, tags, builtins
  red_anchor      = "#E5484D", -- deeper red anchor
  green           = "#5FD988", -- success, diagnostics ok
  green_anchor    = "#3DB667", -- deeper green anchor
  seafoam         = "#6EB99A", -- seafoam: numbers/booleans/constants (distinct from strings/types on gold)
  blue            = "#6C93E8", -- generic detail accent
  gold            = "#E8C468", -- strings, types

  -- Detail
  text_on_solid   = "#0C1214", -- text painted on solid accent backgrounds

  -- Selection
  selection_bg    = "#17393B", -- visual selection background

  -- Git indicators (shown in gutter)
  git = {
    add    = "#5FD988", -- green
    change = "#D9973A", -- amber (doc: git modified = amber, not blue)
    delete = "#FF6369", -- red
  },
}
