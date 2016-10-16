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

#prep variables
	#date month, and day
MM=`date +%m`
DATE=`date +%f`
	#running directory, and log directory
RUNDIR='/home/km54218/AlmostThere'
LOGDIR=$RUNDIR/log/$MM
	#Script to run
DEV=lance.freund_hw4.sh
	#Name of Loffile
LOG=$LOGDIR/hw4_$DATE.log

# Change to script directory
cd $RUNDIR

$RUNDIR/$DEV >> $LOG


