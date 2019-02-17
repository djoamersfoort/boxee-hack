#!/bin/sh

# # # # # # # # # # #
# boxee root access #
# by wipeautcrafter #
# # # # # # # # # # #

# fade the led to red
dtool 6 2 0 0; dtool 6 1 0 100

# create new nc session
killall nc
/usr/bin/nc -ll -p 9999 -e /bin/sh &

sleep 2

# fade the led back to green
dtool 6 2 0 100; dtool 6 1 0 0
