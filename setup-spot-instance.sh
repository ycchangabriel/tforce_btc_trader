#!/bin/bash

# this script assumes using aws ubuntu deep learning image

# start virtual environment before running this script!

# setup config.json
cp config.example.json config.json
# input the remote database!

# first things first, update
sudo apt update

# check and install python 3.6
# TODO

# install dependencies
pip install -r requirements-freeze.txt

# clone the latest tensorforce (as this script was created, the commit was 9aed7684173848b8146a7b9c73a612e3f6dca2f5)
git clone https://github.com/lefnire/tensorforce.git
cd tensorforce && pip install -e .

