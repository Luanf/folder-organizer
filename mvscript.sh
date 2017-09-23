#!/bin/sh
#

SIMPLE_TEXT="txt|md"
DOCS="pdf|ppt|doc|"
ARCHIVE="zip|tgz"
CODE="c|py|java"
IMAGE="png|gif"
MULTIMEDIA="mp3|mp4"
INSTALLER="dmg"
WEB="html"

for file in ~/Downloads/*
do
	if [[ $file =~ .*\.($SIMPLE_TEXT) ]]; then
		
	elif [[ $file =~ .*\.($DOCS) ]]; then

	elif [[ $file =~ .*\.($ARCHIVE) ]]; then

	elif [[ $file =~ .*\.($CODE) ]]; then

	elif [[ $file =~ .*\.($IMAGE) ]]; then

	elif [[ $file =~ .*\.($MULTIMEDIA) ]]; then

	elif [[ $file =~ .*\.($INSTALLER) ]]; then

	else [[ $file =~ .*\.($WEB) ]]; then

	fi
done
