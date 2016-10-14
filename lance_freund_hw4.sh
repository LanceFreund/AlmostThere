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

usage="A -y year and - e email address are required"

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

if [[ ! $year || ! $email ]]
then
	echo $usage
	exit 2
else
	(./Seth_Johns_hw4.sh $year)
fi
HOST=137.190.19.98
if [[ ! $user || ! $password ]]
then
	user="anonymous"
	password="anonymous@weber.edu"
fi
ftp -inv $HOST << EOF
	user $user $password
	if [[ -a /srv/ftp/MOCK_DATA/  ]]
	then
		put MOCK_DATA_FILTER*
	else
		mkdir -r /srv/ftp/MOCK_DATA/
		put MOCK_DATA_FILTER*
	fi
EOF

exit 0
