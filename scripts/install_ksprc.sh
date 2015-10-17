#!/bin/env bash

INSTALL_DIR=$1
FILES_DIR=$2

# Install TextureReplacer
echo "** mono ${INSTALL_DIR}/ckan.exe install --headless --no-recommends TextureReplacer"
mono ${INSTALL_DIR}/ckan.exe install --headless --no-recommends TextureReplacer

# Install old EVE
echo "** rsync -a ${FILES_DIR}/EVE/GameData/* ${INSTALL_DIR}/GameData"
rsync -a ${FILES_DIR}/EVE/GameData/* ${INSTALL_DIR}/GameData

# From the KSPRC download, place/merge the folders "KSPRC" and "BoulderCo" to your GameData folder.
echo "** rsync -a ${FILES_DIR}/KSPRC/GameData/KSPRC ${INSTALL_DIR}/GameData/KSPRC"
rsync -a ${FILES_DIR}/KSPRC/GameData/KSPRC ${INSTALL_DIR}/GameData/KSPRC

echo "** rsync -a ${FILES_DIR}/KSPRC/GameData/BoulderCo ${INSTALL_DIR}/GameData/BoulderCo"
rsync -a ${FILES_DIR}/KSPRC/GameData/BoulderCo ${INSTALL_DIR}/GameData/BoulderCo

# Inside the KSPRC download and go inside the folder "TextureReplacer". There will be five folders. DO NOT merge the plugin folder. Merge the four others other folders with the folders of the same name inside GameData/TextureReplacer.
echo "** rsync -a ${FILES_DIR}/KSPRC/GameData/TextureReplacer/* ${INSTALL_DIR}/GameData/TextureReplacer"
rsync -a ${FILES_DIR}/KSPRC/GameData/TextureReplacer/* ${INSTALL_DIR}/GameData/TextureReplacer

echo "** mono ${INSTALL_DIR}/ckan.exe scan"
mono ${INSTALL_DIR}/ckan.exe scan
