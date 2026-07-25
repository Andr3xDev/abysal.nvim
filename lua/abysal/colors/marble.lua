---@type Palette
return {
  -- Backgrounds
  bg              = "#F0F3F4", -- base: main editor background
  bg_dark         = "#FFFFFF", -- lightest layer
  bg_elevated     = "#D8E0E3", -- surface: panels, popups, statusline
  bg_highlight    = "#C2CDD1", -- cursor line, medium selection

  -- Borders
  border_subtle   = "#AEB9BD", -- barely visible separators
  border          = "#8F9DA2", -- default window borders
  border_strong   = "#66777D", -- emphasized borders
  border_emphasis = "#425258", -- focused/active borders

  -- Text
  fg              = "#0D1518", -- main text
  fg_secondary    = "#33424A", -- secondary text, statusline
  fg_muted        = "#54646A", -- comments, gutter, disabled text

  -- Identity turquoise
  primary         = "#0D9488", -- keywords, functions: primary accent
  primary_text    = "#0A6F64", -- primary accent on text
  primary_anchor  = "#14B8A6", -- links, deeper turquoise anchor
  primary_muted   = "#2E8078", -- structural/secondary turquoise accent
  mauve           = "#6B3D7B", -- mauve: property/field/member access (distinct hue, ~285°, unused territory)

  -- Functional
  amber           = "#8A5A1D", -- warnings, class/type names (Python); merged from former amber_mid
  coral           = "#C43D22", -- vivid warm accent
  red             = "#C13034", -- errors, tags, builtins
  red_anchor      = "#E5484D", -- deeper red anchor
  green           = "#2A8049", -- success, diagnostics ok
  green_anchor    = "#3DB667", -- deeper green anchor
  seafoam         = "#2E8A63", -- seafoam: numbers/booleans/constants (distinct from strings/types on gold)
  blue            = "#2F4EA8", -- generic detail accent
  gold            = "#8A7818", -- strings, types

  -- Detail
  text_on_solid   = "#F5F6F5", -- text painted on solid accent backgrounds

  -- Selection
  selection_bg    = "#CBE4E1", -- visual selection background

  -- Git indicators (shown in gutter)
  git = {
    add    = "#2A8049",
    change = "#8A5A1D",
    delete = "#C13034",
  },
}
