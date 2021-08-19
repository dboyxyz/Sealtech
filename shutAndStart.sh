#!/bin/bash
netstat -apn | grep 3001
sleep 1s
kill -9 $(netstat -nlp | grep :3001 | awk '{print $7}' | awk -F"/" '{ print $1 }')
docsify -p 3001 serve . &
sleep 1s
netstat -apn | grep 3001