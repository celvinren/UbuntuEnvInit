#!/bin/bash

#sudo passwd root
#su root

#####allow root login
#nano /etc/ssh/sshd_config
#####add in the following lines
#LoginGraceTime 120
#PermitRootLogin yes
#StrictModes yes

echo run system update
sudo apt-get update
sudo apt --fix-broken install -y

echo install ssh server 
sudo apt install openssh-server -y

echo Install google chrome
cd /home/calvin/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo install VS Code
cd /home/calvin/Downloads
wget https://az764295.vo.msecnd.net/stable/ea3859d4ba2f3e577a159bc91e3074c5d85c0523/code_1.52.1-1608136922_amd64.deb
sudo dpkg -i code_1.52.1-1608136922_amd64.deb

echo install golang
cd /home/calvin/Downloads
wget https://golang.org/dl/go1.15.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

echo install git and gcc
sudo apt install git -y
sudo apt install gcc -y

echo install snap
sudo apt --fix-broken install -y
sudo apt install snapd -y

echo install flutter
snap install flutter --classic
export PATH=$PATH:/snap/bin
flutter --version

echo virtualbox and genymotion emulator
sudo apt install virtualbox -y
wget https://dl.genymotion.com/releases/genymotion-3.1.2/genymotion-3.1.2-linux_x64.bin
chmod +x /home/calvin/Downloads/genymotion-3.1.2-linux_x64.bin
sudo /home/calvin/Downloads/genymotion-3.1.2-linux_x64.bin -y

echo install email client
sudo snap install mailspring

echo init golang gin framework
go get -u github.com/gin-gonic/gin

echo install docker
sudo apt-get remove -y docker docker-engine docker.io
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

echo install docker machine
base=https://github.com/docker/machine/releases/download/v0.16.0
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
sudo mv /tmp/docker-machine /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine

echo install postman
sudo snap install postman

echo install android sdk
sudo apt-get install default-jre -y

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
sdk install gradle 6.7.1

sudo apt update && sudo apt install android-sdk -y

cd /home/calvin/Downloads
wget https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip
unzip -q commandlinetools-linux-6858069_latest.zip -d ~/android-sdk
cd ~/android-sdk
cmdline-tools/bin/sdkmanager --update
#tools/bin/sdkmanager "platforms;android-25" "build-tools;25.0.2" "extras;google;m2repository" "extras;android;m2repository"
cmdline-tools/bin/sdkmanager --licenses --sdk_root=/usr/lib/android-sdk

echo verify all install
flutter --version
dart --version
go version
docker-machine version
gradle --version

#echo install onedrive
#curl https://rclone.org/install.sh | sudo bash
#rclone config
#n
#onedrive
#22
#advanced config ->no
#auto config ->y
#1 onedrive personal
#sh -c "rclone --vfs-cache-mode writes mount onedrive: ~/onedrive"


#echo install rdp
#sudo apt install xubuntu-desktop -y
#sudo apt install xrdp -y
#adduser xrdp ssl-cert
#sudo systemctl restart xrdp
#sudo ufw allow 3389

#go get -u github.com/swaggo/swag/cmd/swag
#swag init

#echo install android studio
#sudo apt install openjdk-11-jdk -y
#sudo snap install android-studio --classic -y
