set nocompatable

set termguicolors
colorscheme cattpuccin_mocha

syntax on

" change cursor for insert mode
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"

set rnu
set nu

set encoding=utf-8

set wildmenu

set nowrap

set foldcolumn=1

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set ai
set si

set scrolloff=5

set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

set noruler
set laststatus=2
set noshowmode

set statusline=
" left side
set statusline+=%{toupper(mode()[0])}
set statusline+=\ (\ %F\ )
set statusline+=\ %M
" right side
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %l/%L
set statusline+=\ %{strftime(\"%H:%M\")}
