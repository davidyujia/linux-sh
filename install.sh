sudo add-apt-repository -y ppa:git-core/ppa && \
sudo apt update && sudo apt -y upgrade && \
# update git
sudo apt-get install git -y && \
# install node.js
sudo apt install nodejs npm -y && \
sudo npm i -g n -y && \
sudo n stable && \
sudo apt remove nodejs npm -y \
sudo npm cache clean --force \
sudo npm cache verify \
sudo npm config set prefer-offline true \
# install angular
sudo npm install -g @angular/cli && \
# install dotnet core
sudo add-apt-repository ppa:dotnet/backports
sudo apt-get install -y dotnet-sdk-9.0
dotnet tool update -g linux-dev-certs
dotnet linux-dev-certs install
# autoremove
sudo apt autoremove -y \
# WOL tool
# sudo apt-get install wakeonlan
# Install Flatpak
# sudo apt install flatpak -y
# sudo apt install gnome-software-plugin-flatpak -y
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# rider
# sudo snap install rider --classic

wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-6

## remove
rm -rf linux-sh

# create SSH key
ssh-keygen -t rsa -b 4096 -f $HOME/.ssh/id_rsa -P ""
touch ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

# set git config
git config --global pull.rebase true
git config --global credential.helper 'store --file ~/.git-credentials'
git config --global user.name davidyujia
git config --global user.email davidyujia@gmail.com
