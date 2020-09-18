#!/usr/bin/bash

########################################################
#                                                      #
# This script is used to add a file to a specific      #
# directory.                                           #
#                                                      #
########################################################

file=${1?Error: must provide a file.} # must provide the file name as an argument
curr= pwd # get the current directory
dest="/opt/webroot/tmp/" # destination directory

if [ -d "$dest" ] # check if the destination directory exists
then
    if [ -d "$dest$file" ] # check if the file already exists at the destination 
    then
        echo "[!] The file already exists in /opt/webroot/tmp!!"
    else
        echo "[>] copying $curr$file to $dest ..."
        cp -- "$curr$file" "$dest" # copy file to the destination directory
        echo "[+] Done!"
    fi
else
    echo "[>] Creating $dest ..."
    mkdir "$dest" # create the destination directory
    echo "[>] copying $curr$file to $dest ..."
    cp -- "$curr$file" "$dest" # copy file to the destination directory
    echo "[+] Done!"
fi