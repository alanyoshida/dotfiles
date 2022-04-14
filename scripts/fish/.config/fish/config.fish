# Remove the global version, as it shadows the universal one
set -eg fish_user_paths

# Funny greeting messages
#set -U fish_greeting (curl -fs --max-time 0.3 http://whatthecommit.com/index.txt; or echo "")
set -U fish_greeting "Welcome to FISH Shell"

set GOPATH $HOME/go
set -gx PATH $PATH /usr/local/go/bin
set -gx PATH $PATH $HOME/.krew/bin
set -x SHELL /bin/bash
set -gx PATH $PATH $HOME/.emacs.d/bin
set -gx PATH $PATH $HOME/.cargo/bin
set -gx NVM_DIR $HOME/.nvm

if set -q KITTY_INSTALLATION_DIR
    set --global KITTY_SHELL_INTEGRATION enabled
    source "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_conf.d/kitty-shell-integration.fish"
    set --prepend fish_complete_path "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_completions.d"
end

# try to launch tmux
launch-tmux
