" Pathogen
call pathogen#infect()                " Turn on pathogen

set undofile

" Syntax highlighting
set t_Co=256                           " terminal supports 256 colours
syntax enable                          " enable syntax highlighting
set background=dark
colorscheme railscasts

" Saving things
map  :w<CR>

" Highlight current word without moving cursor
map  *N

" Copy entire file to system clipboard
map <leader>y :%yank +<cr>

" Indentation
set expandtab                          " use spaces instead of tabs
set softtabstop=2                      " tab by two spaces
set shiftwidth=2                       " (auto)indent two spaces
set autoindent

" SEARCH
set incsearch                          " search incrimentally
set hlsearch                           " highlight search results
" use \space to hide search results
map <leader><space> :noh<CR>
" set ignorecase
set wildignore=*.class,tmp/*,public/system/*
set wildignore+=*/target/*

" Interface
set guioptions-=m                     " remove menu bar
set guioptions-=T                     " remove toolbar
set guioptions-=r                     " remove right-hand scroll bar
set showcmd

" Wrapping
set nowrap                            " Turn off wrapping

" Use the damn hjkl keys
map  <Up>    
map  <Down>  
map  <Left>  <Nop>
map  <Right> <Nop>

imap <Up>    <Nop>
imap <Down>  <Nop>
imap <Left>  <Nop>
imap <Right> <Nop>

" Fix the kj keys
map j gj
map k gk

" Whitespace removal
map <leader>s :silent! %s/\s\+$//<cr>

" Git
command! Blame :!git blame %

" Make
" map m :w<CR>:make!<CR>

" PLUGINS
filetype plugin indent on             " Allow filetype based indenting

" NERDTree
map <leader>t :NERDTreeToggle<CR>
map <leader>T :NERDTreeFind<CR>
let g:NERDTreeMapHelp = ''

" ConqueTerm
let g:ConqueTerm_SendVisKey    = '<leader>r'
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_CWInsert      = 1
let g:ConqueTerm_InsertOnEnter = 1

" Vim gist
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

map <leader>w :set textwidth=79<CR>

" CtrlP
let g:ctrlp_map = '<c-l>'
let g:ctrlp_extensions = ['tag']
map  :CtrlPMRUFiles<CR>
map  :CtrlPTag<CR>
let g:ctrlp_root_markers = ['Makefile']

" Navigating vimgrep results
map  :cn<CR>
map  :cp<CR>

map ,f :<C-U>call PareditWrap('(',')')<CR>a

" Paredit
let g:paredit_electric_return = 0

" APDM
map <leader>f yiw:e `./find.sh "`

