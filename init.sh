#!/bin/bash

#PATH file
/etc/paths

#sudo passwd root
#su root

########
install brew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/calvin/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#####allow root login
#nano /etc/ssh/sshd_config
#####add in the following lines
#LoginGraceTime 120
#PermitRootLogin yes
#StrictModes yes

#after dpkg, dependency issue can run the following to install dependency
#sudo apt-get -f install

# chinese app market - Spark-store
# https://blog.csdn.net/m0_37623485/article/details/110621614

#sudo apt install npm

echo run system update
sudo apt-get update
sudo apt --fix-broken install -y

#echo install ssh server 
#sudo apt install openssh-server -y

echo Install google chrome
cd /home/calvin/Downloads
sudo apt install fonts-liberation
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
#sudo apt --fix-broken install -y

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
#sudo apt install gcc -y

echo install snap
#sudo apt --fix-broken install -y
sudo apt install snapd -y

echo install flutter
sudo snap install flutter --classic
export PATH=$PATH:/snap/bin
flutter --version

echo virtualbox and genymotion emulator
wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Debian~buster_amd64.deb
sudo dpkg -i virtualbox-6.1_6.1.16-140961~Debian~buster_amd64.deb
wget https://dl.genymotion.com/releases/genymotion-3.1.2/genymotion-3.1.2-linux_x64.bin
chmod +x /home/calvin/Downloads/genymotion-3.1.2-linux_x64.bin
sudo /home/calvin/Downloads/genymotion-3.1.2-linux_x64.bin -y

echo install email client
cd ~/Downloads
sudo apt-get install libsecret-1-dev gconf2 gconf-service
wget https://updates.getmailspring.com/download?platform=linuxDeb -O mailspring.deb
sudo dpkg -i mailspring.deb

echo init golang gin framework
go get -u github.com/gin-gonic/gin

echo install docker
sudo apt-get remove -y docker docker-engine docker.io
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

echo install docker machine
sudo apt-get install curl -y
base=https://github.com/docker/machine/releases/download/v0.16.0
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
sudo mv /tmp/docker-machine /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine

#echo install postman
#wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
#sudo tar -xzvf postman.tar.gz -C ~/Downloads/
#sudo mv ~/Downloads/Postman /usr/local/


echo install android sdk
cd ~/Downloads
sudo apt install openjdk-11-jdk -y
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.1.1.0/android-studio-ide-201.6953283-linux.tar.gz
tar -xvzf android-studio-ide-201.6953283-linux.tar.gz -C ~/Downloads/
sudo mv ~/Downloads/android-studio /usr/local/
cd /usr/local/android-studio/bin
./studio.sh
flutter config --android-studio-dir="/usr/local/android-studio/"
keytool -list -v -keystore "/home/calvin/.android/debug.keystore" -alias androiddebugkey -storepass android -keypass android
#1. install sdk
#2. tick command-line tools in config->sdk manager
#https://stackoverflow.com/questions/61993738/flutter-doctor-android-licenses-gives-a-java-error


#curl -s "https://get.sdkman.io" | bash
#source "$HOME/.sdkman/bin/sdkman-init.sh"
#sdk version
#sdk install gradle 6.7.1


#echo sougo
#sudo apt-get install python-software-properties -y
#sudo apt-get install software-properties-common -y
#sudo add-apt-repository ppa:fcitx-team/nightly
#sudo apt-get update
#sudo apt-get install fcitx fcitx-config-gtk fcitx-googlepinyin


echo verify all install
sudo chmod -R 777 ~/go
git config --global user.email "celvinren@hotmail.com"
git config --global user.name "Calvin"
flutter --version
dart --version
go version
docker-machine version
#gradle --version
/opt/genymobile/genymotion/genymotion
echo android-sdk in /usr/lib/android-sdk

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
