#!/bin/bash
concurrents=( 10 50 100 200 500 1000 )
for NUM in "${array[@]}"
do
	echo $NUM "Concurrent users"
	siege http://192.168.1.3/bang -c $NUM -t 1m
done
