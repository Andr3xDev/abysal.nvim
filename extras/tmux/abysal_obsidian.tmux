#!/usr/bin/env bash

# Abysal colors for Tmux

set -g mode-style "fg=#6b92e3,bg=#525252"

set -g message-style "fg=#6b92e3,bg=#525252"
set -g message-command-style "fg=#6b92e3,bg=#525252"

set -g pane-border-style "fg=#525252"
set -g pane-active-border-style "fg=#6b92e3"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#6b92e3,bg=#262626"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#161616,bg=#6b92e3,bold] #S #[fg=#6b92e3,bg=#262626,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#262626,bg=#262626,nobold,nounderscore,noitalics]#[fg=#6b92e3,bg=#262626] #{prefix_highlight} #[fg=#525252,bg=#262626,nobold,nounderscore,noitalics]#[fg=#6b92e3,bg=#525252] %Y-%m-%d  %I:%M %p #[fg=#6b92e3,bg=#525252,nobold,nounderscore,noitalics]#[fg=#161616,bg=#6b92e3,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#262626,bg=#262626,nobold,nounderscore,noitalics]#[fg=#6b92e3,bg=#262626] #{prefix_highlight} #[fg=#525252,bg=#262626,nobold,nounderscore,noitalics]#[fg=#6b92e3,bg=#525252] %Y-%m-%d  %H:%M #[fg=#6b92e3,bg=#525252,nobold,nounderscore,noitalics]#[fg=#161616,bg=#6b92e3,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#8c8c8c,bg=#262626"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#8c8c8c,bg=#262626"
setw -g window-status-format "#[fg=#262626,bg=#262626,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#262626,bg=#262626,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#262626,bg=#525252,nobold,nounderscore,noitalics]#[fg=#6b92e3,bg=#525252,bold] #I  #W #F #[fg=#525252,bg=#262626,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#d1b171]#[bg=#262626]#[fg=#262626]#[bg=#d1b171]"
set -g @prefix_highlight_output_suffix ""
