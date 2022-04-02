# Remove the global version, as it shadows the universal one
set -eg fish_user_paths

set GOPATH $HOME/go
set -gx PATH $PATH $HOME/go/bin
set -x SHELL /bin/bash
set -gx PATH $PATH $HOME/.krew/bin

# try to launch tmux
launch-tmux
