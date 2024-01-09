#!/bin/bash
FILE=./pid.file
if test -f "$FILE"; then
  echo "Application process file $FILE found."
    
  PID=$(cat ./pid.file)
  if ps -p $PID > /dev/null
  then
     echo "$PID is running"
     # Kill Process
     kill $PID
  else
    echo "Process is not running."
  fi
else
  echo "Application process file not found."
fi

