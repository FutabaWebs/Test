#!bin/bash

apt update -y 
apt upgrade -y 
apt update -y 

apt install wget -y

wget -O install-nethunter-termux https://offs.ec/2MceZWr

echo "WARNING!!!! BE CAREFUL!!! THE PROGRAM IS GOING TO ASK YOU -> Delete downloaded rootfs file?"
echo ""

echo "ENTER NO FOR THIS!!!!"
echo ""

echo "If you read and understand the instructions then simply hit enter when you reach the next prompt"
read -p "BE CAREFUL!!! THE PROGRAM IS GOING TO ASK YOU -> Delete downloaded rootfs file? ENTER NO FOR THIS!!!!" input
