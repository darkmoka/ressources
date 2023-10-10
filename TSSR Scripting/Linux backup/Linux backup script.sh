#!/bin/bash

# Configuration
source_directory="/path/to/source"
backup_directory="/path/to/backup"
log_file="/path/to/backup.log"
exclude_file="/path/to/exclude.txt"  # List of files/directories to exclude

# Function to log messages
log() {
    local log_message="$1"
    echo "$(date "+%Y-%m-%d %H:%M:%S") - $log_message" >> "$log_file"
}

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
    log "Source directory does not exist: $source_directory"
    exit 1
fi

# Check if the backup directory exists; if not, create it
if [ ! -d "$backup_directory" ]; then
    log "Creating backup directory: $backup_directory"
    mkdir -p "$backup_directory"
fi

# Perform the backup using rsync
log "Starting backup from $source_directory to $backup_directory"
rsync -av --delete --exclude-from="$exclude_file" "$source_directory" "$backup_directory"

# Check the rsync exit status
if [ $? -eq 0 ]; then
    log "Backup completed successfully"
else
    log "Backup failed with error code $?"
fi

# You can add additional actions here, such as sending email notifications or cleaning up old backups.

