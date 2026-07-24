local Util = require("abysal.util")

local M = {}

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    ["@annotation"]                 = { fg = c.seafoam, italic = true }, -- decorators/annotations: like @attribute
    ["@attribute"]                  = { fg = c.seafoam, italic = true },
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
    ["@comment.documentation"]      = { fg = c.fg_muted, style = opts.styles.comments }, -- Javadoc, doc comments: same as regular comments
    ["@constant"]                   = "Constant",
    ["@constant.builtin"]           = { fg = c.seafoam }, -- true/false/null/None
    ["@constant.macro"]             = "Define",
    ["@constructor"]                = { fg = c.blue }, -- instanciar es llamar: blue, no primary
    ["@constructor.tsx"]            = { fg = c.blue }, -- TSX constructor: blue (DOM instanciation)
    ["@decorator"]                  = { fg = c.seafoam, italic = true }, -- decorators (Python, TypeScript)
    ["@diff.delta"]                 = "DiffChange",
    ["@diff.minus"]                 = "DiffDelete",
    ["@diff.plus"]                  = "DiffAdd",
    ["@field"]                       = { fg = c.mauve }, -- struct/class fields: like properties
    ["@function"]                   = "Function",
    ["@function.builtin"]           = { fg = c.blue }, -- built-in functions: still functions (print, len)
    ["@function.call"]              = "@function",
    ["@function.macro"]             = "Macro",
    ["@function.method"]            = { fg = c.primary_muted }, -- method definitions (grammars without @method): primary_muted
    ["@function.method.call"]       = "@function.method",
    ["@keyword"]                    = { fg = c.primary, style = opts.styles.keywords }, -- PRIMARY: flow keywords
    ["@keyword.conditional"]        = "Conditional",
    ["@keyword.control"]            = { fg = c.primary }, -- control keywords: return, yield, await
    ["@keyword.coroutine"]          = "@keyword",
    ["@keyword.debug"]              = "Debug",
    ["@keyword.directive"]          = "PreProc",
    ["@keyword.directive.define"]   = "Define",
    ["@keyword.exception"]          = "Exception",
    ["@keyword.function"]           = { fg = c.primary }, -- def/fn/function: primary (control keyword)
    ["@keyword.function.python"]    = { fg = c.primary }, -- def: Neovim scoped variant
    ["@keyword.function.javascript"]= { fg = c.primary }, -- function: Neovim scoped variant
    ["@keyword.function.typescript"]= { fg = c.primary }, -- function: Neovim scoped variant
    ["@keyword.function.lua"]       = { fg = c.primary }, -- function: Neovim scoped variant
    ["@keyword.import"]             = { fg = c.blue }, -- import/include/require/from: blue (structural)
    ["@keyword.operator"]           = { fg = c.primary }, -- what decides: `and`, `or`, `not`
    ["@keyword.repeat"]             = "Repeat",
    ["@keyword.return"]             = "@keyword",
    ["@keyword.storage"]            = "StorageClass",
    ["@keyword.type"]               = { fg = c.primary, style = opts.styles.keywords }, -- class, interface, enum, record
    ["@keyword.modifier"]           = { fg = c.primary }, -- public, private, static, final
    ["@keyword.conditional.ternary"] = { fg = c.primary }, -- ? : ternary
    ["@label"]                      = { fg = c.mauve }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"]                     = "@none",
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = "Macro",
    ["@markup.environment.name"]    = "Type",
    ["@markup.heading"]             = "Title",
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = { fg = c.primary_anchor },
    ["@markup.link.label"]          = "SpecialChar",
    ["@markup.link.label.symbol"]   = "Identifier",
    ["@markup.link.url"]            = { fg = c.gold, underline = true }, -- URLs: gold
    ["@markup.list"]                = { fg = c.fg_secondary }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg = c.primary_muted }, -- [x]: primary_muted
    ["@markup.list.markdown"]       = { fg = c.primary_muted, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.fg_secondary }, -- [ ]: fg_secondary
    ["@markup.math"]                = "Special",
    ["@markup.raw"]                 = { fg = c.gold }, -- inline code: gold
    ["@markup.raw.block"]           = { fg = c.fg }, -- code blocks: fg
    ["@markup.raw.markdown_inline"] = { bg = c.bg_elevated, fg = c.fg },
    ["@markup.quote"]               = { fg = c.fg_secondary, italic = true }, -- blockquotes
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.bold"]                = { fg = c.fg, bold = true }, -- bold text
    ["@markup.underline"]           = { underline = true },
    ["@method"]                     = { fg = c.primary_muted }, -- method definitions (on object instance): primary_muted, distinct from plain function calls
    ["@method.call"]                = "@method", -- method calls
    ["@module"]                     = { fg = c.fg }, -- module names: white (plain, no accent)
    ["@module.builtin"]             = { fg = c.blue }, -- built-in modules: blue (like other .builtin roles)
    ["@namespace.builtin"]          = "@variable.builtin",
    ["@none"]                       = {},
    ["@number"]                     = "Number",
    ["@number.float"]               = "Float",
    ["@operator"]                   = { fg = c.fg_muted }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@parameter"]                  = { fg = c.fg }, -- function parameters: plain text
    ["@property"]                   = { fg = c.mauve }, -- field access, properties
    ["@punctuation.bracket"]        = { fg = c.fg_secondary }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.fg_secondary }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg = c.fg_secondary }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg = c.primary_muted }, -- markdown bullets/special punctuation
    ["@string"]                     = "String",
    ["@string.documentation"]       = { fg = c.fg_muted, italic = true }, -- docstrings: matches @string.documentation.python
    ["@string.escape"]              = { fg = c.gold }, -- For escape characters within a string.
    ["@string.regex"]               = { fg = c.gold }, -- regex strings: gold (string family)
    ["@string.regexp"]              = { fg = c.gold }, -- regex patterns: gold
    ["@string.special"]             = { fg = c.gold }, -- special strings (paths, URLs)
    ["@symbol"]                      = { fg = c.mauve }, -- Ruby/Elixir symbols: like constants
    ["@tag"]                        = "Label",
    ["@tag.attribute"]              = "@property",
    ["@tag.delimiter"]              = "Delimiter",
    ["@tag.delimiter.tsx"]          = { fg = c.fg_muted }, -- < > /: fg_muted
    ["@tag.tsx"]                    = { fg = c.primary_muted }, -- TSX tags: primary_muted (matches html/astro)
    ["@tag.javascript"]             = { fg = c.primary_muted }, -- JS tags: primary_muted (matches html/astro)
    ["@type"]                       = { fg = c.gold, italic = true }, -- type annotations: italic subordina visualmente
    ["@type.builtin"]               = { fg = c.blue, italic = true }, -- builtin types: string, int, bool (blue, not gold)
    ["@type.css"]                    = { fg = c.gold, italic = true }, -- CSS type-like tokens: gold italic (matches @type pattern across all languages)
    ["@type.definition"]            = { fg = c.gold, italic = true }, -- type aliases / definitions
    ["@type.qualifier"]             = { fg = c.gold, italic = true }, -- type qualifiers: gold italic
    ["@variable"]                   = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.fg_secondary, italic = true }, -- self/this/super: fg_secondary italic (distinct builtin ref)
    ["@variable.member"]            = { fg = c.fg }, -- member access values: fg (matches plain variable, read easily)
    ["@variable.parameter"]         = { fg = c.fg }, -- function params: plain text, no color
    ["@variable.parameter.builtin"] = { fg = c.fg }, -- builtin params like `...`: plain text

    -- ───────────────────────────────────
    -- Config file languages (YAML / JSON / HCL / Bash)
    -- ───────────────────────────────────
    -- YAML: structural hierarchy by depth
    ["yaml.block_mapping_pair"]      = { fg = c.primary_muted }, -- root keys: primary_muted (L0)
    ["@property.yaml"]              = { fg = c.mauve }, -- nested keys: mauve (L1+)
    ["@tag.yaml"]                   = { fg = c.primary }, -- !! tags: primary
    ["@string.yaml"]                = { fg = c.gold }, -- string values: gold
    ["@number.yaml"]                = { fg = c.seafoam }, -- numbers: seafoam
    ["@boolean.yaml"]               = { fg = c.seafoam }, -- booleans: seafoam
    ["@comment.yaml"]               = { fg = c.fg_muted, style = opts.styles.comments }, -- yaml comments
    -- JSON: keys get primary_muted accent, values use standard rules
    ["@property.json"]              = { fg = c.mauve }, -- keys: mauve
    ["@string.json"]                = { fg = c.gold }, -- values: gold
    ["@number.json"]                = { fg = c.seafoam }, -- numbers: seafoam
    ["@boolean.json"]               = { fg = c.seafoam }, -- booleans: seafoam
    ["@label.json"]                 = { fg = c.primary_muted }, -- jsonc comments: primary_muted
    -- TOML
    ["@property.toml"]              = { fg = c.mauve }, -- keys: mauve
    ["@type.toml"]                  = { fg = c.gold, italic = true }, -- [sections]: gold italic (matches @type pattern across all languages)
    ["@string.toml"]                = { fg = c.gold },
    ["@number.toml"]                = { fg = c.seafoam },
    ["@boolean.toml"]               = { fg = c.seafoam },
    -- HCL / Terraform
    ["@keyword.hcl"]                = { fg = c.primary }, -- resource/variable/module: primary
    ["@property.hcl"]               = { fg = c.mauve }, -- internal attributes: mauve
    ["@type.hcl"]                   = { fg = c.gold, italic = true }, -- types: gold italic
    ["@string.hcl"]                 = { fg = c.gold }, -- strings: gold
    ["@number.hcl"]                 = { fg = c.seafoam }, -- numbers: seafoam
    -- Bash
    ["@function.bash"]              = { fg = c.blue }, -- external commands: blue
    ["@function.call.bash"]         = { fg = c.blue }, -- command calls: blue
    ["@keyword.bash"]               = { fg = c.primary }, -- builtins (set, local, export): primary
    ["@variable.bash"]              = { fg = c.fg_secondary }, -- $VARIABLES in uppercase: fg_secondary
    ["@string.bash"]                = { fg = c.gold }, -- strings: gold
    ["@number.bash"]                = { fg = c.seafoam }, -- numbers: seafoam
    ["@operator.bash"]              = { fg = c.fg_muted }, -- operators: fg_muted
    -- ───────────────────────────────────
    -- JavaScript / TypeScript / TSX
    ["@type.typescript"]              = { fg = c.gold, italic = true },
    ["@type.builtin.typescript"]      = { fg = c.blue, italic = true },
    ["@keyword.coroutine.typescript"] = { fg = c.primary }, -- async/await: primary
    ["@tag.attribute.tsx"]            = { fg = c.mauve }, -- props: mauve
    ["@keyword.coroutine.javascript"] = { fg = c.primary },
    ["@tag.attribute.javascript"]     = { fg = c.mauve },
    ["@tag.delimiter.javascript"]     = { fg = c.fg_muted },
    -- ───────────────────────────────────
    -- HTML
    ["@tag.html"]                     = { fg = c.primary_muted }, -- elements: primary_muted
    ["@tag.attribute.html"]           = { fg = c.mauve }, -- attributes: mauve
    ["@tag.delimiter.html"]           = { fg = c.fg_muted }, -- < > /: fg_muted
    ["@string.html"]                  = { fg = c.gold }, -- attribute values: gold
    -- ───────────────────────────────────
    -- CSS / SCSS
    ["@selector"]                     = { fg = c.primary_muted }, -- selectors: primary_muted (CSS function names)
    ["@property.css"]                 = { fg = c.mauve }, -- properties: mauve
    ["@property.scss"]                = { fg = c.mauve },
    ["@string.css"]                   = { fg = c.gold }, -- values: gold
    ["@number.css"]                   = { fg = c.seafoam }, -- numeric values: seafoam
    ["@keyword.css"]                  = { fg = c.primary }, -- @media @import: primary
    ["@keyword.scss"]                 = { fg = c.primary },
    ["@variable.scss"]                = { fg = c.fg_secondary }, -- $variables SCSS: fg_secondary
    ["@function.css"]                 = { fg = c.blue }, -- calc() var() rgb(): blue
    ["@function.scss"]                = { fg = c.blue }, -- SCSS functions: blue
    -- ───────────────────────────────────
    -- Astro
    ["@tag.astro"]                    = { fg = c.primary_muted },
    ["@tag.attribute.astro"]          = { fg = c.mauve },
    ["@tag.delimiter.astro"]          = { fg = c.fg_muted },
    ["@keyword.astro"]                = { fg = c.primary },
    -- ───────────────────────────────────
    -- Python
    ["@constructor.python"]           = { fg = c.blue }, -- __init__/__new__ are functions (blue, not blue accent)
    ["@function.python"]              = { fg = c.blue }, -- function names: blue
    ["@function.call.python"]         = { fg = c.blue }, -- function calls: blue
    ["@function.method.python"]       = { fg = c.primary_muted }, -- method definitions: primary_muted (distinct from function calls)
    ["@function.method.call.python"]  = { fg = c.primary_muted }, -- method calls: primary_muted (distinct from function calls)
    ["@keyword.coroutine.python"]     = { fg = c.primary }, -- async/await
    ["@type.python"]                  = { fg = c.gold, italic = true },
    ["@type.builtin.python"]          = { fg = c.amber, italic = true }, -- builtin exceptions (Exception, RuntimeError, etc) AND primitive type names (str, int, bool...) share this capture in tree-sitter-python's grammar, no way to split them: amber
    ["@attribute.python"]             = { fg = c.seafoam, italic = true }, -- @decorators
    ["@string.documentation.python"]  = { fg = c.fg_muted, italic = true }, -- docstrings
    ["@variable.builtin.python"]      = { fg = c.fg_secondary, italic = true }, -- self/cls: fg_secondary italic (matches base @variable.builtin)
    -- ───────────────────────────────────
    -- Java
    ["@type.java"]                    = { fg = c.gold, italic = true },
    ["@keyword.java"]                 = { fg = c.primary },
    ["@attribute.java"]               = { fg = c.seafoam, italic = true }, -- annotations @Override
    ["@keyword.modifier.java"]        = { fg = c.primary }, -- public/private/static: primary (decisions)
    ["@type.builtin.java"]            = { fg = c.blue, italic = true }, -- String, int: blue italic
    ["@constant.java"]                = { fg = c.seafoam },
    -- ───────────────────────────────────
    -- SQL
    ["@keyword.sql"]                  = { fg = c.primary }, -- SELECT FROM WHERE: primary
    ["@type.sql"]                     = { fg = c.gold, italic = true }, -- INT VARCHAR: gold
    ["@function.sql"]                 = { fg = c.blue }, -- COUNT() SUM(): blue
    ["@string.sql"]                   = { fg = c.gold },
    ["@number.sql"]                   = { fg = c.seafoam },
    ["@operator.sql"]                 = { fg = c.fg_muted },
    -- ───────────────────────────────────
    -- Dockerfile
    ["@keyword.dockerfile"]           = { fg = c.primary }, -- FROM RUN COPY CMD: primary
    ["@string.dockerfile"]            = { fg = c.gold },
    ["@number.dockerfile"]            = { fg = c.seafoam },
    ["@function.dockerfile"]          = { fg = c.blue }, -- stage name: blue
    -- ───────────────────────────────────
    -- Lua
    ["@keyword.coroutine.lua"]        = { fg = c.primary },
    ["@function.builtin.lua"]         = { fg = c.blue }, -- print/require/pairs: blue
    ["@constant.builtin.lua"]         = { fg = c.seafoam }, -- true/false/nil: seafoam
    ["@field.lua"]                    = { fg = c.mauve }, -- table.field: mauve
    ["@variable.builtin.lua"]         = { fg = c.fg_secondary, italic = true }, -- vim: fg_secondary italic (matches base @variable.builtin)
    -- ───────────────────────────────────
    -- Lua
    ["@constructor.lua"]            = {}, -- {} in tables: no color, just text
    ["@punctuation.bracket.lua"]   = { fg = c.fg }, -- () {} [] in lua: text color
    -- ───────────────────────────────────
    -- Markdown / text (fallback for @text.* convention)
    ["@text.emphasis"]              = { italic = true },
    ["@text.literal"]               = { bg = c.bg_elevated, fg = c.fg }, -- inline code
    ["@text.literal.markdown_inline"] = { bg = c.bg_elevated, fg = c.fg },
    ["@text.quote"]                  = { fg = c.fg_secondary, italic = true }, -- blockquotes
    ["@text.reference"]             = { fg = c.primary_anchor }, -- link references
    ["@text.strike"]                 = { strikethrough = true },
    ["@text.strong"]                 = { bold = true },
    ["@text.title"]                 = "Title",
    ["@text.uri"]                   = "Underlined",
  }

  -- Markdown headings: H1 primary → H2 blue → H3 mauve → H4 gold → H5 seafoam → H6 primary_muted (bg tint strongest on H1, fades by H6)
  local md_headings = {
    { color = c.primary,  alpha = 0.16 },
    { color = c.blue,     alpha = 0.13 },
    { color = c.mauve,    alpha = 0.11 },
    { color = c.gold,     alpha = 0.09 },
    { color = c.seafoam, alpha = 0.06 },
    { color = c.primary_muted, alpha = 0.04 },
  }
  for i, heading in ipairs(md_headings) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = heading.color, bold = true, bg = Util.blend_bg(heading.color, heading.alpha) }
  end

  return ret
end

return M
