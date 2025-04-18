# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# enable tmux
# if [[ ! $TERM =~ screen ]]; then
#     exec tmux
# fi
export TERM=xterm-256color

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# ASCII Magic
youtube () {
    DISPLAY= mplayer --quiet -vo caca "https://www.youtube.com/watch?v=$1"
}

ghclone () {
    git clone git@github.com:$GITHUB_USERNAME/$1.git
}

bghclone () {
    git clone git@github.com:Bloggify/$1.git
}

xp () {
    xclip -selection clipboard -o
}

xcp () {
    xclip -selection clipboard
}

# Git
export GIT_AUTHOR_NAME="Ionică Bizău"
export GIT_AUTHOR_EMAIL=bizauionica@gmail.com
export GITHUB_USERNAME='IonicaBizau'

# Add Node path to $PATH
export PATH=$HOME/.node/bin:$PATH

#export NVM_DIR="/home/ionicabizau/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#
#alias ic="git add . -A; git commit -m 'Initial commit.'"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

create-hdd-dirs () {
    mkdir _adventist
    mkdir _archived
    mkdir _data
    mkdir _design
    mkdir _final_music
    mkdir _final_videos
    mkdir _historical
    mkdir _music
    mkdir _music_resources
    mkdir _photos
    mkdir _programming
    mkdir _research
    mkdir _to_delete
    mkdir _video_sessions
    mkdir _voice_memos
}

source ~/.brokerbin-credentials

austrialian-news-audio () {
    austrialian-news | say --progress
}

austrialian-news () {
    curl -X GET "https://newsapi.org/v2/top-headlines?country=au&apiKey=595b64bf88b345cd88cef40dd0fbf430" | jsonlint | grep -e title
}

export PATH=~/.npm-global/bin:$PATH

star-wars () {
    telnet towel.blinkenlights.nl
}


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

3abn-radio () {
    /Applications/VLC.app/Contents/MacOS/VLC --intf dummy 'http://war.str3am.com:7180/MC01'
}

md-to-pdf () {
    pandoc -f markdown-implicit_figures+hard_line_breaks -t pdf $1 > $2
}

tex-to-pdf () {
    pandoc $1 -o $2
}

md-to-pdf-less-margins () {
    pandoc -f markdown-implicit_figures+hard_line_breaks -t pdf $1 > $2
}

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/ionicabizau/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

# Android development
# https://reactnative.dev/docs/set-up-your-environment?os=macos&platform=android
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=/Users/ionicabizau/Library/Android/sdk
