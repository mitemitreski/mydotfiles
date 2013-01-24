source ~/.vim/spacehi.vim

SpaceHi

" this enables sytax highight in prog files
set t_Co=256    " 256 Colors
syntax on
syntax enable
set background=dark
colorscheme morning

" it enables VIM only syntax not VI
set nocompatible

" A tab produces 2-space indent
set smartindent
set ts=2
set softtabstop=2
set shiftwidth=2
set expandtab

" remove tailling withipspace on i
autocmd FileType html,js,c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

" space highligt
autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost,Syntax * SpaceHi
autocmd FileType help     NoSpaceHi
autocmd FileType diff     NoSpaceHi
autocmd FileType man      NoSpaceHi
autocmd FileType scratchy NoSpaceHi
au FileType help NoSpaceHi

" wrap after 120 char
set tw=120
set wrap

" braces
set showmatch

" enables filetype detection
filetype on
   

" filetyle indention   
filetype indent on

" UTF-8 ftw
set enc=utf-8
set fenc=utf-8
set termencoding=utf08

" ================ Searching =========================
set ignorecase                      " Ignore case when searching
set smartcase                       " Don't ignore case if search contains upper-case characters
set gdefault                        " Substitude command (:s) always does global search
set incsearch                       " Find the next match as we type the search
set hlsearch                        " Highlight searches by default


