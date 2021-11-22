sudo apt update && sudo apt -y upgrade \
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
# install podman
. /etc/os-release
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/Release.key" | sudo apt-key add -
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install podman
alias docker=podman
