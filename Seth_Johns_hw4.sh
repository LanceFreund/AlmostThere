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

if [[ $1 == "2015" || $1 == "2016" ]]
then
	$(wget icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_201{5..6}.tar.gz)
else
	echo "You have chosen the wrong year"
	exit 1
fi

if [[ ! -f temp ]]
then
	$(mkdir temp)
fi

for file in *.tar.gz
do
	$(tar -zxf $file -C ./temp)
done
sed -f AlmostThere_hw4.sed temp/MOCK_DATA* > midFile.csv
$(awk -f AlmostThere_hw4.awk midFile.csv) > outputFile.csv
#rm midFile.csv

exit 0

