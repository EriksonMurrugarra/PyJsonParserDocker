#!/bin/bash

REG_ID=$1
FILE=$2

#run twistlock
echo "running twislock"

#retrieve APIENDPOINT
echo "getting file"

#unzip json 
echo "unziping file"

echo "parsing file"
python /opt/app/parse.py $REG_ID $FILE