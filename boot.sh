#!/bin/bash

#
# boot-server.sh
# Boots the server, stopping any prior server instances before
#
# Added Feb. 26th, 2021
# Benjamin Wilson
# @montymxb
#

# super lazy kill, just stops anything that matches the term 'boglserver'
# this is very crude, but works rather simply
# NOTE: This assumes the user is 'ubuntu', change as necessary
kill `ps -U ubuntu | grep -E "boglserver"`

dt=`date +"%F-%T"`
./bogl/boglserver 5174 > bogl-logs/boglserver_log_$dt.log 2>&1 &

echo "* Server booted & running in the background on port 5174"
