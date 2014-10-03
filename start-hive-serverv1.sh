#!/bin/sh
nohup hive --service hiveserver -p 15000 &
sleep 4 
lsof -i:15000
sleep 3
/mapr/MapR-Cluster/frdo/cluster/check_setup.py node1 15000
