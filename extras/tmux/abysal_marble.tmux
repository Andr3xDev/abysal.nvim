#!/usr/bin/env bash

# Abysal colors for Tmux

set -g mode-style "fg=#365ca8,bg=#8c8c8c"

set -g message-style "fg=#365ca8,bg=#8c8c8c"
set -g message-command-style "fg=#365ca8,bg=#8c8c8c"

set -g pane-border-style "fg=#8c8c8c"
set -g pane-active-border-style "fg=#365ca8"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#365ca8,bg=#cfcfcf"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#b0b0b0,bg=#365ca8,bold] #S #[fg=#365ca8,bg=#cfcfcf,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#cfcfcf,bg=#cfcfcf,nobold,nounderscore,noitalics]#[fg=#365ca8,bg=#cfcfcf] #{prefix_highlight} #[fg=#8c8c8c,bg=#cfcfcf,nobold,nounderscore,noitalics]#[fg=#365ca8,bg=#8c8c8c] %Y-%m-%d  %I:%M %p #[fg=#365ca8,bg=#8c8c8c,nobold,nounderscore,noitalics]#[fg=#b0b0b0,bg=#365ca8,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#cfcfcf,bg=#cfcfcf,nobold,nounderscore,noitalics]#[fg=#365ca8,bg=#cfcfcf] #{prefix_highlight} #[fg=#8c8c8c,bg=#cfcfcf,nobold,nounderscore,noitalics]#[fg=#365ca8,bg=#8c8c8c] %Y-%m-%d  %H:%M #[fg=#365ca8,bg=#8c8c8c,nobold,nounderscore,noitalics]#[fg=#b0b0b0,bg=#365ca8,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#555555,bg=#cfcfcf"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#555555,bg=#cfcfcf"
setw -g window-status-format "#[fg=#cfcfcf,bg=#cfcfcf,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#cfcfcf,bg=#cfcfcf,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#cfcfcf,bg=#8c8c8c,nobold,nounderscore,noitalics]#[fg=#365ca8,bg=#8c8c8c,bold] #I  #W #F #[fg=#8c8c8c,bg=#cfcfcf,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#7a6020]#[bg=#cfcfcf]#[fg=#cfcfcf]#[bg=#7a6020]"
set -g @prefix_highlight_output_suffix ""
