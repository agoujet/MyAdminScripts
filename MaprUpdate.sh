#!/bin/sh
/etc/init.d/mapr-warden stop
/etc/init.d/mapr-zookeeper stop
sleep 15
rm -Rf update.local.list
rpm -qa | grep mapr | gawk -F- '{ print $1 "-" $2 "* "}'  >> "update.local.list" 
list=$(awk 'END{print RS}$0=_[$2]++||NR==1?$0:RS$0' ORS= update.local.list) 
rm -Rf update.local.list
yum -y update $list
sleep 5
/etc/init.d/mapr-warden start 
sleep 90
maprcli config save -values {"cldb.v3.features.enabled":"1"}
maprcli config save -values {mapr.targetversion:"`cat /opt/mapr/MapRBuildVersion`"}
