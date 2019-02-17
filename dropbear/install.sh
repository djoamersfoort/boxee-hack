#!/bin/sh

echo ""
echo " _                          _                _     "
echo "\| \|                        \| \|              \| \|    "
echo "\| \|__   _____  _____  ___  \| \|__   __ _  ___\| \| __ "
echo "\| '_ \ / _ \ \/ / _ \/ _ \ \| '_ \ / _` \|/ __\| \|/ / "
echo "\| \|_) \| (_) \>  \<  __/  __/ \| \| \| \| (_\| \| (__\|   \<  "
echo "\|_.__/ \___/_/\_\___\|\___\| \|_\| \|_\|\__,_\|\___\|_\|\_\ "

echo "     # # # # # # # # # # # # # # # # # # #"
echo "     # B Y   W I P E A U T C R A F T E R #"
echo "     #    install dropbear ssh server    #"
echo "     # # # # # # # # # # # # # # # # # # #"
echo ""
echo ""

{
  echo "Creating directories.."
  mkdir /download/dropbear
  cd /download/dropbear
  echo "Downloading Dropbear.."
  curl https://github.com/djoamersfoort/boxee-hack/raw/master/dropbear/dropbear -o dropbear
  chmod +x dropbear
  echo "Creating executables.."
  echo "killall dropbear; ./dropbear -R -E -r /tmp/key1 -d /tmp/key2 -p 22" > dropbear.sh
  chmod +x dropbear.sh
  echo "Running Dropbear.."
  ./dropbear.sh
  echo ""
  echo "# # # # # # # # # # # # # # # # #"
  echo "# Done! SSH server is running.  #"
  echo "# To re-run it, run dropbear.sh #"
  echo "# # # # # # # # # # # # # # # # #"
} 2> /dev/null
