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

" Interface
set guioptions-=m                     " remove menu bar
set guioptions-=T                     " remove toolbar
set guioptions-=r                     " remove right-hand scroll bar

" Wrapping
set nowrap                            " Turn off wrapping

" PLUGINS
filetype plugin indent on             " Allow filetype based indenting

" Pathogen
call pathogen#infect()                " Turn on pathogen

" NERDTree
map t :NERDTreeToggle<CR>
