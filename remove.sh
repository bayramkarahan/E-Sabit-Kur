#!/bin/bash
FILE="$HOME/Masaüstü/E-Tahta.desktop"
# init
version=$(uname -a|awk '{print $3}'|cut -c1-1)
#echo $version
ver=3
sudo kill $(pidof "E-Sabit")

if [ $ver == $version ]
then
#**********************************************
echo "üç"
sudo rm -rf /usr/local/bin/E-Sabit
sudo rm  -rf /usr/local/bin/E-Sabitxdglink.sh
sudo rm  -rf /usr/local/bin/bacup.sh
sudo rm  -rf /usr/local/bin/restore.sh
sudo rm  -rf /usr/local/sahre/e-sabit.conf
sudo rm  -rf /etc/xdg/autostart/E-Sabitetcxdgautostart.desktop
echo "Dosya Silindi.."    
#************************************************
else
#**********************************************
sudo rm  -rf /usr/local/bin/E-Sabit
sudo rm  -rf /usr/local/bin/E-Sabitxdglink.sh
sudo rm  -rf /usr/local/bin/bacup.sh
sudo rm  -rf /usr/local/bin/restore.sh
sudo rm  -rf /usr/local/sahre/e-sabit.conf
sudo rm  -rf /etc/xdg/autostart/E-Sabitetcxdgautostart.desktop
echo "Dosya Silindi.."    
#*****************************************
fi

