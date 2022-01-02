# pt-connect
# PineTime Connect Helper 

# This is a simple script that uses the systemd resume function to reconnect your PinePhone to your PineTime watch

# If your PineTime will not reconnect to your PinePhone after wake-up from suspend this may help

# This was created and tested on ;
 # Pinephone 3gb running Manjaro-Arm with 
 # PineTime running InfiniTime 1.7.1. 
 # Amazfish as the companion app
 # Should work with Siglo but in my experince Amazfish works better


################################### How to Use ###########################################

# clone the repo
<pre>git clone https://github.com/kmsgli/pt-connect/</pre>

# change directory into the repo
<pre>cd pt-connect</pre>

# make setup executable
<pre>chmod +x setup.sh</pre>

# run setup script
<pre>./setup.sh</pre>

# you need your PineTime bluetooth address for the setup script

# script will require sudo to move things into system folders

# after setup reboot the PinePhone and the PineTime and use amazfish to make the first connection then the script should begin reconnecting after every suspend
