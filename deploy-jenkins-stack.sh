#!/bin/sh

DATE=$(date -I)

docker build . --no-cache -t kozhenkov/jenkins-docker:$DATE
docker tag kozhenkov/jenkins-docker:$DATE kozhenkov/jenkins-docker:latest

docker push kozhenkov/jenkins-docker:$DATE
docker push kozhenkov/jenkins-docker:latest

docker stack rm jenkins
sleep 15

docker stack deploy -c docker-compose.yml jenkins