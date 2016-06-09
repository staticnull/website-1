#!/bin/bash

ssh -t gr8confus bash -c "'

sudo service gr8confus-website stop
sudo rm /etc/init.d/gr8confus-website

cd /home/centos/gr8confus-website-source
rm -rf build
git pull
./gradlew assemble

sudo rm /home/centos/gr8confus-website-running/gr8confus-website.jar
cp /home/centos/gr8confus-website-source/build/libs/gr8confus-website.jar /home/centos/gr8confus-website-running/gr8confus-website.jar
chmod 500 /home/centos/gr8confus-website-running/gr8confus-website.jar

sudo ln -s /home/centos/gr8confus-website-running/gr8confus-website.jar /etc/init.d/gr8confus-website
sudo service gr8confus-website start

'"

echo "GR8CONF US Deploy Finished"
