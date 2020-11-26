#!/bin/bash
set -eux

sudo apt -y update && sudo apt -y full-upgrade && sudo apt -y install --no-install-recommends build-essential python3-dev python3-pip python3-venv python-is-python3 libssl-dev libffi-dev git ansible

## docker
sudo apt install -y git apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
## molecule install
python3 -m pip install --user "molecule[docker,lint]"
## add path
echo 'export PATH="~/.local/bin:$PATH"' >> ~/.bashrc
## git
git config --global user.name "uta8a" \
    && git config --global user.email "noumodulity@gmail.com" \
    && git config --global core.editor vim