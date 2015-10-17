#!/bin/env bash

INSTALL_DIR=$1

# Remove old installations
echo "[* Attempting to remove old KSP installations. *]"
if [ -e ${INSTALL_DIR} ]; then
	echo "[* Removing old installation. *]"
	sudo rm -Rf ${INSTALL_DIR}
else
	echo "[* No KSP install to remove. *]"
fi

# Remove Gnome menu icon.
echo "[* Attempting to remove Gnome menu item. *]"
if [ -e /usr/share/applications/kerbal.desktop ]; then
	sudo rm -f /usr/share/applications/kerbal.desktop
else 
	echo "[* No Gnome menu item to remove. *]"
fi

sleep 3
