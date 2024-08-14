#!/bin/bash

if [ "$1" == "" ]
then
        echo "PARSING HTML"
        echo "Modo de uso: $0 host"
else
        echo "###################################"
        echo "!>        BUSCANDO HOSTS         <!"
        echo "###################################"
        wget -q $1
        grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > listas
        rm index.html
        cat listas
        echo "###################################"
        echo "!>         RESOLVENDO HOSTS      <!"
        echo "###################################"
        for url in $(cat listas);do host $url;done | grep "has address"
fi
