#!/bin/sh
cd dockerimages | exit 1
docker load -i openarena.tar
docker load -i samba.tar