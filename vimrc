set nocompatible " makes it better

" Soft tabs 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Always display the status line
set laststatus=2

set history=1000
set undolevels=1000

" Bell stuff
set visualbell
set noerrorbells

" Enable mouse
set mouse=a

" highlight Syntax
set t_Co=256
set background=dark
syntax enable

" always auto indent
set autoindent
set copyindent

" Show Number
set number
set hlsearch
set showmatch
set backspace=indent,eol,start

" Search stuff
set ignorecase
set smartcase
set incsearch
set nowrap

" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

colorscheme solarized
