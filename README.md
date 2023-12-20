# linux-sh

```cmd
git clone https://github.com/davidyujia/linux-sh.git && \
sudo sh ./linux-sh/install.sh
```

```
echo "user ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/user
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
