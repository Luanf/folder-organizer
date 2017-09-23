#!/bin/sh
#

SIMPLE_TEXT="txt|txz"
for file in ~/Desktop/tmp/*
do
	if [[ $file =~ .*\.($SIMPLE_TEXT) ]]
		then
		echo $file
	fi
done
