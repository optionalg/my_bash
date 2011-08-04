#!/bin/bash

alias gco='git checkout'
alias gci='git commit'
alias gbr='git branch'
alias gad='git add'
alias gst='git status'
alias glg='git log'
alias gup='git pull && up.sh'
alias gdiff='git diff --color'
alias gvdiff='git diff | v'

alias gp='git push'
alias gb='git branch'
alias gc='git checkout'
alias gm='git commit -m'
alias gma='git commit -am'
alias gd='git diff --color'
alias gs='git status'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gl='git log'
alias ga='git add'
alias gcl='git clone'

# following are for git alias
complete -o bashdefault -o default -o nospace -F _git_checkout gco gc 2>/dev/null \
	|| complete -o default -o nospace -F _git_checkout gco gc
complete -o bashdefault -o default -o nospace -F _git_commit gci 2>/dev/null \
	|| complete -o default -o nospace -F _git_commit gci
complete -o bashdefault -o default -o nospace -F _git_add gad ga 2>/dev/null \
	|| complete -o default -o nospace -F _git_add gad ga
complete -o bashdefault -o default -o nospace -F _git_branch gbr gb 2>/dev/null \
	|| complete -o default -o nospace -F _git_branch gbr gb
complete -o bashdefault -o default -o nospace -F _git_log glg gl 2>/dev/null \
	|| complete -o default -o nospace -F _git_log glg gl
complete -o bashdefault -o default -o nospace -F _git_diff gdiff gd 2>/dev/null \
	|| complete -o default -o nospace -F _git_diff gdiff gd

