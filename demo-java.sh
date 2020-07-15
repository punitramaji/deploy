#!/bin/bash
git clone https://github.com/tongueroo/demo-java.git
mkdir -p ~/demo-java/pkg
cd ~/demo-java/
mvn package
cp ~/demo-java/target/demo.war ~/demo-java/pkg/demo.war
docker build -t webapp .
docker run --rm -p 8080:8080 -d webapp
rm -rf ~/demo-java/pkg
echo done
