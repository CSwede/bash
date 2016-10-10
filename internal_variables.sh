#!/bin/bash

# Builtin variables = variables affecting bash script behavior

# Examples further down.

$BASH_ENV
# An environmental variable pointing to a Bash startup file to be read when a script is invoked

$BASH_SUBSHELL
# A variable indicating the subshell level. This is a new addition to Bash, version 3.

$BASHPID
# Process ID of the current instance of Bash. 
# This is not the same as the $$ variable, but it often gives the same result.

$BASH_VERSINFO[n]
# A 6-element array containing version information about the installed release of Bash
# This is similar to $BASH_VERSION

$CDPATH
# A colon-separated list of search paths available to the cd command.
# Not really sure what a search path is?
# Similar in function to the $PATH variable for binaries. 

$DIRSTACK
# The top value in the directory stack [1] (affected by pushd and popd)
# This builtin variable corresponds to the dirs command, however dirs shows the entire contents of the directory stack.

$EDITOR
# The default editor invoked by a script, usually vi or emacs.

$EUID
# "effective" user ID number
# Identification number of whatever identity the current user has assumed, perhaps by means of su.
# The $EUID is not necessarily the same as the $UID.

$FUNCNAME
# Name of the current function. Eg:
xyz23 ()
{
  echo "$FUNCNAME now executing." 		# xyz23 now executing
}

xyz23

echo "FUNCNAME = $FUNCNAME"				# FUNCNAME = 
										# Null value outside a function.

$GLOBIGNORE
# A list of filename patterns to be excluded from matching in globbing - what is globbing?

$GROUPS
# Groups current user belongs to
# This is a listing (array) of the group id numbers for current user, as recorded in /etc/passwd and /etc/group. Eg:

root# echo $GROUPS
0

root# echo ${GROUPS[1]}
1

root# echo ${GROUPS[5]}
6

$HOSTTYPE
# Host type
# Like $MACHTYPE, identifies the system hardware.

$IFS
# Internal field separator
# This variable determines how Bash recognizes fields, or word boundaries, when it interprets character strings.
# $IFS defaults to whitespace (space, tab, and newline), but may be changed, for example: to parse a comma-separated data file. Note that $* uses the first character held in $IFS.

bash$ echo "$IFS"
(With $IFS set to default, a blank line displays.)
	      
bash$ echo "$IFS" | cat -vte
 ^I$
 $

(Show whitespace: here a single space, ^I [horizontal tab],
  and newline, and display "$" at end-of-line.)

bash$ bash -c 'set w x y z; IFS=":-;"; echo "$*"'
w:x:y:z
(Read commands from string and assign any arguments to pos params.)


$IGNOREEOF
# Ignore EOF: how many end-of-files (control-D) the shell will ignore before logging out.

$OLDPWD
# Old working directory ("OLD-Print-Working-Directory", previous directory you were in).

$OSTYPE
# operating system type

$PATH
# Path to binaries, usually /usr/bin/, /usr/X11R6/bin/, /usr/local/bin, etc.
# When given a command, the shell automatically does a hash table search on the directories listed in the path for the executable
# The path is stored in the environmental variable, $PATH, a list of directories, separated by colons.

$PROMPT_COMMAND
# A variable holding a command to be executed just before the primary prompt, $PS1 is to be displayed.

$PS1
# This is the main prompt, seen at the command-line.

$PS2
# The secondary prompt, seen when additional input is expected. It displays as ">".

$PS3
# The tertiary prompt, displayed in a select loop (see Example 11-30).

$PS4
# The quartenary prompt, shown at the beginning of each line of output when invoking a script with the -x [verbose trace] option. It displays as "+".

# As a debugging aid, it may be useful to embed diagnostic information in $PS4.
P4='$(read time junk < /proc/$$/schedstat; echo "@@@ $time @@@ " )'
set -x
# Various commands follow ...

# The variables $ENV, $LOGNAME, $MAIL, $TERM, $USER, and $USERNAME are not Bash builtins. 
# These are, however, often set as environmental variables in one of the Bash or login startup files. 

# $SHELL, the name of the user's login shell, may be set from /etc/passwd or in an "init" script, and it is likewise not a Bash builtin.



















