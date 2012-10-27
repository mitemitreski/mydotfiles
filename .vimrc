" this enables sytax highight in prog files
syntax on
syntax enable
set background=dark
colorscheme morning

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
   

" filetyle indention   
filetype indent on

" enables Hightlinght trailing whitespace and lines +80
highlight LongLine ctermbg=DarkYellow guibg=DarkYellow
highlight WhitespaceEOL ctermbg=DarkYellow guibg=DarkYellow

" if v:version >=702
"   " lines longer then 80 cols
"   au BufWinEnter * let w:m0=matchadd('LongLine','\%>80v.\+',-1)
"   au

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


