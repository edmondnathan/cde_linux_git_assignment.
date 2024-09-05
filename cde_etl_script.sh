#!/bin/bash

# Creating the directories for storing raw data, transformed and cleaned data

mkdir raw Transformed Gold

# defining envirnment variables for the etl process

csv_url="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"

data_source_dir="raw"

transformed_data_dir="Transformed"

cleaned_data_dir="Gold"

raw_data_file="$data_source_dir/mydata.csv"

transformed_data_file="$transformed_data_dir/2023_year_finance.csv"

cleaned_data_file="$cleaned_data_dir/2023_year_finance.csv"

# Creating more directories
mkdir -p $data_source_dir $transformed_data_dir $leaned_data_dir

# Extraction of the raw data
echo "Starting the data extraction process..."
curl -o $raw_data_file $csv_url

# Confirm the file has been saved into the raw folder
if [ -f $raw_data_file ]; then
    echo "File successfully downloaded and saved to $data_source_dir."
else
    echo "Failed to download the file."
    exit 1
fi

# Transform step of the dataset
echo "Starting the data transformation process..."

# Use awk to rename the column and select specific columns
awk -F, 'BEGIN {OFS=","} 
NR==1 {
    for (i=1; i<=NF; i++) {
        if ($i == "Variable_code") $i = "variable_code"
    }
    print "year", "Value", "Units", "variable_code"
}
NR>1 {print $1, $2, $3, $4}' $raw_data_file > $transformed_data_file

# Confirm the file has been saved into the transformed folder
if [ -f $Ttransformed_data_file ]; then
    echo "File successfully transformed and saved to $transformed_data_dir."
else
    echo "Failed to transform the file."
    exit 1
fi

# Loadin the transformed data
echo "Starting the load process..."

# Move the transformed file to the Gold directory
cp $transformed_data_file $cleaned_data_file

# Confirm the file has been saved into the gold folder
if [ -f $cleaned_data_file ]; then
    echo "File successfully loaded and saved to $cleaned_data_dir."
else
    echo "Failed to load the file."
    exit 1
fi

echo "ETL process completed successfully."
