#!/bin/bash

$HADOOP_INSTALL/etc/hadoop/hadoop-env.sh

service ssh start

$HADOOP_INSTALL/sbin/start-dfs.sh

$HADOOP_INSTALL/sbin/start-yarn.sh

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi

