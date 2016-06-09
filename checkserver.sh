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

checkserver http://107.170.128.93:8090
checkserver http://daohub.org
checkserver http://forum.daohub.org
checkserver http://vote.daohub.org
