
## ADD TO THE END OF ~/.bashrc

# Change Colors
# https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/

# Show git branch on bash, using git branch command line to get the branch
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] \e[0;32m(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\e[m \$ "

# Show Parentesis only when on git repository, using __git_ps1 to get git branch
export PS1="\[\033[1;36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] \e[1;32m\$(__git_ps1 '(%s)')\e[m\$ "
