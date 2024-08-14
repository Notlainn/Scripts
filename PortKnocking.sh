#!/bin/bash
echo "digite o ip:"
read ip

for host in {1..254}; do
 for port in {13,37,30000,3000}; do
        hping3 -S -p $port -c 1 $ip.$host;
 done
        curl -v -m 5 http://$ip.$host:1337
done
