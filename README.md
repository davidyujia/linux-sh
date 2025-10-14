# linux-sh

```sh
git clone https://github.com/davidyujia/linux-sh.git && \
sudo sh ./linux-sh/install.sh && \
echo "user ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/user && \
git config --global user.name davidyujia && \
git config --global user.email davidyujia@gmail.com && \
exit
```

## Create SSH key

```cmd
cd ~/.ssh
ssh-keygen -o -t rsa -C "email@example.com"
cat id_rsa.pub
```

## Docker Host Setting in Windows

in powershell

```powershell
[System.Environment]::SetEnvironmentVariable('DOCKER_HOST','tcp://127.0.0.1:2375',[System.EnvironmentVariableTarget]::User)
```

## VS code insiders

```
alias code='code-insiders'
```

## Podman in Windows
```cmd
winget install RedHat.Podman
winget install RedHat.Podman-Desktop
podman machine init 
podman machine set --rootful
podman machine start
winget install Docker.DockerCLI
```
