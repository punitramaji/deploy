#!/bin/bash
git clone https://github.com/tongueroo/demo-java.git
mkdir -p ~/deploy/demo-java/pkg
cd ~/deploy/demo-java/
mvn package
cp ~/deploy/demo-java/target/demo.war ~/deploy/demo-java/pkg/demo.war
docker build -t webapp .
docker run --rm -p 8080:8080 -d webapp
rm -rf ~/deploy/demo-java/pkg
echo done
