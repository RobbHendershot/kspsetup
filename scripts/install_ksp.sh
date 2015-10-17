#!/bin/env bash

FILES_DIR=$1
INSTALL_BASE=$2
INSTALL_DIR=$3

# Unpack and setup KSP.
echo "** sudo unzip ${FILES_DIR}/ksp-linux-1-0-4.zip -d ${INSTALL_BASE}"
sudo unzip ${FILES_DIR}/ksp-linux-1-0-4.zip -d ${INSTALL_BASE}

echo "** sudo cp -af ${FILES_DIR}/settings.cfg ${INSTALL_DIR}"
sudo cp -af ${FILES_DIR}/settings.cfg ${INSTALL_DIR}

echo "** sudo chown -R rdhender:rdhender ${INSTALL_DIR}"
sudo chown -R rdhender:rdhender ${INSTALL_DIR}

# Add kerbal.desktop from files to /usr/share/applications.
echo "** sudo cp -a ${FILES_DIR}/kerbal.desktop /usr/share/applications/"
sudo cp -a ${FILES_DIR}/kerbal.desktop /usr/share/applications/
