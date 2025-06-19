#!/bin/bash

# Get the new assignment name from the user
echo "Enter the new assignment name: "
read new_assignment


# Search for files named "config.env" and stores what it found in a file
find . -name "config.env" > found_files.txt


# If no "config.env" files is found, exit
if [ ! -s found_files.txt ]; then
    echo "No config.env files found!"
    rm found_files.txt
    exit
fi


# Updates the second line of the "config.env" file with the new assignment name
while read config_file
do
    echo "Changing $config_file"


    sed -i "2s/ASSIGNMENT=.*/ASSIGNMENT=\"$new_assignment\"/" "$config_file"


# Looks for the startup.sh file
    folder=$(dirname "$config_file")
    parent_folder="$folder/.."


    if [ -f "$parent_folder/startup.sh" ]; then
        cd "$parent_folder"
        ./startup.sh
        cd - > /dev/null  # go back to original folder quietly
    else
        echo "No startup.sh found"
    fi

    echo "Successfully changed $config_file"

done < found_files.txt

#To remove the file
rm found_files.txt
