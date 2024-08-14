#!/bin/bash
for i in $(seq 1 254);do ping -c1 -w1 172.16.1.$1;done | grep "64 bytes"
