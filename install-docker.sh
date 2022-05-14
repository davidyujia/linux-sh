# install docker
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io && \
echo "DOCKER_OPTS=\"-H unix:// -H tcp://127.0.0.1:2375\"" | sudo tee -a /etc/default/docker && \
sudo service docker start && \
sudo mkdir -p /data/portainer && \
sudo docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

# fix Error: connect EACCES /var/run/docker.sock
sudo groupadd docker && \
sudo usermod -aG docker $USER
