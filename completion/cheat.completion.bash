#export COMP_WORDBREAKS=${COMP_WORDBREAKS/\:/}

complete_cheat() {
  local cache_file="$HOME/.cache_cheats"

  if [ ! -e "$cache_file" ]; then
    cheat sheets | grep '^ ' > $cache_file
  fi

  local tasks=$(cat $cache_file)
  COMPREPLY=( $(compgen -W "${tasks}" -- $2) )
}
complete -F complete_cheat -o default cheat

