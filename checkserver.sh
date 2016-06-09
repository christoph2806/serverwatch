#!/bin/bash
#
#
#	Simple server uptime check script
#
#

function checkserver {

	wget --timeout=3 --tries=1 --spider --no-check-certificate $1

	if [ $? -ne 0 ];then
		echo "Site Down: $1" | mail -s "Site Down $1" servercheck@mussenbrock.de
		php ~/monitor/telegram.php "Site down: $1" 
	fi
}

checkserver http://www.progeno.de
checkserver http://107.170.128.93:8090
#checkserver http://107.170.128.93:3000
