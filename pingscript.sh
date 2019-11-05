#!/bin/bash
if [ "$1" == "" ]
then
echo "usage: ./pingscript.sh [network]"
echo "example: ./pingscript.sh 172.26.4"
else
for x in `seq 110 130`; do
ping -c 3 $1.$x > /dev/null 2>&1 && echo $1.$x está up! || echo $1.$x está down! 
done
fi
