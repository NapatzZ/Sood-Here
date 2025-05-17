#!/bin/bash

# Directory containing the repositories
REPO_DIR="$HOME/skuba_ws/src"

# Go to the directory
cd "$REPO_DIR" || { echo "Directory not found: $REPO_DIR"; exit 1; }

# Loop through all subdirectories
for dir in */; do
  if [ -d "$dir/.git" ]; then
    echo "Pulling latest changes in $dir"
    cd "$dir" || continue
    git pull
    cd ..
  else
    echo "Skipping $dir (not a Git repository)"
  fi
done

