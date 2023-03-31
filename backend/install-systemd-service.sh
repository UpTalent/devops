#!/bin/bash

if [ -f /etc/systemd/system/uptalentbackend.service ]; then
    echo "systemd unit already installed!"
else
    sudo cp ./backend/uptalentbackend.service /etc/systemd/system/uptalentbackend.service
    sudo systemctl daemon-reload
    echo "systemd unit installed!"
fi
