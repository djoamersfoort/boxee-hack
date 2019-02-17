# Boxee Hack
A collection of fun hacks you can execute on a Boxee Box.

# Root Access
Getting root access on a Boxee Box is pretty straight forward.
Below are steps to opening a remote root shell.

### Steps
1. Connect your Boxee to the internet.
2. Obtain the ip address of your Boxee. This can be done with an NMAP, or by looking at the devices connected to your router.
3. Format a USB stick so that it has the name BOXEE. You don't have to though, as long as you know what the USB stick is called.
4. Put the file **rootshell.sh** onto the USB stick.
5. Go to **settings** *>* **connections** *>* **servers** and change **hostname** to:
> boxee; sh /media/[YOUR USB]/rootshell.sh
6. Exit out of the settings menu, no saving required. The logo should transition to red and back to green.
7. Open a terminal session on any other device (running linux) and type in the following:
> nc <BOXEE IP> 9999 -v
8. You should get a message similar to "a connection to 192.168.0.0 has been established". You can do whatever you want here!

### Common Errors
* The logo of my Boxee doesn't change!
  * Make sure that the usb is plugged in, is named and formatted correctly, and has the file rootshell.sh on it.
  * Make sure that your line endings are set to LF.

* After running nc on my other device, it says "connection refused"!
  * Make sure you have allowed this in your firewall, and the IP is correct.
  

**Have fun hacking!**
