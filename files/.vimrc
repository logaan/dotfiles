" Syntax highlighting
set t_Co=256                           " terminal supports 256 colours
syntax on                              " enable syntax highlighting

" Indentation
set expandtab                          " use spaces instead of tabs
set softtabstop=2                      " tab by two spaces
set shiftwidth=2                       " (auto)indent two spaces
set autoindent

" Search
set incsearch                          " search incrimentally
set hlsearch                           " highlight search results
map <leader><space> :noh<CR>         " use \space to hide search results
set ignorecase

" Interface
set guioptions-=m                     " remove menu bar
set guioptions-=T                     " remove toolbar
set guioptions-=r                     " remove right-hand scroll bar
set showcmd

" Wrapping
set nowrap                            " Turn off wrapping

" Use the damn hjkl keys
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>

" Git
command Blame :!git blame %

" PLUGINS
filetype plugin indent on             " Allow filetype based indenting

" Pathogen
call pathogen#infect()                " Turn on pathogen

" NERDTree
map t :NERDTreeToggle<CR>
map T :NERDTreeFind<CR>

" ConqueTerm
map <leader>c :ConqueTermVSplit
let g:ConqueTerm_ReadUnfocused = 1    " Allow output without focus
let g:ConqueTerm_InsertOnEnter = 1    " Jump into insert mode
let g:ConqueTerm_CWInsert = 1         " Jump from insert mode
let g:ConqueTerm_SendVisKey = '<leader>r'
map <leader>s v%\r<CR>            " Execute the current expression
