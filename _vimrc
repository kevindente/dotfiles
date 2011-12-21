" don't try to play nice with vi
set nocompatible

" vundle setup
filetype off
if has('win32')
   set rtp+=$HOME/vimfiles/bundle/vundle/
   call vundle#rc('$HOME/vimfiles/bundle/')
else
   set rtp+=$HOME/.vim/vimfiles/bundle/vundle/
   call vundle#rc('$HOME/.vim/vimfiles/bundle')
endif

"Vundle packages

" let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'digitaltoad/vim-jade'
Bundle 'scrooloose/nerdtree'
Bundle 'wavded/vim-stylus'
Bundle 'vim-scripts/Jasmine-snippets-for-snipMate'
Bundle 'xolox/vim-session'
Bundle 'vim-scripts/tComment'
Bundle 'vim-scripts/L9'
" Bundle 'vim-scripts/FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'walm/jshint.vim'
Bundle 'vim-scripts/ZoomWin'

if has('win32')
    source $VIMRUNTIME/mswin.vim
endif

"store lots of :cmdline history
set history=1000

filetype plugin indent on

"search options
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set ruler
set nowrap
set ignorecase  "case insensitive search

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
	
"Paste settings
set clipboard=unnamed  "yank/paste to windows clipboard by default

"turn on syntax highlighting
syntax on

set wildignore+=*/node_modules/*

if has("win32") || has("win64")
  set backupdir=$TMP
  set directory=$TMP
else
  set backupdir=/tmp
  set directory=/tmp
end
