#!/bin/bash

tag="0.2.0"
	

# delete old standalone container and start new standalone container
docker rm -f standalone &> /dev/null
echo "start standalone container..."
docker run -it  -P --name standalone -h standalone.mafzaal.com  -w /root mafzaal/hadoop-standalone:$tag /root/start-hadoop.sh -bash

#--volumes-from hadoop-data
#docker run -d -t --dns 127.0.0.1 -P --name standalone -h standalone.mafzaal.com -w /root mafzaal/hadoop-standalone:$tag &> /dev/null

# create a new Bash session in the standalone container
#docker exec -it standalone bash
