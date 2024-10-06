#!/bin/bash

# Prompt for source and destination folders
read -p "Enter the source folder name: " source_folder
read -p "Enter the destination folder name: " destination_folder

# Check if the destination folder exists, if not, create it
if [ ! -d "$destination_folder" ]; then
    echo "Destination folder does not exist. Creating it now..."
    mkdir -p "$destination_folder"
fi

# Execute the copy command
cp -R "$source_folder/data_version_control.ipynb" "$source_folder/.gitignore" "$source_folder/readme.md" "$source_folder/requirements.txt" "$source_folder/assets" "$source_folder/.devcontainer" "$source_folder/index.html" "$source_folder/back" "$destination_folder/"

# Check if .gitignore exists in the destination folder
if [ -f "$destination_folder/.gitignore" ]; then
    # Modify the .gitignore file in the destination folder
    sed -i '' '/\/model\.pkl/d; /\/eval/d' "$destination_folder/.gitignore"
    echo ".gitignore updated."
else
    echo "Warning: .gitignore not found in the destination folder. Skipping .gitignore modification."
fi

echo "Copy completed."

# Change to the destination directory
cd "$destination_folder" || exit

# Initialize Git repository
echo "Initializing Git repository..."
git init

# Clone reveal.js as a submodule
echo "Adding reveal.js as a submodule..."
git submodule add https://github.com/kanad13/reveal.js.git reveal.js

# Create and activate virtual environment
echo "Creating and activating virtual environment..."
python3 -m venv dvc_venv
source dvc_venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip3 install -r requirements.txt

# Add and commit changes
echo "Adding and committing changes..."
git add .
git commit -m "Forking from my private repo"

echo "Setup completed in the destination folder."
