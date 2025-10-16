#!/bin/bash

# Get the directory of the current script
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Source environment variables and helper functions
source "$BASE_DIR/config/config.env"
source "$BASE_DIR/modules/functions.sh"

# Path to the submissions file
submissions_file="$BASE_DIR/assets/submissions.txt"

# Print remaining time and run the reminder function
echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions "$submissions_file"
