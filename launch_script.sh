# Export env variables
export VERSION=freeipa-server:centos-8
export HOSTNAME=freeipa.aws.sac.zone
export DOMAIN=aws.sac.zone
export PASSWORD=sacAgile!1492
sudo curl -o lightsail-compose.sh https://raw.githubusercontent.com/tblatrille/freeipa-docker_compose/main/lightsail-compose.sh

sudo chmod +x ./lightsail-compose.sh

sh lightsail-compose.sh > log.txt