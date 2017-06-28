printf "\n------------\n"
echo "INSTALL CHROMIUM AND CHROME"

export DISPLAY=:0.0

# chromium browser (currently 58.0)
sudo apt-get install -y chromium-browser 
sudo apt-get install -y chromium-browser-l10n chromium-codecs-ffmpeg unity-chromium-extension
sudo apt-get install -y webaccounts-chromium-extension
# disable keyring window

# copy start-script
sudo cp ./opt/chrome.sh /opt/
sudo chmod +x /opt/chrome.sh

# copy service for start script
sudo mv ./system/chrome.service /etc/systemd/system/
#sudo systemctl enable chrome 

# first run to configure
chromium-browser --disable-sync-preferences

# google chrome (currently 59.0)
# TODO kiosk need write permission
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb

# first run to configure
google-chrome &


# nginx
sudo apt-get install -y nginx


# cleanup
sudo apt-get clean
sudo apt-get autoremove
