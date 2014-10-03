#!/bin/sh
pssh -i -h hostpssh /opt/mapr/server/configure.sh -R -d 10.1.3.124:3306 -du mapr -dp mapr -ds metrics
