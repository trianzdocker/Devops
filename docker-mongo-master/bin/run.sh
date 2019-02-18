#!/bin/bash
echo "[`date `] Starting MONGO....."
sleep 2


echo "This is what the configuration file looks like"
cat /etc/mongod.conf

sleep 5

set -x
mongod --config /etc/mongod.conf
#mongod 


while true
do

	echo "[`date`] looping..."
        sleep 1
done
