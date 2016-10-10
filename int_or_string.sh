#!/bin/bash
# int-or-string.sh

a=2334		# Integer
let "a += 1"
echo "a = $a"	# a = 2335. Really says: print the string a = the value that the variable a holds
echo 

b=${a/23/BB}	# Substitute "BB" for "23"
		# This transforms $b into a string. And that is why it turns into b = 1 further down here
echo "b = $b"	# b = BB35
declare -i b	# Declaring it an integer doesnt help.

let "b += 1"	# BB35 + 1
echo "b = $b"	# b = 1
echo 		# Bash sets the "integer value" of a string to 0

c=BB34
echo "c = $c"	# c = BB34

d=${c/BB/23}	# Substitute "23" for "BB"
		# This makes $d an integer
echo "d = $d"	# d = 2334
let "d += 1"	# 2334 + 1
echo "d = $d"	# d = 2335
echo

# What about null variables?
e=''		# ... or e="" ... or e=
echo "e = $e"	# e = 
let "e += 1"	# Arithmetic operations allowed on a null variable?
echo "e = $e"	# e = 1
echo		      # Null variable transformed into an integer.

# What about undeclared variables?
echo "f = $f"	# f = 
let "f += 1"	# Arithmetic operations allowed?
echo "f = $f"	# f = 1
echo 		# Undeclared variables transformed into an integer

# However...
let "f /= $undecl_var"	#Divide by zero?
# Nope, you get: let: f /= : syntax error: operand expected (error token is "/= ")

# But still...
let "f /= 0"
# Nope, you get: let: f /= 0: division by 0 (error token is "0")

exit $? 	# Not really sure why we're not using a 0 here?
		#+ Maybe because we didnt succesfully perform all operations
		#+ considering the division with zeros.


