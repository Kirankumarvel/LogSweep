#!/bin/bash

# Load configuration
source $(dirname "$0")/../config/config.env

# Log file
LOG_FILE=$(dirname "$0")/../logs/cleanup.log

# Function to delete old files
cleanup() {
    local DIR=$1
    local DAYS=$2
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Cleaning $DIR (older than $DAYS days)" >> $LOG_FILE
    find "$DIR" -type f -mtime +"$DAYS" -exec rm -f {} \;
}

# Ensure directories exist before cleaning
if [ -d "$LOG_DIR" ]; then
    cleanup "$LOG_DIR" "$DAYS_OLD"
fi

if [ -d "$TEMP_DIR" ]; then
    cleanup "$TEMP_DIR" "$DAYS_OLD"
fi

echo "$(date '+%Y-%m-%d %H:%M:%S') - Cleanup completed ✅" >> $LOG_FILE
