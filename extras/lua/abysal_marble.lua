local colors = {
  _name = "abysal_marble",
  _style = "marble",
  bg = "#dcdcdc",
  bg_dark = "#cfcfcf",
  bg_dark1 = "#c4c4c4",
  bg_float = "#cfcfcf",
  bg_highlight = "#c4c4c4",
  bg_popup = "#cfcfcf",
  bg_search = "#4a6dc0",
  bg_sidebar = "#cfcfcf",
  bg_statusline = "#cfcfcf",
  bg_visual = "#a2b0d1",
  black = "#b0b0b0",
  blue = "#365ca8",
  blue0 = "#4a6dc0",
  blue1 = "#2a4d94",
  blue2 = "#2c9279",
  blue5 = "#5878b8",
  blue6 = "#8090c0",
  blue7 = "#bfcce0",
  border = "#b0b0b0",
  border_highlight = "#4e6aa2",
  comment = "#666666",
  cyan = "#2c9279",
  dark3 = "#737373",
  dark5 = "#555555",
  diff = {
    add = "#aec3be",
    change = "#d8dadd",
    delete = "#c8b0b1",
    text = "#bfcce0"
  },
  error = "#8c2d30",
  fg = "#2f2f2f",
  fg_dark = "#555555",
  fg_float = "#2f2f2f",
  fg_gutter = "#8c8c8c",
  fg_sidebar = "#555555",
  git = {
    add = "#2c9279",
    change = "#365ca8",
    delete = "#a8474a",
    ignore = "#737373"
  },
  green = "#2c9279",
  green1 = "#2c9279",
  green2 = "#237864",
  hint = "#2c9279",
  info = "#2c9279",
  magenta = "#824699",
  magenta2 = "#a83280",
  none = "NONE",
  orange = "#a04e1e",
  purple = "#824699",
  rainbow = { "#365ca8", "#7a6020", "#2c9279", "#2c9279", "#824699", "#824699", "#a04e1e", "#a8474a" },
  red = "#a8474a",
  red1 = "#8c2d30",
  teal = "#2c9279",
  terminal = {
    black = "#b0b0b0",
    black_bright = "#bcbcbc",
    blue = "#365ca8",
    blue_bright = "#1767d3",
    cyan = "#2c9279",
    cyan_bright = "#00a284",
    green = "#2c9279",
    green_bright = "#00a284",
    magenta = "#824699",
    magenta_bright = "#a13cc2",
    red = "#a8474a",
    red_bright = "#cf3d43",
    white = "#555555",
    white_bright = "#2f2f2f",
    yellow = "#7a6020",
    yellow_bright = "#8c6b00"
  },
  terminal_black = "#bcbcbc",
  todo = "#365ca8",
  warning = "#7a6020",
  yellow = "#7a6020"
}

