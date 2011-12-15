#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# my own commands
alias ls='ls --color=auto'
alias ll='ls -alF ---color=auto'
PS1='[\u@\h \W]\$ '


export XAUTHORITY=/home/mite/.Xauthority
