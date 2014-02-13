# Configs

My configuration files

## Installer

```sh
wget -qO- https://raw.github.com/IonicaBizau/configs/master/installer.sh | sh
```

## VIM files

 - `.vimrc`
 - VIM colors
 - plugins: Zencoding

## Johnny's apps

Small scripts that make the work faster. Put them in root:

```sh
sudo cp -r john<tab> /
```

Exmample:

Instead of:

```sh
git tag -d dev
git tag dev
git push --tags
```
we can use:

```sh
/j<tab>m<tab>
```

...where `<tab>` means <kbd>TAB</kbd> key press.

NodeJS JSON Validator:

```sh
node /j<tab>j<tab> test.json
```


## Applications

### Qt

```sh
wget -qO- https://raw.github.com/IonicaBizau/configs/master/utils/qt.sh | sh
```

### Get VIM

```sh
wget -qO- https://raw.github.com/IonicaBizau/configs/master/utils/get-vim.sh | sh
```


### Node and Mongo

```sh
wget -qO- https://raw.github.com/IonicaBizau/configs/master/utils/install-node-and-mongo.sh | sh
```

For Node only:

```sh
wget -qO- https://raw.github.com/IonicaBizau/configs/master/utils/install-node.sh | sh
```


### Banish404

```sh
wget -qO- https://raw.github.com/IonicaBizau/configs/master/utils/install-banish404.sh | sh
```
