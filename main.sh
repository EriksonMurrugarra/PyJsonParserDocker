#!/bin/bash

set -e 
REG_ID=$1
FILE_URL=$2

#run twistlock
echo "running twislock"
# twistcli ...

echo "parsing twistlock output"

#retrieve APIENDPOINT
echo "downloading file"
mkdir -p /tmp/folder_${REG_ID}
ZIP_FILE=/tmp/folder_${REG_ID}/${REG_ID}_file.zip
curl -k -o $ZIP_FILE $FILE_URL

#unzip json 
echo "unziping file"
tar xvf $ZIP_FILE /tmp/folder_${REG_ID}

echo "parsing file"
FILE=/tmp/folder_${REG_ID}/data.json
python /opt/app/parse.py $REG_ID $FILE