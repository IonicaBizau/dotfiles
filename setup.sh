SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")

ln -s $BASEDIR/blah-templates $HOME/.blah-templates

linkUser () {
    rm $HOME/$1
    echo "Linking ~/Docs/dotfiles/$1 to $HOME/$1"
    ln -s "$HOME/Docs/dotfiles/user/$1" "$HOME/$1"
}

linkUser .vimrc
linkUser .babelrc
linkUser .bashrc
linkUser .bible-config.json
linkUser .gitconfig
linkUser .jshintrc
linkUser .npmrc
linkUser .packy.js
linkUser .tmux.conf
