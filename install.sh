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
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
sudo dpkg -i packages-microsoft-prod.deb && \
sudo apt-get install -y apt-transport-https && \
sudo apt-get update && \
sudo apt-get install -y dotnet-sdk-6.0
# WOL tool
# sudo apt-get install wakeonlan
