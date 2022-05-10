#!/bin/bash

# Get the working directory for the project

DIRECTORY="/home/tamila/Projects/wgetfilefetcher/files"

#Make the directory with today's date

TODAY_DATE=$(date +%Y-%m-%d)

mkdir -p "${DIRECTORY}/${TODAY_DATE}"

FINAL_DIRECTORY="${DIRECTORY}/${TODAY_DATE}"

# Get the site info
IP="192.168.153.142"

# Fetch the file from the site

wget -P "${FINAL_DIRECTORY}" "http://${IP}:8000/${TODAY_DATE}/script-${TODAY_DATE}.tar.gz"

wget -P "${FINAL_DIRECTORY}" "http://${IP}:8000/${TODAY_DATE}/backup-${TODAY_DATE}.tar.gz"
