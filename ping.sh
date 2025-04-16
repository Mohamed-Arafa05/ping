#!/bin/bash

if [[ -z $1 ]]; then
    echo "Use Script: $0 <target-domain-ip>"
    exit 1
fi 

target=$1

ping -c 3 "$target"

if [[ $? -ne 0 ]]; then
    echo "Ping Failed"
fi
