#!/bin/bash 

 

path=`df -h | grep -vE 'filesystem|tmpfs|sda1' | awk '{print $5}' | grep -vi 'use' | sed 's/%//g'` 

if [[ $path -ge 10 ]]; then 

echo $path"%" > /home/diskop 

else 

echo Disk is good > /home/diskop 

fi 
