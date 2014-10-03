#!/bin/sh
echo "##################################################"
echo "#####  View from the folder /opt/mapr/roles  #####"
echo "##################################################"
clush -ab ls /opt/mapr/roles
echo "##################################################"
echo "#########  View form the maprcli command  ########"
echo "##################################################"
maprcli node list -columns csvc


