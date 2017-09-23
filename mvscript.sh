#!/bin/sh
#


SOURCE_DIR="$HOME/Downloads/"
TEXT_DIR=$SOURCE_DIR"Texts"
DOCS_DIR=$SOURCE_DIR"Docs"
ARCHIVE_DIR=$SOURCE_DIR"Archives"
CODE_DIR=$SOURCE_DIR"Codes"
IMAGE_DIR=$SOURCE_DIR"Images"
MULTIMEDIA_DIR=$SOURCE_DIR"Multimedia"
INSTALLER_DIR=$SOURCE_DIR"Installer"
WEB_DIR=$SOURCE_DIR="Web"

SIMPLE_TEXT="txt|md"
DOCS="pdf|ppt|doc|"
ARCHIVE="zip|tgz"
CODE="c|py|java"
IMAGE="jpg|png|gif"
MULTIMEDIA="mp3|mp4"
INSTALLER="dmg"
WEB="html"

for file in $SOURCE_DIR*
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
