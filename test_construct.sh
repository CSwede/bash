#!/bin/bash
# Not sure how it decides the number regarding the OR and Bitwise operators

(( 0 && 1 ))             # Logical AND
echo $?        # 1
let "num = (( 0 && 1 ))"
echo $num      # 0
# But ...
let "num = (( 0 && 1 ))"
echo $?        # 1

(( 200 || 11 ))          # Logical OR
echo $?        # 0
# ...
let "num = (( 200 || 11 ))"
echo $num      # 1
let "num = (( 200 || 11 ))"
echo $?        # 0

(( 200 | 11 ))           # Bitwise OR
echo $?                  # 0
# ...
let "num = (( 200 | 11 ))"
echo $num                # 203
let "num = (( 200 | 11 ))"
echo $?                  # 0

# The "let" construct returns the same exit status
#+ as the double-parentheses arithmetic expansion.

# Again, note that the exit status of an arithmetic expression is not an error value.

var=-2 && (( var+=2 ))
echo $?                  # 1


var=-2 && (( var+=2 )) && echo $var
                         # Will not echo $var!

# An if can test any command, not just conditions enclosed within brackets.
if cmp a b &> /dev/null       # Suppress output.
then echo "Files a and b are identical."
else echo "Files a and b differ."
fi

# The very useful "if-grep" construct:
#-------------------------------------
if grep -q Bash file
  then echo "File contains at least one occurrence of Bash."
fi

word=Linux
letter_sequence=inu
if echo "$word" | grep -q "$letter_sequence"
# The "-q" option to grep suppresses output.
then
  echo "$letter_sequence found in $word"
else
  echo "$letter_sequence not found in $word"
fi

if COMMAND_WHOSE_EXIT_STATUS_IS_0_UNLESS_ERROR_OCCURRED
  then echo "Command succeeded."
  else echo "Command failed."
fi
