
## ADD TO THE END OF ~/.bashrc

# Show git branch on bash
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] \e[0;32m(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\e[m \$ "
