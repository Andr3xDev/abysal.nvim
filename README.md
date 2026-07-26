# abysal.nvim

Dark and light Neovim colorscheme with a dual-focus palette: **primary** for
functions and **amber** for control flow. Everything else is subordinate.

## Styles

| Style | Background | `vim.o.bg` |
|-------|-----------|------------|
| `obsidian` | `#1c1c1c` | dark |
| `marble` | `#dcdcdc` | light |

## Install

```lua
-- lazy.nvim
{
  "andrex/abysal.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

## Usage

```lua
vim.cmd.colorscheme("abysal")
```

```vim
colorscheme abysal
colorscheme abysal-obsidian
colorscheme abysal-marble
```

## Palette

| Color | Hex | Role |
|-------|-----|------|
| primary | `#52c9b0` | functions, methods |
| amber | `#e28e5a` | control keywords (`if`, `for`, `return`) |
| gold | `#d1b171` | strings |
| red | `#d47779` | types, classes *(italic)* |
| blue | `#6b92e3` | constants, properties, numbers |
| mauve | `#b87bce` | `function`/`def` keyword *(italic)* |
| fg | `#d4d4d4` | variables, parameters (no accent) |
| fg_muted | `#737373` | comments *(italic)* |
| fg_secondary | `#8c8c8c` | operators, punctuation |

## Config

```lua
require("abysal").setup({
  style = "obsidian",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },
  dim_inactive = false,
  lualine_bold = false,
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
  cache = true,
  plugins = {
    all = package.loaded.lazy == nil,
    auto = true,
  },
})
```

## Overrides

```lua
require("abysal").setup({
  on_colors = function(c)
    c.error = "#ff0000"
  end,
  on_highlights = function(hl, c)
    hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_muted }
  end,
})
```

## Complementary themes

For a consistent look across your whole setup:

- **GTK** — use `obsidian`/`marble` hex values with
  [oomox](https://github.com/themix-project/oomox) or
  [Gradience](https://github.com/GradienceTeam/Gradience)
- **VSCode** — export via `extras/sublime` and convert with
  [theme-converter](https://github.com/microsoft/vscode-theme-converter)
- **Qt / KDE** — apply the palette through
  [KDE Color Scheme](https://docs.kde.org/stable5/en/plasma-workspace/kcontrol/colors)
- **Alacritty / Kitty / WezTerm / Tmux / Fish / iTerm / foot** —
  ready-made configs in `extras/` (45+ tools)
- **Hyprland** — see rice section below

### Rice reference

```
workspace-active  primary #52c9b0
window-active     amber   #e28e5a
window-inactive   #2e2e2e
critical-notify   red     #d47779
system-info       blue    #6b92e3
scratchpad        mauve   #b87bce
```

Proportion in bars: ~70% base+grays, ~12% primary, ~8% amber, ~6% blue+red, ~4% mauve.

## Extras

Generated configs for 45+ tools live in `extras/`. Source templates in
`lua/abysal/extra/`. Rebuild with:

```sh
./scripts/build
```

## License

GNU General Public License v3.0
