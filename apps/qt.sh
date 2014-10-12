# Get the libs, first
sudo apt-get install libgl1-mesa-dev libglu1-mesa-de

# Install Qt
wget http://download.qt-project.org/official_releases/online_installers/1.4/qt-linux-opensource-1.4.0-2-x86-online.run -O qt-installer.run
chmod +x qt-installer.run
./qt-installer.run
