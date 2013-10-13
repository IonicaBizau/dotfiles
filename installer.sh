echo "~ ~ ~ Installing config files ~ ~ ~"

echo "Clonning the repository..."
git clone https://github.com/IonicaBizau/configs

echo "Entering in the downloaded folder."
cd configs

echo "Copying Johnny's apps"
sudo cp -r johnnysapps /

echo "Copying VIM files."
cp vim-files/.vim* ~/

echo "Finished. Clean up..."
cd ..
rm -rf configs
