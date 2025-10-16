#!/bin/bash

#Ask the user to enter new assignment name
read -p "Please enter the assignment name: " ASSIGNMENT

#Check if the user entered the assignment name
if [ -z "$ASSIGNMENT" ]; then
    echo "Please enter an assignment name: "
    echo "========================="
    echo " Aborting...."
    echo "========================="
    exit 1
fi
#check if the user did not enter a number

if ! [[ "$ASSIGNMENT" =~ ^[a-zA-Z0-9_[:space:]-]+$ ]]; then

    echo "Invalid assignment name. Please use only letters."
    echo "========================="
    echo " Aborting...."
    echo "========================="
    exit 1
fi

#Path to config file
CONFIG_FILE="./config/config.env"
#check if the config file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Config file not found! Please run the script from the main directory."
    exit 1
fi
sed -i.bak "s/^ASSIGNMENT=.*/ASSIGNMENT=\"$ASSIGNMENT\"/" "$CONFIG_FILE"
echo "Assignment name updated to: $ASSIGNMENT in $CONFIG_FILE"
echo "Running the reminder script..."
#Run the reminder script
./startup.sh