#!/bin/bash
set -eux

sudo apt -y update && sudo apt -y full-upgrade && sudo apt -y install --no-install-recommends build-essential python3-dev python3-pip python3-venv python-is-python3 libssl-dev libffi-dev git ansible