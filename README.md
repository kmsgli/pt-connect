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
'''git clone https://github.com/kmsgli/pt-connect/'''

# change directory into the repo
cd pt-connect

# make setup executable
chmod +x setup.sh

# run setup script
./setup.sh

# you need your PineTime bluetooth adress for the setup script

# script will require sudo to move things into system folders

