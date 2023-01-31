#!/bin/bash

port=8420
ip=localhost
while read line
do
        if [[ "$line" == "exit" ]];
        then
                break
        fi

	echo "$line" | socat - TCP-CONNECT:$ip:$port
done < "${1:-/dev/stdin}"
