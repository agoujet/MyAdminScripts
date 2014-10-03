#!/bin/sh
an=$(date +"%Y")
mois=$(date +"%m")
DAY=$(date +"%d")
HIER=$(( DAY -1))
DATEHIER=($an-$mois-$HIER)
echo "Yesterday was $DATEHIER"
echo "Today is $DAY-$mois-$an"
rm -Rf /mapr/MapR-Cluster/frdo/tmp/sisenik/$DATEHIER
echo "clean up of folder $DATEHIER"
