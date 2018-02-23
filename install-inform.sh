#!/usr/bin/env bash
set -e

# Download and install Inform 7 CLI to the given directory

# Check that exactly one argument has been provided
if [[ $# -ne 1 ]]; then
  echo "Usage: ./${0##*/} <install-location>"
  exit 1
fi

# The first argument is the directory we want to deploy as our 'pages' branch.
INSTALL_LOCATION=$1

# Download and unzip in /tmp
cd /tmp
wget http://inform7.com/download/content/6M62/I7_6M62_Linux_all.tar.gz
tar -xvf I7_6M62_Linux_all.tar.gz
cd inform7-6M62
./install-inform7.sh --prefix $INSTALL_LOCATION

