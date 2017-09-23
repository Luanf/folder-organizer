#!/bin/sh
#

SIMPLE_TEXT="txt|md"
DOCS="pdf|ppt|doc|"
ARCHIVE="zip|tgz"
CODE="c|py|java"
IMAGE="jpg|png|gif"
MULTIMEDIA="mp3|mp4"
INSTALLER="dmg"
WEB="html"

for file in ~/Downloads/*
do
	if [[ $file =~ .*\.($SIMPLE_TEXT) ]]; then
		echo "Simple Text file moved: "$file 
	elif [[ $file =~ .*\.($DOCS) ]]; then
		echo "Document file moved: "$file 
	elif [[ $file =~ .*\.($ARCHIVE) ]]; then
		echo "Archive file moved: "$file 
	elif [[ $file =~ .*\.($CODE) ]]; then
		echo "Code file moved: "$file 
	elif [[ $file =~ .*\.($IMAGE) ]]; then
		echo "Image file moved: "$file 
	elif [[ $file =~ .*\.($MULTIMEDIA) ]]; then
		echo "Multimedia file moved: "$file 
	elif [[ $file =~ .*\.($INSTALLER) ]]; then
		echo "Installer file moved: "$file 
	elif [[ $file =~ .*\.($WEB) ]]; then
		echo "Web file moved: "$file 
	else
		echo "This file was not categorized: "$file
	fi
done
