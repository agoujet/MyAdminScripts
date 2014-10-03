#!/bin/sh
#pssh -i -h hostpssh rpm -qa | grep mapr-  
clush -w node[1-5] rpm -qa | grep mapr-

