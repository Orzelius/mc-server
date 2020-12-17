#!/usr/bin/env bash
sudo apt-get update -y
# sudo apt install default-jre -y
# sudo apt install openjdk-11-jre-headless -y
sudo apt install openjdk-8-jre-headless -y
# sudo apt install default-jdk -y
sudo apt install awscli -y
mkdir minecraft && cd minecraft
sudo aws s3 cp s3://minecraft-orzelius/setup/FTBUltimateReloadedServer/ . --recursive
sudo aws s3 cp s3://minecraft-orzelius/world ./world/ --recursive
sudo chmod +x ServerStart.sh
sudo ./ServerStart.sh