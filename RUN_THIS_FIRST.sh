#!/bin/sh

if [ $(id -u) -ne 0 ]
  then echo zet 'sudo' voor het commando en voer hem opnieuw uit!
  exit
fi

echo "dont run this file again"

# the rest of the commands to run on the first startup go here
# download openarena zip and download docker backup
wget http://www.openarena.ws/request.php?4 -P ./gameFiles

mkdir dockerImages
docker pull sago007/openarena:latest
docker pull crazymax/samba:latest

cd dockerImages
docker save -o openarena.tar sago007/openarena:latest
docker save -o samba.tar crazymax/samba:latest