#!/bin/bash
eval "$(ssh-agent -s)"
ssh-add -k /c/Users/JW/.ssh/id_rsa
while true
do
	echo "<------------------------------------------------------------------->"
	SYSTEM_TIME=`date '+%Y-%m-%d %T'`
	echo $SYSTEM_TIME
	
	echo
	echo "<----------------------------git pull------------------------------->"	
	git pull
	
	echo
	echo "<----------------------------git status----------------------------->"	
	git status
	
	echo
	echo "<----------------------------git commit----------------------------->"
	git add .	
	git commit -m "update"
	
	echo
	echo "<----------------------------git push------------------------------->"	
	git push origin master
	
	echo
	echo "git operation ok"
	echo "<------------------------------------------------------------------->"
	
	sleep 5m
done