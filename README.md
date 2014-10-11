```
        .___      __    _____.__.__
      __| _/_____/  |__/ ____\__|  |   ____   ______
     / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/
    / /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
    \____ |\____/|__|  |__|  |__|____/\___  >____  >
         \/                               \/     \/

This repository contains personal dotfiles of Ionică Bizău.
```

## Installation

```sh
$ wget -qO- https://raw.github.com/IonicaBizau/dotfiles/master/installer.sh | sh
# or
$ curl https://raw.github.com/IonicaBizau/dotfiles/master/installer.sh | sh
```

## Johnny's Apps

Small scripts that make the work faster. Put them in the root directory:

<table>
    <thead>
        <tr>
            <td>Shortcut</td>
            <td>Alternative to</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
```sh
$ /johnnysapps/moveDev.sh
```
            </td>
            <td>
```sh
$ git tag -d dev
$ git tag dev
$ git push --tags
```
            </td>
        </tr>
        <tr>
            <td>
```sh
$ /johnnysapps/Master.sh
```
            </td>
            <td>
```sh
$ git checkout master
```
            </td>
        </tr>
        <tr>
            <td>
```sh
$ /johnnysapps/checkoutMain.sh
```
            </td>
            <td>
```sh
$ git checkout master
$ git checkout main.js
```
            </td>
        </tr>
        <tr>
            <td>
```sh
$ /johnnysapps/gitCommit.sh "foo"
```
            </td>
            <td>
```sh
$ git commit -m "foo"
$ git push
```
            </td>
        </tr>
        <tr>
            <td>
```sh
$ /johnnysapps/update.sh
```
            </td>
            <td>
```sh
$ sudo apt-get update
$ sudo apt-get dist-upgrade
```
            </td>
        </tr>
    </tbody>
</table>

## Applications

### Qt

```sh
$ curl https://raw.github.com/IonicaBizau/configs/master/utils/qt.sh | sh
```

### Compile VIM

```sh
$ curl https://raw.github.com/IonicaBizau/configs/master/utils/get-vim.sh | sh
```


### Node and Mongo

```sh
$ curl https://raw.github.com/IonicaBizau/configs/master/utils/install-node-and-mongo.sh | sh
```

For Node only:

```sh
$ curl https://raw.github.com/IonicaBizau/configs/master/utils/install-node.sh | sh
```


### Banish404

```sh
$ curl https://raw.github.com/IonicaBizau/configs/master/utils/install-banish404.sh | sh
```
