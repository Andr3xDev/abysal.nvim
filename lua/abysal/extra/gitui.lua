local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local gitui = util.template(
    [[
(
  selected_tab: Some("${primary}"),
  command_fg: Some("${fg_muted}"),
  selection_bg: Some("${bg_highlight}"),
  selection_fg: Some("${blue}"),
  cmdbar_bg: Some("${bg}"),
  cmdbar_extra_lines_bg: Some("${bg}"),
  disabled_fg: Some("${fg_muted}"),
  diff_line_add: Some("${green}"),
  diff_line_delete: Some("${gold}"),
  diff_file_added: Some("${green_anchor}"),
  diff_file_removed: Some("${red}"),
  diff_file_moved: Some("${primary_anchor}"),
  diff_file_modified: Some("${amber}"),
  commit_hash: Some("${primary}"),
  commit_time: Some("${primary_anchor}"),
  commit_author: Some("${green}"),
  danger_fg: Some("${gold}"),
  push_gauge_bg: Some("${bg}"),
  push_gauge_fg: Some("${fg}"),
  tag_fg: Some("${primary_anchor}"),
  branch_fg: Some("${amber}")
)
]],
    colors
  )

  return gitui
end

return M
