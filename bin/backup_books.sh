#!/bin/bash
#
# Sync ~/Books directory to GDrive
#

SOURCE="$HOME/Books"

rclone copy "$SOURCE" "gdrive:O'Reilly Books" -P 
