#!/bin/bash
#
# A script to test running a docker command using ansible.
# The challenge is the OUTPUT from the docker command an having ansible deal with that.
#
LOGFILE=/tmp/davb.log

echo "[`date`] $0 param=$1" >> $LOGFILE

cd $(dirname $0)/..

source script/settings

REPLICATION_CMD="mongo ${NAME}:27017/local --eval rs.initiate()"

echo "--> Initializing replication with rs.initiate()"
cmd="docker run -i \
	--rm \
	--link ${NAME}:${NAME} \
	${IMAGE}
	${REPLICATION_CMD}"
echo ${cmd}

set -x

docker run -i \
	--rm \
	--link ${NAME}:${NAME} \
	${IMAGE} \
	${REPLICATION_CMD}
	
echo "[`date`] Done." >> $LOGFILE
echo "[`date`] ------------------" >> $LOGFILE