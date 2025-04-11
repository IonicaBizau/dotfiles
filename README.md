<!-- Please do not edit this file. Edit the `blah` field in the `package.json` instead. If in doubt, open an issue. -->













```
                              .___      __    _____.__.__
                            __| _/_____/  |__/ ____\__|  |   ____   ______
                           / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/
                          / /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
                          \____ |\____/|__|  |__|  |__|____/\___  >____  >
                               \/                               \/     \/

                    This repository contains personal dotfiles of Ionică Bizău.
```







# dotfiles

 [![Support me on Patreon][badge_patreon]][patreon] [![Buy me a book][badge_amazon]][amazon] [![PayPal][badge_paypal_donate]][paypal-donations] [![Ask me anything](https://img.shields.io/badge/ask%20me-anything-1abc9c.svg)](https://github.com/IonicaBizau/ama) [![Version](https://img.shields.io/npm/v/ionicabizau-dotfiles.svg)](https://www.npmjs.com/package/ionicabizau-dotfiles) [![Downloads](https://img.shields.io/npm/dt/ionicabizau-dotfiles.svg)](https://www.npmjs.com/package/ionicabizau-dotfiles) [![Get help on Codementor](https://cdn.codementor.io/badges/get_help_github.svg)](https://www.codementor.io/@johnnyb?utm_source=github&utm_medium=button&utm_term=johnnyb&utm_campaign=github)

<a href="https://www.buymeacoffee.com/H96WwChMy" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/yellow_img.png" alt="Buy Me A Coffee"></a>



























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






















## :question: Get Help

There are few ways to get help:



 1. Please [post questions on Stack Overflow](https://stackoverflow.com/questions/ask). You can open issues with questions, as long you add a link to your Stack Overflow question.
 2. For bug reports and feature requests, open issues. :bug:
 3. For direct and quick help, you can [use Codementor](https://www.codementor.io/johnnyb). :rocket:














## :yum: How to contribute
Have an idea? Found a bug? See [how to contribute][contributing].


## :sparkling_heart: Support my projects
I open-source almost everything I can, and I try to reply to everyone needing help using these projects. Obviously,
this takes time. You can integrate and use these projects in your applications *for free*! You can even change the source code and redistribute (even resell it).

However, if you get some profit from this or just want to encourage me to continue creating stuff, there are few ways you can do it:


 - Starring and sharing the projects you like :rocket:
 - [![Buy me a book][badge_amazon]][amazon]—I love books! I will remember you after years if you buy me one. :grin: :book:
 - [![PayPal][badge_paypal]][paypal-donations]—You can make one-time donations via PayPal. I'll probably buy a ~~coffee~~ tea. :tea:
 - [![Support me on Patreon][badge_patreon]][patreon]—Set up a recurring monthly donation and you will get interesting news about what I'm doing (things that I don't share with everyone).
 - **Bitcoin**—You can send me bitcoins at this address (or scanning the code below): `1P9BRsmazNQcuyTxEqveUsnf5CERdq35V6`

    ![](https://i.imgur.com/z6OQI95.png)


Thanks! :heart:
























## :scroll: License

[MIT][license] © [Ionică Bizău][website]






[license]: /LICENSE
[website]: https://ionicabizau.net
[contributing]: /CONTRIBUTING.md
[docs]: /DOCUMENTATION.md
[badge_patreon]: https://ionicabizau.github.io/badges/patreon.svg
[badge_amazon]: https://ionicabizau.github.io/badges/amazon.svg
[badge_paypal]: https://ionicabizau.github.io/badges/paypal.svg
[badge_paypal_donate]: https://ionicabizau.github.io/badges/paypal_donate.svg
[patreon]: https://www.patreon.com/ionicabizau
[amazon]: http://amzn.eu/hRo9sIZ
[paypal-donations]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=RVXDDLKKLQRJW
