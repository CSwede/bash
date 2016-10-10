#!/bin/bash

# COMPOUND COMPARISON:
    # -a --> logical and
        # exp1 -a exp2 returns true if both exp1 and exp2 are true.

    # -o --> logical or
        # exp1 -o exp2 returns true if either exp1 or exp2 is true.

    # These are similar to the Bash comparison operators && and ||, used within double brackets.
        # [[ condition1 && condition2 ]]

# The -o and -a operators work with the test command or occur within single test brackets.
if [ "$expr1" -a "$expr2" ]
then
  echo "Both expr1 and expr2 are true."
else
  echo "Either expr1 or expr2 is false."
fi

# But...
[ 1 -eq 1 ] && [ -n "`echo true 1>&2`" ]   # true
[ 1 -eq 2 ] && [ -n "`echo true 1>&2`" ]   # (no output)
# ^^^^^^^ False condition. So far, everything as expected.

# However ...
[ 1 -eq 2 -a -n "`echo true 1>&2`" ]       # true
# ^^^^^^^ False condition. So, why "true" output?

# Is it because both condition clauses within brackets evaluate?
[[ 1 -eq 2 && -n "`echo true 1>&2`" ]]     # (no output)
# No, that's not it.

# Apparently && and || "short-circuit" while -a and -o do not.
