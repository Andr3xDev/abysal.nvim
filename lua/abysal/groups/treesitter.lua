local Util = require("abysal.util")

local M = {}

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    ["@annotation"]                 = { fg = c.purple, italic = true }, -- decorators/annotations: like @attribute
    ["@attribute"]                  = { fg = c.purple, italic = true },
    ["@boolean"]                    = "Boolean",
    ["@character"]                  = "Character",
    ["@character.printf"]           = "SpecialChar",
    ["@character.special"]          = "SpecialChar",
    ["@comment"]                    = "Comment",
    ["@comment.error"]              = { fg = c.error },
    ["@comment.hint"]               = { fg = c.hint },
    ["@comment.info"]               = { fg = c.info },
    ["@comment.note"]               = { fg = c.hint },
    ["@comment.todo"]               = { fg = c.todo },
    ["@comment.warning"]            = { fg = c.warning },
    ["@comment.documentation"]      = { fg = c.comment, style = opts.styles.comments }, -- Javadoc, doc comments: same as regular comments
    ["@constant"]                   = "Constant",
    ["@constant.builtin"]           = "Special",
    ["@constant.macro"]             = "Define",
    ["@constructor"]                = { fg = c.purple, italic = true }, -- fn keyword: describes what something is
    ["@constructor.tsx"]            = { fg = c.purple, italic = true }, -- TSX constructor: purple like fn keyword
    ["@decorator"]                  = { fg = c.purple, italic = true }, -- decorators (Python, TypeScript)
    ["@diff.delta"]                 = "DiffChange",
    ["@diff.minus"]                 = "DiffDelete",
    ["@diff.plus"]                  = "DiffAdd",
    ["@field"]                       = { fg = c.blue }, -- struct/class fields: like properties
    ["@function"]                   = "Function",
    ["@function.builtin"]           = { fg = c.cyan }, -- built-in functions: still functions (print, len)
    ["@function.call"]              = "@function",
    ["@function.macro"]             = "Macro",
    ["@function.method"]            = "Function",
    ["@function.method.call"]       = "@function.method",
    ["@keyword"]                    = { fg = c.orange, style = opts.styles.keywords }, -- PRIMARY: flow keywords
    ["@keyword.conditional"]        = "Conditional",
    ["@keyword.control"]            = { fg = c.orange }, -- control keywords: return, yield, await
    ["@keyword.coroutine"]          = "@keyword",
    ["@keyword.debug"]              = "Debug",
    ["@keyword.directive"]          = "PreProc",
    ["@keyword.directive.define"]   = "Define",
    ["@keyword.exception"]          = "Exception",
    ["@keyword.function"]           = { fg = c.orange }, -- def/fn/function: orange (control keyword)
    ["@keyword.function.python"]    = { fg = c.orange }, -- def: Neovim scoped variant
    ["@keyword.function.javascript"]= { fg = c.orange }, -- function: Neovim scoped variant
    ["@keyword.function.typescript"]= { fg = c.orange }, -- function: Neovim scoped variant
    ["@keyword.function.lua"]       = { fg = c.orange }, -- function: Neovim scoped variant
    ["@keyword.import"]             = "Include", -- imports: orange (control keywords)
    ["@keyword.operator"]           = { fg = c.orange }, -- what decides: `and`, `or`, `not`
    ["@keyword.repeat"]             = "Repeat",
    ["@keyword.return"]             = "@keyword",
    ["@keyword.storage"]            = "StorageClass",
    ["@keyword.type"]               = { fg = c.orange, style = opts.styles.keywords }, -- class, interface, enum, record
    ["@keyword.modifier"]           = { fg = c.orange }, -- public, private, static, final
    ["@keyword.conditional.ternary"] = { fg = c.orange }, -- ? : ternary
    ["@label"]                      = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"]                     = "@none",
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = "Macro",
    ["@markup.environment.name"]    = "Type",
    ["@markup.heading"]             = "Title",
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = { fg = c.teal },
    ["@markup.link.label"]          = "SpecialChar",
    ["@markup.link.label.symbol"]   = "Identifier",
    ["@markup.link.url"]            = { fg = c.yellow, underline = true }, -- URLs: sand
    ["@markup.list"]                = { fg = c.fg_dark }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg = c.cyan }, -- [x]: cyan
    ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.fg_dark }, -- [ ]: fg_dark
    ["@markup.math"]                = "Special",
    ["@markup.raw"]                 = { fg = c.red }, -- inline code: red
    ["@markup.raw.block"]           = { fg = c.fg }, -- code blocks: fg
    ["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.fg },
    ["@markup.quote"]               = { fg = c.fg_dark, italic = true }, -- blockquotes
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.bold"]                = { fg = c.fg, bold = true }, -- bold text
    ["@markup.underline"]           = { underline = true },
    ["@method"]                     = { fg = c.cyan }, -- method definitions
    ["@method.call"]                = "@method", -- method calls
    ["@module"]                     = "Include",
    ["@module.builtin"]             = { fg = c.red }, -- built-in modules: like builtin variables
    ["@namespace.builtin"]          = "@variable.builtin",
    ["@none"]                       = {},
    ["@number"]                     = "Number",
    ["@number.float"]               = "Float",
    ["@operator"]                   = { fg = c.fg_dark }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@parameter"]                  = { fg = c.fg }, -- function parameters: plain text
    ["@property"]                   = { fg = c.blue }, -- field access, properties
    ["@punctuation.bracket"]        = { fg = c.fg_dark }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.fg_dark }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg = c.fg_dark }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg = c.orange }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"]                     = "String",
    ["@string.documentation"]       = { fg = c.yellow },
    ["@string.escape"]              = { fg = c.yellow }, -- For escape characters within a string.
    ["@string.regex"]               = { fg = c.yellow }, -- regex strings: yellow (string family)
    ["@string.regexp"]              = { fg = c.yellow }, -- regex patterns: yellow
    ["@string.special"]             = { fg = c.yellow }, -- special strings (paths, URLs)
    ["@symbol"]                      = { fg = c.blue }, -- Ruby/Elixir symbols: like constants
    ["@tag"]                        = "Label",
    ["@tag.attribute"]              = "@property",
    ["@tag.delimiter"]              = "Delimiter",
    ["@tag.delimiter.tsx"]          = { fg = c.fg_dark }, -- < > /: fg_dark
    ["@tag.tsx"]                    = { fg = c.cyan }, -- TSX tags: cyan (DOM functions)
    ["@tag.javascript"]             = { fg = c.cyan }, -- JS tags: cyan
    ["@type"]                       = { fg = c.red, italic = true }, -- type annotations: italic subordina visualmente
    ["@type.builtin"]               = { fg = c.red, italic = true }, -- builtin types: string, int, bool
    ["@type.css"]                    = { fg = c.orange }, -- CSS selectors: orange like control keywords
    ["@type.definition"]            = { fg = c.red, italic = true }, -- type aliases / definitions
    ["@type.qualifier"]             = { fg = c.red, italic = true }, -- type qualifiers: red italic
    ["@variable"]                   = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.fg }, -- self/this/super: plain text, no color
    ["@variable.member"]            = { fg = c.blue }, -- member access: field/property values
    ["@variable.parameter"]         = { fg = c.fg }, -- function params: plain text, no color
    ["@variable.parameter.builtin"] = { fg = c.fg }, -- builtin params like `...`: plain text

    -- ───────────────────────────────────
    -- Config file languages (YAML / JSON / HCL / Bash)
    -- ───────────────────────────────────
    -- YAML: structural hierarchy by depth
    ["yaml.block_mapping_pair"]      = { fg = c.cyan }, -- root keys: cyan (L0)
    ["@property.yaml"]              = { fg = c.blue }, -- nested keys: blue (L1+)
    ["@tag.yaml"]                   = { fg = c.orange }, -- !! tags: orange
    ["@string.yaml"]                = { fg = c.yellow }, -- string values: sand
    ["@number.yaml"]                = { fg = c.blue }, -- numbers: blue
    ["@boolean.yaml"]               = { fg = c.blue }, -- booleans: blue
    ["@comment.yaml"]               = { fg = c.comment, style = opts.styles.comments }, -- yaml comments
    -- JSON: keys get cyan accent, values use standard rules
    ["@property.json"]              = { fg = c.cyan }, -- keys: cyan
    ["@string.json"]                = { fg = c.yellow }, -- values: sand
    ["@number.json"]                = { fg = c.blue }, -- numbers: blue
    ["@boolean.json"]               = { fg = c.blue }, -- booleans: blue
    ["@label.json"]                 = { fg = c.cyan }, -- jsonc comments: cyan
    -- TOML
    ["@property.toml"]              = { fg = c.blue }, -- keys: blue
    ["@type.toml"]                  = { fg = c.cyan }, -- [sections]: cyan
    ["@string.toml"]                = { fg = c.yellow },
    ["@number.toml"]                = { fg = c.blue },
    ["@boolean.toml"]               = { fg = c.blue },
    -- HCL / Terraform
    ["@keyword.hcl"]                = { fg = c.orange }, -- resource/variable/module: orange
    ["@property.hcl"]               = { fg = c.blue }, -- internal attributes: blue
    ["@type.hcl"]                   = { fg = c.red, italic = true }, -- types: red italic
    ["@string.hcl"]                 = { fg = c.yellow }, -- strings: sand
    ["@number.hcl"]                 = { fg = c.blue }, -- numbers: blue
    -- Bash
    ["@function.bash"]              = { fg = c.cyan }, -- external commands: cyan
    ["@function.call.bash"]         = { fg = c.cyan }, -- command calls: cyan
    ["@keyword.bash"]               = { fg = c.orange }, -- builtins (set, local, export): orange
    ["@variable.bash"]              = { fg = c.blue }, -- $VARIABLES in uppercase: blue
    ["@string.bash"]                = { fg = c.yellow }, -- strings: sand
    ["@number.bash"]                = { fg = c.blue }, -- numbers: blue
    ["@operator.bash"]              = { fg = c.fg_dark }, -- operators: fg_dark
    -- ───────────────────────────────────
    -- JavaScript / TypeScript / TSX
    ["@type.typescript"]              = { fg = c.red, italic = true },
    ["@type.builtin.typescript"]      = { fg = c.red, italic = true },
    ["@keyword.coroutine.typescript"] = { fg = c.orange }, -- async/await: orange
    ["@tag.attribute.tsx"]            = { fg = c.blue }, -- props: blue
    ["@keyword.coroutine.javascript"] = { fg = c.orange },
    ["@tag.attribute.javascript"]     = { fg = c.blue },
    ["@tag.delimiter.javascript"]     = { fg = c.fg_dark },
    -- ───────────────────────────────────
    -- HTML
    ["@tag.html"]                     = { fg = c.cyan }, -- elements: cyan
    ["@tag.attribute.html"]           = { fg = c.blue }, -- attributes: blue
    ["@tag.delimiter.html"]           = { fg = c.fg_dark }, -- < > /: fg_dark
    ["@string.html"]                  = { fg = c.yellow }, -- attribute values: sand
    -- ───────────────────────────────────
    -- CSS / SCSS
    ["@selector"]                     = { fg = c.cyan }, -- selectors: cyan (CSS function names)
    ["@property.css"]                 = { fg = c.blue }, -- properties: blue
    ["@property.scss"]                = { fg = c.blue },
    ["@string.css"]                   = { fg = c.yellow }, -- values: sand
    ["@number.css"]                   = { fg = c.blue }, -- numeric values: blue
    ["@keyword.css"]                  = { fg = c.orange }, -- @media @import: orange
    ["@keyword.scss"]                 = { fg = c.orange },
    ["@variable.scss"]                = { fg = c.blue }, -- $variables SCSS: blue
    ["@function.css"]                 = { fg = c.cyan }, -- calc() var() rgb(): cyan
    ["@function.scss"]                = { fg = c.cyan }, -- SCSS functions: cyan
    -- ───────────────────────────────────
    -- Astro
    ["@tag.astro"]                    = { fg = c.cyan },
    ["@tag.attribute.astro"]          = { fg = c.blue },
    ["@tag.delimiter.astro"]          = { fg = c.fg_dark },
    ["@keyword.astro"]                = { fg = c.orange },
    -- ───────────────────────────────────
    -- Python
    ["@constructor.python"]           = { fg = c.cyan }, -- __init__/__new__ are functions (cyan, not purple)
    ["@function.python"]              = { fg = c.cyan }, -- function names: cyan
    ["@function.call.python"]         = { fg = c.cyan }, -- function calls: cyan
    ["@function.method.python"]       = { fg = c.cyan }, -- method definitions: cyan
    ["@function.method.call.python"]  = { fg = c.cyan }, -- method calls: cyan
    ["@keyword.coroutine.python"]     = { fg = c.orange }, -- async/await
    ["@type.python"]                  = { fg = c.red, italic = true },
    ["@attribute.python"]             = { fg = c.purple, italic = true }, -- @decorators
    ["@string.documentation.python"]  = { fg = c.comment, italic = true }, -- docstrings
    ["@variable.builtin.python"]      = { fg = c.fg }, -- self/cls: plain text
    -- ───────────────────────────────────
    -- Java
    ["@type.java"]                    = { fg = c.red, italic = true },
    ["@keyword.java"]                 = { fg = c.orange },
    ["@attribute.java"]               = { fg = c.purple, italic = true }, -- annotations @Override
    ["@keyword.modifier.java"]        = { fg = c.orange }, -- public/private/static: orange (decisions)
    ["@type.builtin.java"]            = { fg = c.red, italic = true }, -- String, int: red italic
    ["@constant.java"]                = { fg = c.blue },
    -- ───────────────────────────────────
    -- SQL
    ["@keyword.sql"]                  = { fg = c.orange }, -- SELECT FROM WHERE: orange
    ["@type.sql"]                     = { fg = c.red, italic = true }, -- INT VARCHAR: red
    ["@function.sql"]                 = { fg = c.cyan }, -- COUNT() SUM(): cyan
    ["@string.sql"]                   = { fg = c.yellow },
    ["@number.sql"]                   = { fg = c.blue },
    ["@operator.sql"]                 = { fg = c.fg_dark },
    -- ───────────────────────────────────
    -- Dockerfile
    ["@keyword.dockerfile"]           = { fg = c.orange }, -- FROM RUN COPY CMD: orange
    ["@string.dockerfile"]            = { fg = c.yellow },
    ["@number.dockerfile"]            = { fg = c.blue },
    ["@function.dockerfile"]          = { fg = c.cyan }, -- stage name: cyan
    -- ───────────────────────────────────
    -- Lua
    ["@keyword.coroutine.lua"]        = { fg = c.orange },
    ["@function.builtin.lua"]         = { fg = c.cyan }, -- print/require/pairs: cyan
    ["@constant.builtin.lua"]         = { fg = c.blue }, -- true/false/nil: blue
    ["@field.lua"]                    = { fg = c.blue }, -- table.field: blue
    ["@variable.builtin.lua"]         = { fg = c.fg }, -- vim: plain text, no color
    -- ───────────────────────────────────
    -- Lua
    ["@constructor.lua"]            = { fg = c.purple, italic = true }, -- table constructors
    -- ───────────────────────────────────
    -- Markdown / text (fallback for @text.* convention)
    ["@text.emphasis"]              = { italic = true },
    ["@text.literal"]               = { bg = c.terminal_black, fg = c.fg }, -- inline code
    ["@text.literal.markdown_inline"] = { bg = c.terminal_black, fg = c.fg },
    ["@text.quote"]                  = { fg = c.fg_dark, italic = true }, -- blockquotes
    ["@text.reference"]             = { fg = c.teal }, -- link references
    ["@text.strike"]                 = { strikethrough = true },
    ["@text.strong"]                 = { bold = true },
    ["@text.title"]                 = "Title",
    ["@text.uri"]                   = "Underlined",
  }

  for i, color in ipairs(c.rainbow) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true, bg = Util.blend_bg(color, 0.1) }
  end

  -- Explicit markdown heading hierarchy (mirror: same roles as obsidian)
  ret["@markup.heading.1.markdown"] = { fg = c.cyan, bold = true }
  ret["@markup.heading.2.markdown"] = { fg = c.blue, bold = true }
  ret["@markup.heading.3.markdown"] = { fg = c.purple, bold = true }
  ret["@markup.heading.4.markdown"] = { fg = c.red, bold = true }

  return ret
end

return M
