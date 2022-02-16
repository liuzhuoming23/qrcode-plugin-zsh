#!/bin/bash

if [ "$1" == "" ]; then
    echo "error: qrcode decode path is required"
else
    if command -v pip >/dev/null 2>&1; then
        if [ "`pip list | grep pyzbar`" != '' ]; then
            cd `dirname $0`
            python3 ./py/decode-qrcode.py "$1"
        else
            read -p "'pyzbar' dependent not found, install pyzbar?(y/n)": yn
            if [ "$yn" == "y" ]; then
                echo "pyzbar dependent will be installed automatically.\npip install pyzbar..."
                pip install pyzbar
                sleep 1
                cd `dirname $0`
                python3 ./py/decode-qrcode.py "$1"
            else
                echo "error: 'pyzbar' dependent not installed, please install pyzbar manually.(run 'pip install pyzbar')"
            fi
        fi
    else
        echo "error: 'pip' command not found, please install pip."
    fi
fi