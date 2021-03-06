# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# Change the TERM environment variable (to get 256 colors) and make Vim
# connecting to X Server even if running in a terminal emulator (to get
# dynamic update of syntax highlight and Object Browser):
if [ "x$DISPLAY" != "x" ]
then
    if [ "screen" = "$TERM" ]
    then
        export TERM=screen-256color
    else
        export TERM=xterm-256color
    fi
    alias vim='vim --servername VIM'
    if [ "x$TERM" == "xxterm" ] || [ "x$TERM" == "xxterm-256color" ]
    then
        function tvim(){ tmux -2 new-session "TERM=screen-256color vim --servername VIM $@" ; }
    else function tvim(){ tmux new-session "vim --servername VIM $@" ; }
    fi
else
    if [ "x$TERM" == "xxterm" ] || [ "x$TERM" == "xxterm-256color" ]
    then
        function tvim(){ tmux -2 new-session "TERM=screen-256color vim $@" ; }
    else
        function tvim(){ tmux new-session "vim $@" ; }
    fi
fi
