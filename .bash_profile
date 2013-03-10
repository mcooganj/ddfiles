# mj's .bash_profile

# refreshing - required to make changes take effect

# 1/ $ source ~/.bash_profile
# 2/ $ . ~/.bash_profile

export EDITOR=vi

# alias' ...
alias l='ls -lah'
alias h='cd ~/'
alias d='cd ~/data/'
alias rrd='cd /Users/mcooganj/R/'
alias rwd='cd /Users/mcooganj/R/wd/'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# export PATH=/usr/local/bin:$PATH
PATH=/usr/local/share/python:$PATH
export PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
