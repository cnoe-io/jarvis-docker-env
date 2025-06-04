#!/usr/bin/env bash
useradd -u $USERID -g $GROUPID -ms /bin/bash $USERNAME || useradd -ms /bin/bash $USERNAME
echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME
echo 'echo -e "\033[0;36m$(cat /etc/motd)\033[0m"' >> /home/$USERNAME/.bashrc
echo 'cd /workspace' >> /home/$USERNAME/.bashrc
sudo -i -u $USERNAME
