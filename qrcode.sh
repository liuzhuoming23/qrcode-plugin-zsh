#!/bin/bash

if [ $# == 0 ]; then
    echo "error: param[1] is required"
else
    if [ $1 == "encode" ] || [$1 == "-e" ]; then
        cd `dirname $0`
        bash ./qrcode-${1}.sh "$2"
    elif [ $1 == "decode" ] || [ $1 == "-d" ]; then
        cd `dirname $0`
        bash ./qrcode-${1}.sh "$2"
    else
        echo "error: param[$1] is not supported"
    fi
fi