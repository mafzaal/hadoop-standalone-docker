#!/bin/bash

tag="0.2.0"

#docker respoistory name
respoistory=mafzaal

# founction for delete images
function docker_rmi()
{
	echo -e "\n\ndocker rmi $respoistory/hadoop-standalone:$tag"
	docker rmi $respoistory/$1:$tag
}


# founction for build images
function docker_build()
{
	cd hadoop-standalone
	echo -e "\n\ndocker build -t $respoistory/hadoop-standalone:$tag ."
	docker build -t $respoistory/$1:$tag .
	cd ..
}


echo -e "\ndocker rm -f standalone"
docker rm -f standalone

docker images > images.txt

docker_rmi hadoop-standalone
docker_build hadoop-standalone


echo -e "\nimages before build"
cat images.txt
rm images.txt

echo -e "\nimages after build"
docker images
