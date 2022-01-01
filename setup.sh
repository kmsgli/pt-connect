#!/bin/bash

echo "Welcome to PT-Connect a PinTime/PinePhone conenction helper script"
sleep 2s

echo "What is your Blue Tooth Mac Address for the PineTime?"

#bluetooht mac addres variable
read btmac

#code from archwiki to run script on wake
echo "creating custom script"
sleep 2s

echo "#!/bin/bash
case $1/$2 in
  post/*)
        bluetoothctl power off
        bluetoothctl power on
        bluetoothctl pair $btmac
  ;;
esac" >> pt-connect.sh

#make script executable
chmod a+x pt-connect.sh


#move pt-connect to sleep/wake script folder
sudo mv pt-connect.sh /usr/lib/systemd/system-sleep/

echo "Restart Your PinePhone and your PineTime use Amazfish for first connection then script should re-connect after PinePhone wake from sleep"
