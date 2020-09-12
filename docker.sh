# sudo nano /etc/default/docker
# DOCKER_OPTS="-H unix:// -H tcp://127.0.0.1:2375"
# echo "DOCKER_OPTS='-H unix:// -H tcp://127.0.0.1:2375'" >> /etc/default/docker && \

sudo service docker start
