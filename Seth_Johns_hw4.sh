#!/bin/bash - 
#===============================================================================
#
#          FILE: Seth_Johns_hw4.sh
# 
#         USAGE: ./Seth_Johns_hw4.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Seth Johns (), sethjohns@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 10/11/2016 13:09
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

if [[ $1 == "2015" || $1 == "2016"]]
then
	$(wget www.icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_20[15..16].tar.gz)
else
	echo "You have chosen the wrong year"
fi



exit 0

