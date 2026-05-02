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
    ["@constant"]                   = "Constant",
    ["@constant.builtin"]           = "Special",
    ["@constant.macro"]             = "Define",
    ["@constructor"]                = { fg = c.purple, italic = true }, -- fn keyword: describes what something is
    ["@constructor.tsx"]            = { fg = c.purple, italic = true }, -- TSX constructor: purple like fn keyword
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
    ["@keyword.function"]           = { fg = c.purple, italic = true }, -- fn keyword: describes what something is
    ["@keyword.import"]             = "Include",
    ["@keyword.operator"]           = { fg = c.orange }, -- what decides: `and`, `or`, `not`
    ["@keyword.repeat"]             = "Repeat",
    ["@keyword.return"]             = "@keyword",
    ["@keyword.storage"]            = "StorageClass",
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
    ["@markup.link.url"]            = "Underlined",
    ["@markup.list"]                = { fg = c.fg_dark }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg = c.green1 }, -- For brackets and parens.
    ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.blue }, -- For brackets and parens.
    ["@markup.math"]                = "Special",
    ["@markup.raw"]                 = "String",
    ["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.fg },
    ["@markup.quote"]               = { fg = c.fg_dark, italic = true }, -- blockquotes
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
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
    ["@property"]                   = { fg = c.blue }, -- field access, properties
    ["@punctuation.bracket"]        = { fg = c.fg_dark }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.fg_dark }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg = c.fg_dark }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg = c.orange }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"]                     = "String",
    ["@string.documentation"]       = { fg = c.yellow },
    ["@string.escape"]              = { fg = c.yellow }, -- For escape characters within a string.
    ["@string.regex"]               = { fg = c.blue6 }, -- For regexes (some parsers use @string.regex)
    ["@string.regexp"]              = { fg = c.blue6 }, -- For regexes.
    ["@string.special"]             = { fg = c.yellow }, -- special strings (paths, URLs)
    ["@symbol"]                      = { fg = c.blue }, -- Ruby/Elixir symbols: like constants
    ["@tag"]                        = "Label",
    ["@tag.attribute"]              = "@property",
    ["@tag.delimiter"]              = "Delimiter",
    ["@tag.delimiter.tsx"]          = { fg = Util.blend_bg(c.blue, 0.7) },
    ["@tag.tsx"]                    = { fg = c.red },
    ["@tag.javascript"]             = { fg = c.red },
    ["@type"]                       = { fg = c.red, italic = true }, -- type annotations: italic subordina visualmente
    ["@type.builtin"]               = { fg = c.red, italic = true }, -- builtin types: string, int, bool
    ["@type.css"]                    = { fg = c.orange }, -- CSS selectors: orange like control keywords
    ["@type.definition"]            = { fg = c.red, italic = true }, -- type aliases / definitions
    ["@type.qualifier"]             = "@keyword",
    ["@variable"]                   = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@variable.member"]            = { fg = c.blue }, -- member access: field/property values
    ["@variable.parameter"]         = { fg = c.fg }, -- function params: plain text, no color noise
    ["@variable.parameter.builtin"] = { fg = c.fg_dark }, -- builtin params like `...`

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
    -- JSON: keys get cyan accent, values use standard rules
    ["@property.json"]              = { fg = c.cyan }, -- keys: cyan
    ["@string.json"]                = { fg = c.yellow }, -- values: sand
    ["@number.json"]                = { fg = c.blue }, -- numbers: blue
    ["@boolean.json"]               = { fg = c.blue }, -- booleans: blue
    -- HCL / Terraform
    ["@keyword.hcl"]                = { fg = c.orange }, -- resource/variable/module: orange
    ["@property.hcl"]               = { fg = c.blue }, -- internal attributes: blue
    ["@type.hcl"]                   = { fg = c.red, italic = true }, -- types: red italic
    ["@string.hcl"]                 = { fg = c.yellow }, -- strings: sand
    ["@number.hcl"]                 = { fg = c.blue }, -- numbers: blue
    -- Bash
    ["@function.bash"]              = { fg = c.cyan }, -- external commands: cyan
    ["@keyword.bash"]               = { fg = c.orange }, -- builtins (set, local, export): orange
    ["@variable.bash"]              = { fg = c.blue }, -- $VARIABLES in uppercase: blue
    ["@string.bash"]                = { fg = c.yellow }, -- strings: sand
    ["@number.bash"]                = { fg = c.blue }, -- numbers: blue
    -- ───────────────────────────────────
    -- Python
    ["@constructor.python"]         = { fg = c.purple, italic = true }, -- __init__, __new__
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
  return ret
end

return M
