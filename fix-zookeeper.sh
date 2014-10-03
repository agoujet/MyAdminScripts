#!/bin/sh
pssh -i -h hostpssh  cp /opt/mapr/zookeeper/zookeeper-3.3.6/conf.new/* /opt/mapr/zookeeper/zookeeper-3.3.6/conf
pssh -i -h hostpssh touch /opt/mapr/zkdata/zookeeper_server.pid
pssh -i -h hostpssh chown -R mapr /opt/mapr/zkdata
pssh -i -h hostpssh chgrp -R mapr /opt/mapr/zookeeper/

