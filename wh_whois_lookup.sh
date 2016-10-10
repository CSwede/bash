#!/bin/bash
# ex18.sh - Not sure what the point of this one was since I don't quite understand what it returns?

# Does a 'whois domain-name' lookup on any of 3 alternate servers:
#		ripe.net, cw.net, radb.net

# Place this script -- renamed 'wh' -- in /usr/local/bin

# Requires symbolic links:
# ln -s /usr/local/bin/wh /usr/local/bin/wh-ripe
# ln -s /usr/local/bin/wh /usr/local/bin/wh-apnic
# ln -s /usr/local/bin/wh /usr/local/bin/wh-tucows

E_NOARGS=75 				# Not sure what this means exactly

if [ -z "$1" ] 				# Not sure what -z does. -n was testing if variable is given.
then
  echo "Usage: 'basename $0' [domain-name]"
  exit $E_NOARGS			# How does this play into the value 75?
fi

# Check script name and call proper server.
case 'basename $0' in 		# Or you can use: case ${0##*/} in
    "wh"	) whois $1@whois.tucows.com;;
    "wh-ripe"	) whois $1@whois.ripe.net;;
    "wh-apnic"	) whois $1@whois.apnic.net;;
    "wh-cw"	) whois $1@whois.cw.net;;
    * 		) echo "Usage: 'basename $0' [domain-name]";;
esac 

exit $?
