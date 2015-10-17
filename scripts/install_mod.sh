#!/bin/env bash

CKAN_LISTS=$1
INSTALL_DIR=$2
MOD_LIST=$3

if [ -e ${CKAN_LISTS}/${MOD_LIST} ]; then
	echo "** mono ${INSTALL_DIR}/ckan.exe install --headless  --no-recommends -c ${CKAN_LISTS}/${MOD_LIST}"
	mono ${INSTALL_DIR}/ckan.exe install --headless --no-recommends -c ${CKAN_LISTS}/${MOD_LIST}
else
	echo "** ${CKAN_LISTS}/${MOD_LIST} does not exist."
fi
