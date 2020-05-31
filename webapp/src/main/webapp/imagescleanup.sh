#!/bin/bash

#Description: Script to clean up images from docker hub

#Author: Magloire A K

#Date: May 2020


for item in $(docker images | awk '{print$3}' | grep -v IMAGE);

do

docker rmi -f ${item}

done
