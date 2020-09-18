#!/usr/bin/bash

########################################################
#                                                      #
# This is a small script to launch a python web server #
# to server up files in a specific loction from any    #
# location.                                            #
#                                                      #
# TO-DO: make the location configurable                #
#                                                      #
########################################################

PORT=${1?Error: must provide a port} # must supply a port as an arguement

pushd /opt/webroot/; python3 -m http.server $PORT; popd # start the python web server, serving the specified location
