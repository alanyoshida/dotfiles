# Dotfiles

My personal dotfiles

## Install

```sh
git clone git@github.com:wwmoraes/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make install
```

## My shortcuts

### Tmux

- `$ tmux a` = Attach to last tmux session
- Ctrl + b = Default tmux `prefix`
- `prefix` + r = Reload ~/.tmux.conf
- `prefix` + c = Create new window
- `prefix` + w = Show sessions
- `prefix` + x = Kill window
- `prefix` + :kill-session = Kill the current session
- `prefix` + , = Rename window
- `prefix` + [ = Copy mode
- `prefix` + ] = Paste
- `prefix` + d = Detach window
- `prefix` + z = Zoom in window
- `prefix` + | = Split window
- Alt + Left | Ctrl + j = Move to left window
- Alt + Right | Ctrl + k = Move to right window
- Alt + j = Move window to left
- Alt + k = Move window to right

### VIM + NERDTree
- Ctrl + O = Open nerdtree
- Shift + I = Show hidden files with .file
- Shift + ? = Help on Nerdtree
- [Space] = Vim Prefix
- `prefix` + Left = Go to left vim window
- `prefix` + Right = Go to right vim window
- `prefix` + s = Split window horizontal
- `prefix` + v = Split window vertical
- u = Undo last change
- `Ctrl + r` = Redo last change
- Shift + D = Delete the rest of the line
- Shift + V = Volume in line mode
- Ctrl + V = Volume in column mode
- Y + W = Copy word under cursor
- D + W = Cut word under cursor
- /<search> = Search, use `n` for next, `Shift + n` for previous
- :%s/<regex_search>/<regex_replace>/ = Replace using regex
- :%s/<regex_search>/<regex_replace>/c = Replace asking confirmation
- :!<shell_command> - Execute shell command in bash
- :%!<shell_command> - Execute command and get the result and replace current window
- With word under cursor, `*`, `ciw` (current inner word) + Esc, `n` for next, `.` for replace = Replace interative mode
- With word under cursor, `/`, `Ctrl + r`, `Ctrl + w`, `Enter` = Search for word under cursor
- :noh = Disable search highlight
- :set wrap = Break lines on the end of the screen
- :set nowrap = Don't break lines on the end of the screen
- :set nonu = Don't show line numbers

### KDE
- Ctrl + Shift + Left = Go to left desktop
- Ctrl + Shift + Right = Go to right desktop

### Fish + Bash
- Ctrl + A = Go to beggining of line
- Ctrl + E = Go to end of line
- Alt + F = Go to next word
- Alt + B = Go to previous word
- Alt + D = Delete word on right of cursor
- Ctrl + W = Delete word on left of cursor

