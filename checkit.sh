#!/bin/bash
os=`uname`
while true
do
	result=`ps aux | grep "tomcat6" | grep -v grep | grep -v "checkit.sh"`
#	echo $result
	if [ -z "$result" ];
	then
	    if [ "Linux" == $os ];
	    then
		sudo service tomcat6 start
		sleep "$2"
	    fi
	    if [ "Darwin" == $os ];
	    then
		sudo service tomcat6 start
		sleep "$2"
		killall afplay
	    fi
	fi	
	sleep "$1"
done
