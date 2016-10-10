# Generate random number between 6 and 30.
rnumber=$((RANDOM%25+6))

#  Generate random number in the same 6 - 30 range,
#+ but the number must be evenly divisible by 3.
rnumber=$(((RANDOM%30/3+1)*3))

#  Note that this will not work all the time.
#  It fails if $RANDOM%30 returns 0.

# Can also suggest the following alternative:
rnumber=$(( RANDOM%27/3*3+6 ))

# An improved formula that works for positive numbers.
rnumber=$(((RANDOM%(max-min+divisibleBy))/divisibleBy*divisibleBy+min))
