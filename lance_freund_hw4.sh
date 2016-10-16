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

# Usage statement to explain program perameters
usage="Input perameters are -y Year(*Required) -e Email(*Required) -u User -p     Password"

# The getopts is used to store the input perameters into variables
while getopts ":y:e:u:p:" opt;
do
	case $opt in
		y ) year=$OPTARG;;
		e ) email=$OPTARG;;
		u ) user=$OPTARG;;
		p ) password=$OPTARG;;
		\?) echo "There invalid perameters."
			echo $usage
			exit 1
	esac
done

# This if statment ensures user enters -y and -e or displays usage statement
# or else it calls the Seth_Johns_hw4.sh script
if [[ ! $year || ! $email ]]
then
	echo $usage
	exit 2
else
	(./Seth_Johns_hw4.sh $year)
fi

# This starts the FTP data transfer
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
		mkdir /srv/ftp/MOCK_DATA/
		put MOCK_DATA_FILTER*
	fi
EOF

exit 0
