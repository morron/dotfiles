 "" Basics
 "
 syntax on
 set tags=.git/tags
 set noshowmode
 set nowrap
 set dictionary=/usr/share/dict/words
 set langmenu=en_US.UTF-8
 set encoding=utf-8
 set fileencoding=utf-8
 set bomb
 set binary
 set ttyfast
 set number
 set updatetime=50

 set clipboard=unnamed

 filetype plugin on
 filetype indent on

 let g:netrw_list_hide = '.git, .*\.swp, .DS_Store'

 set showmatch
 set hlsearch
 set incsearch
 set hidden
 set cursorline
 "set smartcase
 set ignorecase
 set timeoutlen=1000 ttimeoutlen=0
 set vb
 set ruler
 set scrolloff=2
 set laststatus=2
 set viewoptions=cursor,folds,slash,unix
 set tw=80
 set wildmode=longest,full
 set wildmenu
 set undofile
 set autoindent
 set undodir=~/tmp/vim/undo
 set completeopt+=longest
 if !isdirectory(expand(&undodir))
   call mkdir(expand(&undodir), "p")
 endif

 " fix delete
 set backspace=indent,eol,start

 set colorcolumn=110

 " show tabs as >---
 set listchars=tab:>•,trail:-
 set list

 " display title of current file in terminal title bar
 set title

 set expandtab
 set smarttab

 set shiftwidth=2
 set tabstop=2

 syntax on

 " Disable tmp files
 set nobackup
 set nowb
 set noswapfile

 set guicursor=
