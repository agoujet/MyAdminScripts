#!/bin/sh
echo "#####  View from the folder /opt/mapr/roles #####
clush -ab ls /opt/mapr/roles
echo #####  View form the maprcli command #####
maprcli node list -columns csvc


