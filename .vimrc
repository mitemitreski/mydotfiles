" this enables sytax highight in prog files
syntax on

" it enables VIM only syntax not VI
set nocompatible

" A tab produces 2-space indent
set softtabstop=2
set shiftwidth=2
set expandtab

"enable auto indnt
:filetype indent on



" enables filetype detection
filetype on

" enables Hightlinght trailing whitespace and lines +80
highlight LongLine ctermbg=DarkYellow guibg=DarkYellow
highlight WhitespaceEOL ctermbg=DarkYellow guibg=DarkYellow

" if v:version >=702
"   " lines longer then 80 cols
"   au BufWinEnter * let w:m0=matchadd('LongLine','\%>80v.\+',-1)
"   au 
