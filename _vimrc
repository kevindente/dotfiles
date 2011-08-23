" don't try to play nice with vi
set nocompatible

if has('win32')
    source $VIMRUNTIME/mswin.vim
endif

"store lots of :cmdline history
set history=1000

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

"search options
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default


set nowrap

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
	
"Paste settings
set clipboard=unnamed  "yank/paste to windows clipboard by default
