#!/bin/bash

for palavra in $(cat lista2)
do
resposta=$(curl -s -o /dev/null -w "%{http_code}" -H "User-Agent: Desectool" $1/$palavra/)
if [ $resposta == "200" ]
then
echo "Diretorio encontrado: $1/$palavra/"
fi
done

for arquivo in $(cat lista2)
do
resposta1=$(curl -s -o /dev/null -w "%{http_code}" -H "User-Agent: Desectool" $1/$arquivo.$2)
if [ $resposta1 == "200" ]
then
echo "Arquivo encontrado: $1/$arquivo.$2"
fi  
done
