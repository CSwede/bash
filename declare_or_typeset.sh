# The declare or typeset builtins, which are exact synonyms, permit modifying the properties of variables.
# This is a very weak form of the typing [1] available in certain programming languages


-r readonly
# (declare -r var1 works the same as readonly var1)
# This is the rough equivalent of the C const type qualifier. 
# An attempt to change the value of a readonly variable fails with an error message.
# Eg below: 

declare -r var1=1
echo "var1 = $var1"     # var1 = 1

(( var1++ ))            # x.sh: line 4: var1: readonly variable.

===============================================
-i integer
# Eg below:

declare -i number
# The script will treat subsequent occurrences of "number" as an integer.

number=3
echo "Number = $number"     # Number = 3

number=three
echo "Number = $number"     # Number = 0
# Tries to evaluate the string "three" as an integer.

==================================================
-a array
declare -a indices
# The variable indices will be treated as an array.

================================================
-f functions(s)
declare -f
# A declare -f line with no arguments in a script causes a listing of all the functions previously defined in that script.

declare -f function_name
# A declare -f function_name in a script lists just the function named.

===============================================
-x export
declare -x var3
# This declares a variable as available for exporting outside the environment of the script itself.

================================================
-x var=$value
declare -x var3=373
# The declare command permits assigning a value to a variable in the same statement as setting its properties.

===============================================








