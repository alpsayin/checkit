#!/bin/bash
os=`uname`
while true
do
	sleep 0.1
	result=`ps aux | grep "git push" | grep -v grep | grep -v "checkit.sh"`
#	echo $result
	if [ "$result" ];
	then
	    if [ "Linux" == $os ];
	    then
		ffplay "$1" &
		sleep "$2"
		killall ffplay
	    fi
	    if [ "Darwin" == $os ];
	    then
		afplay "$1" &
		sleep "$2"
		killall afplay
	    fi
	fi
done
