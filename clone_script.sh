#!/bin/bash

# Set GitLab credentials (you can modify these)
USERNAME=""
PASSWORD="" 

# Base URL with placeholder
BASE_URL="https://gitlab.com/robotcitizens/skuba/robocup-opl/rcj-2025"

# List of repositories to clone
REPOS=(
  "skuba_cheesecake_vision"
  "skuba_cheesecake_bringup"
  "skuba_cheesecake_description"
  "skuba_cheesecake_manipulation"
  "skuba_cheesecake_monitor"
  "skuba_cheesecake_msgs"
  "skuba_cheesecake_navigation"
  "skuba_cheesecake_speech"
  "skuba_cheesecake_state"
)

# Clone each repository
for repo in "${REPOS[@]}"; do
  echo "Cloning $repo..."
  git clone "https://${USERNAME}:${PASSWORD}@gitlab.com/robotcitizens/skuba/robocup-opl/rcj-2025/${repo}.git"
done

