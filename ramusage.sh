#!/bin/bash

a=`free | grep Mem | awk '{print $4/$2 * 100.0}'`
echo $a > /home/ramusagestat 
