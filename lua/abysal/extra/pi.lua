local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.tool_error_bg = util.blend_bg(colors.error, 0.05)
  local pi = util.template(
    [[{
  "$schema": "https://raw.githubusercontent.com/badlogic/pi-mono/main/packages/coding-agent/src/modes/interactive/theme/theme-schema.json",
  "name": "${_style_name}",
  "colors": {
    "accent": "${blue}",
    "border": "${border_highlight}",
    "borderAccent": "${blue}",
    "borderMuted": "${border}",
    "success": "${green_anchor}",
    "error": "${error}",
    "warning": "${warning}",
    "muted": "${fg_secondary}",
    "dim": "${fg_secondary}",
    "text": "",
    "thinkingText": "${fg_muted}",

    "selectedBg": "${bg_visual}",
    "userMessageBg": "${bg_elevated}",
    "userMessageText": "",
    "customMessageBg": "${bg_elevated}",
    "customMessageText": "",
    "customMessageLabel": "${blue}",
    "toolPendingBg": "${bg_highlight}",
    "toolSuccessBg": "${bg_highlight}",
    "toolErrorBg": "${tool_error_bg}",
    "toolTitle": "",
    "toolOutput": "${fg_secondary}",

    "mdHeading": "${blue}",
    "mdLink": "${primary_anchor}",
    "mdLinkUrl": "${fg_muted}",
    "mdCode": "${blue}",
    "mdCodeBlock": "${bg_elevated}",
    "mdCodeBlockBorder": "${fg_muted}",
    "mdQuote": "${fg_muted}",
    "mdQuoteBorder": "${fg_muted}",
    "mdHr": "${primary}",
    "mdListBullet": "${primary}",

    "toolDiffAdded": "${diff.add}",
    "toolDiffRemoved": "${diff.delete}",
    "toolDiffContext": "${diff.text}",

    "syntaxComment": "${fg_muted}",
    "syntaxKeyword": "${blue}",
    "syntaxFunction": "${blue}",
    "syntaxVariable": "${fg}",
    "syntaxString": "${green}",
    "syntaxNumber": "${primary}",
    "syntaxType": "${primary_anchor}",
    "syntaxOperator": "${fg_muted}",
    "syntaxPunctuation": "${fg_muted}",

    "thinkingOff": "${fg_muted}",
    "thinkingMinimal": "${fg_secondary}",
    "thinkingLow": "${blue}",
    "thinkingMedium": "${blue}",
    "thinkingHigh": "${primary}",
    "thinkingXhigh": "${blue}",

    "bashMode": "${primary}"
  }
}
]],
    colors
  )
  return pi
end

return M
