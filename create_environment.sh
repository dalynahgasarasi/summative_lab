#!/bin/bash
set -euo pipefail
read -p "Please enter your name: " name

#Check if the user entered the name
if [ -z "$name" ]; then
 echo "Please enter a name"
 echo "========================="
 echo " Aborting...."
 echo "========================="
 exit 1
fi 
#Creating the folder
maindir="submission_reminder_$name"

if [ -d "$maindir" ]; then
    echo "Directory $maindir already exists. Please choose a different name."
    exit 1
else

mkdir -p "$maindir"
echo "The directory was created successfully"
echo "========================================"
fi

# Create subdirectories
mkdir -p "$maindir/config"
mkdir -p "$maindir/modules"
mkdir -p "$maindir/assets"
mkdir -p "$maindir/app"

# Create files in the main directory
touch "$maindir/README.md"
touch "$maindir/config/config.env"
touch "$maindir/modules/functions.sh"
touch "$maindir/assets/submissions.txt"
touch "$maindir/app/reminder.sh"
touch "$maindir/startup.sh"

# Make the files executable 
chmod +x "$maindir/app/reminder.sh"
chmod +x "$maindir/modules/functions.sh"
chmod +x "$maindir/startup.sh"

echo "Setup complete"
echo "Please check : $maindir"