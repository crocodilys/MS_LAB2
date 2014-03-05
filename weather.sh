#!/bin/sh
while true
do
	curl -s http://pogoda.tut.by/city/minsk > minsk
	grep -m 1 '<span class="temp-i">' minsk > temp
	echo "Current weather in Minsk: " 	$(sed 's/[^\-\+[0-9]//g' temp)
	rm -r temp minsk
	sleep 1s
done