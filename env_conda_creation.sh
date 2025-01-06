#!/bin/bash

# Update packages and install Miniconda if necessary
sudo apt-get update
sudo apt-get install -y wget bzip2

# Download and install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda

# Initialize Conda
source $HOME/miniconda/bin/activate
conda init

# Create the Conda environment from the YAML file
conda env create -f environments.yml

# Activate the new environment
conda activate env_my_project

echo "The Conda environment 'env_my_project' has been created and activated."