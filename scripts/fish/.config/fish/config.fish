# Remove the global version, as it shadows the universal one
set -eg fish_user_paths

# Funny greeting messages
#set -U fish_greeting (curl -fs --max-time 0.3 http://whatthecommit.com/index.txt; or echo "")
set -U fish_greeting "Welcome to FISH Shell"

set GOPATH $HOME/go
set -gx PATH $PATH /usr/local/go/bin
set -gx PATH $PATH $HOME/.krew/bin
set -x SHELL /bin/bash

# try to launch tmux
launch-tmux
