# pt-connect
# PIneTime Connect Helper 

# This is a simple script that uses the suspend/resume function to reconnect your PinePhone to your PineTime watch

# If your PineTime will not reconnect after wake-up from suspend this may help

# This was created and tested on a Pinephone 3gb running Manjaro-Arm with PineTime running InfiniTime 1.7.1. The companion app is Amazfish. It should work with Siglo but in my experince Amazfish works better.


################################### How to Use ###########################################

# clone the repo
git clone https://github.com/kmsgli/pt-connect/

# change directory into the repo
cd pt-connect

# make setup executable
chmod +x setup.sh

# run setup script
./setup.sh

# script will require sudo to move the script into the correct folder for automatic run on resume

