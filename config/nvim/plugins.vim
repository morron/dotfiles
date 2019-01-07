if &shell =~# 'fish$'
  set shell=sh
endif

set runtimepath^=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

"" BUNDLE
""
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kopischke/vim-stay'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'duggiefresh/vim-easydir'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'airblade/vim-rooter'
"NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'k0kubun/vim-open-github'
NeoBundle 'bogado/file-line'
NeoBundle 'Soares/fish.vim'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'sukima/xmledit'
NeoBundle 'hashivim/vim-terraform'
NeoBundle 'juliosueiras/vim-terraform-completion'

" Deoplete
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'fishbullet/deoplete-ruby'

" incrsearch
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'haya14busa/incsearch-easymotion.vim'
NeoBundle 'haya14busa/incsearch-fuzzy.vim'
"
" Snippets
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "garbas/vim-snipmate"
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'

" Style
NeoBundle 'sindresorhus/focus'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'ajmwagar/vim-dues'
NeoBundle 'trevordmiller/nova-vim'
NeoBundle 'andreypopp/vim-colors-plain'
NeoBundle 'kristijanhusak/vim-hybrid-material'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'kien/rainbow_parentheses.vim'

" Formatter
NeoBundle 'Chiel92/vim-autoformat'

" Vim ident guides
NeoBundle 'nathanaelkane/vim-indent-guides'

" Whitespaces
NeoBundle 'ntpeters/vim-better-whitespace'
"
"" Ctags
NeoBundle 'szw/vim-tags'
"
"" TMUX support
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'jgdavey/tslime.vim'
""NeoBundle 'edkolev/tmuxline.vim'
"
"" Search
NeoBundle 'junegunn/fzf'
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'mileszs/ack.vim'
"
"" NERDTree file browser
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
"
"" NERDCommenter
NeoBundle 'scrooloose/nerdcommenter'
"
"" Editorconfig
NeoBundle 'editorconfig/editorconfig-vim'
"
"" Syntax analyze ( so slow )
NeoBundle 'vim-syntastic/syntastic'
"
"" HTML
NeoBundle 'othree/html5.vim'

"
"" Languages support
"

"" Ruby
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'ngmy/vim-rubocop'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'ecomba/vim-ruby-refactoring'

"" Go
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'fatih/vim-go'

"" js
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'isRuslan/vim-es6'
NeoBundle 'posva/vim-vue'
NeoBundle 'mxw/vim-jsx'

" Coffee
NeoBundle 'kchmck/vim-coffee-script'

" Babel
NeoBundle 'jbgutierrez/vim-babel'
NeoBundle 'mattn/webapi-vim'

" SLIM
NeoBundle 'slim-template/vim-slim'

" Elixir
" NeoBundle 'elixir-lang/vim-elixir'
" NeoBundle 'awetzel/neovim-elixir'

" Fun
NeoBundle 'wakatime/vim-wakatime'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
