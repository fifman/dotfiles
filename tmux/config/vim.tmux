# vi is good
setw -g mode-keys vi

set -g @plugin 'christoomey/vim-tmux-navigator'

# New keybindings for vi-mode when version >= 2.4
# https://github.com/tmux/tmux/issues/754

bind-key -T copy-mode-vi v send-keys -X begin-selection 
bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy" 
unbind -T copy-mode-vi Enter 
bind-key -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"
bind-key -t vi-copy v begin-selection 
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy" 
unbind -t vi-copy Enter ; 
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

