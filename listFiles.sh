#!/bin/sh

read -p 'Directory to listFiles for: ' directoryPath

cd $directoryPath
if [ "$?" != "0" ]; then
    echo "Directory $directoryPath not found"
    exit 1
fi

read -p 'Starting alphabet of the files to be listed: ' fileSearch

pattern="^[a-zA-Z]$"
if [[ ${fileSearch} =~ ${pattern} ]]; then
    ls -d  $fileSearch*
else
    echo "\n Invalid input alphabet"
    exit 1
fi
