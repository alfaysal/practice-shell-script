#!/bin/bash

set -x # show running command. debug mode
set -e # stop executing script when error occurs
set -o pipefail # exit when pipe fail, as set -e does not work when pipe fail occurs
 
echo "Printing free space in disk"
df

echo "Printing number of CPU"
sysctl -n hw.ncpu

echo "Specific pid"
ps -ef | grep chrome | awk '{print $2}'


