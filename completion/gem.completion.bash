#! bash
# bash completion for the `gem` command.
#
# Copyright (c) 2008 Daniel Luz <dev at mernen dot com>.
# Distributed under the MIT license.
# http://mernen.com/projects/completion-ruby
#
# To use, source this file on bash:
#   . completion-gem

__gem() {
  local cmd=$1
  local cur=$2
  local prev=$3
  COMPREPLY=()

  local options="
    -h --help -v --version -V --verbose --no-verbose -q --quiet
    --config-file --backtrace --debug"

  local gem_command
  __gem_get_command

  case $prev in
  --config-file)
    # leave COMPREPLY blank, let the default handle it
    return;;
  esac

  local choices
  case $gem_command in
  "")
    choices=$(__gem_available_commands);;
  help)
    choices="commands examples platforms $commands";;
  uninstall | cleanup)
    choices=$(__gem_installed_gems);;
  esac
  [[ $cur == -* ]] && choices=$options
  COMPREPLY=($(compgen -W "$choices" -- "$cur"))
}

# Stores in $gem_command the name of the gem command currently in use.
# If no command is found, the variable is not set.
__gem_get_command() {
  local i
  for ((i=1; i < $COMP_CWORD; ++i)); do
    local arg=${COMP_WORDS[$i]}

    case $arg in
    -h | --help | -v | --version)
      # these two options are command-killers
      gem_command=-
      return;;
    --config-file)
      # skip argument
      ((++i));;
    [^-]*)
      gem_command=$arg
      return;;
    esac
  done
}

# Outputs a list of installed gems, one per line.
__gem_installed_gems() {
  "$cmd" list --local --no-details | awk '/^[^ ]+ \(/ { print $1 }'
}

# Outputs a list of available commands, one per line.
__gem_available_commands() {
  "$cmd" help commands | awk '/^    [^ ]/ { print $1 }'
}

complete -F __gem -o default gem gem1.8 gem1.9 jgem
# vim: ai ft=sh sw=2 sts=2 et
