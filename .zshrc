# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=/Users/mcooganj/.rvm/gems/ruby-1.9.3-p194/bin:/Users/mcooganj/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/mcooganj/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/mcooganj/.rvm/bin:/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/bin:/usr/X11/bin:/usr/texbin

# set path stuff to get python etc working
if [ $USER = 'mcooganj' ]; then
    PATH=/usr/local/share/python:$PATH
    export PATH
fi

# may not need the first of these functions
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
