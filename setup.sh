#!/bin/bash

echo "Welcome to PT-Connect a PinTime/PinePhone conenction helper script"
sleep 2s

echo "What is your Blue Tooth Mac Address for the PineTime?"

#bluetooht mac addres variable
read btmac


echo "Creating pt-connect script with your BT mac address"
echo "#!/bin/bash
bluetoothctl power off
bluetoothctl power on
bluetoothctl connect $btmac" >> pt-connect.sh

sleep 2s

#make pt-connect executable and place it in /usr/local/bin
chmod +x pt-connect.sh
sudo mv pt-connect.sh /usr/local/bin/



#code from archwiki to make systemd service for resume
echo "creating systemd service for wake"
sleep 2s

echo "[Unit]
Description=PineTime connect after Pinephone wake
After=suspend.target

[Service]
User=%I
Type=simple
ExecStart=/usr/local/bin/pt-connect.sh
Restart=on-failure
RestartSec=2s

[Install]
WantedBy=suspend.target" >> resume@$USER.service



#move systemd service into correct folder
sudo mv resume@$USER.service /etc/systemd/system/

#enable on boot
sudo systemctl enable resume@$USER.service

echo "Restart Your PinePhone and your PineTime use Amazfish for first connection then script should re-connect after PinePhone wake from sleep"
