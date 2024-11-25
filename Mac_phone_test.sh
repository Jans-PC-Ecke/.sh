#!/bin/bash

# Setze die IP-Adresse zu überprüfen
handy_ip="192.168.178.12"  # Hier Ihre IP-Adresse einfügen

# Funktion zum Starten von motion
start_motion() {
    echo "Starte motion..."
    motion -b
}

# Funktion zum Stoppen von motion
stop_motion() {
    echo "Stoppe motion..."
    pkill motion
}

# Initialer Zustand für motion
motion_running=false

# Haltet die Überwachung kontinuierlich an
while true; do
    # Überprüfen, ob die IP-Adresse erreichbar ist
    if ping -c 1 -W 1 "$handy_ip" > /dev/null; then
        echo "Gerät mit IP $handy_ip ist im Netzwerk."
        # Wenn die IP-Adresse gefunden wird, stoppe motion
        if [ "$motion_running" = true ]; then
            stop_motion
            motion_running=false
        fi
    else
        echo "Gerät mit IP $handy_ip ist nicht im Netzwerk."
        # Wenn die IP-Adresse nicht gefunden wird, starte motion
        if [ "$motion_running" = false ]; then
            start_motion
            motion_running=true
        fi
    fi

    sleep 5 # Wartezeit zwischen den Prüfungen
done