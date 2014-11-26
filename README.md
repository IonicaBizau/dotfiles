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
$ wget -qO- http://goo.gl/3owX4S | sh
# or
$ curl -L http://goo.gl/3owX4S | sh
```

## File Structure

```sh
$ tree -a -I '.git'
.
├── apps
│   ├── banish404.sh
│   ├── get-vim.sh
│   ├── java.sh
│   ├── node-and-mongo.sh
│   ├── node.sh
│   ├── openjdk.sh
│   └── qt.sh
├── .gitignore
├── installer.sh
├── johnnysapps
│   ├── gitCommit.sh
│   ├── Master.sh
│   ├── moveDev.sh
│   └── update.sh
├── LICENSE
├── README.md
├── .README.md.swp
├── tmux
│   └── .tmux.conf
├── user
│   ├── .bashrc
│   └── .gitconfig
└── vim
    └── .vimrc

    5 directories, 20 files
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

A list of scripts that will install some applications that I often use.

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
curl https://raw.githubusercontent.com/IonicaBizau/dotfiles/master/apps/qt.sh | sh
</pre>
        </td>
        </tr>
        <tr>
            <td>Compiles VIM</td>
            <td>
<pre>
curl https://raw.githubusercontent.com/IonicaBizau/dotfiles/master/apps/get-vim.sh | sh
</pre>
            </td>
        </tr>
        <tr>
            <td>Node & Mongo</td>
            <td>
<pre>
curl https://raw.githubusercontent.com/IonicaBizau/dotfiles/master/apps/node-and-mongo.sh | sh</td>
</pre>
        </tr>
        <tr>
            <td>Node</td>
            <td>
<pre>
curl https://raw.githubusercontent.com/IonicaBizau/dotfiles/master/apps/node.sh | sh
</pre>
            </td>
        </tr>
        <tr>
            <td>Banish404</td>
            <td>
<pre>
curl https://raw.githubusercontent.com/IonicaBizau/dotfiles/master/apps/banish404.sh | sh
</pre>
            </td>
        </tr>
    </tbody>
</table>

## License
See the [LICENSE](./LICENSE) file.
