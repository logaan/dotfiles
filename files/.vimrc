" Pathogen
call pathogen#infect()                " Turn on pathogen

set undofile

" Syntax highlighting
set t_Co=256                           " terminal supports 256 colours
syntax enable                          " enable syntax highlighting
set background=dark
colorscheme railscasts

" Running things
map <space> :w<CR>:!./%<CR>

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

" Git
command! Blame :!git blame %

" Make
map m :w<CR>:make!<CR>

" PLUGINS
filetype plugin indent on             " Allow filetype based indenting

" NERDTree
map t :NERDTreeToggle<CR>
map T :NERDTreeFind<CR>

" ConqueTerm
let g:ConqueTerm_SendVisKey = '<leader>r'

"Clojure
let g:vimclojure#ParenRainbowColorsDark = {
\ '1': 'ctermfg=blue      guifg=orange1',
\ '2': 'ctermfg=brown       guifg=yellow1',
\ '3': 'ctermfg=darkblue        guifg=greenyellow',
\ '4': 'ctermfg=darkgreen     guifg=green1',
\ '5': 'ctermfg=darkmagenta         guifg=springgreen1',
\ '6': 'ctermfg=darkred      guifg=cyan1',
\ '7': 'ctermfg=lightblue       guifg=slateblue1',
\ '8': 'ctermfg=lightgreen        guifg=magenta1',
\ '9': 'ctermfg=lightred     guifg=purple1'
\ }

let vimclojure#HighlightBuiltins   = 1
let vimclojure#DynamicHighlighting = 1
let vimclojure#ParenRainbow        = 1
let vimclojure#WantNailgun         = 1
let vimclojure#SplitPos            = "right"
let vimclojure#SplitSize           = 80
map K :call vimclojure#DocLookup(expand("<cword>"))<CR>

" Vim gist
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

map <leader>w :set textwidth=79<CR>

let g:ctrlp_extensions = ['tag']
map  :CtrlPMRUFiles<CR>
map  :CtrlPTag<CR>
map <leader>t :!ctags -R .<CR><CR>

