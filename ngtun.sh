#!/bin/sh
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
gunzip ngrok-v3-stable-linux-amd64.tgz
tar xf ngrok-v3-stable-linux-amd64.tar
chmod +x ngrok
echo ==============================
while getopts t: flag
do
        case "${flag}" in
                t) authtoken=${OPTARG};;
        esac
done
./ngrok config add-authtoken $authtoken
