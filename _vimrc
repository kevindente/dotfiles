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

let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/usr/local/bin/jsctags'
\ }


"Vundle packages

" let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
" Bundle 'msanders/snipmate.vim'

" Needed for garbas snipmate
Bundle 'MarcWeber/vim-addon-mw-utils' 
Bundle 'tomtom/tlib_vim' 
Bundle 'snipmate-snippets'

Bundle 'garbas/vim-snipmate'

Bundle 'pangloss/vim-javascript'
Bundle 'digitaltoad/vim-jade'
Bundle 'scrooloose/nerdtree'
Bundle 'wavded/vim-stylus'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'vim-scripts/tComment'
Bundle 'vim-scripts/L9'
" Bundle 'vim-scripts/FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'walm/jshint.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'sickill/vim-pasta'
Bundle 'tpope/vim-surround'
Bundle 'bkad/CamelCaseMotion'
Bundle 'vim-scripts/EasyGrep'
" Bundle 'int3/vim-taglist-plus'
Bundle 'majutsushi/tagbar'
Bundle "CSSMinister" 
Bundle "scrooloose/syntastic" 
" Bundle "mileszs/ack.vim"
Bundle "rking/ag.vim"
Bundle "marijnh/tern_for_vim"
Bundle "vim-scripts/mru.vim"
Bundle "terryma/vim-multiple-cursors"
Bundle "Raimondi/delimitMate"

" Bundle "bling/vim-airline"

if has('win32')
    source $VIMRUNTIME/mswin.vim
endif

"store lots of :cmdline history
set history=1000

let mapleader = ","

filetype plugin indent on

" show line numbers
set number

"search options
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set ruler
set nowrap
set ignorecase  "case insensitive search

set grepprg=ag\ --nogroup\ --column

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0

"indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
	
"split settings
set splitright
set splitbelow

"Paste settings
set clipboard=unnamed  "yank/paste to windows clipboard by default

"turn on syntax highlighting
syntax on

" set wildignore+=*/node_modules/*

let g:ctrlp_custom_ignore = 'node_modules\|.git'
let g:ctrlp_switch_buffer = 1
let g:ctrlp_max_files = 20000
let g:ctrlp_max_depth = 100
let g:ctrlp_max_height = 30


"EasyGrep options
let g:EasyGrepRecursive = 1
let g:EasyGrepCommand = 1

"NERDTree keybindings
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
let NERDTreeChDirMode = 2

if has("win32") || has("win64")
  set backupdir=$TMP
  set directory=$TMP
else
  set backupdir=/tmp
  set directory=/tmp
end

if has("gui_macvim")
  inoremap <D-s> <ESC>:w<CR>i  "support cmd-s save in insertmode
  nnoremap <Leader>p :!open % <CR><CR>
  " nnoremap <Leader>d :maca openFileBrowser:<CR>
endif

nnoremap <Leader>h :JSHint<CR>

" inoremap <C-P> <ESC>:<C-U>CtrlP<CR>

nnoremap 0 ^ 
nnoremap ^ 0 
set autoread
let g:agprg="ag -i -Q --column"
