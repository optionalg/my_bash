#!/bin/bash

function dump {
  /usr/bin/env w3m -O utf-8 -T text/html -dump $*
}

