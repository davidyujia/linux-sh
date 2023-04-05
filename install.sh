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
sudo apt-get install -y dotnet6
# WOL tool
# sudo apt-get install wakeonlan
# Install Flatpak
sudo apt install flatpak
