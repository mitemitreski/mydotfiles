export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

#-----------------------------
# Dircolors
#-----------------------------
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
export LS_COLORS

## options

autoload -U compinit promptinit
compinit
promptinit

##  setopts
setopt AUTO_CD # cd if no matching command
setopt AUTO_PARAM_SLASH # adds slash at end of tabbed dirs
setopt CHECK_JOBS # check bg jobs on exit
setopt CORRECT # corrects spelling
setopt CORRECT_ALL # corrects spelling
setopt EXTENDED_GLOB # globs #, ~ and ^
setopt EXTENDED_HISTORY # saves timestamps on history
setopt GLOB_DOTS # find dotfiles easier
setopt HASH_CMDS # save cmd location to skip PATH lookup
setopt HIST_EXPIRE_DUPS_FIRST # expire duped history first
setopt HIST_NO_STORE # don't save 'history' cmd in history
setopt INC_APPEND_HISTORY # append history as command are entered
setopt LIST_ROWS_FIRST # completion options left-to-right, top-to-bottom
setopt LIST_TYPES # show file types in list
setopt MARK_DIRS # adds slash to end of completed dirs
setopt NUMERIC_GLOB_SORT # sort numerically first, before alpha
setopt PROMPT_SUBST # sub values in prompt (though it seems to work anyway haha)
setopt RM_STAR_WAIT # pause before confirming rm *
setopt SHARE_HISTORY # share history between open shells




# vars used later on by Zsh
export EDITOR="vim"
export BROWSER=chromium
export FORGE_HOME="/project/jboss/forge-distribution-1.0.0.Beta5"
export PATH=$PATH:$FORGE_HOME/bin
export SVN_EDITOR="/usr/bin/vim"
## This will set the default prompt to the walters theme
prompt walters
## aliases
alias ls='ls -hF --color=auto'
alias ll='ls -altrhF --color=auto'
alias mkdir='mkdir -p -v'
alias firefox='firefox -ProfileManager'
alias scrot='scrot -d 3 -s ~/screenshots/%Y-%m-%d-%T-screenshot.png'

## Auto Open aliases
alias -s png=gpicview
alias -s jpg=gpicview
alias -s torrent='aria2c -S'
alias -s gif=gpicview
alias -s html=$BROWSER
alias -s org=$BROWSER
alias -s php=$BROWSER
alias -s com=$BROWSER
alias -s net=$BROWSER
alias -s java=$EDITOR
alias -s txt=$EDITOR
alias -s PKGBUILD=$EDITOR
alias -s pdf='evince'
alias -s avi='smplayer'
alias -s mp4='smplayer'
## autocomplete stuff


#alllow approximate
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# tab completion for PID :D
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# cd not select parent dir
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# useful for path editing — backward-delete-word, but with / as additional delimiter
backward-delete-to-slash () {
    local WORDCHARS=${WORDCHARS//\//}
      zle .backward-delete-word
    }
    zle -N backward-delete-to-slash

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

fortune -n 350  | cowsay -f $cow



# -- disable ^S/^Q flow control -------------------------------------------
if tty -s ; then
   stty -ixon
   stty -ixoff
fi

eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

