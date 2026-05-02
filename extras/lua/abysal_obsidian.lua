local colors = {
  _name = "abysal_obsidian",
  _style = "obsidian",
  bg = "#1c1c1c",
  bg_dark = "#262626",
  bg_dark1 = "#0f0f0f",
  bg_float = "#262626",
  bg_highlight = "#333333",
  bg_popup = "#262626",
  bg_search = "#2d4299",
  bg_sidebar = "#262626",
  bg_statusline = "#262626",
  bg_visual = "#232b4e",
  black = "#161616",
  blue = "#6b92e3",
  blue0 = "#2d4299",
  blue1 = "#89aae8",
  blue2 = "#52c9b0",
  blue5 = "#8ca8e0",
  blue6 = "#b0ccf0",
  blue7 = "#2c4470",
  border = "#161616",
  border_highlight = "#738ebf",
  comment = "#737373",
  cyan = "#52c9b0",
  dark3 = "#737373",
  dark5 = "#8c8c8c",
  diff = {
    add = "#253f3b",
    change = "#1e2229",
    delete = "#462525",
    text = "#2c4470"
  },
  error = "#c44040",
  fg = "#d4d4d4",
  fg_dark = "#8c8c8c",
  fg_float = "#d4d4d4",
  fg_gutter = "#525252",
  fg_sidebar = "#8c8c8c",
  git = {
    add = "#52c9b0",
    change = "#6b92e3",
    delete = "#d47779",
    ignore = "#737373"
  },
  green = "#52c9b0",
  green1 = "#52c9b0",
  green2 = "#3ea897",
  hint = "#52c9b0",
  info = "#52c9b0",
  magenta = "#b87bce",
  magenta2 = "#d45daa",
  none = "NONE",
  orange = "#e28e5a",
  purple = "#b87bce",
  rainbow = { "#6b92e3", "#d1b171", "#52c9b0", "#52c9b0", "#b87bce", "#b87bce", "#e28e5a", "#d47779" },
  red = "#d47779",
  red1 = "#c44040",
  teal = "#52c9b0",
  terminal = {
    black = "#161616",
    black_bright = "#2e2e2e",
    blue = "#6b92e3",
    blue_bright = "#739ff9",
    cyan = "#52c9b0",
    cyan_bright = "#00dcbc",
    green = "#52c9b0",
    green_bright = "#00dcbc",
    magenta = "#b87bce",
    magenta_bright = "#cd82e7",
    red = "#d47779",
    red_bright = "#e98183",
    white = "#8c8c8c",
    white_bright = "#d4d4d4",
    yellow = "#d1b171",
    yellow_bright = "#e8bd56"
  },
  terminal_black = "#2e2e2e",
  todo = "#6b92e3",
  warning = "#d1b171",
  yellow = "#d1b171"
}

