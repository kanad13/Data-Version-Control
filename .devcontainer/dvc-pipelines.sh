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

# Replace the content of README.md
cat > README.md << EOL
# DVC Pipelines

- This is a sister-repository of my [Data Version Control repository](https://github.com/kanad13/data-version-control).
- This repository is a demonstration of how to use DVC to create pipelines for machine learning projects.
- The code and data in the repository comes from the [get-started repository of DVC](https://github.com/iterative/example-get-started). I have made only minor changes to the execution workflow to suit my needs.

### Acknowledgements

- This repository is based on the official DVC [documentation](https://dvc.org/doc) and [tutorials](https://learn.dvc.ai).
- All rights and credits for DVC belong to the DVC team and contributors.
- No copyright infringement intended; this repository is for educational purposes only.
EOL

echo "README.md has been updated with the new content."
