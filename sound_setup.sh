#!/bin/bash
{
    if [[ ! -e "$HOME/.bashrc" ]]; then
        touch $HOME/.bashrc
    fi
    
    echo "pulseaudio --start --exit-idle-time=-1" >> $HOME/.bashrc
    echo "pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >> $HOME/.bashrc
}
