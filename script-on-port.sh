#!/bin/bash
STDIN=$(cat)
match=${STDIN:1:2}

target=""
for f in sounds/*.wav; do
	if [[ $f == *$match* ]];
	then
		target=$f
		break
	elif  [[ $match > ${f%.wav} ]];
	then
		target=$f
	fi
done

if [ -f "$target" ]; then
	aplay -Dhw:0,0 $target
fi