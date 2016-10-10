#!/bin/bash
# timeout.sh

INTERVAL=5      # Timeout interval

timedout_read() {
  timeout=$1
  varname=$2
  old_tty_settings='stty -g'    # What was tty and stty again?
  eval read $varname            # eval? means/does what?
  stty "$old_tty_settings"
  # See man page for "stty."
}

echo; echo -n "What's your name? Quick! "
timedout_read $INTERVAL your_name

#  This may not work on every terminal type.
#  The maximum timeout depends on the terminal.
#+ (it is often 25.5 seconds).

echo

if [ ! -z "$your_name" ]    # If name input before timeout...
then
  echo "Your name is $your_name."
else
  echo "Timed out."
fi

echo
# The behavior of this script differs somewhat from "timed-input.sh."
# At each keystroke, the counter resets.

exit 0
