#!/bin/bash

# this script assumes using aws ubuntu 18.04
sudo apt update

# install python 3.6
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt update
sudo apt install -y python3.6

# install virtualenv
sudo apt install -y virtualenv
virtualenv -p python3 venv
source ./venv/bin/activate

# setup config.json
cp config.example.json config.json
# input the remote database!

# check and install python 3.6
# TODO

# install program dependencies
cd /usr/local/src/ && \
    sudo wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
    sudo tar -xvzf ta-lib-0.4.0-src.tar.gz && \
    cd ta-lib && \
    sudo ./configure --prefix=/usr && \
    sudo make install
sudo apt install -y build-essential
sudo apt install -y python3.6-dev
pip install -r requirements-prerequisite.txt
pip install -r requirements-gpu.txt

# clone the latest tensorforce (as this script was created, the commit was 9aed7684173848b8146a7b9c73a612e3f6dca2f5)
git clone https://github.com/lefnire/tensorforce.git
cd tensorforce && pip install -e .

