# cde_linux_git_assignment
# ETL Pipeline Script for Annual Enterprise Survey Data (2023)
This repository contains a bash script that automates an ETL (Extract, Transform, Load) pipeline to process the Annual Enterprise Survey 2023 financial year provisional dataset.

## Project Overview
This script downloads the raw data from a CSV file, transforms the dataset by renaming and selecting specific columns, and finally loads the cleaned dataset into a dedicated directory for further analysis.

## Directory Structure
The script creates three main directories to manage the data:

**raw/**: Stores the raw data downloaded from the source.
**Transformed/**: Stores the data after transformation.
**Gold/**: Stores the final cleaned data ready for analysis.


## Script Overview
The ETL pipeline follows three main steps:

### Extract:
Downloads the CSV file from the provided URL into the raw/ directory.
### Transform:
Renames the column Variable_code to variable_code.
Selects and keeps the following columns: year, Value, Units, and variable_code.
Saves the transformed data to the Transformed/ directory.
### Load:
Copies the transformed file to the Gold/ directory as the final cleaned dataset.
### Usage
To execute the script, run the following command in your terminal:

## bash
./etl_script.sh
The script will automatically:

## Create the necessary directories if they do not exist.
Download the dataset.
Transform the data.
Load the cleaned data into the appropriate directory.

## Prerequisites
**cURL**: Ensure you have curl installed for downloading the dataset.
**awk**: The script uses awk to perform the data transformation. Make sure awk is installed and available in your environment.
## Environment Variables
The script defines the following environment variables:

**csv_url**: The URL from which the raw data is downloaded.
**data_source_dir**: Directory where the raw data is stored.
**transformed_data_dir**: Directory where the transformed data is stored.
**cleaned_data_dir**: Directory where the cleaned data is stored.
**raw_data_file**: File path for the downloaded raw data.
**transformed_data_file**: File path for the transformed data.
**cleaned_data_file**: File path for the final cleaned data.

## Known Issues
Ensure that the provided URL is correct and accessible. The script will exit if the file cannot be downloaded.
In the transformation step, please make sure that the column names in the raw dataset match those referenced in the script.


# File Organization Script for CSV and JSON Files
This repository section contains a simple bash script to organize and move all CSV and JSON files into a dedicated directory.

## Project Overview
This script automates the task of collecting all .csv and .json files from the current directory and moving them into a new directory named json_and_csv for better file management and organization.

## Script Overview
The script follows two main steps:

## Create Directory:
It creates a folder named json_and_csv to store the files, ensuring the directory exists or is created if missing.
Move Files:
It transfers all .csv and .json files from the current directory into the json_and_csv/ folder.
Verify Transfer:
After moving the files, it checks if the transfer was successful by verifying if the json_and_csv folder contains files.
## Usage
To run this script, simply execute the following command in your terminal:

## bash
./file_organizer.sh

Creates the folder json_and_csv (if it doesn’t already exist).
Moves all .csv and .json files from the current directory to json_and_csv/.
Prints a message indicating whether the file transfer was successful or not.

## Prerequisites
Ensure you have files with .csv and .json extensions in the current directory where the script is executed.
Features
**Automation:** No manual sorting is required; all files are automatically moved to the designated folder.
**Error Checking:** After moving the files, the script checks to ensure they are correctly placed in the folder and informs you if the transfer fails.


## Known Issues
The script will only move files with the .csv or .json extension.
Ensure you are running the script from the directory that contains the target files.

