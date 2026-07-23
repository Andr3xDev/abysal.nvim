local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-abysal-${_style}-bg: oklch(from ${bg} l c h);
  --color-abysal-${_style}-bg-elevated: oklch(from ${bg_elevated} l c h);
  --color-abysal-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-abysal-${_style}-bg-float: var(--color-abysal-${_style}-bg-elevated);
  --color-abysal-${_style}-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-abysal-${_style}-bg-popup: var(--color-abysal-${_style}-bg-elevated);
  --color-abysal-${_style}-bg-search: var(--color-abysal-${_style}-selection-bg);
  --color-abysal-${_style}-bg-sidebar: var(--color-abysal-${_style}-bg-elevated);
  --color-abysal-${_style}-bg-statusline: var(--color-abysal-${_style}-bg-elevated);
  --color-abysal-${_style}-bg-visual: oklch(from ${bg_visual} l c h);
  --color-abysal-${_style}-black: oklch(from ${black} l c h);
  --color-abysal-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-abysal-${_style}-blue: oklch(from ${blue} l c h);
  --color-abysal-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-abysal-${_style}-selection-bg: oklch(from ${selection_bg} l c h);
  --color-abysal-${_style}-primary-anchor: oklch(from ${primary_anchor} l c h);
  --color-abysal-${_style}-info-accent: oklch(from ${blue} l c h);
  --color-abysal-${_style}-fg-muted-alt: oklch(from ${fg_muted} l c h);
  --color-abysal-${_style}-detail-accent: oklch(from ${blue} l c h);
  --color-abysal-${_style}-border: var(--color-abysal-${_style}-black);
  --color-abysal-${_style}-border-highlight: oklch(from ${border_highlight} l c h);
  --color-abysal-${_style}-fg-muted: oklch(from ${fg_muted} l c h);
  --color-abysal-${_style}-blue-secondary: oklch(from ${blue} l c h);
  --color-abysal-${_style}-blue-secondary-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-abysal-${_style}-fg-muted-dim: oklch(from ${fg_muted} l c h);
  --color-abysal-${_style}-fg-secondary-alt: oklch(from ${fg_secondary} l c h);
  --color-abysal-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-abysal-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-abysal-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-abysal-${_style}-diff-text: var(--color-abysal-${_style}-detail-accent);
  --color-abysal-${_style}-error: var(--color-abysal-${_style}-red);
  --color-abysal-${_style}-fg: oklch(from ${fg} l c h);
  --color-abysal-${_style}-fg-secondary: oklch(from ${fg_secondary} l c h);
  --color-abysal-${_style}-fg-float: var(--color-abysal-${_style}-fg);
  --color-abysal-${_style}-fg-muted-alt2: oklch(from ${fg_muted} l c h);
  --color-abysal-${_style}-fg-sidebar: var(--color-abysal-${_style}-fg-secondary);
  --color-abysal-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-abysal-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-abysal-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-abysal-${_style}-git-ignore: var(--color-abysal-${_style}-fg-muted-dim);
  --color-abysal-${_style}-green: oklch(from ${green} l c h);
  --color-abysal-${_style}-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-abysal-${_style}-green-anchor: oklch(from ${green_anchor} l c h);
  --color-abysal-${_style}-hint: var(--color-abysal-${_style}-primary-anchor-secondary);
  --color-abysal-${_style}-info: var(--color-abysal-${_style}-info-accent);
  --color-abysal-${_style}-primary-secondary: oklch(from ${primary} l c h);
  --color-abysal-${_style}-primary-secondary-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-abysal-${_style}-primary-anchor-alt: oklch(from ${primary_anchor} l c h);
  --color-abysal-${_style}-primary-alt: oklch(from ${primary} l c h);
  --color-abysal-${_style}-blue-tertiary: oklch(from ${blue} l c h);
  --color-abysal-${_style}-rainbow1: var(--color-abysal-${_style}-blue);
  --color-abysal-${_style}-rainbow2: var(--color-abysal-${_style}-amber);
  --color-abysal-${_style}-rainbow3: var(--color-abysal-${_style}-green);
  --color-abysal-${_style}-rainbow4: var(--color-abysal-${_style}-primary-anchor-secondary);
  --color-abysal-${_style}-rainbow5: var(--color-abysal-${_style}-primary-secondary);
  --color-abysal-${_style}-rainbow6: var(--color-abysal-${_style}-blue-tertiary);
  --color-abysal-${_style}-rainbow7: var(--color-abysal-${_style}-primary-alt);
  --color-abysal-${_style}-rainbow8: var(--color-abysal-${_style}-red);
  --color-abysal-${_style}-gold-role: oklch(from ${gold} l c h);
  --color-abysal-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-abysal-${_style}-red: oklch(from ${red} l c h);
  --color-abysal-${_style}-primary-anchor-secondary: oklch(from ${primary_anchor} l c h);
  --color-abysal-${_style}-todo: var(--color-abysal-${_style}-blue);
  --color-abysal-${_style}-warning: var(--color-abysal-${_style}-amber);
  --color-abysal-${_style}-amber: oklch(from ${amber} l c h);
  --color-abysal-${_style}-amber-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
