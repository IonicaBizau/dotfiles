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

<table>
    <thead>
        <tr>
            <td>Application</td>
            <td>Script</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Qt</td>
            <td>
<pre>
            curl https://raw.github.com/IonicaBizau/dotfiles/master/apps/qt.sh | sh
</pre>
        </td>
        </tr>
        <tr>
            <td>Compiles VIM</td>
            <td>
<pre>
            curl https://raw.github.com/IonicaBizau/dotfiles/master/apps/get-vim.sh | sh
</pre>
            </td>
        </tr>
        <tr>
            <td>Node & Mongo</td>
            <td>
<pre>
curl https://raw.github.com/IonicaBizau/dotfiles/master/apps/node-and-mongo.sh | sh</td>
</pre>
        </tr>
        <tr>
            <td>Node</td>
            <td>
<pre>
curl https://raw.github.com/IonicaBizau/dotfiles/master/apps/node.sh | sh
</pre>
            </td>
        </tr>
        <tr>
            <td>Banish404</td>
            <td>
<pre>
curl https://raw.github.com/IonicaBizau/dotfiles/master/apps/banish404.sh | sh
</pre>
            </td>
        </tr>
    </tbody>
</table>

## License
See the [LICENSE](./LICENSE) file.
