set nocompatible   " Disable vi-compatibility
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-git'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Lokaltog/powerline' , {'rtp':  'powerline/bindings/vim'}
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim.git'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplcache'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" tab zise
set tabstop=4
set autoindent
set nowrap
syntax on

" https://gist.github.com/baopham/1838072
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set termencoding=utf8
set guifont=Monaco\ for\ Powerline:h12
let g:Powerline_symbols='fancy'
set t_Co=256
"set noshowmode
set fillchars+=stl:\ ,stlnc:\

set number
set backspace=indent,eol,start

set term=xterm-256color
colorscheme codeschool
filetype plugin on
set clipboard=unnamed

" set pastetoggle=<F10>
" inoremap <C-v> <F10><C-r>+<F10>

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

colorscheme grb256
hi SignColumn ctermbg=Black
hi Pmenu ctermbg=DarkBlue

" Whitespaces
set list                " show special characters
set listchars=tab:▸\ ,trail:·,nbsp:·

"Invisible character colors
highlight NonText guibg=bg guifg=DarkGray ctermfg=8
highlight SpecialKey guibg=bg guifg=DarkGrey ctermfg=8

" Show NERDTree
nmap <leader>ne :NERDTree<cr>

set wildmode=longest,list,full
set wildmenu

" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_snippet_engine = "neosnippet"

source ~/env/vim/modules/netrw.vim

