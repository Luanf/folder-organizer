#!/bin/sh
#


SOURCE_DIR="$HOME/Downloads/"
TEXT_DIR=$SOURCE_DIR"Texts/"
DOCS_DIR=$SOURCE_DIR"Docs/"
ARCHIVE_DIR=$SOURCE_DIR"Archives/"
CODE_DIR=$SOURCE_DIR"Codes/"
IMAGE_DIR=$SOURCE_DIR"Images/"
MULTIMEDIA_DIR=$SOURCE_DIR"Multimedia/"
INSTALLER_DIR=$SOURCE_DIR"Installer/"
WEB_DIR=$SOURCE_DIR="Web/"

SIMPLE_TEXT="txt|md"
DOCS="pdf|ppt|doc"
ARCHIVE="zip|tgz"
CODE="c|py|java"
IMAGE="jpg|jpeg|png|gif"
MULTIMEDIA="mp3|mp4"
INSTALLER="dmg"
WEB="html"

for file in $SOURCE_DIR*
do
	FILENAME="${file##*/}"
	BASENAME=${FILENAME%%.*}
	EXT=${FILENAME##*.}
	#echo "FILENAME = ""$FILENAME"
	#echo "BASENAME = ""$BASENAME"
	#echo "EXTENSION = ""$EXT"
	INDEX=0
	if [[ $file =~ .*\.($SIMPLE_TEXT) ]]; then
		DEST_DIR="$TEXT_DIR"
	elif [[ $file =~ .*\.($DOCS) ]]; then
		DEST_DIR="$DOCS_DIR"
	elif [[ $file =~ .*\.($ARCHIVE) ]]; then
		DEST_DIR="$ARCHIVE_DIR"
	elif [[ $file =~ .*\.($CODE) ]]; then
		DEST_DIR="$CODE_DIR"
	elif [[ $file =~ .*\.($IMAGE) ]]; then
		DEST_DIR="$IMAGE_DIR"
	elif [[ $file =~ .*\.($MULTIMEDIA) ]]; then
		DEST_DIR="$MULTIMEDIA_DIR"
	elif [[ $file =~ .*\.($INSTALLER) ]]; then
		DEST_DIR="$INSTALLER_DIR"
	elif [[ $file =~ .*\.($WEB) ]]; then
		DEST_DIR="$WEB_DIR"
	else
		echo "This file was not categorized: "$file
		continue
	fi
	mkdir -p "$DEST_DIR" #if it does not exist, creates the destination
	while [[ -e "$DEST_DIR/$FILENAME" ]]; do
		echo "File exists: "$FILENAME
		((INDEX+=1))
		FILENAME=$BASENAME" ("$INDEX")."$EXT
	done
	mv "$file" "$DEST_DIR$FILENAME"

done
