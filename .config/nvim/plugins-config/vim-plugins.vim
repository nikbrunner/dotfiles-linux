filetype plugin on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  AUTOcmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    " themes
    Plug 'arcticicestudio/nord-vim'
    Plug 'morhetz/gruvbox'
    Plug 'mkitt/tabline.vim'
    " Plug 'ryanoasis/vim-devicons'
    " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " appearence
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " general workflow 
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-obsession'
    Plug 'junegunn/goyo.vim'
    Plug 'chaoren/vim-wordmotion'
    Plug 'djoshea/vim-autoread'
    Plug 'machakann/vim-highlightedyank'
    Plug 'godlygeek/tabular'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'Asheq/close-buffers.vim'
    Plug 'vifm/vifm.vim'
    Plug 'gcmt/taboo.vim'
    Plug 'norcalli/nvim-colorizer.lua'
 
    " file management
    Plug '~/.fzf'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'preservim/nerdtree'
    Plug 'git@github.com:mbbill/undotree.git'
    Plug 'rbgrouleff/bclose.vim'

    " Language server
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'idanarye/vim-merginal'
    Plug 'junegunn/gv.vim'

    " window managment
    Plug 'christoomey/vim-tmux-navigator'

    " language
    Plug 'pangloss/vim-javascript'    " JavaScript support
    Plug 'leafgarland/typescript-vim'
    Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

    " formater
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }

call plug#end()
