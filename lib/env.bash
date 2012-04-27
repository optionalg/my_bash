#!/bin/bash

if [ -e /usr/local/bin/vim ]; then
  export EDITOR=/usr/local/bin/vim
fi

if [ -e /usr/local/bin/vim ]; then
  export VISUAL=/usr/local/bin/vim
fi

# add ruby gems bin folder into path 
export PATH=~/.gem/ruby/1.8/bin:$PATH:/usr/local/sbin

# add MacTex path
export PATH=/usr/local/bin:/usr/texbin:$PATH

# Set PATH so it includes user's private bin if it exists
 if [ -d ~/tools ] ; then
   PATH=${PATH}:$HOME/tools
 fi

 if [ -d ~/mytools ] ; then
   PATH=${PATH}:$HOME/mytools
 fi

# Set MANPATH so it includes users' private man if it exists
 if [ -d ~/man ]; then
   MANPATH="~/man:${MANPATH}"
 fi

# Set INFOPATH so it includes users' private info if it exists
 if [ -d ~/info ]; then
   INFOPATH="~/info:${INFOPATH}"
 fi
