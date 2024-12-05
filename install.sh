sudo add-apt-repository -y ppa:git-core/ppa && \
sudo apt update && sudo apt -y upgrade && \
# update git
sudo apt-get install git -y && \
# install node.js
sudo apt install nodejs npm -y && \
sudo npm i -g n -y && \
sudo sudo n stable && \
sudo apt remove nodejs npm -y \
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
rm -rf linux-sh

# set git config
git config --global pull.rebase true
