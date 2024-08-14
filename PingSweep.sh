#!/bin/bash

if [ "$1" == "" ]
then
        echo "BEM VINDO AO SCRIPT"
        echo "Modo de uso: $0 192.168.0.1"
else
for host in {1..230};
do
ping -c 1 $1.$host | grep "64 bytes";
done
fi
