#!/bin/bash - 
#===============================================================================
#
#         USAGE: ./karl_marble_hw4.sh 
# 
#   DESCRIPTION: 
# 
#        AUTHOR: Karl Marble (), karlmarble@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 10/15/2016 20:57
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

HOST='137.190.19.99'
USER='anonymous'
PASSWD='dude@dudemail.com'

ftp -nv $HOST << End_of_Line
user $USER $PASSWD
pwd
ls -la
cd /data
pwd
ls -la
put MOCK_DATA_FILTER_2016_10_14_13:03.zip MOCK_DATA_FILTER_2016_10_14_13:03.zip
End_of_Line

exit 0
