#!/bin/sh
echo var1 : $1 var2 : $2
for (( i = 1; i <= 5; i++ ))
do
	scp $1 node$i:$2
	echo scp done for node$i
done

