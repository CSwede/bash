#!/bin/bash

# Logical (boolean) operators

# ! --> NOT
if [ ! -f $FILENAME ]
then
  .....

# && --> AND
if [ $condition1 ] && [ $condition2 ]
#  Same as:  if [ $condition1 -a $condition2 ]
#  Returns true if both condition1 and condition2 hold true...

if [[ $condition1 && $condition2 ]]
#  Note that && operator not permitted inside brackets
#+ of [ ... ] construct.
# && may also be used, depending on context, in an and list to concatenate commands.

# || --> OR
if [ $condition1 ] || [ $condition2 ]
# Same as:  if [ $condition1 -o $condition2 ]
# Returns true if either condition1 or condition2 holds true...

if [[ $condition1 || $condition2 ]]
#  Note that || operator not permitted inside brackets
#+ of a [ ... ] construct.
# Bash tests the exit status of each statement linked with a logical operator.
