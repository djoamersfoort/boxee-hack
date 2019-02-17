#!/bin/sh

# # # # # # # # # # #
# boxee root access #
# by wipeautcrafter #
# # # # # # # # # # #

# fade the led to red
for i in $(seq 0 5 100); do dtool 6 2 0 $(expr 100 - $i); dtool 6 1 0 $i; done

# create new nc session
killall nc
/usr/bin/nc -ll -p 9999 -e /bin/sh &

sleep 2

# fade the led back to green
for i in $(seq 0 5 100); do dtool 6 2 0 $i; dtool 6 1 0 $(expr 100 - $i); done
