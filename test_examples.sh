#!/bin/bash

#  Tip:
#  If you're unsure how a certain condition might evaluate,
#+ test it in an if-test.

echo

echo "Testing \"0\""
if [ 0 ]            # zero
then
  echo "0 is true."
else
  echo "0 is false."
fi

echo 

echo "Testing \"1\""
if [ 1 ]            # one
then
  echo "1 is true."
else
  echo "1 is false."
fi

echo

echo "Testing \"-1\""
if [ -1 ]           # minus one
then
  echo "-1 is true."
else
  echo "-1 is false."
fi

echo

echo "Testing \"NULL\""
if [ ]              # NULL (empty condition)
then
  echo "NULL is true."
else
  echo "NULL is false."
fi

echo

echo "Testing \"xyz\""
if [ xyz ]          # string
then
  echo "Random string is true."
else
  echo "Random string is false."
fi

echo

echo "Testing \"\$xyz\""
if [ $xyz ]         # Tests if $xyz is null, but...
                    # it's only uninitialized variable.
then
  echo "Uninitialized variable is true."
else
  echo "Uninitialized variable is false."
fi                  # Uninitialized variable is false.

echo

echo "Testing \"-n \$xyz\""
if [ -n "$xyz" ]    # More pedantic correct.
then
  echo "Uninitialized variable is true."
else
  echo "Uninitialized variable is false."
fi                  # Uninitialized, but set to null value

echo 

# When is "false" true?

echo "Testing \"false\""
if [ "false" ]      # It seems that "false" is just a string...
then
  echo "\"false\" is true." #+ and it tests true.
else
  echo "\"\$false\" is false."
fi                  # "$false" is false.
                    # Now, we get expected result.

echo 

exit 0
