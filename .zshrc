# History file configs
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt APPEND_HISTORY

# No beeping on errors
unsetopt beep

# Emacs mode keys
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/joshua/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

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
# export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

ZSH_CONFIG_DIR=$HOME/.config/zsh

# source all configs
source $ZSH_CONFIG_DIR/config.zsh

