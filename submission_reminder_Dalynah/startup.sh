#!/bin/bash
# Navigate to the script's directory and run the reminder script
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
bash "$BASE_DIR/app/reminder.sh"