local highlights = {
  ["@annotation"] = {
    fg = "#b87bce",
    italic = true
  },
  ["@attribute"] = {
    fg = "#b87bce",
    italic = true
  },
  ["@boolean"] = "Boolean",
  ["@boolean.json"] = {
    fg = "#6b92e3"
  },
  ["@boolean.yaml"] = {
    fg = "#6b92e3"
  },
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = "#c44040"
  },
  ["@comment.hint"] = {
    fg = "#52c9b0"
  },
  ["@comment.info"] = {
    fg = "#52c9b0"
  },
  ["@comment.note"] = {
    fg = "#52c9b0"
  },
  ["@comment.todo"] = {
    fg = "#6b92e3"
  },
  ["@comment.warning"] = {
    fg = "#d1b171"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#b87bce",
    italic = true
  },
  ["@constructor.lua"] = {
    fg = "#b87bce",
    italic = true
  },
  ["@constructor.python"] = {
    fg = "#b87bce",
    italic = true
  },
  ["@constructor.tsx"] = {
    fg = "#b87bce",
    italic = true
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@field"] = {
    fg = "#6b92e3"
  },
  ["@function"] = "Function",
  ["@function.bash"] = {
    fg = "#52c9b0"
  },
  ["@function.builtin"] = {
    fg = "#52c9b0"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    fg = "#e28e5a"
  },
  ["@keyword.bash"] = {
    fg = "#e28e5a"
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.control"] = {
    fg = "#e28e5a"
  },
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#b87bce",
    italic = true
  },
  ["@keyword.hcl"] = {
    fg = "#e28e5a"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = {
    fg = "#e28e5a"
  },
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#6b92e3"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.class"] = "@type",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "@attribute",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.event"] = "@function",
  ["@lsp.type.formatSpecifier"] = "@markup.list",
  ["@lsp.type.function"] = "@function",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = {
    fg = "#a0b7e2"
  },
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@keyword.storage",
  ["@lsp.type.method"] = "@method",
  ["@lsp.type.modifier"] = "@keyword.storage",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.namespace.python"] = "@function",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.regexp"] = "@string.regexp",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.struct"] = "@type",
  ["@lsp.type.type"] = "@type",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.typeParameter"] = "@type",
  ["@lsp.type.unresolvedReference"] = {
    sp = "#c44040",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#738ebf"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#738ebf"
  },
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.emphasis"] = {
    italic = true
  },
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1.markdown"] = {
    bg = "#242830",
    bold = true,
    fg = "#6b92e3"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#2e2b25",
    bold = true,
    fg = "#d1b171"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#212d2b",
    bold = true,
    fg = "#52c9b0"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#212d2b",
    bold = true,
    fg = "#52c9b0"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#2c262e",
    bold = true,
    fg = "#b87bce"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#2c262e",
    bold = true,
    fg = "#b87bce"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#302722",
    bold = true,
    fg = "#e28e5a"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#2e2525",
    bold = true,
    fg = "#d47779"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#52c9b0"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#8c8c8c"
  },
  ["@markup.list.checked"] = {
    fg = "#52c9b0"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#e28e5a"
  },
  ["@markup.list.unchecked"] = {
    fg = "#6b92e3"
  },
  ["@markup.math"] = "Special",
  ["@markup.quote"] = {
    fg = "#8c8c8c",
    italic = true
  },
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#2e2e2e",
    fg = "#d4d4d4"
  },
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@method"] = {
    fg = "#52c9b0"
  },
  ["@method.call"] = "@method",
  ["@module"] = "Include",
  ["@module.builtin"] = {
    fg = "#d47779"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.bash"] = {
    fg = "#6b92e3"
  },
  ["@number.float"] = "Float",
  ["@number.hcl"] = {
    fg = "#6b92e3"
  },
  ["@number.json"] = {
    fg = "#6b92e3"
  },
  ["@number.yaml"] = {
    fg = "#6b92e3"
  },
  ["@operator"] = {
    fg = "#8c8c8c"
  },
  ["@property"] = {
    fg = "#6b92e3"
  },
  ["@property.hcl"] = {
    fg = "#6b92e3"
  },
  ["@property.json"] = {
    fg = "#52c9b0"
  },
  ["@property.yaml"] = {
    fg = "#6b92e3"
  },
  ["@punctuation.bracket"] = {
    fg = "#8c8c8c"
  },
  ["@punctuation.delimiter"] = {
    fg = "#8c8c8c"
  },
  ["@punctuation.special"] = {
    fg = "#8c8c8c"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#e28e5a"
  },
  ["@string"] = "String",
  ["@string.bash"] = {
    fg = "#d1b171"
  },
  ["@string.documentation"] = {
    fg = "#d1b171"
  },
  ["@string.escape"] = {
    fg = "#d1b171"
  },
  ["@string.hcl"] = {
    fg = "#d1b171"
  },
  ["@string.json"] = {
    fg = "#d1b171"
  },
  ["@string.regex"] = {
    fg = "#b0ccf0"
  },
  ["@string.regexp"] = {
    fg = "#b0ccf0"
  },
  ["@string.special"] = {
    fg = "#d1b171"
  },
  ["@string.yaml"] = {
    fg = "#d1b171"
  },
  ["@symbol"] = {
    fg = "#6b92e3"
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#536fa7"
  },
  ["@tag.javascript"] = {
    fg = "#d47779"
  },
  ["@tag.tsx"] = {
    fg = "#d47779"
  },
  ["@tag.yaml"] = {
    fg = "#e28e5a"
  },
  ["@text.emphasis"] = {
    italic = true
  },
  ["@text.literal"] = {
    bg = "#2e2e2e",
    fg = "#d4d4d4"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#2e2e2e",
    fg = "#d4d4d4"
  },
  ["@text.quote"] = {
    fg = "#8c8c8c",
    italic = true
  },
  ["@text.reference"] = {
    fg = "#52c9b0"
  },
  ["@text.strike"] = {
    strikethrough = true
  },
  ["@text.strong"] = {
    bold = true
  },
  ["@text.title"] = "Title",
  ["@text.uri"] = "Underlined",
  ["@type"] = {
    fg = "#d47779",
    italic = true
  },
  ["@type.builtin"] = {
    fg = "#d47779",
    italic = true
  },
  ["@type.css"] = {
    fg = "#e28e5a"
  },
  ["@type.definition"] = {
    fg = "#d47779",
    italic = true
  },
  ["@type.hcl"] = {
    fg = "#d47779",
    italic = true
  },
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#d4d4d4"
  },
  ["@variable.bash"] = {
    fg = "#6b92e3"
  },
  ["@variable.builtin"] = {
    fg = "#d47779"
  },
  ["@variable.member"] = {
    fg = "#6b92e3"
  },
  ["@variable.parameter"] = {
    fg = "#d4d4d4"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#8c8c8c"
  },
  ALEErrorSign = {
    fg = "#c44040"
  },
  ALEWarningSign = {
    fg = "#d1b171"
  },
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = "#525252"
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = "#d4d4d4"
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = "#52c9b0"
  },
  AlphaFooter = {
    fg = "#89aae8"
  },
  AlphaHeader = {
    fg = "#6b92e3"
  },
  AlphaHeaderLabel = {
    fg = "#e28e5a"
  },
  AlphaShortcut = {
    fg = "#e28e5a"
  },
  BlinkCmpDoc = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  BlinkCmpDocBorder = {
    bg = "#262626",
    fg = "#738ebf"
  },
  BlinkCmpGhostText = {
    fg = "#2e2e2e"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#8c8c8c"
  },
  BlinkCmpKindEnum = "LspKindEnum",
  BlinkCmpKindEnumMember = "LspKindEnumMember",
  BlinkCmpKindEvent = "LspKindEvent",
  BlinkCmpKindField = "LspKindField",
  BlinkCmpKindFile = "LspKindFile",
  BlinkCmpKindFolder = "LspKindFolder",
  BlinkCmpKindFunction = "LspKindFunction",
  BlinkCmpKindInterface = "LspKindInterface",
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = "LspKindKeyword",
  BlinkCmpKindMethod = "LspKindMethod",
  BlinkCmpKindModule = "LspKindModule",
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = "LspKindOperator",
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = "LspKindProperty",
  BlinkCmpKindReference = "LspKindReference",
  BlinkCmpKindSnippet = "LspKindSnippet",
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = "LspKindStruct",
  BlinkCmpKindSupermaven = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#d4d4d4"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#525252",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#89aae8"
  },
  BlinkCmpMenu = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  BlinkCmpMenuBorder = {
    bg = "#262626",
    fg = "#738ebf"
  },
  BlinkCmpSignatureHelp = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#262626",
    fg = "#738ebf"
  },
  Bold = {
    bold = true,
    fg = "#d4d4d4"
  },
  Boolean = {
    fg = "#6b92e3"
  },
  BufferAlternate = {
    bg = "#525252",
    fg = "#d4d4d4"
  },
  BufferAlternateADDED = {
    bg = "#525252",
    fg = "#52c9b0"
  },
  BufferAlternateCHANGED = {
    bg = "#525252",
    fg = "#6b92e3"
  },
  BufferAlternateDELETED = {
    bg = "#525252",
    fg = "#d47779"
  },
  BufferAlternateERROR = {
    bg = "#525252",
    fg = "#c44040"
  },
  BufferAlternateHINT = {
    bg = "#525252",
    fg = "#52c9b0"
  },
  BufferAlternateINFO = {
    bg = "#525252",
    fg = "#52c9b0"
  },
  BufferAlternateIndex = {
    bg = "#525252",
    fg = "#52c9b0"
  },
  BufferAlternateMod = {
    bg = "#525252",
    fg = "#d1b171"
  },
  BufferAlternateSign = {
    bg = "#525252",
    fg = "#52c9b0"
  },
  BufferAlternateTarget = {
    bg = "#525252",
    fg = "#d47779"
  },
  BufferAlternateWARN = {
    bg = "#525252",
    fg = "#d1b171"
  },
  BufferCurrent = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  BufferCurrentADDED = {
    bg = "#1c1c1c",
    fg = "#52c9b0"
  },
  BufferCurrentCHANGED = {
    bg = "#1c1c1c",
    fg = "#6b92e3"
  },
  BufferCurrentDELETED = {
    bg = "#1c1c1c",
    fg = "#d47779"
  },
  BufferCurrentERROR = {
    bg = "#1c1c1c",
    fg = "#c44040"
  },
  BufferCurrentHINT = {
    bg = "#1c1c1c",
    fg = "#52c9b0"
  },
  BufferCurrentINFO = {
    bg = "#1c1c1c",
    fg = "#52c9b0"
  },
  BufferCurrentIndex = {
    bg = "#1c1c1c",
    fg = "#52c9b0"
  },
  BufferCurrentMod = {
    bg = "#1c1c1c",
    fg = "#d1b171"
  },
  BufferCurrentSign = {
    bg = "#1c1c1c",
    fg = "#1c1c1c"
  },
  BufferCurrentTarget = {
    bg = "#1c1c1c",
    fg = "#d47779"
  },
  BufferCurrentWARN = {
    bg = "#1c1c1c",
    fg = "#d1b171"
  },
  BufferInactive = {
    bg = "#252525",
    fg = "#767676"
  },
  BufferInactiveADDED = {
    bg = "#252525",
    fg = "#47a692"
  },
  BufferInactiveCHANGED = {
    bg = "#252525",
    fg = "#5b7abb"
  },
  BufferInactiveDELETED = {
    bg = "#252525",
    fg = "#af6566"
  },
  BufferInactiveERROR = {
    bg = "#252525",
    fg = "#a23939"
  },
  BufferInactiveHINT = {
    bg = "#252525",
    fg = "#47a692"
  },
  BufferInactiveINFO = {
    bg = "#252525",
    fg = "#47a692"
  },
  BufferInactiveIndex = {
    bg = "#252525",
    fg = "#8c8c8c"
  },
  BufferInactiveMod = {
    bg = "#252525",
    fg = "#ad9360"
  },
  BufferInactiveSign = {
    bg = "#252525",
    fg = "#1c1c1c"
  },
  BufferInactiveTarget = {
    bg = "#252525",
    fg = "#d47779"
  },
  BufferInactiveWARN = {
    bg = "#252525",
    fg = "#ad9360"
  },
  BufferLineIndicatorSelected = {
    fg = "#6b92e3"
  },
  BufferOffset = {
    bg = "#262626",
    fg = "#8c8c8c"
  },
  BufferTabpageFill = {
    bg = "#2e2e2e",
    fg = "#8c8c8c"
  },
  BufferTabpages = {
    bg = "#262626",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  BufferVisibleADDED = {
    bg = "#262626",
    fg = "#52c9b0"
  },
  BufferVisibleCHANGED = {
    bg = "#262626",
    fg = "#6b92e3"
  },
  BufferVisibleDELETED = {
    bg = "#262626",
    fg = "#d47779"
  },
  BufferVisibleERROR = {
    bg = "#262626",
    fg = "#c44040"
  },
  BufferVisibleHINT = {
    bg = "#262626",
    fg = "#52c9b0"
  },
  BufferVisibleINFO = {
    bg = "#262626",
    fg = "#52c9b0"
  },
  BufferVisibleIndex = {
    bg = "#262626",
    fg = "#52c9b0"
  },
  BufferVisibleMod = {
    bg = "#262626",
    fg = "#d1b171"
  },
  BufferVisibleSign = {
    bg = "#262626",
    fg = "#52c9b0"
  },
  BufferVisibleTarget = {
    bg = "#262626",
    fg = "#d47779"
  },
  BufferVisibleWARN = {
    bg = "#262626",
    fg = "#d1b171"
  },
  Character = {
    fg = "#d1b171"
  },
  CmpDocumentation = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  CmpDocumentationBorder = {
    bg = "#262626",
    fg = "#738ebf"
  },
  CmpGhostText = {
    fg = "#2e2e2e"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#d4d4d4"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#525252",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#89aae8"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#89aae8"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#8c8c8c"
  },
  CmpItemKindEnum = "LspKindEnum",
  CmpItemKindEnumMember = "LspKindEnumMember",
  CmpItemKindEvent = "LspKindEvent",
  CmpItemKindField = "LspKindField",
  CmpItemKindFile = "LspKindFile",
  CmpItemKindFolder = "LspKindFolder",
  CmpItemKindFunction = "LspKindFunction",
  CmpItemKindInterface = "LspKindInterface",
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = "LspKindKeyword",
  CmpItemKindMethod = "LspKindMethod",
  CmpItemKindModule = "LspKindModule",
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = "LspKindOperator",
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = "LspKindProperty",
  CmpItemKindReference = "LspKindReference",
  CmpItemKindSnippet = "LspKindSnippet",
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = "LspKindStruct",
  CmpItemKindSupermaven = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#737373"
  },
  CodeBlock = {
    bg = "#262626"
  },
  CodeiumSuggestion = {
    fg = "#2e2e2e"
  },
  ColorColumn = {
    bg = "#161616"
  },
  Comment = {
    fg = "#737373",
    italic = true
  },
  ComplHint = {
    fg = "#2e2e2e"
  },
  Conceal = {
    fg = "#8c8c8c"
  },
  Conditional = {
    fg = "#e28e5a"
  },
  Constant = {
    fg = "#6b92e3"
  },
  CopilotAnnotation = {
    fg = "#2e2e2e"
  },
  CopilotSuggestion = {
    fg = "#2e2e2e"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#d4d4d4",
    fg = "#1c1c1c"
  },
  CursorColumn = {
    bg = "#333333"
  },
  CursorIM = {
    bg = "#d4d4d4",
    fg = "#1c1c1c"
  },
  CursorLine = {
    bg = "#333333"
  },
  CursorLineNr = {
    bold = true,
    fg = "#e28e5a"
  },
  DapStoppedLine = {
    bg = "#2e2b25"
  },
  DashboardDesc = {
    fg = "#52c9b0"
  },
  DashboardFiles = {
    fg = "#6b92e3"
  },
  DashboardFooter = {
    fg = "#89aae8"
  },
  DashboardHeader = {
    fg = "#6b92e3"
  },
  DashboardIcon = {
    fg = "#52c9b0"
  },
  DashboardKey = {
    fg = "#e28e5a"
  },
  DashboardMruIcon = {
    fg = "#b87bce"
  },
  DashboardMruTitle = {
    fg = "#52c9b0"
  },
  DashboardProjectIcon = {
    fg = "#d1b171"
  },
  DashboardProjectTitle = {
    fg = "#52c9b0"
  },
  DashboardProjectTitleIcon = {
    fg = "#e28e5a"
  },
  DashboardShortCut = {
    fg = "#52c9b0"
  },
  DashboardShortCutIcon = {
    fg = "#b87bce"
  },
  Debug = {
    fg = "#e28e5a"
  },
  Define = {
    fg = "#e28e5a"
  },
  DefinitionCount = {
    fg = "#b87bce"
  },
  DefinitionIcon = {
    fg = "#6b92e3"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#c44040"
  },
  DiagnosticHint = {
    fg = "#52c9b0"
  },
  DiagnosticInfo = {
    fg = "#52c9b0"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#c44040",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#52c9b0",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#52c9b0",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#d1b171",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#2e2e2e"
  },
  DiagnosticVirtualTextError = {
    bg = "#2d2020",
    fg = "#c44040"
  },
  DiagnosticVirtualTextHint = {
    bg = "#212d2b",
    fg = "#52c9b0"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#212d2b",
    fg = "#52c9b0"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#2e2b25",
    fg = "#d1b171"
  },
  DiagnosticWarn = {
    fg = "#d1b171"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#253f3b"
  },
  DiffChange = {
    bg = "#1e2229"
  },
  DiffDelete = {
    bg = "#462525"
  },
  DiffText = {
    bg = "#2c4470"
  },
  Directory = {
    fg = "#6b92e3"
  },
  EndOfBuffer = {
    fg = "#1c1c1c"
  },
  Error = {
    fg = "#c44040"
  },
  ErrorMsg = {
    fg = "#c44040"
  },
  Exception = {
    fg = "#e28e5a"
  },
  FlashBackdrop = {
    fg = "#737373"
  },
  FlashLabel = {
    bg = "#d45daa",
    bold = true,
    fg = "#d4d4d4"
  },
  Float = {
    fg = "#6b92e3"
  },
  FloatBorder = {
    bg = "#262626",
    fg = "#738ebf"
  },
  FloatTitle = {
    bg = "#262626",
    fg = "#738ebf"
  },
  FoldColumn = {
    bg = "#1c1c1c",
    fg = "#737373"
  },
  Folded = {
    bg = "#525252",
    fg = "#6b92e3"
  },
  Foo = {
    bg = "#d45daa",
    fg = "#d4d4d4"
  },
  Function = {
    fg = "#52c9b0"
  },
  FzfLuaBorder = {
    bg = "#262626",
    fg = "#738ebf"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#8c8c8c"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#d4d4d4"
  },
  FzfLuaFzfPointer = {
    fg = "#d45daa"
  },
  FzfLuaFzfSeparator = {
    bg = "#262626",
    fg = "#e28e5a"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#262626",
    fg = "#738ebf"
  },
  FzfLuaTitle = {
    bg = "#262626",
    fg = "#e28e5a"
  },
  GitGutterAdd = {
    fg = "#52c9b0"
  },
  GitGutterAddLineNr = {
    fg = "#52c9b0"
  },
  GitGutterChange = {
    fg = "#6b92e3"
  },
  GitGutterChangeLineNr = {
    fg = "#6b92e3"
  },
  GitGutterDelete = {
    fg = "#d47779"
  },
  GitGutterDeleteLineNr = {
    fg = "#d47779"
  },
  GitSignsAdd = {
    fg = "#52c9b0"
  },
  GitSignsChange = {
    fg = "#6b92e3"
  },
  GitSignsDelete = {
    fg = "#d47779"
  },
  GlyphPalette1 = {
    fg = "#c44040"
  },
  GlyphPalette2 = {
    fg = "#52c9b0"
  },
  GlyphPalette3 = {
    fg = "#d1b171"
  },
  GlyphPalette4 = {
    fg = "#6b92e3"
  },
  GlyphPalette6 = {
    fg = "#52c9b0"
  },
  GlyphPalette7 = {
    fg = "#d4d4d4"
  },
  GlyphPalette9 = {
    fg = "#d47779"
  },
  GrugFarHelpHeader = {
    fg = "#737373"
  },
  GrugFarHelpHeaderKey = {
    fg = "#52c9b0"
  },
  GrugFarInputLabel = {
    fg = "#89aae8"
  },
  GrugFarInputPlaceholder = {
    fg = "#737373"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#6b92e3"
  },
  GrugFarResultsHeader = {
    fg = "#e28e5a"
  },
  GrugFarResultsLineColumn = {
    fg = "#737373"
  },
  GrugFarResultsLineNo = {
    fg = "#737373"
  },
  GrugFarResultsMatch = {
    bg = "#d47779",
    fg = "#161616"
  },
  GrugFarResultsStats = {
    fg = "#6b92e3"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#202226"
  },
  Headline2 = {
    bg = "#252320"
  },
  Headline3 = {
    bg = "#1f2523"
  },
  Headline4 = {
    bg = "#1f2523"
  },
  Headline5 = {
    bg = "#242125"
  },
  Headline6 = {
    bg = "#242125"
  },
  Headline7 = {
    bg = "#26221f"
  },
  Headline8 = {
    bg = "#252121"
  },
  HopNextKey = {
    bold = true,
    fg = "#d45daa"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#52c9b0"
  },
  HopNextKey2 = {
    fg = "#3c8475"
  },
  HopUnmatched = {
    fg = "#737373"
  },
  IblIndent = {
    fg = "#525252",
    nocombine = true
  },
  IblScope = {
    fg = "#89aae8",
    nocombine = true
  },
  Identifier = {
    fg = "#d4d4d4"
  },
  IlluminatedWordRead = {
    bg = "#525252"
  },
  IlluminatedWordText = {
    bg = "#525252"
  },
  IlluminatedWordWrite = {
    bg = "#525252"
  },
  IncSearch = {
    bg = "#e28e5a",
    fg = "#161616"
  },
  Include = {
    fg = "#e28e5a"
  },
  IndentBlanklineChar = {
    fg = "#525252",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#89aae8",
    nocombine = true
  },
  IndentLine = {
    fg = "#525252",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#89aae8",
    nocombine = true
  },
  Italic = {
    fg = "#d4d4d4",
    italic = true
  },
  Keyword = {
    fg = "#e28e5a"
  },
  Label = {
    fg = "#6b92e3"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#d45daa"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#525252"
  },
  LeapBackdrop = {
    fg = "#737373"
  },
  LeapLabel = {
    bold = true,
    fg = "#d45daa"
  },
  LeapMatch = {
    bg = "#d45daa",
    bold = true,
    fg = "#d4d4d4"
  },
  LineNr = {
    fg = "#525252"
  },
  LineNrAbove = {
    fg = "#525252"
  },
  LineNrBelow = {
    fg = "#525252"
  },
  LspCodeLens = {
    fg = "#737373"
  },
  LspFloatWinBorder = {
    fg = "#738ebf"
  },
  LspFloatWinNormal = {
    bg = "#262626"
  },
  LspInfoBorder = {
    bg = "#262626",
    fg = "#738ebf"
  },
  LspInlayHint = {
    bg = "#1e2024",
    fg = "#737373"
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "@boolean",
  LspKindClass = "@type",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@lsp.type.keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "@module",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "@operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "@lsp.type.struct",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.typeParameter",
  LspKindUnit = "@lsp.type.struct",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = {
    bg = "#525252"
  },
  LspReferenceText = {
    bg = "#525252"
  },
  LspReferenceWrite = {
    bg = "#525252"
  },
  LspSagaBorderTitle = {
    fg = "#52c9b0"
  },
  LspSagaCodeActionBorder = {
    fg = "#6b92e3"
  },
  LspSagaCodeActionContent = {
    fg = "#b87bce"
  },
  LspSagaCodeActionTitle = {
    fg = "#89aae8"
  },
  LspSagaDefPreviewBorder = {
    fg = "#52c9b0"
  },
  LspSagaFinderSelection = {
    fg = "#232b4e"
  },
  LspSagaHoverBorder = {
    fg = "#6b92e3"
  },
  LspSagaRenameBorder = {
    fg = "#52c9b0"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#d47779"
  },
  LspSignatureActiveParameter = {
    bg = "#1f2230",
    bold = true
  },
  Macro = {
    fg = "#e28e5a"
  },
  MatchParen = {
    bold = true,
    fg = "#e28e5a"
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#525252"
  },
  MiniCursorwordCurrent = {
    bg = "#525252"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#d47779",
    fg = "#161616"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#52c9b0",
    fg = "#161616"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#52c9b0"
  },
  MiniDiffSignChange = {
    fg = "#6b92e3"
  },
  MiniDiffSignDelete = {
    fg = "#d47779"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#d4d4d4"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#262626",
    bold = true,
    fg = "#738ebf"
  },
  MiniHipatternsFixme = {
    bg = "#c44040",
    bold = true,
    fg = "#161616"
  },
  MiniHipatternsHack = {
    bg = "#d1b171",
    bold = true,
    fg = "#161616"
  },
  MiniHipatternsNote = {
    bg = "#52c9b0",
    bold = true,
    fg = "#161616"
  },
  MiniHipatternsTodo = {
    bg = "#52c9b0",
    bold = true,
    fg = "#161616"
  },
  MiniIconsAzure = {
    fg = "#52c9b0"
  },
  MiniIconsBlue = {
    fg = "#6b92e3"
  },
  MiniIconsCyan = {
    fg = "#52c9b0"
  },
  MiniIconsGreen = {
    fg = "#52c9b0"
  },
  MiniIconsGrey = {
    fg = "#d4d4d4"
  },
  MiniIconsOrange = {
    fg = "#e28e5a"
  },
  MiniIconsPurple = {
    fg = "#b87bce"
  },
  MiniIconsRed = {
    fg = "#d47779"
  },
  MiniIconsYellow = {
    fg = "#d1b171"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#89aae8",
    nocombine = true
  },
  MiniJump = {
    bg = "#d45daa",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#d45daa",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#262626",
    fg = "#52c9b0",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#e28e5a",
    nocombine = true
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = "#262626",
    fg = "#52c9b0"
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = "#262626",
    fg = "#52c9b0"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#d1b171",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#6b92e3"
  },
  MiniStarterInactive = {
    fg = "#737373",
    italic = true
  },
  MiniStarterItem = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  MiniStarterItemBullet = {
    fg = "#738ebf"
  },
  MiniStarterItemPrefix = {
    fg = "#d1b171"
  },
  MiniStarterQuery = {
    fg = "#52c9b0"
  },
  MiniStarterSection = {
    fg = "#89aae8"
  },
  MiniStatuslineDevinfo = {
    bg = "#525252",
    fg = "#8c8c8c"
  },
  MiniStatuslineFileinfo = {
    bg = "#525252",
    fg = "#8c8c8c"
  },
  MiniStatuslineFilename = {
    bg = "#333333",
    fg = "#8c8c8c"
  },
  MiniStatuslineInactive = {
    bg = "#262626",
    fg = "#6b92e3"
  },
  MiniStatuslineModeCommand = {
    bg = "#d1b171",
    bold = true,
    fg = "#161616"
  },
  MiniStatuslineModeInsert = {
    bg = "#52c9b0",
    bold = true,
    fg = "#161616"
  },
  MiniStatuslineModeNormal = {
    bg = "#6b92e3",
    bold = true,
    fg = "#161616"
  },
  MiniStatuslineModeOther = {
    bg = "#52c9b0",
    bold = true,
    fg = "#161616"
  },
  MiniStatuslineModeReplace = {
    bg = "#d47779",
    bold = true,
    fg = "#161616"
  },
  MiniStatuslineModeVisual = {
    bg = "#b87bce",
    bold = true,
    fg = "#161616"
  },
  MiniSurround = {
    bg = "#e28e5a",
    fg = "#161616"
  },
  MiniTablineCurrent = {
    bg = "#525252",
    fg = "#d4d4d4"
  },
  MiniTablineFill = {
    bg = "#161616"
  },
  MiniTablineHidden = {
    bg = "#262626",
    fg = "#8c8c8c"
  },
  MiniTablineModifiedCurrent = {
    bg = "#525252",
    fg = "#d1b171"
  },
  MiniTablineModifiedHidden = {
    bg = "#262626",
    fg = "#9b8458"
  },
  MiniTablineModifiedVisible = {
    bg = "#262626",
    fg = "#d1b171"
  },
  MiniTablineTabpagesection = {
    bg = "#525252",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#d47779"
  },
  MiniTestPass = {
    bold = true,
    fg = "#52c9b0"
  },
  MiniTrailspace = {
    bg = "#d47779"
  },
  ModeMsg = {
    bold = true,
    fg = "#8c8c8c"
  },
  MoreMsg = {
    fg = "#6b92e3"
  },
  MsgArea = {
    fg = "#8c8c8c"
  },
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
  NavicSeparator = {
    bg = "NONE",
    fg = "#d4d4d4"
  },
  NavicText = {
    bg = "NONE",
    fg = "#d4d4d4"
  },
  NeoTreeDimText = {
    fg = "#525252"
  },
  NeoTreeFileName = {
    fg = "#8c8c8c"
  },
  NeoTreeGitModified = {
    fg = "#e28e5a"
  },
  NeoTreeGitStaged = {
    fg = "#52c9b0"
  },
  NeoTreeGitUntracked = {
    fg = "#b87bce"
  },
  NeoTreeNormal = {
    bg = "#262626",
    fg = "#8c8c8c"
  },
  NeoTreeNormalNC = {
    bg = "#262626",
    fg = "#8c8c8c"
  },
  NeoTreeTabActive = {
    bg = "#262626",
    bold = true,
    fg = "#6b92e3"
  },
  NeoTreeTabInactive = {
    bg = "#1e1e1e",
    fg = "#737373"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#262626",
    fg = "#6b92e3"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#1e1e1e",
    fg = "#1c1c1c"
  },
  NeogitBranch = {
    fg = "#b87bce"
  },
  NeogitDiffAddHighlight = {
    bg = "#253f3b",
    fg = "#52c9b0"
  },
  NeogitDiffContextHighlight = {
    bg = "#373737",
    fg = "#8c8c8c"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#462525",
    fg = "#d47779"
  },
  NeogitHunkHeader = {
    bg = "#333333",
    fg = "#d4d4d4"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#525252",
    fg = "#6b92e3"
  },
  NeogitRemote = {
    fg = "#b87bce"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#b87bce"
  },
  NeotestBorder = {
    fg = "#6b92e3"
  },
  NeotestDir = {
    fg = "#6b92e3"
  },
  NeotestExpandMarker = {
    fg = "#8c8c8c"
  },
  NeotestFailed = {
    fg = "#d47779"
  },
  NeotestFile = {
    fg = "#52c9b0"
  },
  NeotestFocused = {
    fg = "#d1b171"
  },
  NeotestIndent = {
    fg = "#8c8c8c"
  },
  NeotestMarked = {
    fg = "#6b92e3"
  },
  NeotestNamespace = {
    fg = "#3ea897"
  },
  NeotestPassed = {
    fg = "#52c9b0"
  },
  NeotestRunning = {
    fg = "#d1b171"
  },
  NeotestSkipped = {
    fg = "#6b92e3"
  },
  NeotestTarget = {
    fg = "#6b92e3"
  },
  NeotestTest = {
    fg = "#8c8c8c"
  },
  NeotestWinSelect = {
    fg = "#6b92e3"
  },
  NoiceCmdlineIconInput = {
    fg = "#d1b171"
  },
  NoiceCmdlineIconLua = {
    fg = "#89aae8"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#d1b171"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#89aae8"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#d1b171"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#89aae8"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#8c8c8c"
  },
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
  NonText = {
    fg = "#737373"
  },
  Normal = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  NormalFloat = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  NormalNC = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  NormalSB = {
    bg = "#262626",
    fg = "#8c8c8c"
  },
  NotifyBackground = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  NotifyDEBUGBody = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  NotifyDEBUGBorder = {
    bg = "#1c1c1c",
    fg = "#363636"
  },
  NotifyDEBUGIcon = {
    fg = "#737373"
  },
  NotifyDEBUGTitle = {
    fg = "#737373"
  },
  NotifyERRORBody = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  NotifyERRORBorder = {
    bg = "#1c1c1c",
    fg = "#4e2727"
  },
  NotifyERRORIcon = {
    fg = "#c44040"
  },
  NotifyERRORTitle = {
    fg = "#c44040"
  },
  NotifyINFOBody = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  NotifyINFOBorder = {
    bg = "#1c1c1c",
    fg = "#2c5048"
  },
  NotifyINFOIcon = {
    fg = "#52c9b0"
  },
  NotifyINFOTitle = {
    fg = "#52c9b0"
  },
  NotifyTRACEBody = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  NotifyTRACEBorder = {
    bg = "#1c1c1c",
    fg = "#4b3951"
  },
  NotifyTRACEIcon = {
    fg = "#b87bce"
  },
  NotifyTRACETitle = {
    fg = "#b87bce"
  },
  NotifyWARNBody = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  NotifyWARNBorder = {
    bg = "#1c1c1c",
    fg = "#524936"
  },
  NotifyWARNIcon = {
    fg = "#d1b171"
  },
  NotifyWARNTitle = {
    fg = "#d1b171"
  },
  Number = {
    fg = "#6b92e3"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#6b92e3"
  },
  NvimTreeGitDeleted = {
    fg = "#d47779"
  },
  NvimTreeGitDirty = {
    fg = "#6b92e3"
  },
  NvimTreeGitNew = {
    fg = "#52c9b0"
  },
  NvimTreeImageFile = {
    fg = "#8c8c8c"
  },
  NvimTreeIndentMarker = {
    fg = "#525252"
  },
  NvimTreeNormal = {
    bg = "#262626",
    fg = "#8c8c8c"
  },
  NvimTreeNormalNC = {
    bg = "#262626",
    fg = "#8c8c8c"
  },
  NvimTreeOpenedFile = {
    bg = "#333333"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#6b92e3"
  },
  NvimTreeSpecialFile = {
    fg = "#b87bce",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#6b92e3"
  },
  NvimTreeWinSeparator = {
    bg = "#262626",
    fg = "#262626"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#89aae8"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#e28e5a"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#b87bce"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#2c262e",
    fg = "#b87bce"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#89aae8"
  },
  Operator = {
    fg = "#8c8c8c"
  },
  Pmenu = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  PmenuMatch = {
    bg = "#262626",
    fg = "#89aae8"
  },
  PmenuMatchSel = {
    bg = "#474747",
    fg = "#89aae8"
  },
  PmenuSbar = {
    bg = "#2f2f2f"
  },
  PmenuSel = {
    bg = "#474747"
  },
  PmenuThumb = {
    bg = "#525252"
  },
  PreProc = {
    fg = "#e28e5a"
  },
  Question = {
    fg = "#6b92e3"
  },
  QuickFixLine = {
    bg = "#232b4e",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#6b92e3"
  },
  RainbowDelimiterCyan = {
    fg = "#52c9b0"
  },
  RainbowDelimiterGreen = {
    fg = "#52c9b0"
  },
  RainbowDelimiterOrange = {
    fg = "#e28e5a"
  },
  RainbowDelimiterRed = {
    fg = "#d47779"
  },
  RainbowDelimiterViolet = {
    fg = "#b87bce"
  },
  RainbowDelimiterYellow = {
    fg = "#d1b171"
  },
  ReferencesCount = {
    fg = "#b87bce"
  },
  ReferencesIcon = {
    fg = "#6b92e3"
  },
  RenderMarkdownBullet = {
    fg = "#e28e5a"
  },
  RenderMarkdownCode = {
    bg = "#262626"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#e28e5a"
  },
  RenderMarkdownH1Bg = {
    bg = "#242830"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#6b92e3"
  },
  RenderMarkdownH2Bg = {
    bg = "#2e2b25"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#d1b171"
  },
  RenderMarkdownH3Bg = {
    bg = "#212d2b"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#52c9b0"
  },
  RenderMarkdownH4Bg = {
    bg = "#212d2b"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#52c9b0"
  },
  RenderMarkdownH5Bg = {
    bg = "#2c262e"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#b87bce"
  },
  RenderMarkdownH6Bg = {
    bg = "#2c262e"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#b87bce"
  },
  RenderMarkdownH7Bg = {
    bg = "#302722"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#e28e5a"
  },
  RenderMarkdownH8Bg = {
    bg = "#2e2525"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#d47779"
  },
  RenderMarkdownTableHead = {
    fg = "#d47779"
  },
  RenderMarkdownTableRow = {
    fg = "#e28e5a"
  },
  Repeat = {
    fg = "#e28e5a"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#c44040"
  },
  ScrollbarErrorHandle = {
    bg = "#333333",
    fg = "#c44040"
  },
  ScrollbarHandle = {
    bg = "#333333",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  ScrollbarHintHandle = {
    bg = "#333333",
    fg = "#52c9b0"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  ScrollbarInfoHandle = {
    bg = "#333333",
    fg = "#52c9b0"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#b87bce"
  },
  ScrollbarMiscHandle = {
    bg = "#333333",
    fg = "#b87bce"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#e28e5a"
  },
  ScrollbarSearchHandle = {
    bg = "#333333",
    fg = "#e28e5a"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#d1b171"
  },
  ScrollbarWarnHandle = {
    bg = "#333333",
    fg = "#d1b171"
  },
  Search = {
    bg = "#2d4299",
    fg = "#d4d4d4"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#52c9b0"
  },
  SidekickSignChange = {
    fg = "#6b92e3"
  },
  SidekickSignDelete = {
    fg = "#d47779"
  },
  SignColumn = {
    bg = "#1c1c1c",
    fg = "#525252"
  },
  SignColumnSB = {
    bg = "#262626",
    fg = "#525252"
  },
  SnacksDashboardDesc = {
    fg = "#52c9b0"
  },
  SnacksDashboardDir = {
    fg = "#737373"
  },
  SnacksDashboardFooter = {
    fg = "#89aae8"
  },
  SnacksDashboardHeader = {
    fg = "#6b92e3"
  },
  SnacksDashboardIcon = {
    fg = "#89aae8"
  },
  SnacksDashboardKey = {
    fg = "#e28e5a"
  },
  SnacksDashboardSpecial = {
    fg = "#b87bce"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#89aae8"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#272a30",
    fg = "#89aae8"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#89aae8"
  },
  SnacksIndent = {
    fg = "#525252",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#6b92e3",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#d1b171",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#52c9b0",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#52c9b0",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#b87bce",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#b87bce",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#e28e5a",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#d47779",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#89aae8",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#d1b171"
  },
  SnacksInputIcon = {
    fg = "#89aae8"
  },
  SnacksInputTitle = {
    fg = "#d1b171"
  },
  SnacksNotifierBorderDebug = {
    bg = "#1c1c1c",
    fg = "#3f3f3f"
  },
  SnacksNotifierBorderError = {
    bg = "#1c1c1c",
    fg = "#5f2a2a"
  },
  SnacksNotifierBorderInfo = {
    bg = "#1c1c1c",
    fg = "#326157"
  },
  SnacksNotifierBorderTrace = {
    bg = "#1c1c1c",
    fg = "#5a4263"
  },
  SnacksNotifierBorderWarn = {
    bg = "#1c1c1c",
    fg = "#64583e"
  },
  SnacksNotifierDebug = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  SnacksNotifierError = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  SnacksNotifierIconDebug = {
    fg = "#737373"
  },
  SnacksNotifierIconError = {
    fg = "#c44040"
  },
  SnacksNotifierIconInfo = {
    fg = "#52c9b0"
  },
  SnacksNotifierIconTrace = {
    fg = "#b87bce"
  },
  SnacksNotifierIconWarn = {
    fg = "#d1b171"
  },
  SnacksNotifierInfo = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  SnacksNotifierTitleDebug = {
    fg = "#737373"
  },
  SnacksNotifierTitleError = {
    fg = "#c44040"
  },
  SnacksNotifierTitleInfo = {
    fg = "#52c9b0"
  },
  SnacksNotifierTitleTrace = {
    fg = "#b87bce"
  },
  SnacksNotifierTitleWarn = {
    fg = "#d1b171"
  },
  SnacksNotifierTrace = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  SnacksNotifierWarn = {
    bg = "#1c1c1c",
    fg = "#d4d4d4"
  },
  SnacksPickerBoxTitle = {
    bg = "#262626",
    fg = "#e28e5a"
  },
  SnacksPickerInputBorder = {
    bg = "#262626",
    fg = "#e28e5a"
  },
  SnacksPickerInputTitle = {
    bg = "#262626",
    fg = "#e28e5a"
  },
  SnacksPickerPickWin = {
    bg = "#2d4299",
    bold = true,
    fg = "#d4d4d4"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#d45daa",
    bold = true,
    fg = "#d4d4d4"
  },
  SnacksPickerSelected = {
    fg = "#d45daa"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#272a30",
    fg = "#89aae8"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#1e2024",
    fg = "#737373"
  },
  SnacksProfilerIconInfo = {
    bg = "#3d4759",
    fg = "#89aae8"
  },
  SnacksProfilerIconTrace = {
    bg = "#212835",
    fg = "#737373"
  },
  SnacksZenIcon = {
    fg = "#b87bce"
  },
  Sneak = {
    bg = "#b87bce",
    fg = "#333333"
  },
  SneakScope = {
    bg = "#232b4e"
  },
  Special = {
    fg = "#6b92e3"
  },
  SpecialChar = {
    fg = "#6b92e3"
  },
  SpecialKey = {
    fg = "#737373"
  },
  SpellBad = {
    sp = "#c44040",
    undercurl = true
  },
  SpellCap = {
    sp = "#d1b171",
    undercurl = true
  },
  SpellLocal = {
    sp = "#52c9b0",
    undercurl = true
  },
  SpellRare = {
    sp = "#52c9b0",
    undercurl = true
  },
  Statement = {
    fg = "#e28e5a"
  },
  StatusLine = {
    bg = "#262626",
    fg = "#8c8c8c"
  },
  StatusLineNC = {
    bg = "#262626",
    fg = "#525252"
  },
  StorageClass = {
    fg = "#e28e5a"
  },
  String = {
    fg = "#d1b171"
  },
  Substitute = {
    bg = "#d47779",
    fg = "#161616"
  },
  SupermavenSuggestion = {
    fg = "#2e2e2e"
  },
  TabLine = {
    bg = "#262626",
    fg = "#525252"
  },
  TabLineFill = {
    bg = "#161616"
  },
  TabLineSel = {
    bg = "#6b92e3",
    fg = "#161616"
  },
  TargetWord = {
    fg = "#52c9b0"
  },
  TelescopeBorder = {
    bg = "#262626",
    fg = "#738ebf"
  },
  TelescopeNormal = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  TelescopePromptBorder = {
    bg = "#262626",
    fg = "#e28e5a"
  },
  TelescopePromptTitle = {
    bg = "#262626",
    fg = "#e28e5a"
  },
  TelescopeResultsComment = {
    fg = "#737373"
  },
  Title = {
    bold = true,
    fg = "#6b92e3"
  },
  Todo = {
    bg = "#d1b171",
    fg = "#1c1c1c"
  },
  TreesitterContext = {
    bg = "#474747"
  },
  TroubleCount = {
    bg = "#525252",
    fg = "#b87bce"
  },
  TroubleNormal = {
    bg = "#262626",
    fg = "#d4d4d4"
  },
  TroubleText = {
    fg = "#8c8c8c"
  },
  Type = {
    fg = "#d47779",
    italic = true
  },
  Typedef = {
    fg = "#d47779",
    italic = true
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#161616"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#d1b171"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#6b92e3"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#d1b171"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#52c9b0"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#52c9b0"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#b87bce"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#b87bce"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#e28e5a"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#d47779"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#d1b171"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#6b92e3"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#e28e5a"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#6b92e3"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#52c9b0"
  },
  Visual = {
    bg = "#232b4e"
  },
  VisualNOS = {
    bg = "#232b4e"
  },
  WarningMsg = {
    fg = "#d1b171"
  },
  WhichKey = {
    fg = "#52c9b0"
  },
  WhichKeyDesc = {
    fg = "#b87bce"
  },
  WhichKeyGroup = {
    fg = "#6b92e3"
  },
  WhichKeyNormal = {
    bg = "#262626"
  },
  WhichKeySeparator = {
    fg = "#737373"
  },
  WhichKeyValue = {
    fg = "#8c8c8c"
  },
  Whitespace = {
    fg = "#525252"
  },
  WildMenu = {
    bg = "#232b4e"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#161616"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#212d2b",
    fg = "#52c9b0"
  },
  debugPC = {
    bg = "#262626"
  },
  diffAdded = {
    bg = "#253f3b",
    fg = "#52c9b0"
  },
  diffChanged = {
    bg = "#1e2229",
    fg = "#6b92e3"
  },
  diffFile = {
    fg = "#6b92e3"
  },
  diffIndexLine = {
    fg = "#b87bce"
  },
  diffLine = {
    fg = "#737373"
  },
  diffNewFile = {
    bg = "#253f3b",
    fg = "#89aae8"
  },
  diffOldFile = {
    bg = "#462525",
    fg = "#89aae8"
  },
  diffRemoved = {
    bg = "#462525",
    fg = "#d47779"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#c44040"
  },
  healthSuccess = {
    fg = "#52c9b0"
  },
  healthWarning = {
    fg = "#d1b171"
  },
  helpCommand = {
    bg = "#2e2e2e",
    fg = "#6b92e3"
  },
  helpExample = {
    fg = "#737373"
  },
  htmlH1 = {
    bold = true,
    fg = "#52c9b0"
  },
  htmlH2 = {
    bold = true,
    fg = "#6b92e3"
  },
  illuminatedCurWord = {
    bg = "#525252"
  },
  illuminatedWord = {
    bg = "#525252"
  },
  lCursor = {
    bg = "#d4d4d4",
    fg = "#1c1c1c"
  },
  qfFileName = {
    fg = "#6b92e3"
  },
  qfLineNr = {
    fg = "#8c8c8c"
  },
  ["yaml.block_mapping_pair"] = {
    fg = "#52c9b0"
  }
}
