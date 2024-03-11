#! /bin/bash

end=$((SECONDS+3600))
while [ $SECONDS -lt $end ]; do

clear
	echo " _   _   _   _  "
	echo "|J| |P| |C| |E| "
	echo " -   -   -   -  "
echo "CPU Auslastung"
(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}') 
echo ""
echo "CPU Temperatur"
sensors k10temp-pci-00c3 | grep Tctl | awk '{print $2}'
echo ""
echo "GPU Auslastung"
radeontop -d- -l 1 | grep gpu |awk '{print $5}'
echo ""
echo "GPU  Temperatur"
sensors amdgpu-pci-2f00 | grep junction | awk '{print $2}'
echo ""
echo "RAM"
free -m

sleep 1
done