# Easy config reload
bind-key R source-file ~/.tmux.conf \; display-message "tmux.conf reloaded."

# mouse behavior
set -g mouse on

set-option -g default-terminal screen-256color

bind-key : command-prompt
bind-key r refresh-client
bind-key L clear-history
bind-key X kill-session

bind-key space next-window
bind-key bspace previous-window
bind-key enter next-layout

# uncomment below stanza to enable smart pane switching with awareness of vim splits
# bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-h) || tmux select-pane -L"
# bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-j) || tmux select-pane -D"
# bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-k) || tmux select-pane -U"
# bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-l) || tmux select-pane -R"
# bind -n C-\ run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys 'C-\\') || tmux select-pane -l"
# bind C-l send-keys 'C-l'

bind-key C-o rotate-window

bind-key + select-layout main-horizontal
bind-key = select-layout main-vertical
set-window-option -g other-pane-height 25
set-window-option -g other-pane-width 80

bind-key a last-pane
bind-key q kill-server
bind-key c new-window
bind-key t next-window
bind-key T previous-window

bind-key [ copy-mode
bind-key ] paste-buffer

run-shell "tmux setenv -g TMUX_VERSION $(tmux -V | cut -c 6-)"

# Setup 'v' to begin selection as in Vim
# Update default binding of `Enter` to also use copy-pipe
 
set-window-option -g display-panes-time 1500

# Status Bar
set-option -g status-interval 1
set-option -g status-left ''
set-option -g status-right '%l:%M%p'
set-window-option -g window-status-current-style fg=magenta
set-option -g status-fg default

# Status Bar solarized-dark (default)
set-option -g status-bg black
set-option -g pane-active-border-style fg=black
set-option -g pane-border-style fg=black

# Status Bar solarized-light
if-shell "[ \"$COLORFGBG\" = \"11;15\" ]" "set-option -g status-bg white"
if-shell "[ \"$COLORFGBG\" = \"11;15\" ]" "set-option -g pane-active-border-fg white"
if-shell "[ \"$COLORFGBG\" = \"11;15\" ]" "set-option -g pane-border-fg white"

# Set window notifications
setw -g monitor-activity on
set -g visual-activity on

# Allow the arrow key to be used immediately after changing windows
set-option -g repeat-time 0

# Fix to allow mousewheel/trackpad scrolling in tmux 2.1
bind-key -T root WheelUpPane if-shell -F -t = "#{alternate_on}" "send-keys -M" "select-pane -t =; copy-mode -e; send-keys -M"
bind-key -T root WheelDownPane if-shell -F -t = "#{alternate_on}" "send-keys -M" "select-pane -t =; send-keys -M"

# Disable assume-paste-time, so that iTerm2's "Send Hex Codes" feature works
# with tmux 2.1. This is backwards-compatible with earlier versions of tmux,
# AFAICT.
set-option -g assume-paste-time 0
