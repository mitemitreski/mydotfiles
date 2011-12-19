#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# my own commands
alias ls='ls --color=auto'
alias ll='ls -alF ---color=auto'
PS1='[\u@\h \W]\$ '



export FORGE_HOME=/opt/forge/forge-distribution-1.0.0-SNAPSHOT
export PATH=$PATH:$FORGE_HOME/bin
export XAUTHORITY=/home/mite/.Xauthority
