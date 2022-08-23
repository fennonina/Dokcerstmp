#!/bin/sh
rm -rf ngrok ngrok.zip ng.sh xrdp-kali.sh x.sh > /dev/null 2>&1
wget -O ng.sh https://raw.githubusercontent.com/Alizarddd/ready-codes/main/NGsh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo NGROK IS SETTING UP
echo "======================="
./ngrok tcp 3388 &>/dev/null &
echo "===================================="
echo "Install XRDP Kali Linux"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp:kali
clear
echo "===================================="
echo "Start XRDP Kali Linux"
echo "===================================="
echo "===================================="
echo "Username : ubuntu"
echo "Password : ubuntu"
echo "XRDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "IP:" && curl --silent --show-error ipconfig.io
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Wait to finish bot and next open RDC to connect"
echo "===================================="
echo "===================================="
docker run --rm --hostname cssbyalizaw --shm-size 2g -p 3388:3389 danielguerra/ubuntu-xrdp:kali > /dev/null 2>&1
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
=======================================[ CssByAlizaw :) ]=====================================
░█████╗░░██████╗░██████╗██████╗░██╗░░░██╗░█████╗░██╗░░░░░██╗███████╗░█████╗░░██╗░░░░░░░██╗  ██╗
██╔══██╗██╔════╝██╔════╝██╔══██╗╚██╗░██╔╝██╔══██╗██║░░░░░██║╚════██║██╔══██╗░██║░░██╗░░██║  ██║
██║░░╚═╝╚█████╗░╚█████╗░██████╦╝░╚████╔╝░███████║██║░░░░░██║░░███╔═╝███████║░╚██╗████╗██╔╝  ██║
██║░░██╗░╚═══██╗░╚═══██╗██╔══██╗░░╚██╔╝░░██╔══██║██║░░░░░██║██╔══╝░░██╔══██║░░████╔═████║░  ╚═╝
╚█████╔╝██████╔╝██████╔╝██████╦╝░░░██║░░░██║░░██║███████╗██║███████╗██║░░██║░░╚██╔╝░╚██╔╝░  ██╗
░╚════╝░╚═════╝░╚═════╝░╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░  ╚═╝
  $r =========================================[ F 1 N A N ]=========================================
          
$endc$enda""";
