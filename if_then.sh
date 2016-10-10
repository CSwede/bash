#!/bin/bash

#  When if and then are on same line in a condition test, a semicolon must terminate the if
#+ statement. Both if and then are keywords. 

#  Keywords (or commands) begin statements, and before a new statement on the same line begins
#+ the old one must terminate.

if [ -x "$filename" ]; then

# elif is a contraction for else if. 
# The effect is to nest an inner if/then construct within an outer one.

if [ condition1 ]
then
  command1
  command2
  command3
elif [ condition2 ]
# same as else if
then
  command4
  command5
else
  default-command
fi

# The test command is a Bash builtin which tests file types and compares strings.
# Therefore, in a Bash script, test does not call the external /usr/bin/test binary, which is part of the sh-utils package
# Likewise, [ does not call /usr/bin/[, which is linked to /usr/bin/test.
type test
type '['
[ is a shell builtin
type '[['
[[ is a shell keyword
type ']]'
]] is a shell keyword
type ']'
type: ]: not found
