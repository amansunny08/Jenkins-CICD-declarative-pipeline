#!/bin/bash
x=$(docker ps -aqf name=aman)
if [ $x ]
then
   docker rm -f $x
else
   echo "No contianer found with name aman"
fi