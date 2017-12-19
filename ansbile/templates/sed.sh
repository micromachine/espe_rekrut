#!/bin/bash
sed -i 's/}/,"iptables" : false}/g'  /etc/docker/key.json
