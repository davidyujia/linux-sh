# install podman
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install podman
# alias docker=podman

# Create docker wrapper script for podman
sudo tee /usr/local/bin/docker > /dev/null << 'EOF'
#!/bin/bash

exec podman "$@"
EOF

# Make the docker wrapper executable
sudo chmod +x /usr/local/bin/docker
