#!/bin/bash

for palavra in $(cat lista);do
host -t name cname $palavra.$1  | grep "alias for"
done
