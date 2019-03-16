# Boxee Hack
A collection of fun hacks you can execute on a Boxee Box.

# Root Access
Getting root access on a Boxee Box is pretty straight forward.
Below are steps to opening a remote root shell.

### Steps
1. Connect your Boxee to the internet.
2. Obtain the ip address of your Boxee. This can be done with an NMAP, or by looking at the devices connected to your router.
3. Format a USB stick so that it has the name BOXEE.
4. Put the file **rootshell.sh** onto the USB stick.
5. Go to **settings** *>* **connections** *>* **servers** and change **hostname** to:
> boxee; sh /media/BOXEE/rootshell.sh
6. Exit out of the settings menu, no saving required. The logo should change to red and then to orange.
7. Open a terminal session on any other device (running linux) and type in the following:
> nc <BOXEE IP> 9999 -v
8. The logo on the Boxee should have changed to green. This means that you have connected successfully!

### Common Errors
* The logo on my Boxee doesn't change to red (then orange)
  * Make sure that the USB is plugged in.
  * Make sure the USB is named and formatted correctly.
  * Make sure the USB has the file rootshell.sh on it.
  * Make sure that your line endings are set to LF.

* After running netcat on my other device, it says "connection refused"
  * Make sure you have allowed the connection in your firewall.
  * Make sure you typed in the IP correctly.
  
* The logo on my Boxee didn't change to green after connecting
  * Make sure you have connected successfully.
  * Check if you get the message "connection refused". If so refer to this error.

**Have fun hacking!**
