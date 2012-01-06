#!/bin/bash 

if [ -n "`which brew`" ] ; then 
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

  export PATH=/usr/local/share/python:$PATH
fi
