#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Clone the repository into a folder named dvc-pipelines
git clone https://github.com/iterative/example-get-started.git dvc-pipelines

# Change to the dvc-pipelines directory
cd dvc-pipelines

# Add dvc_venv to .gitignore
echo "dvc_venv/" >> .gitignore

# Create a Python virtual environment
python3 -m venv dvc_venv

# Activate the virtual environment
source dvc_venv/bin/activate

# Install the required packages
pip3 install -r src/requirements.txt

# Pull data using DVC
dvc pull
