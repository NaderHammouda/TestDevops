#!/bin/bash
docker build -t custom-tomcat .

#Running the dev container on the port 8080
docker run --name dev-instance -p 8080:8080 -e ENVIRONMENT="dev"  --privileged=true  -dit custom-tomcat

#Running the prod container on the port 8080
docker run --name prod-instance -p 8080:8080 -e ENVIRONMENT="prod"  --privileged=true  -dit custom-tomcat