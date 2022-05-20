#!/bin/bash

# Get the working directory for the project

HOME=$HOME
DIRECTORY="${HOME}/Projects/wgetfilefetcher/files"

#Make the directory with today's date

TODAY_DATE=$(date +%Y-%m-%d)

mkdir -p "${DIRECTORY}/${TODAY_DATE}"

# Check if the directory was created successfully

if [[ ! -d "${DIRECTORY}/${TODAY_DATE}" ]]
then
    echo -n "Directory could not be created !!!"
    exit 1
fi

FINAL_DIRECTORY="${DIRECTORY}/${TODAY_DATE}"

# Get the day of the week and current time

DAY=$(date +%u)
TIME=$(date +%H-%M)

# File names to be present
FILE_NAME1="dummy1"
FILE_NAME2="dummy2"

# Get the site info
WEBSITE1="http://www.pdf995.com/samples/pdf.pdf"
WEBSITE2="http://www.africau.edu/images/default/sample.pdf"


# Fetch the file from the site using certain conditions

#if [[ ! -f "${FINAL_DIRECTORY}/${TODAY_DATE}.zip" ]]
#then
    #curl --silent ${WEBSITE1} -o "${FINAL_DIRECTORY}"/${TODAY_DATE}.zip 

     curl --silent "${WEBSITE1}" -o "${FINAL_DIRECTORY}"/${FILE_NAME1}-${TIME}.zip
#fi

if [[ "${DAY}" -eq 4 ]] && [[ ! -f "${FINAL_DIRECTORY}"/${FILE_NAME2}zip ]]
then
    curl --silent ${WEBSITE2} -o "${FINAL_DIRECTORY}"/${FILE_NAME2}.zip  

    # curl "${WEBSITE}/${TODAY_DATE}" -o "${FINAL_DIRECTORY}"/${TODAY_DATE}.zip
fi

