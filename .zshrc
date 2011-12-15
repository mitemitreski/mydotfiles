command cowsay -f small $(fortune -a )


autoload -U compinit promptinit
compinit
promptinit


## exports

export SVN_EDITOR="/usr/bin/vim"

# This will set the default prompt to the walters theme
prompt walters


alias ls='ls -hF --color=auto'
alias ll='ls -alhF --color=auto'
alias mkdir='mkdir -p -v'

# Auto Open aliases

alias -s png=feh
alias -s jpg=feh
alias -s gif=feh
alias -s torrent=aria2c -S

