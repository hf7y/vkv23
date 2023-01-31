#!/bin/bash

port=8420
echo "Watching $port..."
socat -u TCP-LISTEN:$port,keepalive,reuseaddr,fork EXEC:./script-on-port.sh
echo "Done."
