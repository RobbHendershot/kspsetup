#!/bin/env bash

FILES_DIR=$1
INSTALL_DIR=$2

# Install and setup ckan
echo "** sudo cp -af ${FILES_DIR}/ckan.exe ${INSTALL_DIR}"
sudo cp -af ${FILES_DIR}/ckan.exe ${INSTALL_DIR}/ckan.exe

echo
echo "** mono ${INSTALL_DIR}/ckan.exe upgrade ckan --headless"
mono ${INSTALL_DIR}/ckan.exe upgrade ckan --headless

echo
echo "** mono ${INSTALL_DIR}/ckan.exe update --headless"
mono ${INSTALL_DIR}/ckan.exe update --headless
