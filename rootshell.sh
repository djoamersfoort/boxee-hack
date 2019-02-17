#!/bin/sh

#  _                          _                _     
# | |                        | |              | |    
# | |__   _____  _____  ___  | |__   __ _  ___| | __ 
# | '_ \ / _ \ \/ / _ \/ _ \ | '_ \ / _` |/ __| |/ / 
# | |_) | (_) >  <  __/  __/ | | | | (_| | (__|   <  
# |_.__/ \___/_/\_\___|\___| |_| |_|\__,_|\___|_|\_\ 
#
#      # # # # # # # # # # # # # # # # # # #
#      # B Y   W I P E A U T C R A F T E R #
#      #         netcat root shell         #
#      # # # # # # # # # # # # # # # # # # #

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
