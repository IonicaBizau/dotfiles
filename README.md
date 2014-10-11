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
<pre>
$ /johnnysapps/moveDev.sh
</pre>
            </td>
            <td>
<pre>
$ git tag -d dev
$ git tag dev
$ git push --tags
</pre>
            </td>
        </tr>
        <tr>
            <td>
<pre>
$ /johnnysapps/Master.sh
</pre>
            </td>
            <td>
<pre>
$ git checkout master
</pre>
            </td>
        </tr>
        <tr>
            <td>
<pre>
$ /johnnysapps/checkoutMain.sh
</pre>
            </td>
            <td>
<pre>
$ git checkout master
$ git checkout main.js
</pre>
            </td>
        </tr>
        <tr>
            <td>
<pre>
$ /johnnysapps/gitCommit.sh "foo"
</pre>
            </td>
            <td>
<pre>
$ git commit -m "foo"
$ git push
</pre>
            </td>
        </tr>
        <tr>
            <td>
<pre>
$ /johnnysapps/update.sh
</pre>
            </td>
            <td>
<pre>
$ sudo apt-get update
$ sudo apt-get dist-upgrade
</pre>
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

## License
See the [LICENSE](./LICENSE) file.
