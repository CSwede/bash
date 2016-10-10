#!/bin/bash

#  File test operators
#  Returns true if...
# -e -> file exists
# -a -> file exists
# -a is identical in effect to -e. It has been "deprecated," - and its use is discouraged.

# -f -> file is a regular file (not a directory or device file)
# -s -> file is not zero size
# -d -> file is a directory
# -b -> file is a block device
# -c -> file is a character device

device0="/dev/sda2"      # /  (root directory)
if [ -b "$device0" ]
then
  echo "$device0 is a block device."
fi

# /dev/sda2 is a block device.

device1="/dev/ttyS1"     # PCMCIA modem card.
if [ -c "$device1" ]
then
  echo "$device1 is a character device."
fi

# /dev/ttyS1 is a character device.

echo "=================================="

# -p -> file is a pipe
function show_input_type()
{
    [ -p /dev/fd/0 ] && echo PIPE || echo STDIN
}

show_input_type "Input"             # STDIN
echo "Input" | show_input_type      # PIPE

echo "==================================="

# -h -> file is a symbolic link
# -L -> file is a symbolic link as well
# -S -> file is a socket

# -t -> file (descriptor) is associated with a terminal device
#+ This test option may be used to check whether the stdin [ -t 0 ] or stdout [ -t 1 ] 
#+ in a given script is a terminal.

# -r -> file has read permission (for the user running the test)
# -w -> file has write permission (for the user running the test)
# -x -> file has execute permission (for the user running the test)
# -g -> set-group-id (sgid) flag set on file or directory
# -u -> set-user-id (suid) flag set on file



