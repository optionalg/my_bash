#!/bin/bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX="("
SCM_THEME_PROMPT_SUFFIX=")"

RVM_THEME_PROMPT_PREFIX=' |rb:'
RVM_THEME_PROMPT_SUFFIX='|'
VIRTUAL_ENV_PROMPT_PREFIX='|py:'
VIRTUAL_ENV_PROMPT_SUFFIX='|'

PROMPT="
\[$green\]\u@\h \[$yellow\]\w\[$normal\] \[$green\]\$(scm_prompt_info) \[$yellow\]$(virtual_env_prompt)\[$yellow\]$(rvm_version_prompt)\[$normal\] [\[$red\]\A\[$normal\]]
\[$background_white\][\!]\[$normal\] $ "

#PROMPT='
#${green}\u@\h ${yellow}\w${normal} $(scm_prompt_info) [${red}\A${normal}]
#${background_white}[\!]${normal} $ '

#PS1="
#\[\033[32m\]\u@\h \[\033[33m\]\w\[\033[0m\]\[\033[0;32m\]\$(__git_ps1 ' (%s)')\[\033[0m\] [\[\033[0;31m\]\A\[\033[0m\]]
#\[\033[30;47m\][\!]\[\033[m\] $ "

