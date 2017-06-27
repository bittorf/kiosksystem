# HELPER
printf "\n------------\n"
echo "INSTALL HELPER"
sudo apt-get install -y vim nano
sudo apt-get install -y curl build-essential
# ssh server ?
sudo apt-get install -y dropbear
# ?
sudo apt-get install -y openssh-sftp-server
# ?
sudo apt-get install -y zram-config
# simulate keystrokes
sudo apt-get install -y xdotool
# slideshow / image viewer
sudo apt-get install -y gthumb 

# hide mouse
sudo apt-get install -y unclutter

# SOFTWARE PACKAGES
printf "\n------------\n"
echo "INSTALL SOFTWARE PACKAGES"

# nginx
sudo apt-get install -y nginx


# chromium browser (currently 58.0)
sudo apt-get install -y chromium-browser 
sudo apt-get install -y chromium-browser-l10n chromium-codecs-ffmpeg unity-chromium-extension
sudo apt-get install -y webaccounts-chromium-extension
# disable keyring window

# copy start-script
sudo mv ./opt/chrome.sh /opt/
sudo chmod +x /opt/chrome.sh

# copy service for start script
sudo mv ./system/chrome.service /etc/systemd/system/
sudo systemctl enable chrome 


# google chrome (currently 59.0)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb



# nodejs
# currently v4.2.6
sudo apt-get install -y nodejs-legacy
# currently 3.5.2
sudo apt-get install -y npm
# node manager
sudo npm install -g n
# install currently 8.1.2
sudo n latest







# platz machen
sudo apt-get clean
sudo apt-get autoremove
