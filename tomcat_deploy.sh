#!/bin/bash
docker build -t custom-tomcat .

docker run --name dev-instance -p 8080:8080 -e ENVIRONMENT="dev"  --privileged=true  -dit custom-tomcat

docker run --name prod-instance -p 8080:8080 -e ENVIRONMENT="prod"  --privileged=true  -dit custom-tomcat