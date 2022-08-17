echo ===========================================
echo ========[Installing Gnome & CRD]===========
echo ===========================================
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes ubuntu-gnome-desktop desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/gnome-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y
sudo apt install gdebi
sudo apt -y install firefox
sudo hostname cssbyalizaw
sudo adduser runner chrome-remote-desktop
echo -e "111600" | su - runner -c """$CHROME_HEADLESS_CODE --pin=$GOOGLE_REMOTE_PIN"""
echo ===========================================
echo =========[Successfuly completed]============
echo ===========================================
