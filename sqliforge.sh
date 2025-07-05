#!/bin/bash

#==================================#
#    🔥 SQLiForge by ABDULLAH 🔥    #
#==================================#

ACCESS_KEY="0801121221040201"
BANNER="banner.txt"
LOCKFILE="config/lock.cfg"
MODULE="modules/dorkgen.py"

clear
cat "$BANNER"

echo ""
read -p "🔑 Enter Access Key: " key

if [[ "$key" != "$ACCESS_KEY" ]]; then
    echo "❌ Access Denied!"
    exit 1
fi

echo ""
echo "🎯 Menu:"
echo "1. Generate SQLi Dorks"
echo "0. Exit"
read -p "➤ Enter choice: " choice

case "$choice" in
  1) python3 "$MODULE" ;;
  0) echo "👋 Exiting..." ;;
  *) echo "❗ Invalid option!" ;;
esac
