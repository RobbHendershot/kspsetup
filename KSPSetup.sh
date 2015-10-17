#!/bin/env bash

INSTALL_BASE="/opt"
INSTALL_DIR="${INSTALL_BASE}/KSP_linux"
BASE_DIR="${HOME}/KSPSetup"
SCRIPT_DIR="${BASE_DIR}/scripts"
CKAN_LISTS="${BASE_DIR}/config"
FILES_DIR="${BASE_DIR}/files"

# Remove old installations
${SCRIPT_DIR}/header.sh "Removing old installations."
${SCRIPT_DIR}/rm_old_ksp.sh $INSTALL_DIR
sleep 3

# Unpack and setup KSP.
${SCRIPT_DIR}/header.sh "Installing KSP."
${SCRIPT_DIR}/install_ksp.sh ${FILES_DIR} ${INSTALL_BASE} ${INSTALL_DIR}
sleep 3

# Install and setup ckan
${SCRIPT_DIR}/header.sh "Installing and upgrading ckan."
${SCRIPT_DIR}/install_ckan.sh ${FILES_DIR} ${INSTALL_DIR}

# Install graphics mods.
${SCRIPT_DIR}/header.sh "Installing KSPRC."
${SCRIPT_DIR}/install_ksprc.sh ${INSTALL_DIR} ${FILES_DIR}

# Add basic mods.
${SCRIPT_DIR}/header.sh "Installing basic mods."
${SCRIPT_DIR}/install_mod.sh ${CKAN_LISTS} ${INSTALL_DIR} basic.ckan

# Add parts mods.
${SCRIPT_DIR}/header.sh "Installing parts mods."
${SCRIPT_DIR}/install_mod.sh ${CKAN_LISTS} ${INSTALL_DIR} parts.ckan

# Add control mods.
${SCRIPT_DIR}/header.sh "Installing control mods."
${SCRIPT_DIR}/install_mod.sh ${CKAN_LISTS} ${INSTALL_DIR} control.ckan

# Add control mods.
${SCRIPT_DIR}/header.sh "Installing graphics mods."
${SCRIPT_DIR}/install_mod.sh ${CKAN_LISTS} ${INSTALL_DIR} graphics.ckan
