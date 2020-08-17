#!/bin/bash
DOCKERACCOUNT="r0486682"
mvn clean package
./mvnw dockerfile:build
echo $DOCKERACCOUNT"/"java-consumer:latest"   
docker push $DOCKERACCOUNT"/"java-consumer:latest"     
