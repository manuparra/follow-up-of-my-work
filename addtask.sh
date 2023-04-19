#!/bin/bash

# Set the project name and description variables
project_name="$1"
description="$2"

# Get the current datetime
datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Append the project name, description, and datetime to the tasks.csv file
echo "$datetime,$project_name,$description" >> tasks.csv

# Commit the changes to the Git repository
git add tasks.csv
git commit -m "Added task: $datetime - $project_name - $description"

# Push the changes to the remote Git repository
git push
