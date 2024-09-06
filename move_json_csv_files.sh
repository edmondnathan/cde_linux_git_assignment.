#!/bin/bash


# Creating a folder for JSON and CSV files
mkdir -p json_and_csv


# Moving all CSV and JSON files to json_and_csv folder
mv *.csv *.json json_and_csv/


# Confirming if the file transfer is successful
if [[ "$(ls -A json_and_csv)" ]]; then
  echo "All files successfully moved to 'json_and_csv' folder."
else
  echo "File transfer failed."
fi
