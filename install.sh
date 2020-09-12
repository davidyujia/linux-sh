sudo su
apt update && apt -y upgrade \
# install node.js
apt install nodejs npm -y && \
npm i -g n -y && \
n latest && \
apt remove nodejs npm -y \
# install angular
npm install -g @angular/cli && \
# install dotnet core
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
dpkg -i packages-microsoft-prod.deb && \
apt-get install -y apt-transport-https && \
apt-get update && \
apt-get install -y dotnet-sdk-3.1 && \
# install docker
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get install docker-ce docker-ce-cli containerd.io && \
# docker remote setting
su && \
echo "DOCKER_OPTS='-H unix:// -H tcp://127.0.0.1:2375'" >> /etc/default/docker && \
# start docker
service docker start && \
mkdir -p /data/portainer && \
docker run -d --restart=unless-stopped --network host --name portainer -h portainer -v /var/run/docker.sock:/var/run/docker.sock -v /data/portainer:/data portainer/portainer
