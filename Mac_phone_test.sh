#!/bin/bash

while true
do

if ping "IP-Von_Handy" -w 10; then
    # Wenn die MAC-Adresse gefunden wurde, ist das Gerät im Netzwerk erreichbar
	 pkill motion
	echo "		INAKTIV"
else
    # Wenn die MAC-Adresse nicht gefunden wurde, ist das Gerät nicht im Netzwerk erreichbar
	 motion -b
	echo "	AKTIV"
fi

done
