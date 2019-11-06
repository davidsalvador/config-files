set nocompatible              " be iMproved, required
filetype off                  " required

" General Options - Extracted from https://github.com/pachulo/dotfiles/blob/master/vimrc
set encoding=utf-8                                  " Handle Unicode files
set autoindent                                      " Turn on auto indenting
set showmode                                        "
set showcmd                                         " Display commands as they are typed
set hidden                                          " Allow opening new buffer when current one is unsaved
set visualbell                                      " Flash display instead of beeping
set ttyfast                                         " Draw screen quickly
set ruler                                           " Always show cursor position
set backspace=indent,eol,start                      " Backspace over anything in insert mode
set number                                          " Display line numbers
set norelativenumber                                "
set laststatus=2                                    " Always show status line
set history=1000                                    " Number of old commands to remember
set list                                            "
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮  " Characters for whitespace
set shell=/bin/bash\ --login                        "
set matchtime=3                                     "
let &showbreak = '↪ '                               " Character used to
set splitbelow                                      "
set splitright                                      "
set fillchars=diff:⣿,vert:│                         " Characters for filling
set autowrite                                       "
set shiftround                                      "
set title                                           " Vim sets window title
set linebreak                                       " When line is wrapped,
"set colorcolumn=+1                                  " Vertical ruler
set modelines=5                                     "
set synmaxcol=800                                   " Don't try to highlight lines longer than 800 characters.
set number relativenumber

set smartcase
set incsearch

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'


" Plugins config

" Solarized {{{
syntax enable
set t_Co=256
let g:solarized_termcolors=256
set background=dark
"set background=light
colorscheme solarized
" }}}

" Disable folding in Markdown
let g:vim_markdown_folding_disabled = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
