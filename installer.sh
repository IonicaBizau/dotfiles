echo "~ ~ ~ Installing config files ~ ~ ~"

echo "Installing git ..."
sudo apt-get install git -y

echo "Installing curl ..."
sudo apt-get install curl -y

echo "Clonning the repository ..."
git clone https://github.com/IonicaBizau/configs

echo "Entering in the downloaded folder."
cd configs

echo "Copying Johnny's apps ..."
sudo cp -r johnnysapps /

echo "Installing VIM ..."
sudo apt-get install -y vim

echo "Copying VIM files ..."
cp -r vim-files/.vim* ~/

echo "Installing NeoBundle ..."
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

echo "Finished. Clean up ..."
cd ..
rm -rf configs
