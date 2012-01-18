## awesome little cowsay



autoload -U compinit promptinit
compinit
promptinit
## exports
export FORGE_HOME="/project/jboss/forge-distribution-1.0.0.Beta5"
export PATH=$PATH:$FORGE_HOME/bin
export SVN_EDITOR="/usr/bin/vim"
## This will set the default prompt to the walters theme
prompt walters
## aliases
alias ls='ls -hF --color=auto'
alias ll='ls -alhF --color=auto'
alias mkdir='mkdir -p -v'
alias firefox='firefox -ProfileManager'
## Auto Open aliases
alias -s png=feh
alias -s jpg=feh
alias -s torrent='aria2c -S'
alias -s gif=feh
alias -s avi='smplayer'

## Random small cow with awesome quote
RANGE=4
number=$RANDOM
let "number %= $RANGE"
case $number in
    0)
        cow="small"
        ;;
    1)
        cow="tux"
        ;;
    2)
        cow="koala"
        ;;
    3)
        cow="moose"
        ;;
esac

fortune -s  | cowsay -f $cow
