"Base vim configuration
set nocompatible
set autoindent
set history=1000
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set backspace=2
set mouse+=a

filetype plugin indent on
syntax on
set nu
set hlsearch
set t_Co=256
set encoding=utf-8
set laststatus=2

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/syntastic'
Plug 'ajh17/VimCompletesMe'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Plugin configurations

" Syntastic - dynamic syntax checking
" Recommended settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_signs = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_loc_list_height=2
