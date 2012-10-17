#!/bin/bash
while true
do
#	sleep 1
	result=`ps aux | grep "git push" | grep -v grep | grep -v "checkit.sh"`
#	echo $result
	if [ "$result" ];
	then
		# MAC OS
		#afplay "$1" &
		# LINUX
		ffplay "$1" &

		sleep "$2"
		killall ffplay
	fi
done
