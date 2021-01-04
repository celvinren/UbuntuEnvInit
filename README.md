# UbuntuEnvInit

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  
sudo dpkg -i google-chrome-stable_current_amd64.deb -y

wget https://az764295.vo.msecnd.net/stable/ea3859d4ba2f3e577a159bc91e3074c5d85c0523/code_1.52.1-1608136922_amd64.deb  
sudo dpkg -i code_1.52.1-1608136922_amd64.deb -y

wget https://golang.org/dl/go1.15.6.linux-amd64.tar.gz  
tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz  
export PATH=$PATH:/usr/local/go/bin  

sudo apt install git -y  
sudo apt install gcc  

go get -u github.com/gin-gonic/gin  




wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_1.22.5-stable.tar.xz  
tar xf flutter_linux_1.22.5-stable.tar.xz  
export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"  

sudo apt install snapd  
sudo apt install openjdk-11-jdk -y  
sudo snap install android-studio --classic -y  

sudo apt install virtualbox  
wget https://dl.genymotion.com/releases/genymotion-3.1.2/genymotion-3.1.2-linux_x64.bin  
chmod +x /home/calvin/Downloads/genymotion-3.1.2-linux_x64.bin  
sudo /home/calvin/Downloads/genymotion-3.1.2-linux_x64.bin  

email:  
MailSpring  
sudo snap install mailspring  

go get -u github.com/swaggo/swag/cmd/swag  
swag init  
