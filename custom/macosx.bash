#!/bin/bash

if [ $(uname) = "Darwin" ]; then 
  # ENV VARS 
  export JAVA_HOME='/Library/Java/Home'

  # ALIAS
  alias gitx='/Applications/GitX.app/Contents/MacOS/GitX >/dev/null 2>&1'
  alias ls='ls -FG'  

fi

