#!/bin/bash
# What's the point of shifting through parameters?

#  Name this script shft.sh
#+ and invoke it with some parameters.
#+ For example:
#		sh shft.sh a b c def 83 barndoor

until [ -z "$1" ] 		# Until all parameters used up...
do
  echo -n "$1"
  shift
done

echo				# Extra linefeed.

# But, what happens to the "used-up" parameters?
echo "$2"
#  Nothing echoes!
#  When $2 shifts into $1 (and there is no $3 to shift into $2)
#+ then $2 remains empty.
#  So, it is not a parameter *copy*, but a *move*.

exit

# Could also do the below:
#!/bin/sh

shift 3 	# shift 3 positions.
# n=3; shift $n
# Has the same effect.

echo "$1"

exit 0
