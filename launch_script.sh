# Export env variables
# export VERSION=freeipa-server:centos-8
# export HOSTNAME=XXXX
# export DOMAIN=XXX
# export PASSWORD=XXX
sudo curl -o lightsail-compose.sh https://raw.githubusercontent.com/tblatrille/freeipa-docker_compose/main/lightsail-compose.sh

sudo chmod +x ./lightsail-compose.sh

sh lightsail-compose.sh > log.txt