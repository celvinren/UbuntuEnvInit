#sudo passwd root
#su root

#####allow root login
#nano /etc/ssh/sshd_config
#####add in the following lines
#LoginGraceTime 120
#PermitRootLogin yes
#StrictModes yes


echo install ssh server
sudo apt install openssh-server
sudo apt --fix-broken install

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
tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

echo install git and gcc
sudo apt install git -y
sudo apt install gcc -y

echo install flutter
cd /home/calvin/Documents
wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_1.22.5-stable.tar.xz
tar xf flutter_linux_1.22.5-stable.tar.xz
export PATH="$PATH:/home/calvin/Documents/flutter/bin"

echo install snap
sudo apt install snapd

echo install virtualbox and genymotion emulator
cd /home/calvin/Downloads
sudo apt install virtualbox
wget https://dl.genymotion.com/releases/genymotion-3.1.2/genymotion-3.1.2-linux_x64.bin
chmod +x /home/calvin/Downloads/genymotion-3.1.2-linux_x64.bin
sudo /home/calvin/Downloads/genymotion-3.1.2-linux_x64.bin -y

echo email client
sudo snap install mailspring

echo init golang gin framework
go get -u github.com/gin-gonic/gin

#go get -u github.com/swaggo/swag/cmd/swag
#swag init

#echo install android studio
#sudo apt install openjdk-11-jdk -y
#sudo snap install android-studio --classic -y
