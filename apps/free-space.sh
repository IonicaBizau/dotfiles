df -h
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove --purge
sudo apt-get autoremove
sudo journalctl --vacuum-time=1d

set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        echo ">>>" $snapname
        sudo snap remove "$snapname" --revision="$revision"
    done


sudo rm -rf ~/.cache/thumbnails/*
df -h
