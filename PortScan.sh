#!/bin/bash

if [ "$1" == "" ]
then
        echo "BEM VINDO AO SCRIPT"
        echo "Modo de uso: $0 192.168.0."
else
for ip in {1..250};
do
hping3 -S -p 80 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f2 |   
sed "s/ip=//";
done
fi
