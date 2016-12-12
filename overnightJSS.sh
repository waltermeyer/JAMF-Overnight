#!/bin/sh

#checks for the hour of the time only; cuts to format (HH)
SystemHour=$(date "+%H")

#hour of time we have set computers to turn on (HH) done this way so it'll only run within that hour
TurnOnTime=02

if [ "$SystemHour" = "$TurnOnTime" ] ; then
	
		#check software
		if SPSoftwareDataType=$(system_profiler SPSoftwareDataType | grep "10.12") ; then
			#check system battery 
			battPercentage=$(pmset -g batt | grep "InternalBattery" | cut -c 34-35) # this is for Sierra
		fi
		if SPSoftwareDataType=$(system_profiler SPSoftwareDataType | grep "10.11") ; then
			battPercentage=$(pmset -g batt | grep "InternalBattery" | cut -c 22-23) # this is for El Capitan
		fi
		if [ "$battPercentage" -gt 35 ] ; then
			
			#wait until we can talk to server before continuing
			until /sbin/ping -c 1 -t 90 jss.theschool.columbia.edu; do /sbin/sleep 3; done
		
			#use --auto in case laptop does go to sleep, when opened there will be no visual to the user and they can still log in
		jamf policy
			#sudo shutdown -h now
		else
			echo "Battery too low to run updates."
			#sudo shutdown -h now
		fi	
else

	echo "It's not time to run updates."
fi

exit 0
