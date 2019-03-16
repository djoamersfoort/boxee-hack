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

# change the logo to red
dtool 6 2 0 0
dtool 6 1 0 100

(/usr/bin/nc -ll -p 9999 -e /bin/sh -i) &

# change the logo to orange
dtool 6 2 0 100
dtool 6 1 0 100
