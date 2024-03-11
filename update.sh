#!/bin/bash
clear
	cd /etc

# Teste, ob der Rechner arch-based ist
if [ -d /etc/pacman.d ]
	then 
	echo " _   _   _   _  "
	echo "|J| |P| |C| |E| "
	echo " -   -   -   -  "
	echo ""
	echo " Update wird gestartet"
	echo ""
	sudo pacman -Syyu -yy &&
	sudo pacman -Syu -yy && 
	sudo pamac remove -o &&
	sudo pacman -Sc
	sudo snap refresh && 
	sudo flatpak update -yy
echo ""
echo " Update beendet!"
echo ""
fi

#Teste, ob der Rechner debian-basiert ist 
if [ -d /etc/apt ]
	then 
	echo " _   _   _   _  "
	echo "|J| |P| |C| |E| "
	echo " -   -   -   -  "
	echo ""
	echo " Update wird gestartet"
	echo ""
	sudo apt update &&
	 apt upgrade -yy &&
	 sudo apt dist-upgrade -yy &&
	 flatpak update &&
	 snap refresh && 
	autoremove -yy
echo ""
echo " Update beendet!"
echo ""
fi
