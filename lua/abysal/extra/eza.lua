local util = require("abysal.util")

local M = {}

function M.generate(colors)
  local eza = util.template(
    [[
colourful: true

filekinds:
  normal: { foreground: "${fg}" }
  directory: { foreground: "${blue}" }
  symlink: { foreground: "${primary_anchor}" }
  pipe: { foreground: "${bg_elevated}" }
  block_device: { foreground: "${amber}" }
  char_device: { foreground: "${amber}" }
  socket: { foreground: "${bg_elevated}" }
  special: { foreground: "${blue}" }
  executable: { foreground: "${green}" }
  mount_point: { foreground: "${blue}" }

perms:
  user_read: { foreground: "${primary_anchor}" }
  user_write: { foreground: "${primary}" }
  user_execute_file: { foreground: "${green}" }
  user_execute_other: { foreground: "${green}" }
  group_read: { foreground: "${primary_anchor}" }
  group_write: { foreground: "${primary}" }
  group_execute: { foreground: "${green}" }
  other_read: { foreground: "${primary_anchor}" }
  other_write: { foreground: "${primary_anchor}" }
  other_execute: { foreground: "${green}" }
  special_user_file: { foreground: "${primary_anchor}" }
  special_other: { foreground: "${red}" }
  attribute: { foreground: "${fg_secondary}" }

size:
  major: { foreground: "${primary_anchor}" }
  minor: { foreground: "${blue}" }
  number_byte: { foreground: "${fg_secondary}" }
  number_kilo: { foreground: "${fg_muted}" }
  number_mega: { foreground: "${primary_anchor}" }
  number_giga: { foreground: "${primary}" }
  number_huge: { foreground: "${primary_anchor}" }
  unit_byte: { foreground: "${fg_secondary}" }
  unit_kilo: { foreground: "${fg_muted}" }
  unit_mega: { foreground: "${primary_anchor}" }
  unit_giga: { foreground: "${primary}" }
  unit_huge: { foreground: "${primary_anchor}" }

users:
  user_you: { foreground: "${selection_bg}" }
  user_root: { foreground: "${primary}" }
  user_other: { foreground: "${primary_anchor}" }
  group_yours: { foreground: "${fg_muted}" }
  group_root: { foreground: "${primary}" }
  group_other: { foreground: "${fg}" }

links:
  normal: { foreground: "${fg_muted}" }
  multi_link_file: { foreground: "${primary_anchor}" }

git:
  new: { foreground: "${green}" }
  modified: { foreground: "${primary}" }
  deleted: { foreground: "${red}" }
  renamed: { foreground: "${primary_anchor}" }
  typechange: { foreground: "${primary_anchor}" }
  ignored: { foreground: "${fg_muted}" }
  conflicted: { foreground: "${primary}" }

git_repo:
  branch_main: { foreground: "${fg_secondary}" }
  branch_other: { foreground: "${blue}" }
  git_clean: { foreground: "${bg_highlight}" }
  git_dirty: { foreground: "${primary}" }

security_context:
  colon: { foreground: "${fg_muted}" }
  user: { foreground: "${fg_secondary}" }
  role: { foreground: "${primary_anchor}" }
  typ: { foreground: "${bg_search}" }
  range: { foreground: "${blue}" }

file_type:
  image: { foreground: "${fg_muted}" }
  video: { foreground: "${blue}" }
  music: { foreground: "${green_anchor}" }
  lossless: { foreground: "${green}" }
  crypto: { foreground: "${red}" }
  document: { foreground: "${fg_secondary}" }
  compressed: { foreground: "${primary}" }
  temp: { foreground: "${fg_secondary}" }
  compiled: { foreground: "${fg_secondary}" }
  build: { foreground: "${primary_anchor}" }
  source: { foreground: "${primary}" }

punctuation: { foreground: "${bg_highlight}" }
date: { foreground: "${amber}" }
inode: { foreground: "${fg_secondary}" }
blocks: { foreground: "${fg_secondary}" }
header: { foreground: "${fg_secondary}" }
octal: { foreground: "${primary}" }
flags: { foreground: "${blue}" }

symlink_path: { foreground: "${fg_muted}" }
control_char: { foreground: "${primary}" }
broken_symlink: { foreground: "${primary_anchor}" }
broken_path_overlay: { foreground: "${primary_anchor}" }]],
    colors
  )

  return eza
end

return M
