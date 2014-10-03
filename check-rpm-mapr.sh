#!/bin/sh
#pssh -i -h hostpssh rpm -qa | grep mapr-  
clush -a rpm -qa | grep mapr-

