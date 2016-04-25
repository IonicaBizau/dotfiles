
```
                      .___      __    _____.__.__
                    __| _/_____/  |__/ ____\__|  |   ____   ______
                   / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/
                  / /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
                  \____ |\____/|__|  |__|  |__|____/\___  >____  >
                       \/                               \/     \/

            This repository contains personal dotfiles of Ionică Bizău.
```

# dotfiles [![PayPal](https://img.shields.io/badge/%24-paypal-f39c12.svg)][paypal-donations] [![Version](https://img.shields.io/npm/v/ionicabizau-dotfiles.svg)](https://www.npmjs.com/package/ionicabizau-dotfiles) [![Downloads](https://img.shields.io/npm/dt/ionicabizau-dotfiles.svg)](https://www.npmjs.com/package/ionicabizau-dotfiles) [![Get help on Codementor](https://cdn.codementor.io/badges/get_help_github.svg)](https://www.codementor.io/johnnyb?utm_source=github&utm_medium=button&utm_term=johnnyb&utm_campaign=github)

```sh
$ wget -qO- http://goo.gl/3owX4S | sh
# or
$ curl -L http://goo.gl/3owX4S | sh
```
## NPM Config

Do not install Node.JS packages as root (never) but with the current user.

```sh
$ echo prefix = ~/.node >> ~/.npmrc
```

Then open `~/.bashrc` (Linux) or `~/.bash_profile` (Mac) and add:

```sh
export PATH=$HOME/.node/bin:$PATH
```

Finally, run the following command to update the environment variables.

```sh
$ source ~/.bashrc
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

## :yum: How to contribute
Have an idea? Found a bug? See [how to contribute][contributing].


## :scroll: License

[MIT][license] © [Ionică Bizău][website]

[paypal-donations]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=RVXDDLKKLQRJW
[donate-now]: http://i.imgur.com/6cMbHOC.png

[license]: http://showalicense.com/?fullname=Ionic%C4%83%20Biz%C4%83u%20%3Cbizauionica%40gmail.com%3E%20(http%3A%2F%2Fionicabizau.net)&year=2013#license-mit
[website]: http://ionicabizau.net
[contributing]: /CONTRIBUTING.md
[docs]: /DOCUMENTATION.md
