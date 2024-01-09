#!/bin/bash
nohup java -jar /tmp/demo.jar>/dev/null 2>&1 & 
echo $! > ./pid.file &

