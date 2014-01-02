echo " > Adding ppa ..."
sudo add-apt-repository ppa:fossfreedom/packagefixes

echo " > Updating ..."
sudo apt-get update

echo " > Installing ..."
sudo apt-get install banish404
