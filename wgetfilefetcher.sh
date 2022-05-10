#!/bin/bash

# Get the working directory for the project

DIRECTORY="/home/tamila/Projects/wgetfilefetcher/files"

#Make the directory with today's date

TODAY_DATE=$(date +%Y-%m-%d)

mkdir -p "${DIRECTORY}/${TODAY_DATE}"

FINAL_DIRECTORY="${DIRECTORY}/${TODAY_DATE}"

# Get the day of the week

DAY=$(date +%u)

# Get the site info
WEBSITE="http://www.africau.edu/images/default/sample.pdf"

# Fetch the file from the site using certain conditions

if [[ ! -f "${FINAL_DIRECTORY}/${TODAY_DATE}.zip" ]]
then
    curl --silent ${WEBSITE} -o "${FINAL_DIRECTORY}"/${TODAY_DATE}.zip 

    # curl "${WEBSITE}/${TODAY_DATE}" -o "${FINAL_DIRECTORY}"/${TODAY_DATE}.zip
fi

if [[ "${DAY}" -eq 2 ]] && [[ ! -f "${FINAL_DIRECTORY}"/${TODAY_DATE}-second.zip ]]
then
    curl --silent ${WEBSITE} -o "${FINAL_DIRECTORY}"/${TODAY_DATE}-second.zip  

    # curl "${WEBSITE}/${TODAY_DATE}" -o "${FINAL_DIRECTORY}"/${TODAY_DATE}.zip
fi

