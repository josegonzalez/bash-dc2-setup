#!/usr/bin/env bash

apt update && apt -yy upgrade && apt -yy dist-upgrade && apt autoremove
apt -yy install atop dstat glances hatop htop iftop iotop iptraf ncdu nethogs nmon sysdig sysstat xfsprogs python-pip python3-pip git at colordiff curl elinks git-core mailutils ncdu openssl sysdig unzip vim wdiff zip apt-transport-https ca-certificates curl gnupg-agent software-properties-common ntp
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt -yy install docker-ce docker-ce-cli containerd.io
docker run --rm hello-world
