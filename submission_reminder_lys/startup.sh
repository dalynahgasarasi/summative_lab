#!/bin/bash
# Startup script for Submission Reminder App

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
bash "$BASE_DIR/app/reminder.sh"
