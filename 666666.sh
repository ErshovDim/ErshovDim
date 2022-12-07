#!/bin/bash
xdg-user-dirs-update
groupadd sudoers
for i in {1..5}
do
  mkdir "folder$i"
done
cat users.txt | for i in {1..5} 
do
  read y
  useradd -m -G sudoers $y
  usermod -aG sudo $y
done
sudo apt-get update
sudo apt-get upgrade
