#!/bin/sh
clush -a /etc/init.d/mapr-warden stop
clush -a /etc/init.d/mapr-zookeeper stop
clush -a sleep 15
clush -a rm -Rf update.local.list
clush -a rpm -qa | grep mapr | gawk -F- '{ print $1 "-" $2 "* "}'  >> "update.local.list" 
clush -a list=$(awk 'END{print RS}$0=_[$2]++||NR==1?$0:RS$0' ORS= update.local.list) 
clush -a rm -Rf update.local.list
clush -a yum -y update $list
clush -a sleep 5
clush -a /etc/init.d/mapr-warden start 
clush -a sleep 90
clush -a maprcli config save -values {"cldb.v3.features.enabled":"1"}
clush -a maprcli config save -values {mapr.targetversion:"`cat /opt/mapr/MapRBuildVersion`"}
