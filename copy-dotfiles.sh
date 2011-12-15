#!/bin/bash
 
# Display All Hidden Dot Files In a Directory
# ls -a | egrep "^\." > backup_dotfiles.sh
 
DESTINATION="/project/mydotfiles"  # do not use a trailing slash (/)
 
# Colors
blue="\e[0;34m"
green="\e[1;32m"
red="\e[0;31m"
bold="\e[1;30m"
reset="\e[0m"
 
# file list (use trailing slash for directories)
FILES="
.bash_logout
.bash_profile
.bashrc
.config/awesome/
.conkyrc
.cvsroot
dwm/config.h
dwm/how-to.txt
.i3/
.fehbg
.fonts.conf
.forge/
.gtk-bookmarks
.gtkrc-2.0
.gtkrc-2.0.mine
.htoprc
.inputrc
.mplayer/
.stalonetrayrc
.vim/
.vimrc
.Xdefaults
.xinitrc
.xsession
.zshrc
copy-dotfiles.sh
"

for file in $FILES
do
   if [ -d $file ]; then
      mkdir -p $DESTINATION/$file
      cp -f $HOME/$file* $DESTINATION/$file
   elif [ -f $file ]; then
      cp -f $HOME/$file $DESTINATION
   else
      echo -e "$red:: $file is not a file/directory! $reset"
   fi     
done
 
echo -e "$green:: Done! $reset"
exit 0
