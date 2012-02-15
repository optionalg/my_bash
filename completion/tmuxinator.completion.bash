_mux() {
  COMPREPLY=( $(compgen -W "$(mux list | sed 1d )" -- $2) )
}

complete -F _mux -o default mux tmuxinator

