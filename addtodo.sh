#!/bin/bash

# Set the project name and description variables
project_name="$1"
description="$2"
estimated="$3"
status="$4"

# Get the current datetime
datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Append the project name, description, and datetime to the tasks.csv file
echo "$datetime,$project_name,$description,$estimated,$status" >> todo.csv

# Commit the changes to the Git repository
git add todo.csv
git commit -m "Added to do: $datetime - $project_name - $description"

# Push the changes to the remote Git repository
git push
