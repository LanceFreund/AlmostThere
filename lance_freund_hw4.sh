#!/bin/bash - 
#===============================================================================
#
#          FILE: lance_freund_hw4.sh
# 
#         USAGE: ./lance_freund_hw4.sh 
# 
#   DESCRIPTION: 
# 
#        AUTHOR: Lance Freund (), lancefreund@mail.weber.edu
#  ORGANIZATION: Weber.edu
#       CREATED: 10/14/2016 10:39
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

while getopts ":y:e:u:p:" opt;
do
	case $opt in
		y ) year=$OPTARG;;
		e ) email=$OPTARG;;
		u ) user=$OPTARG;;
		p ) password=$OPTARG;;
		\?) echo "perameters are needed"
			exit 1
	esac
done

if [[ ! $user || ! $password ]]
then
	echo "This is the code to execute for no FTP"
else
	echo "This is the code to do an FTP transfer"
fi


exit 0
