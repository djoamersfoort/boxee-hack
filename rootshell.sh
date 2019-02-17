#!/bin/sh

# # # # # # # # # # #
# boxee root access #
# by wipeautcrafter #
# # # # # # # # # # #

# change the led to red
dtool 6 2 0 0
dtool 6 1 0 100

# create netcat session
(/usr/bin/nc -l -p 9999 -e /bin/sh -i
# change led to green on connect
dtool 6 1 0 0
# create listening netcat session
/usr/bin/nc -ll -p 9999 -e /bin/sh -i) &

# change the led to orange
dtool 6 2 0 100
dtool 6 1 0 100
