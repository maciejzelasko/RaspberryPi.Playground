#!/bin/bash
sudo docker network create -d macvlan -o parent=eth0 --subnet=10.0.0.0/24 --gateway=10.0.0.1 --ip-range=10.0.0.195/32 ph_network
