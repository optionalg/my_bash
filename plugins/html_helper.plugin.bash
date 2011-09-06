#!/bin/bash

function dump {
  /usr/bin/env w3m -T text/html -dump $*
}

