#!/bin/bash

for palavra in $(cat lista);do
host $palavra.$1 | grep -v "NXDOMAIN"
done
