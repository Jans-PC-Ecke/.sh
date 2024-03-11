#!/bin/bash

trap '' 2
while true
do

clear
     
	echo ""
	echo "		10 = Fancontrol 10%		20 = Fancontrol 20%"
	echo ""
	echo " 		30 = Fancontrol 30%		40 = Fancontrol 40%"
	echo ""
	echo " 		50 = Fancontrol 50%		60 = Fancontrol 60%"
	echo ""
	echo " 		70 = Fancontrol 70%		80 = Fancontrol 80%"
	echo ""
	echo " 		90 = Fancontrol 90%	       100 = Fancontrol 100%"
	echo ""
	echo "		______________"
	echo " 		q = exit"


	echo -e "\n"
echo -e "  		===>> Option ausw√§hlen: \c"
	read answer
		case "$answer" in
10) sudo nbfc start && sudo nbfc set -f 0 -s 10 && sudo nbfc set -f 1 -s 10;;
20) sudo nbfc start && sudo nbfc set -f 0 -s 20 && sudo nbfc set -f 1 -s 20;;
30) sudo nbfc start && sudo nbfc set -f 0 -s 30 && sudo nbfc set -f 1 -s 30;;
40) sudo nbfc start && sudo nbfc set -f 0 -s 40 && sudo nbfc set -f 1 -s 40;;
50) sudo nbfc start && sudo nbfc set -f 0 -s 50 && sudo nbfc set -f 1 -s 50;;
60) sudo nbfc start && sudo nbfc set -f 0 -s 60 && sudo nbfc set -f 1 -s 60;;
70) sudo nbfc start && sudo nbfc set -f 0 -s 70 && sudo nbfc set -f 1 -s 70;;
80) sudo nbfc start && sudo nbfc set -f 0 -s 80 && sudo nbfc set -f 1 -s 80;;
90) sudo nbfc start && sudo nbfc set -f 0 -s 90 && sudo nbfc set -f 1 -s 90;;
100) sudo nbfc start && sudo nbfc set -f 0 -s 100 && sudo nbfc set -f 1 -s 100;;
q) clear && cd && exit;;
	esac
	read input
done
