#!/bin/bash

# Prompt for GitHub config
read -p "Enter your Git username: " GIT_USER_NAME
read -p "Enter your Git email: " GIT_USER_EMAIL

# Set Git global configuration
git config --global user.name "$GIT_USER_NAME"
git config --global user.email "$GIT_USER_EMAIL"

# Set local Bundler config to keep gems in project directory
bundle config set --local path './.bundle'

echo ""
echo "✅ Git and Bundler configuration complete."
echo "Git User: $(git config --global user.name)"
echo "Git Email: $(git config --global user.email)"
echo "Bundler Path: $(bundle config get path)"
