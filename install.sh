#!/bin/bash
version=$(uname -a|awk '{print $3}'|cut -c1-1)
#echo $version
ver=3
sudo kill $(pidof "E-Sabit")

if [ $ver == $version ]
then
#**********************************************
echo "üç"
sudo systemctl stop E-Sabit.service
sudo systemctl disable E-Sabit.service
sudo cp ./E-Sabit /usr/local/bin/E-Sabit
sudo cp ./E-Sabitxdglink.sh /usr/local/bin/E-Sabitxdglink.sh
sudo cp ./E-Sabitetcxdgautostart.desktop /etc/xdg/autostart/E-Sabitetcxdgautostart.desktop
sudo cp ./E-Sabit.service /lib/systemd/system/E-Sabit.service
sudo apt-get install -f
sudo apt-get update
sudo apt-get install rsync -y
echo "Dosya Kopyalandı.."    
sudo systemctl daemon-reload
sudo systemctl enable E-Sabit.service
sudo systemctl start E-Sabit.service
#************************************************
else
#**********************************************
sudo cp ./E-Sabit /usr/local/bin/E-Sabit
sudo cp ./E-Sabitxdglink.sh /usr/local/bin/E-Sabitxdglink.sh
sudo cp ./E-Sabitetcxdgautostart19.desktop /etc/xdg/autostart/E-Sabitetcxdgautostart.desktop
sudo cp ./E-Sabit19.service /lib/systemd/system/E-Sabit.service
sudo apt-get install -f
sudo apt-get update
sudo apt-get install rsync -y
echo "Dosya Kopyalandı.."    
sudo systemctl daemon-reload
sudo systemctl enable E-Sabit.service
sudo systemctl start E-Sabit.service
#*****************************************
fi
/usr/local/bin/E-Sabit
