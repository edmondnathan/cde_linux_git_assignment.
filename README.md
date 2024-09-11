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
In the transformation step, ensure that the column names in the raw dataset match those referenced in the script.
