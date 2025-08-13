#autosync.sh

#!/bin/bash

NOW=$(date)
echo "$NOW - Synchronising"

# Source folder on Pi
SOURCE_DIR="/home/arespayload/ARESPayload/"

# Destination on Mac (must exist)
DEST_USER="aaroncoelho-irani"
DEST_HOST="192.168.119.229"
DEST_PATH="/Users/aaroncoelho-irani/rsbpi_data"

if ping -a $DEST_HOST -c1; then
	# Sync using rsync over ssh
	rsync -avz -v -e ssh "$SOURCE_DIR" "$DEST_USER@$DEST_HOST:$DEST_PATH"
	echo "$(date) - Synchronising finished"
else
	echo “$(date) - Synchronising FAILED”
fi