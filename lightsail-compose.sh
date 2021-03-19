# !/bin/bash

# install latest version of docker the lazy way
sudo curl -sSL https://get.docker.com | sh

sudo usermod -aG docker ubuntu

# install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# copy the dockerfile into /srv/docker
# if you change this, change the systemd service file to match
# WorkingDirectory=[whatever you have below]
sudo mkdir /srv/docker
sudo curl -o /srv/docker/docker-compose.yml https://raw.githubusercontent.com/tblatrille/freeipa-docker-compose/main/docker-compose.yml

# copy in systemd unit file and register it so our compose file runs
# on system restart
sudo curl -o /etc/systemd/system/docker-compose-app.service https://raw.githubusercontent.com/tblatrille/freeipa-docker-compose/main/docker-compose-app.service
systemctl enable docker-compose-app

# start up the application via docker-compose
docker-compose -f /srv/docker/docker-compose.yml up -d