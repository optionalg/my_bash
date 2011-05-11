# bash completion for various Ruby-related commands.
#
# Copyright (c) 2008 Daniel Luz <dev at mernen dot com>.
# Distributed under the MIT license.
# http://mernen.com/projects/completion-ruby
#
# This file automatically loads all other completions.
# They all must be on the same directory for it to work.
# To use, source this file on bash:
#   . completion-ruby-all

# extra measure to avoid infinite recursion
type _completion_ruby_init &>/dev/null && return 1

_CR_PATH=$(dirname "$BASH_ARGV")
# _cr_load <script> [additional commands]
# Sources completion-<script>, if the file exists and either <script> or
# any of the additional parameters names an existing command.
_cr_load() {
  local script=$_CR_PATH/completion-$1
  [[ -f $script ]] && type "$@" &>/dev/null && . "$script"
}

_cr_load gem gem1.8 gem1.9 jgem
_cr_load jruby
_cr_load rails
_cr_load rake
_cr_load ruby ruby1.8 ruby1.9

unset -f _cr_load
unset -v _CR_PATH

# vim: ai ft=sh sw=2 sts=2 et
