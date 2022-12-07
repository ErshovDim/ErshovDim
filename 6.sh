#!/bin/bash
xdg-user-dirs-update
groupadd sudoers
groupadd sudoers
for i in {1..5}
do
  mkdir "folder$i"
done
for p in (users.txt)
do
  useradd -m -G sudoers $p
done
