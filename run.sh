#!/bin/bash
#/usr/bin/python  /app/server.py
#while true; do echo $(cat /app/log) $(date "+%Y-%m-%d %H:%M:%S");sleep 1;done
while true
do
while read a
do
  echo $a
  echo $(date "+%Y-%m-%d %H:%M:%S")
done < log
sleep 1
done
