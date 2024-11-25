#!/bin/bash

# Variablen
REMOTE_USER="dieter"
REMOTE_HOST="192.168.178.117"
REMOTE_PATH="/media/dieter/HappyDeath21/"
LOCAL_PATH="/run/media/erhardtux/Happy Death/"  # Pfad zu deinem lokalen Ordner

# Ausgabe einer Übersicht
echo "=== Synchronisationsskript ==="
echo "Benutzer: $REMOTE_USER"
echo "Remote Host: $REMOTE_HOST"
echo "Remote Path: $REMOTE_PATH"
echo "Local Path: $LOCAL_PATH"
echo "=== Beginn der Synchronisation ==="

# Synchronisation mit rsync
sshpass -p '12041993' rsync -avz --delete "$LOCAL_PATH" "$REMOTE_USER"@"$REMOTE_HOST":"$REMOTE_PATH"

# Überprüfen, ob der Befehl erfolgreich war
if [ $? -eq 0 ]; then
    echo "=== Synchronisation erfolgreich abgeschlossen ==="
else
    echo "=== Fehler bei der Synchronisation ==="
fi