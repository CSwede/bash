#!/bin/bash

TIMELIMIT=4     # 4 Seconds

read -t $TIMELIMIT variable <&1  # What does <&1 do?? 
#                           ^^^
#  In this instance, "<&1" is needed for Bash 1.x and 2.x,
#  but unnecessary for Bash 3+.

echo

if [ -z $variable" ]    # Is null?
then
  echo "Timed out, variable still unset."
else
  echo "variable = $variable"
fi

exit 0