local highlights = {
  ["@annotation"] = {
    fg = "#824699",
    italic = true
  },
  ["@attribute"] = {
    fg = "#824699",
    italic = true
  },
  ["@boolean"] = "Boolean",
  ["@boolean.json"] = {
    fg = "#365ca8"
  },
  ["@boolean.yaml"] = {
    fg = "#365ca8"
  },
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = "#8c2d30"
  },
  ["@comment.hint"] = {
    fg = "#2c9279"
  },
  ["@comment.info"] = {
    fg = "#2c9279"
  },
  ["@comment.note"] = {
    fg = "#2c9279"
  },
  ["@comment.todo"] = {
    fg = "#365ca8"
  },
  ["@comment.warning"] = {
    fg = "#7a6020"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#824699",
    italic = true
  },
  ["@constructor.lua"] = {
    fg = "#824699",
    italic = true
  },
  ["@constructor.python"] = {
    fg = "#824699",
    italic = true
  },
  ["@constructor.tsx"] = {
    fg = "#824699",
    italic = true
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@field"] = {
    fg = "#365ca8"
  },
  ["@function"] = "Function",
  ["@function.bash"] = {
    fg = "#2c9279"
  },
  ["@function.builtin"] = {
    fg = "#2c9279"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    fg = "#a04e1e"
  },
  ["@keyword.bash"] = {
    fg = "#a04e1e"
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.control"] = {
    fg = "#a04e1e"
  },
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#824699",
    italic = true
  },
  ["@keyword.hcl"] = {
    fg = "#a04e1e"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = {
    fg = "#a04e1e"
  },
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#365ca8"
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
    fg = "#2c4476"
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
    sp = "#8c2d30",
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
    fg = "#4e6aa2"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#4e6aa2"
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
    bg = "#cbcfd7",
    bold = true,
    fg = "#365ca8"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#d2d0c9",
    bold = true,
    fg = "#7a6020"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#cad5d2",
    bold = true,
    fg = "#2c9279"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#cad5d2",
    bold = true,
    fg = "#2c9279"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#d3cdd5",
    bold = true,
    fg = "#824699"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#d3cdd5",
    bold = true,
    fg = "#824699"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#d6cec9",
    bold = true,
    fg = "#a04e1e"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#d7cdcd",
    bold = true,
    fg = "#a8474a"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#2c9279"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#555555"
  },
  ["@markup.list.checked"] = {
    fg = "#2c9279"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#a04e1e"
  },
  ["@markup.list.unchecked"] = {
    fg = "#365ca8"
  },
  ["@markup.math"] = "Special",
  ["@markup.quote"] = {
    fg = "#555555",
    italic = true
  },
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#bcbcbc",
    fg = "#2f2f2f"
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
    fg = "#2c9279"
  },
  ["@method.call"] = "@method",
  ["@module"] = "Include",
  ["@module.builtin"] = {
    fg = "#a8474a"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.bash"] = {
    fg = "#365ca8"
  },
  ["@number.float"] = "Float",
  ["@number.hcl"] = {
    fg = "#365ca8"
  },
  ["@number.json"] = {
    fg = "#365ca8"
  },
  ["@number.yaml"] = {
    fg = "#365ca8"
  },
  ["@operator"] = {
    fg = "#555555"
  },
  ["@property"] = {
    fg = "#365ca8"
  },
  ["@property.hcl"] = {
    fg = "#365ca8"
  },
  ["@property.json"] = {
    fg = "#2c9279"
  },
  ["@property.yaml"] = {
    fg = "#365ca8"
  },
  ["@punctuation.bracket"] = {
    fg = "#555555"
  },
  ["@punctuation.delimiter"] = {
    fg = "#555555"
  },
  ["@punctuation.special"] = {
    fg = "#555555"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#a04e1e"
  },
  ["@string"] = "String",
  ["@string.bash"] = {
    fg = "#7a6020"
  },
  ["@string.documentation"] = {
    fg = "#7a6020"
  },
  ["@string.escape"] = {
    fg = "#7a6020"
  },
  ["@string.hcl"] = {
    fg = "#7a6020"
  },
  ["@string.json"] = {
    fg = "#7a6020"
  },
  ["@string.regex"] = {
    fg = "#8090c0"
  },
  ["@string.regexp"] = {
    fg = "#8090c0"
  },
  ["@string.special"] = {
    fg = "#7a6020"
  },
  ["@string.yaml"] = {
    fg = "#7a6020"
  },
  ["@symbol"] = {
    fg = "#365ca8"
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#6882b8"
  },
  ["@tag.javascript"] = {
    fg = "#a8474a"
  },
  ["@tag.tsx"] = {
    fg = "#a8474a"
  },
  ["@tag.yaml"] = {
    fg = "#a04e1e"
  },
  ["@text.emphasis"] = {
    italic = true
  },
  ["@text.literal"] = {
    bg = "#bcbcbc",
    fg = "#2f2f2f"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#bcbcbc",
    fg = "#2f2f2f"
  },
  ["@text.quote"] = {
    fg = "#555555",
    italic = true
  },
  ["@text.reference"] = {
    fg = "#2c9279"
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
    fg = "#a8474a",
    italic = true
  },
  ["@type.builtin"] = {
    fg = "#a8474a",
    italic = true
  },
  ["@type.css"] = {
    fg = "#a04e1e"
  },
  ["@type.definition"] = {
    fg = "#a8474a",
    italic = true
  },
  ["@type.hcl"] = {
    fg = "#a8474a",
    italic = true
  },
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#2f2f2f"
  },
  ["@variable.bash"] = {
    fg = "#365ca8"
  },
  ["@variable.builtin"] = {
    fg = "#a8474a"
  },
  ["@variable.member"] = {
    fg = "#365ca8"
  },
  ["@variable.parameter"] = {
    fg = "#2f2f2f"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#555555"
  },
  ALEErrorSign = {
    fg = "#8c2d30"
  },
  ALEWarningSign = {
    fg = "#7a6020"
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
    fg = "#8c8c8c"
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
    fg = "#2f2f2f"
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
    fg = "#2c9279"
  },
  AlphaFooter = {
    fg = "#2a4d94"
  },
  AlphaHeader = {
    fg = "#365ca8"
  },
  AlphaHeaderLabel = {
    fg = "#a04e1e"
  },
  AlphaShortcut = {
    fg = "#a04e1e"
  },
  BlinkCmpDoc = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  BlinkCmpDocBorder = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  BlinkCmpGhostText = {
    fg = "#bcbcbc"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#2c9279"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#2c9279"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#555555"
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
    fg = "#2c9279"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#2c9279"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#2f2f2f"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#8c8c8c",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#2a4d94"
  },
  BlinkCmpMenu = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  BlinkCmpMenuBorder = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  BlinkCmpSignatureHelp = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  Bold = {
    bold = true,
    fg = "#2f2f2f"
  },
  Boolean = {
    fg = "#365ca8"
  },
  BufferAlternate = {
    bg = "#8c8c8c",
    fg = "#2f2f2f"
  },
  BufferAlternateADDED = {
    bg = "#8c8c8c",
    fg = "#2c9279"
  },
  BufferAlternateCHANGED = {
    bg = "#8c8c8c",
    fg = "#365ca8"
  },
  BufferAlternateDELETED = {
    bg = "#8c8c8c",
    fg = "#a8474a"
  },
  BufferAlternateERROR = {
    bg = "#8c8c8c",
    fg = "#8c2d30"
  },
  BufferAlternateHINT = {
    bg = "#8c8c8c",
    fg = "#2c9279"
  },
  BufferAlternateINFO = {
    bg = "#8c8c8c",
    fg = "#2c9279"
  },
  BufferAlternateIndex = {
    bg = "#8c8c8c",
    fg = "#2c9279"
  },
  BufferAlternateMod = {
    bg = "#8c8c8c",
    fg = "#7a6020"
  },
  BufferAlternateSign = {
    bg = "#8c8c8c",
    fg = "#2c9279"
  },
  BufferAlternateTarget = {
    bg = "#8c8c8c",
    fg = "#a8474a"
  },
  BufferAlternateWARN = {
    bg = "#8c8c8c",
    fg = "#7a6020"
  },
  BufferCurrent = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  BufferCurrentADDED = {
    bg = "#dcdcdc",
    fg = "#2c9279"
  },
  BufferCurrentCHANGED = {
    bg = "#dcdcdc",
    fg = "#365ca8"
  },
  BufferCurrentDELETED = {
    bg = "#dcdcdc",
    fg = "#a8474a"
  },
  BufferCurrentERROR = {
    bg = "#dcdcdc",
    fg = "#8c2d30"
  },
  BufferCurrentHINT = {
    bg = "#dcdcdc",
    fg = "#2c9279"
  },
  BufferCurrentINFO = {
    bg = "#dcdcdc",
    fg = "#2c9279"
  },
  BufferCurrentIndex = {
    bg = "#dcdcdc",
    fg = "#2c9279"
  },
  BufferCurrentMod = {
    bg = "#dcdcdc",
    fg = "#7a6020"
  },
  BufferCurrentSign = {
    bg = "#dcdcdc",
    fg = "#dcdcdc"
  },
  BufferCurrentTarget = {
    bg = "#dcdcdc",
    fg = "#a8474a"
  },
  BufferCurrentWARN = {
    bg = "#dcdcdc",
    fg = "#7a6020"
  },
  BufferInactive = {
    bg = "#d2d2d2",
    fg = "#707070"
  },
  BufferInactiveADDED = {
    bg = "#d2d2d2",
    fg = "#4fa18d"
  },
  BufferInactiveCHANGED = {
    bg = "#d2d2d2",
    fg = "#5776b2"
  },
  BufferInactiveDELETED = {
    bg = "#d2d2d2",
    fg = "#b26567"
  },
  BufferInactiveERROR = {
    bg = "#d2d2d2",
    fg = "#9c5052"
  },
  BufferInactiveHINT = {
    bg = "#d2d2d2",
    fg = "#4fa18d"
  },
  BufferInactiveINFO = {
    bg = "#d2d2d2",
    fg = "#4fa18d"
  },
  BufferInactiveIndex = {
    bg = "#d2d2d2",
    fg = "#555555"
  },
  BufferInactiveMod = {
    bg = "#d2d2d2",
    fg = "#8e7946"
  },
  BufferInactiveSign = {
    bg = "#d2d2d2",
    fg = "#dcdcdc"
  },
  BufferInactiveTarget = {
    bg = "#d2d2d2",
    fg = "#a8474a"
  },
  BufferInactiveWARN = {
    bg = "#d2d2d2",
    fg = "#8e7946"
  },
  BufferLineIndicatorSelected = {
    fg = "#365ca8"
  },
  BufferOffset = {
    bg = "#cfcfcf",
    fg = "#555555"
  },
  BufferTabpageFill = {
    bg = "#c9c9c9",
    fg = "#555555"
  },
  BufferTabpages = {
    bg = "#cfcfcf",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  BufferVisibleADDED = {
    bg = "#cfcfcf",
    fg = "#2c9279"
  },
  BufferVisibleCHANGED = {
    bg = "#cfcfcf",
    fg = "#365ca8"
  },
  BufferVisibleDELETED = {
    bg = "#cfcfcf",
    fg = "#a8474a"
  },
  BufferVisibleERROR = {
    bg = "#cfcfcf",
    fg = "#8c2d30"
  },
  BufferVisibleHINT = {
    bg = "#cfcfcf",
    fg = "#2c9279"
  },
  BufferVisibleINFO = {
    bg = "#cfcfcf",
    fg = "#2c9279"
  },
  BufferVisibleIndex = {
    bg = "#cfcfcf",
    fg = "#2c9279"
  },
  BufferVisibleMod = {
    bg = "#cfcfcf",
    fg = "#7a6020"
  },
  BufferVisibleSign = {
    bg = "#cfcfcf",
    fg = "#2c9279"
  },
  BufferVisibleTarget = {
    bg = "#cfcfcf",
    fg = "#a8474a"
  },
  BufferVisibleWARN = {
    bg = "#cfcfcf",
    fg = "#7a6020"
  },
  Character = {
    fg = "#7a6020"
  },
  CmpDocumentation = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  CmpDocumentationBorder = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  CmpGhostText = {
    fg = "#bcbcbc"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#2f2f2f"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#8c8c8c",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#2a4d94"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#2a4d94"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#2c9279"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#2c9279"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#555555"
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
    fg = "#2c9279"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#2c9279"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#666666"
  },
  CodeBlock = {
    bg = "#cfcfcf"
  },
  CodeiumSuggestion = {
    fg = "#bcbcbc"
  },
  ColorColumn = {
    bg = "#b0b0b0"
  },
  Comment = {
    fg = "#666666",
    italic = true
  },
  ComplHint = {
    fg = "#bcbcbc"
  },
  Conceal = {
    fg = "#555555"
  },
  Conditional = {
    fg = "#a04e1e"
  },
  Constant = {
    fg = "#365ca8"
  },
  CopilotAnnotation = {
    fg = "#bcbcbc"
  },
  CopilotSuggestion = {
    fg = "#bcbcbc"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#2f2f2f",
    fg = "#dcdcdc"
  },
  CursorColumn = {
    bg = "#c4c4c4"
  },
  CursorIM = {
    bg = "#2f2f2f",
    fg = "#dcdcdc"
  },
  CursorLine = {
    bg = "#c4c4c4"
  },
  CursorLineNr = {
    bold = true,
    fg = "#a04e1e"
  },
  DapStoppedLine = {
    bg = "#d2d0c9"
  },
  DashboardDesc = {
    fg = "#2c9279"
  },
  DashboardFiles = {
    fg = "#365ca8"
  },
  DashboardFooter = {
    fg = "#2a4d94"
  },
  DashboardHeader = {
    fg = "#365ca8"
  },
  DashboardIcon = {
    fg = "#2c9279"
  },
  DashboardKey = {
    fg = "#a04e1e"
  },
  DashboardMruIcon = {
    fg = "#824699"
  },
  DashboardMruTitle = {
    fg = "#2c9279"
  },
  DashboardProjectIcon = {
    fg = "#7a6020"
  },
  DashboardProjectTitle = {
    fg = "#2c9279"
  },
  DashboardProjectTitleIcon = {
    fg = "#a04e1e"
  },
  DashboardShortCut = {
    fg = "#2c9279"
  },
  DashboardShortCutIcon = {
    fg = "#824699"
  },
  Debug = {
    fg = "#a04e1e"
  },
  Define = {
    fg = "#a04e1e"
  },
  DefinitionCount = {
    fg = "#824699"
  },
  DefinitionIcon = {
    fg = "#365ca8"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#8c2d30"
  },
  DiagnosticHint = {
    fg = "#2c9279"
  },
  DiagnosticInfo = {
    fg = "#2c9279"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#8c2d30",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#2c9279",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#2c9279",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#7a6020",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#bcbcbc"
  },
  DiagnosticVirtualTextError = {
    bg = "#d4cbcb",
    fg = "#8c2d30"
  },
  DiagnosticVirtualTextHint = {
    bg = "#cad5d2",
    fg = "#2c9279"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#cad5d2",
    fg = "#2c9279"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#d2d0c9",
    fg = "#7a6020"
  },
  DiagnosticWarn = {
    fg = "#7a6020"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#aec3be"
  },
  DiffChange = {
    bg = "#d8dadd"
  },
  DiffDelete = {
    bg = "#c8b0b1"
  },
  DiffText = {
    bg = "#bfcce0"
  },
  Directory = {
    fg = "#365ca8"
  },
  EndOfBuffer = {
    fg = "#dcdcdc"
  },
  Error = {
    fg = "#8c2d30"
  },
  ErrorMsg = {
    fg = "#8c2d30"
  },
  Exception = {
    fg = "#a04e1e"
  },
  FlashBackdrop = {
    fg = "#737373"
  },
  FlashLabel = {
    bg = "#a83280",
    bold = true,
    fg = "#2f2f2f"
  },
  Float = {
    fg = "#365ca8"
  },
  FloatBorder = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  FloatTitle = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  FoldColumn = {
    bg = "#dcdcdc",
    fg = "#666666"
  },
  Folded = {
    bg = "#8c8c8c",
    fg = "#365ca8"
  },
  Foo = {
    bg = "#a83280",
    fg = "#2f2f2f"
  },
  Function = {
    fg = "#2c9279"
  },
  FzfLuaBorder = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#555555"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#2f2f2f"
  },
  FzfLuaFzfPointer = {
    fg = "#a83280"
  },
  FzfLuaFzfSeparator = {
    bg = "#cfcfcf",
    fg = "#a04e1e"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  FzfLuaTitle = {
    bg = "#cfcfcf",
    fg = "#a04e1e"
  },
  GitGutterAdd = {
    fg = "#2c9279"
  },
  GitGutterAddLineNr = {
    fg = "#2c9279"
  },
  GitGutterChange = {
    fg = "#365ca8"
  },
  GitGutterChangeLineNr = {
    fg = "#365ca8"
  },
  GitGutterDelete = {
    fg = "#a8474a"
  },
  GitGutterDeleteLineNr = {
    fg = "#a8474a"
  },
  GitSignsAdd = {
    fg = "#2c9279"
  },
  GitSignsChange = {
    fg = "#365ca8"
  },
  GitSignsDelete = {
    fg = "#a8474a"
  },
  GlyphPalette1 = {
    fg = "#8c2d30"
  },
  GlyphPalette2 = {
    fg = "#2c9279"
  },
  GlyphPalette3 = {
    fg = "#7a6020"
  },
  GlyphPalette4 = {
    fg = "#365ca8"
  },
  GlyphPalette6 = {
    fg = "#2c9279"
  },
  GlyphPalette7 = {
    fg = "#2f2f2f"
  },
  GlyphPalette9 = {
    fg = "#a8474a"
  },
  GrugFarHelpHeader = {
    fg = "#666666"
  },
  GrugFarHelpHeaderKey = {
    fg = "#2c9279"
  },
  GrugFarInputLabel = {
    fg = "#2a4d94"
  },
  GrugFarInputPlaceholder = {
    fg = "#737373"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#365ca8"
  },
  GrugFarResultsHeader = {
    fg = "#a04e1e"
  },
  GrugFarResultsLineColumn = {
    fg = "#737373"
  },
  GrugFarResultsLineNo = {
    fg = "#737373"
  },
  GrugFarResultsMatch = {
    bg = "#a8474a",
    fg = "#b0b0b0"
  },
  GrugFarResultsStats = {
    fg = "#365ca8"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#d4d6d9"
  },
  Headline2 = {
    bg = "#d7d6d3"
  },
  Headline3 = {
    bg = "#d3d8d7"
  },
  Headline4 = {
    bg = "#d3d8d7"
  },
  Headline5 = {
    bg = "#d8d5d9"
  },
  Headline6 = {
    bg = "#d8d5d9"
  },
  Headline7 = {
    bg = "#d9d5d3"
  },
  Headline8 = {
    bg = "#d9d5d5"
  },
  HopNextKey = {
    bold = true,
    fg = "#a83280"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#2c9279"
  },
  HopNextKey2 = {
    fg = "#72b0a1"
  },
  HopUnmatched = {
    fg = "#737373"
  },
  IblIndent = {
    fg = "#8c8c8c",
    nocombine = true
  },
  IblScope = {
    fg = "#2a4d94",
    nocombine = true
  },
  Identifier = {
    fg = "#2f2f2f"
  },
  IlluminatedWordRead = {
    bg = "#8c8c8c"
  },
  IlluminatedWordText = {
    bg = "#8c8c8c"
  },
  IlluminatedWordWrite = {
    bg = "#8c8c8c"
  },
  IncSearch = {
    bg = "#a04e1e",
    fg = "#b0b0b0"
  },
  Include = {
    fg = "#a04e1e"
  },
  IndentBlanklineChar = {
    fg = "#8c8c8c",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#2a4d94",
    nocombine = true
  },
  IndentLine = {
    fg = "#8c8c8c",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#2a4d94",
    nocombine = true
  },
  Italic = {
    fg = "#2f2f2f",
    italic = true
  },
  Keyword = {
    fg = "#a04e1e"
  },
  Label = {
    fg = "#365ca8"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#a83280"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#8c8c8c"
  },
  LeapBackdrop = {
    fg = "#737373"
  },
  LeapLabel = {
    bold = true,
    fg = "#a83280"
  },
  LeapMatch = {
    bg = "#a83280",
    bold = true,
    fg = "#2f2f2f"
  },
  LineNr = {
    fg = "#8c8c8c"
  },
  LineNrAbove = {
    fg = "#8c8c8c"
  },
  LineNrBelow = {
    fg = "#8c8c8c"
  },
  LspCodeLens = {
    fg = "#666666"
  },
  LspFloatWinBorder = {
    fg = "#4e6aa2"
  },
  LspFloatWinNormal = {
    bg = "#cfcfcf"
  },
  LspInfoBorder = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  LspInlayHint = {
    bg = "#d9dadc",
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
    bg = "#8c8c8c"
  },
  LspReferenceText = {
    bg = "#8c8c8c"
  },
  LspReferenceWrite = {
    bg = "#8c8c8c"
  },
  LspSagaBorderTitle = {
    fg = "#2c9279"
  },
  LspSagaCodeActionBorder = {
    fg = "#365ca8"
  },
  LspSagaCodeActionContent = {
    fg = "#824699"
  },
  LspSagaCodeActionTitle = {
    fg = "#2a4d94"
  },
  LspSagaDefPreviewBorder = {
    fg = "#2c9279"
  },
  LspSagaFinderSelection = {
    fg = "#a2b0d1"
  },
  LspSagaHoverBorder = {
    fg = "#365ca8"
  },
  LspSagaRenameBorder = {
    fg = "#2c9279"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#a8474a"
  },
  LspSignatureActiveParameter = {
    bg = "#c5cad8",
    bold = true
  },
  Macro = {
    fg = "#a04e1e"
  },
  MatchParen = {
    bold = true,
    fg = "#a04e1e"
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
    bg = "#8c8c8c"
  },
  MiniCursorwordCurrent = {
    bg = "#8c8c8c"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#a8474a",
    fg = "#b0b0b0"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#2c9279",
    fg = "#b0b0b0"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#2c9279"
  },
  MiniDiffSignChange = {
    fg = "#365ca8"
  },
  MiniDiffSignDelete = {
    fg = "#a8474a"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#2f2f2f"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#cfcfcf",
    bold = true,
    fg = "#4e6aa2"
  },
  MiniHipatternsFixme = {
    bg = "#8c2d30",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniHipatternsHack = {
    bg = "#7a6020",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniHipatternsNote = {
    bg = "#2c9279",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniHipatternsTodo = {
    bg = "#2c9279",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniIconsAzure = {
    fg = "#2c9279"
  },
  MiniIconsBlue = {
    fg = "#365ca8"
  },
  MiniIconsCyan = {
    fg = "#2c9279"
  },
  MiniIconsGreen = {
    fg = "#2c9279"
  },
  MiniIconsGrey = {
    fg = "#2f2f2f"
  },
  MiniIconsOrange = {
    fg = "#a04e1e"
  },
  MiniIconsPurple = {
    fg = "#824699"
  },
  MiniIconsRed = {
    fg = "#a8474a"
  },
  MiniIconsYellow = {
    fg = "#7a6020"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#2a4d94",
    nocombine = true
  },
  MiniJump = {
    bg = "#a83280",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#a83280",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#cfcfcf",
    fg = "#2c9279",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#a04e1e",
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
    bg = "#cfcfcf",
    fg = "#2c9279"
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
    bg = "#cfcfcf",
    fg = "#2c9279"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#7a6020",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#365ca8"
  },
  MiniStarterInactive = {
    fg = "#666666",
    italic = true
  },
  MiniStarterItem = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  MiniStarterItemBullet = {
    fg = "#4e6aa2"
  },
  MiniStarterItemPrefix = {
    fg = "#7a6020"
  },
  MiniStarterQuery = {
    fg = "#2c9279"
  },
  MiniStarterSection = {
    fg = "#2a4d94"
  },
  MiniStatuslineDevinfo = {
    bg = "#8c8c8c",
    fg = "#555555"
  },
  MiniStatuslineFileinfo = {
    bg = "#8c8c8c",
    fg = "#555555"
  },
  MiniStatuslineFilename = {
    bg = "#c4c4c4",
    fg = "#555555"
  },
  MiniStatuslineInactive = {
    bg = "#cfcfcf",
    fg = "#365ca8"
  },
  MiniStatuslineModeCommand = {
    bg = "#7a6020",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniStatuslineModeInsert = {
    bg = "#2c9279",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniStatuslineModeNormal = {
    bg = "#365ca8",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniStatuslineModeOther = {
    bg = "#2c9279",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniStatuslineModeReplace = {
    bg = "#a8474a",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniStatuslineModeVisual = {
    bg = "#824699",
    bold = true,
    fg = "#b0b0b0"
  },
  MiniSurround = {
    bg = "#a04e1e",
    fg = "#b0b0b0"
  },
  MiniTablineCurrent = {
    bg = "#8c8c8c",
    fg = "#2f2f2f"
  },
  MiniTablineFill = {
    bg = "#b0b0b0"
  },
  MiniTablineHidden = {
    bg = "#cfcfcf",
    fg = "#555555"
  },
  MiniTablineModifiedCurrent = {
    bg = "#8c8c8c",
    fg = "#7a6020"
  },
  MiniTablineModifiedHidden = {
    bg = "#cfcfcf",
    fg = "#978558"
  },
  MiniTablineModifiedVisible = {
    bg = "#cfcfcf",
    fg = "#7a6020"
  },
  MiniTablineTabpagesection = {
    bg = "#8c8c8c",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#a8474a"
  },
  MiniTestPass = {
    bold = true,
    fg = "#2c9279"
  },
  MiniTrailspace = {
    bg = "#a8474a"
  },
  ModeMsg = {
    bold = true,
    fg = "#555555"
  },
  MoreMsg = {
    fg = "#365ca8"
  },
  MsgArea = {
    fg = "#555555"
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
    fg = "#2f2f2f"
  },
  NavicText = {
    bg = "NONE",
    fg = "#2f2f2f"
  },
  NeoTreeDimText = {
    fg = "#8c8c8c"
  },
  NeoTreeFileName = {
    fg = "#555555"
  },
  NeoTreeGitModified = {
    fg = "#a04e1e"
  },
  NeoTreeGitStaged = {
    fg = "#2c9279"
  },
  NeoTreeGitUntracked = {
    fg = "#824699"
  },
  NeoTreeNormal = {
    bg = "#cfcfcf",
    fg = "#555555"
  },
  NeoTreeNormalNC = {
    bg = "#cfcfcf",
    fg = "#555555"
  },
  NeoTreeTabActive = {
    bg = "#cfcfcf",
    bold = true,
    fg = "#365ca8"
  },
  NeoTreeTabInactive = {
    bg = "#a6a6a6",
    fg = "#737373"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#cfcfcf",
    fg = "#365ca8"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#a6a6a6",
    fg = "#dcdcdc"
  },
  NeogitBranch = {
    fg = "#824699"
  },
  NeogitDiffAddHighlight = {
    bg = "#aec3be",
    fg = "#2c9279"
  },
  NeogitDiffContextHighlight = {
    bg = "#b4b4b4",
    fg = "#555555"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#c8b0b1",
    fg = "#a8474a"
  },
  NeogitHunkHeader = {
    bg = "#c4c4c4",
    fg = "#2f2f2f"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#8c8c8c",
    fg = "#365ca8"
  },
  NeogitRemote = {
    fg = "#824699"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#824699"
  },
  NeotestBorder = {
    fg = "#365ca8"
  },
  NeotestDir = {
    fg = "#365ca8"
  },
  NeotestExpandMarker = {
    fg = "#555555"
  },
  NeotestFailed = {
    fg = "#a8474a"
  },
  NeotestFile = {
    fg = "#2c9279"
  },
  NeotestFocused = {
    fg = "#7a6020"
  },
  NeotestIndent = {
    fg = "#555555"
  },
  NeotestMarked = {
    fg = "#365ca8"
  },
  NeotestNamespace = {
    fg = "#237864"
  },
  NeotestPassed = {
    fg = "#2c9279"
  },
  NeotestRunning = {
    fg = "#7a6020"
  },
  NeotestSkipped = {
    fg = "#365ca8"
  },
  NeotestTarget = {
    fg = "#365ca8"
  },
  NeotestTest = {
    fg = "#555555"
  },
  NeotestWinSelect = {
    fg = "#365ca8"
  },
  NoiceCmdlineIconInput = {
    fg = "#7a6020"
  },
  NoiceCmdlineIconLua = {
    fg = "#2a4d94"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#7a6020"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#2a4d94"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#7a6020"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#2a4d94"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#555555"
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
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  NormalFloat = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  NormalNC = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  NormalSB = {
    bg = "#cfcfcf",
    fg = "#555555"
  },
  NotifyBackground = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  NotifyDEBUGBody = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  NotifyDEBUGBorder = {
    bg = "#dcdcdc",
    fg = "#b9b9b9"
  },
  NotifyDEBUGIcon = {
    fg = "#666666"
  },
  NotifyDEBUGTitle = {
    fg = "#666666"
  },
  NotifyERRORBody = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  NotifyERRORBorder = {
    bg = "#dcdcdc",
    fg = "#c4a8a8"
  },
  NotifyERRORIcon = {
    fg = "#8c2d30"
  },
  NotifyERRORTitle = {
    fg = "#8c2d30"
  },
  NotifyINFOBody = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  NotifyINFOBorder = {
    bg = "#dcdcdc",
    fg = "#a7c6be"
  },
  NotifyINFOIcon = {
    fg = "#2c9279"
  },
  NotifyINFOTitle = {
    fg = "#2c9279"
  },
  NotifyTRACEBody = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  NotifyTRACEBorder = {
    bg = "#dcdcdc",
    fg = "#c1afc8"
  },
  NotifyTRACEIcon = {
    fg = "#824699"
  },
  NotifyTRACETitle = {
    fg = "#824699"
  },
  NotifyWARNBody = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  NotifyWARNBorder = {
    bg = "#dcdcdc",
    fg = "#bfb7a4"
  },
  NotifyWARNIcon = {
    fg = "#7a6020"
  },
  NotifyWARNTitle = {
    fg = "#7a6020"
  },
  Number = {
    fg = "#365ca8"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#365ca8"
  },
  NvimTreeGitDeleted = {
    fg = "#a8474a"
  },
  NvimTreeGitDirty = {
    fg = "#365ca8"
  },
  NvimTreeGitNew = {
    fg = "#2c9279"
  },
  NvimTreeImageFile = {
    fg = "#555555"
  },
  NvimTreeIndentMarker = {
    fg = "#8c8c8c"
  },
  NvimTreeNormal = {
    bg = "#cfcfcf",
    fg = "#555555"
  },
  NvimTreeNormalNC = {
    bg = "#cfcfcf",
    fg = "#555555"
  },
  NvimTreeOpenedFile = {
    bg = "#c4c4c4"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#365ca8"
  },
  NvimTreeSpecialFile = {
    fg = "#824699",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#365ca8"
  },
  NvimTreeWinSeparator = {
    bg = "#cfcfcf",
    fg = "#cfcfcf"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#2a4d94"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#a04e1e"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#824699"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#d3cdd5",
    fg = "#824699"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#2a4d94"
  },
  Operator = {
    fg = "#555555"
  },
  Pmenu = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  PmenuMatch = {
    bg = "#cfcfcf",
    fg = "#2a4d94"
  },
  PmenuMatchSel = {
    bg = "#9c9c9c",
    fg = "#2a4d94"
  },
  PmenuSbar = {
    bg = "#c7c7c7"
  },
  PmenuSel = {
    bg = "#9c9c9c"
  },
  PmenuThumb = {
    bg = "#8c8c8c"
  },
  PreProc = {
    fg = "#a04e1e"
  },
  Question = {
    fg = "#365ca8"
  },
  QuickFixLine = {
    bg = "#a2b0d1",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#365ca8"
  },
  RainbowDelimiterCyan = {
    fg = "#2c9279"
  },
  RainbowDelimiterGreen = {
    fg = "#2c9279"
  },
  RainbowDelimiterOrange = {
    fg = "#a04e1e"
  },
  RainbowDelimiterRed = {
    fg = "#a8474a"
  },
  RainbowDelimiterViolet = {
    fg = "#824699"
  },
  RainbowDelimiterYellow = {
    fg = "#7a6020"
  },
  ReferencesCount = {
    fg = "#824699"
  },
  ReferencesIcon = {
    fg = "#365ca8"
  },
  RenderMarkdownBullet = {
    fg = "#a04e1e"
  },
  RenderMarkdownCode = {
    bg = "#cfcfcf"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#a04e1e"
  },
  RenderMarkdownH1Bg = {
    bg = "#cbcfd7"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#365ca8"
  },
  RenderMarkdownH2Bg = {
    bg = "#d2d0c9"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#7a6020"
  },
  RenderMarkdownH3Bg = {
    bg = "#cad5d2"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#2c9279"
  },
  RenderMarkdownH4Bg = {
    bg = "#cad5d2"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#2c9279"
  },
  RenderMarkdownH5Bg = {
    bg = "#d3cdd5"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#824699"
  },
  RenderMarkdownH6Bg = {
    bg = "#d3cdd5"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#824699"
  },
  RenderMarkdownH7Bg = {
    bg = "#d6cec9"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#a04e1e"
  },
  RenderMarkdownH8Bg = {
    bg = "#d7cdcd"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#a8474a"
  },
  RenderMarkdownTableHead = {
    fg = "#a8474a"
  },
  RenderMarkdownTableRow = {
    fg = "#a04e1e"
  },
  Repeat = {
    fg = "#a04e1e"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#8c2d30"
  },
  ScrollbarErrorHandle = {
    bg = "#c4c4c4",
    fg = "#8c2d30"
  },
  ScrollbarHandle = {
    bg = "#c4c4c4",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#2c9279"
  },
  ScrollbarHintHandle = {
    bg = "#c4c4c4",
    fg = "#2c9279"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#2c9279"
  },
  ScrollbarInfoHandle = {
    bg = "#c4c4c4",
    fg = "#2c9279"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#824699"
  },
  ScrollbarMiscHandle = {
    bg = "#c4c4c4",
    fg = "#824699"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#a04e1e"
  },
  ScrollbarSearchHandle = {
    bg = "#c4c4c4",
    fg = "#a04e1e"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#7a6020"
  },
  ScrollbarWarnHandle = {
    bg = "#c4c4c4",
    fg = "#7a6020"
  },
  Search = {
    bg = "#4a6dc0",
    fg = "#2f2f2f"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#2c9279"
  },
  SidekickSignChange = {
    fg = "#365ca8"
  },
  SidekickSignDelete = {
    fg = "#a8474a"
  },
  SignColumn = {
    bg = "#dcdcdc",
    fg = "#8c8c8c"
  },
  SignColumnSB = {
    bg = "#cfcfcf",
    fg = "#8c8c8c"
  },
  SnacksDashboardDesc = {
    fg = "#2c9279"
  },
  SnacksDashboardDir = {
    fg = "#737373"
  },
  SnacksDashboardFooter = {
    fg = "#2a4d94"
  },
  SnacksDashboardHeader = {
    fg = "#365ca8"
  },
  SnacksDashboardIcon = {
    fg = "#2a4d94"
  },
  SnacksDashboardKey = {
    fg = "#a04e1e"
  },
  SnacksDashboardSpecial = {
    fg = "#824699"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#2a4d94"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#caced5",
    fg = "#2a4d94"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#2a4d94"
  },
  SnacksIndent = {
    fg = "#8c8c8c",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#365ca8",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#7a6020",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#2c9279",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#2c9279",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#824699",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#824699",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#a04e1e",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#a8474a",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#2a4d94",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#7a6020"
  },
  SnacksInputIcon = {
    fg = "#2a4d94"
  },
  SnacksInputTitle = {
    fg = "#7a6020"
  },
  SnacksNotifierBorderDebug = {
    bg = "#dcdcdc",
    fg = "#adadad"
  },
  SnacksNotifierBorderError = {
    bg = "#dcdcdc",
    fg = "#bc9697"
  },
  SnacksNotifierBorderInfo = {
    bg = "#dcdcdc",
    fg = "#96beb4"
  },
  SnacksNotifierBorderTrace = {
    bg = "#dcdcdc",
    fg = "#b8a0c1"
  },
  SnacksNotifierBorderWarn = {
    bg = "#dcdcdc",
    fg = "#b5aa91"
  },
  SnacksNotifierDebug = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  SnacksNotifierError = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  SnacksNotifierIconDebug = {
    fg = "#666666"
  },
  SnacksNotifierIconError = {
    fg = "#8c2d30"
  },
  SnacksNotifierIconInfo = {
    fg = "#2c9279"
  },
  SnacksNotifierIconTrace = {
    fg = "#824699"
  },
  SnacksNotifierIconWarn = {
    fg = "#7a6020"
  },
  SnacksNotifierInfo = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  SnacksNotifierTitleDebug = {
    fg = "#666666"
  },
  SnacksNotifierTitleError = {
    fg = "#8c2d30"
  },
  SnacksNotifierTitleInfo = {
    fg = "#2c9279"
  },
  SnacksNotifierTitleTrace = {
    fg = "#824699"
  },
  SnacksNotifierTitleWarn = {
    fg = "#7a6020"
  },
  SnacksNotifierTrace = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  SnacksNotifierWarn = {
    bg = "#dcdcdc",
    fg = "#2f2f2f"
  },
  SnacksPickerBoxTitle = {
    bg = "#cfcfcf",
    fg = "#a04e1e"
  },
  SnacksPickerInputBorder = {
    bg = "#cfcfcf",
    fg = "#a04e1e"
  },
  SnacksPickerInputTitle = {
    bg = "#cfcfcf",
    fg = "#a04e1e"
  },
  SnacksPickerPickWin = {
    bg = "#4a6dc0",
    bold = true,
    fg = "#2f2f2f"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#a83280",
    bold = true,
    fg = "#2f2f2f"
  },
  SnacksPickerSelected = {
    fg = "#a83280"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#caced5",
    fg = "#2a4d94"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#d9dadc",
    fg = "#737373"
  },
  SnacksProfilerIconInfo = {
    bg = "#a7b1c6",
    fg = "#2a4d94"
  },
  SnacksProfilerIconTrace = {
    bg = "#d3d7dd",
    fg = "#737373"
  },
  SnacksZenIcon = {
    fg = "#824699"
  },
  Sneak = {
    bg = "#824699",
    fg = "#c4c4c4"
  },
  SneakScope = {
    bg = "#a2b0d1"
  },
  Special = {
    fg = "#365ca8"
  },
  SpecialChar = {
    fg = "#365ca8"
  },
  SpecialKey = {
    fg = "#737373"
  },
  SpellBad = {
    sp = "#8c2d30",
    undercurl = true
  },
  SpellCap = {
    sp = "#7a6020",
    undercurl = true
  },
  SpellLocal = {
    sp = "#2c9279",
    undercurl = true
  },
  SpellRare = {
    sp = "#2c9279",
    undercurl = true
  },
  Statement = {
    fg = "#a04e1e"
  },
  StatusLine = {
    bg = "#cfcfcf",
    fg = "#555555"
  },
  StatusLineNC = {
    bg = "#cfcfcf",
    fg = "#8c8c8c"
  },
  StorageClass = {
    fg = "#a04e1e"
  },
  String = {
    fg = "#7a6020"
  },
  Substitute = {
    bg = "#a8474a",
    fg = "#b0b0b0"
  },
  SupermavenSuggestion = {
    fg = "#bcbcbc"
  },
  TabLine = {
    bg = "#cfcfcf",
    fg = "#8c8c8c"
  },
  TabLineFill = {
    bg = "#b0b0b0"
  },
  TabLineSel = {
    bg = "#365ca8",
    fg = "#b0b0b0"
  },
  TargetWord = {
    fg = "#2c9279"
  },
  TelescopeBorder = {
    bg = "#cfcfcf",
    fg = "#4e6aa2"
  },
  TelescopeNormal = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  TelescopePromptBorder = {
    bg = "#cfcfcf",
    fg = "#a04e1e"
  },
  TelescopePromptTitle = {
    bg = "#cfcfcf",
    fg = "#a04e1e"
  },
  TelescopeResultsComment = {
    fg = "#737373"
  },
  Title = {
    bold = true,
    fg = "#365ca8"
  },
  Todo = {
    bg = "#7a6020",
    fg = "#dcdcdc"
  },
  TreesitterContext = {
    bg = "#9c9c9c"
  },
  TroubleCount = {
    bg = "#8c8c8c",
    fg = "#824699"
  },
  TroubleNormal = {
    bg = "#cfcfcf",
    fg = "#2f2f2f"
  },
  TroubleText = {
    fg = "#555555"
  },
  Type = {
    fg = "#a8474a",
    italic = true
  },
  Typedef = {
    fg = "#a8474a",
    italic = true
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#b0b0b0"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#7a6020"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#365ca8"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#7a6020"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#2c9279"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#2c9279"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#824699"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#824699"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#a04e1e"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#a8474a"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#7a6020"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#365ca8"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#a04e1e"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#365ca8"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#2c9279"
  },
  Visual = {
    bg = "#a2b0d1"
  },
  VisualNOS = {
    bg = "#a2b0d1"
  },
  WarningMsg = {
    fg = "#7a6020"
  },
  WhichKey = {
    fg = "#2c9279"
  },
  WhichKeyDesc = {
    fg = "#824699"
  },
  WhichKeyGroup = {
    fg = "#365ca8"
  },
  WhichKeyNormal = {
    bg = "#cfcfcf"
  },
  WhichKeySeparator = {
    fg = "#666666"
  },
  WhichKeyValue = {
    fg = "#555555"
  },
  Whitespace = {
    fg = "#8c8c8c"
  },
  WildMenu = {
    bg = "#a2b0d1"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#b0b0b0"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#cad5d2",
    fg = "#2c9279"
  },
  debugPC = {
    bg = "#cfcfcf"
  },
  diffAdded = {
    bg = "#aec3be",
    fg = "#2c9279"
  },
  diffChanged = {
    bg = "#d8dadd",
    fg = "#365ca8"
  },
  diffFile = {
    fg = "#365ca8"
  },
  diffIndexLine = {
    fg = "#824699"
  },
  diffLine = {
    fg = "#666666"
  },
  diffNewFile = {
    bg = "#aec3be",
    fg = "#2a4d94"
  },
  diffOldFile = {
    bg = "#c8b0b1",
    fg = "#2a4d94"
  },
  diffRemoved = {
    bg = "#c8b0b1",
    fg = "#a8474a"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#8c2d30"
  },
  healthSuccess = {
    fg = "#2c9279"
  },
  healthWarning = {
    fg = "#7a6020"
  },
  helpCommand = {
    bg = "#bcbcbc",
    fg = "#365ca8"
  },
  helpExample = {
    fg = "#666666"
  },
  htmlH1 = {
    bold = true,
    fg = "#2c9279"
  },
  htmlH2 = {
    bold = true,
    fg = "#365ca8"
  },
  illuminatedCurWord = {
    bg = "#8c8c8c"
  },
  illuminatedWord = {
    bg = "#8c8c8c"
  },
  lCursor = {
    bg = "#2f2f2f",
    fg = "#dcdcdc"
  },
  qfFileName = {
    fg = "#365ca8"
  },
  qfLineNr = {
    fg = "#555555"
  },
  ["yaml.block_mapping_pair"] = {
    fg = "#2c9279"
  }
}
