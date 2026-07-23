local util = require("abysal.util")
local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local process_compose = util.template(
    [=[
style:
  name: ${_name}
  body:
    fgColor: '${fg}'
    bgColor: '${bg_elevated}'
    secondaryTextColor: '${fg_secondary}'
    tertiaryTextColor: '${fg_visual}'
    borderColor: '${fg_muted}'
  stat_table:
    keyFgColor: '${amber}'
    valueFgColor: '${fg}'
    logoColor: '${amber}'
  proc_table:
    fgColor: '${blue}'
    fgWarning: '${amber}'
    fgPending: '${fg_muted}'
    fgCompleted: '${green}'
    fgError: '${red}'
    headerFgColor: '${fg}'
  help:
    fgColor: '${primary_anchor}'
    keyColor: '${fg}'
    hlColor: '${green}'
    categoryFgColor: '${fg_muted}'
  dialog:
    fgColor: '${primary_anchor}'
    bgColor: '${black}'
    contrastBgColor: '${bg}'
    attentionBgColor: '${red}'
    buttonFgColor: '${black}'
    buttonBgColor: '${bg_highlight}'
    buttonFocusFgColor: '${black}'
    buttonFocusBgColor: '${blue}'
    labelFgColor: '${amber}'
    fieldFgColor: '${black}'
    fieldBgColor: '${blue}'
]=],
    colors
  )

  return process_compose
end

return M
