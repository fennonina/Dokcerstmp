echo =========================================
echo ======[Adding the user f1nan]======
sudo useradd -m f1nan
sudo adduser f1nan sudo
echo "111600:111600" | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo hostname cssbyalizaw
echo -e "111600\n111600" | sudo passwd "$USER"
echo =========================================

echo ===========================================
echo  ========[ DOWNLOADING NGROK ]===========
echo ===========================================
wget -O x.sh https://raw.githubusercontent.com/Alizarddd/ready-codes/main/NGsh ; chmod +x x.sh ; ./x.sh
echo ===========================================
echo  =========[ STARTING SSH TUNELL ]============
echo ===========================================
./ngrok tcp 22 --log ".ngrok.log" &

sleep 14
HAS_ERRORS=$(grep "command failed" < .ngrok.log)

if [[ -z "$HAS_ERRORS" ]]; then
  echo ""
  echo "=========================================="
  echo "To connect: $(grep -o -E "tcp://(.+)" < .ngrok.log | sed "s/tcp:\/\//ssh $USER@/" | sed "s/:/ -p /")"
  echo "or conenct with $(grep -o -E "tcp://(.+)" < .ngrok.log | sed "s/tcp:\/\//ssh (Your Linux Username)@/" | sed "s/:/ -p /")"
  echo "=========================================="
else
  echo "$HAS_ERRORS"
  exit 4
fi


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
