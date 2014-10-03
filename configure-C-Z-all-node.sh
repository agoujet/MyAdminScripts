#!/bin/sh
pssh -i -h hostpssh /opt/mapr/server/configure.sh -C ip-10-1-3-118,ip-10-1-3-111 -Z ip-10-1-3-111,ip-10-1-3-112,ip-10-1-3-129 -N MapR-Cluster

