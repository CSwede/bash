# Positional Parameters

$0, $1, $2, etc.
# Positional parameters, passed from command line to script, passed to a function, or set to a variable.

$#
# Number of command-line arguments or positional parameters. 

$*
# "$*" must be quoted.
# All of the positional parameters, seen as a single word

$@
# "$@" should be quoted.
# Same as $*, but each parameter is a quoted string, that is, the parameters are passed on intact, without interpretation or expansion. 
# This means, among other things, that each parameter in the argument list is seen as a separate word.

$-
# Flags passed to script (using set). 

$!
# PID (process ID) of last job run in background
# Good eg below:

LOG=$0.log

COMMAND1="sleep 100"

echo "Logging PIDs background commands for script: $0" >> "$LOG"
# So they can be monitored, and killed as necessary.
echo >> "$LOG"

# Logging commands.

echo -n "PID of \"$COMMAND1\":  " >> "$LOG"
${COMMAND1} &
echo $! >> "$LOG"
# PID of "sleep 100":   1506
echo "================================"

Using $! for job control:

possibly_hanging_job & { sleep ${TIMEOUT}; eval 'kill -9 $!' &> /dev/null; }
# Forces completion of an ill-behaved program.
# Useful, for example, in init scripts.

$?
# Exit status of a command, function, or the script itself

$$
# Process ID (PID) of the script itself.
# The $$ variable often finds use in scripts to construct "unique" temp file names
# This is usually simpler than invoking mktemp.






