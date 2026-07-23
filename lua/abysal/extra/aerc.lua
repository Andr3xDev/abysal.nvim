local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local aerc = util.template(
    [[
# vim: ft=dosini
#
# aerc Abysal styleset
# set styleset-name=abysal-xxx.ini in 'aerc.conf' to load the style
#

*.default=true
*.normal=true

border.fg=${fg_muted}
border.bg=${bg}

title.fg=${black}
title.bg=${blue}
title.bold=true

header.fg=${gold}
#header.bg=${bg}
header.bold=true

tab.fg=${fg_muted}
tab.bg=${bg_statusline}
tab.selected.fg=${black}
tab.selected.bg=${blue}

statusline_default.fg=${fg}
statusline_default.bg=${bg_elevated}
statusline_error.fg=${error}
statusline_success.fg=${green_anchor}

*error.bold=true
*error.fg=${error}
*warning.fg=${warning}
*success.fg=${green_anchor}

dirlist_*.bg=${bg}
dirlist_*.fg=${fg}
dirlist_*.selected.bg=${bg_visual}
dirlist_*.selected.fg=${fg}

msglist_*.bg=${bg}
msglist_*.fg=${fg}
msglist_*.selected.bg=${bg_visual}
#msglist_*.selected.fg=${fg}
msglist_unread.bold=true
msglist_unread.fg=${blue}
msglist_marked.fg=${primary}
msglist_thread_folded.italic=true
msglist_thread_folded.underline=true
msglist_gutter.bg=${bg_highlight}
msglist_pill.bg=${fg_muted}
msglist_pill.reverse=false

part_*.fg=${fg}
part_*.bg=${bg_popup}
part_*.selected.fg=${fg}
part_*.selected.bg=${fg_muted}

completion_default.bg=${bg_popup}
completion_default.fg=${fg}
completion_default.selected.bg=${fg_muted}
completion_default.selected.fg=${fg}
completion_gutter.bg=${bg_highlight}
completion_pill.bg=${fg_muted}
completion_pill.reverse=false

spinner.bg=${bg}
spinner.fg=${fg}

selector_focused.bold=false
selector_focused.bg=${bg_visual}
selector_focused.fg=${fg}
selector_chooser.bold=false
selector_chooser.bg=${bg_visual}
selector_chooser.fg=${fg}
default.selected.bold=false
default.selected.fg=${fg}
default.selected.bg=${bg_visual}

[viewer]
url.underline=true
url.fg=${fg_secondary}
header.fg=${blue}
signature.fg=${primary}
diff_add.fg=${diff.add}
diff_del.fg=${diff.delete}
diff_meta.bold=true
diff_chunk.dim=true
quote_1.fg=${amber}
quote_2.fg=${green}
quote_3.fg=${primary_anchor}
quote_3.dim=true
quote_4.fg=${blue}
quote_4.dim=true
quote_x.fg=${fg_muted}
quote_x.dim=true

]],
    colors
  )

  return aerc
end

return M
