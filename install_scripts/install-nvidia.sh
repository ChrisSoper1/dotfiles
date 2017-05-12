# Add the backports repository configuration

cat <<EOL | sudo tee /etc/apt/sources.list.d/jessie-backports.list
# Added on `date` by install-nvidia.sh
deb http://ftp.gtlib.gatech.edu/debian/ jessie-backports main contrib non-free
deb-src http://ftp.gtlib.gatech.edu/debian/ jessie-backports main contrib non-free
EOL

# Add x86 archetectures to apt
sudo dpkg --add-architecture i386

# Install nvidia drivers and openGL for x86
sudo apt update
sudo apt -t jessie-backports nvidia-driver libgl1-nvidia-glx:i386

