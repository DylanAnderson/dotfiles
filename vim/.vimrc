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
