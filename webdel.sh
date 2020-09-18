#!/usr/bin/bash

########################################################
#                                                      #
# This script is used to clean up files temporarily    #
# added to a specific directory.                       #
#                                                      #
########################################################

dest="/opt/webroot/tmp" # directory to be removed

if [ -d "$dest" ] # check if the directory exists
then
    echo "[-] Deleting $dest ..."
    rm -Rf "$dest" # remove directory and its contents
    echo "[+] $dest deleted!"
else
    echo "[!] $dest does not exist!"
fi