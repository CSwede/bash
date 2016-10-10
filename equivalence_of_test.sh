#!/bin/bash

echo 

if test -z "$1"                         # Is $1 always positional argument number 1
then                                    # What does -z mean?
  echo "No command-line arguments."
else
  echo "First command-line argument is $1."
fi

echo

if /usr/bin/test -z "$1"                # Equivalent  to "test" builtin.
                                        # Specifying full pathname.
then
  echo "No command-line arguments."
else
  echo "First command-line arguments is $1."
fi

echo

if [ -z "$1" ]                          # Functionally identical to above code blocks.
then
  echo "No command-line arguments."
else
  echo "First command-line argument is $1."
fi

echo 

if /usr/bin/[ -z "$1" ]                 # Again, functionally identical to above.
then
  echo "No command-line arguments."
else
  echo "First command-line argument is $1."
fi

echo

exit 0
