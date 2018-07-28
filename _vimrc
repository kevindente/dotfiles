" don't try to play nice with vi
set nocompatible

set background=light

set grepprg=ag\ --nogroup\ --column
"EasyGrep options
let g:EasyGrepRecursive = 1
let g:EasyGrepCommand = 1

" vundle setup
 filetype off
 if has('win32')
    set rtp+=$HOME/.vim/bundle/Vundle.vim/
 else
    set rtp+=$HOME/.vim/bundle/Vundle.vim/
 endif

let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/usr/local/bin/jsctags'
\ }


"Vundle packages
call vundle#begin()

" let Vundle manage Vundle
 " required! 
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
" Plugin 'msanders/snipmate.vim'

" Needed for garbas snipmate
Plugin 'MarcWeber/vim-addon-mw-utils' 
Plugin 'tomtom/tlib_vim' 
Plugin 'snipmate-snippets'

Plugin 'garbas/vim-snipmate'

Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'scrooloose/nerdtree'
Plugin 'wavded/vim-stylus'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'vim-scripts/tComment'
Plugin 'vim-scripts/L9'
" Plugin 'vim-scripts/FuzzyFinder'
Plugin 'kien/ctrlp.vim'
" Plugin 'JazzCore/ctrlp-cmatcher'
" Plugin 'walm/jshint.vim'
Plugin 'vim-scripts/ZoomWin'
Plugin 'sickill/vim-pasta'
Plugin 'tpope/vim-surround'
Plugin 'bkad/CamelCaseMotion'
Plugin 'vim-scripts/EasyGrep'
" Plugin 'int3/vim-taglist-plus'
Plugin 'majutsushi/tagbar'
Plugin 'CSSMinister' 
Plugin 'scrooloose/syntastic' 
" Plugin "mileszs/ack.vim"
Plugin 'rking/ag.vim'
" Plugin 'ternjs/tern_for_vim'
Plugin 'vim-scripts/mru.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Raimondi/delimitMate'
Plugin '29decibel/vim-stringify'
Plugin 'vim-scripts/PreserveNoEOL'
Plugin 'tpope/vim-repeat'
Plugin 'mxw/vim-jsx'
Plugin 'ervandew/supertab'

call vundle#end() 

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



"indent settings
set shiftwidth=2
set softtabstop=2
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

let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Use git in CtrlP for listing files in repo dirs, falling back to Ag. Lightning fast and respects .gitignore
" let g:ctrlp_user_command = {
"     \ 'types': {
"       \ 1: ['.git', 'cd %s && git ls-files'],
"       \ 2: ['.hg', 'hg --cwd %s locate -I .'],
"       \ },
"     \ 'fallback': 'ag %s -l --nocolor -g ""'
"     \ }


" external search is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0


" use the c matcher plugin
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:100'
let g:ctrlp_custom_ignore = 'node_modules\|.git'
let g:ctrlp_switch_buffer = 1
let g:ctrlp_max_files = 20000
let g:ctrlp_max_depth = 100
" let g:ctrlp_max_height = 30


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
let g:ag_prg="ag -i -Q --column"


" linting
let g:syntastic_javascript_checkers = ['eslint']

autocmd FileType html :PreserveNoEOL

