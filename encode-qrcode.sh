#!/bin/bash

if [ "$1" == "" ]; then
    echo "error: qrcode encode context is required"
else
    if command -v qr >/dev/null 2>&1; then
        QRCODE_PATH="`echo $TMPDIR``uuidgen`.png"
        qr "$1" > "$QRCODE_PATH"
        echo "$QRCODE_PATH"
        # Darwin=MacOSX
        if [ "`uname`" == "Darwin" ]; then
            open "$QRCODE_PATH"
        fi
    else
        if command -v pip >/dev/null 2>&1; then
            read -p "'qr' command not found, install qrcode?(y/n)": yn
            if [ "$yn" == "y" ]; then
                echo "qrcode dependent will be installed automatically.\npip install qrcode..."
                pip install qrcode
                sleep 1
                # Darwin=MacOSX Linux=Linux
                if [ "`uname`" == "Darwin" ]; then
                    QRCODE_PATH="`echo $TMPDIR``uuidgen`.png"
                    qr "$1" > "$QRCODE_PATH"
                    echo "$QRCODE_PATH"
                    open "$QRCODE_PATH"
                elif ["`uname`" == "Linux"]; then
                    QRCODE_PATH="/tmp/`uuidgen`.png"
                    qr "$1" > "$QRCODE_PATH"
                    echo "$QRCODE_PATH"
                fi
            else
                echo "error: 'qrcode' dependent not installed, please install qrcode manually.(run 'pip install qrcode')"
            fi
        else
            echo "error: 'pip' command not found, please install pip."
        fi
        
    fi
fi

