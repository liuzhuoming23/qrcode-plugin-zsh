#!/bin/bash

if [ $# == 0 ]; then
    echo "error: param is required"
else
    if [ $1 == "encode" ]; then
        cd `dirname $0`
        sh ./encode-qrcode.sh "$2"
    elif [ $1 == "decode" ]; then
        cd `dirname $0`
        sh ./decode-qrcode.sh "$2"
    else
        echo "error: param[$1] is not supported"
    fi
fi