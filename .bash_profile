# mj's .bash_profile

# refreshing - required to make changes take effect

# 1/ $ source ~/.bash_profile
# 2/ $ . ~/.bash_profile 

# alias' ...
alias l='ls -lah'
alias h='cd ~/'
alias rwd='cd /Users/mcooganj/R/wd/'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/usr/local/Cellar/python/2.7.3/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
