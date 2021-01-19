set nocompatible
filetype indent plugin on
syntax on

set hidden
set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase

set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
"set timeoutlen=1000 ttimeoutlen=0
"set notimeout ttimeout ttimeoutlen=200
set esckeys 

set shiftwidth=4
set softtabstop=4
set expandtab

map Y y$
nnoremap <C-L> :nohl<CR><C-L>

set clipboard=unnamedplus
colorscheme desert

set path=**
set wildmenu

set nobackup        "We have vcs, we don't need backups.
set nowritebackup   "We have vcs, we don't need backups.
set noswapfile      "They're just annoying. Who likes them?

com -nargs=1 -complete=file_in_path Fi tabe | find <args>
