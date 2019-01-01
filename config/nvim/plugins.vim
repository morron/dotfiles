set runtimepath^=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'iamcco/markdown-preview.vim'
NeoBundle 'kopischke/vim-stay'
"NeoBundle 'janko-m/vim-test'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'duggiefresh/vim-easydir'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'Shougo/deoplete.nvim'

" incrsearch
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'haya14busa/incsearch-easymotion.vim'
NeoBundle 'haya14busa/incsearch-fuzzy.vim'

" Snippets
NeoBundle 'honza/vim-snippets'
"NeoBundle 'Shougo/deoplete.nvim'
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

" RSpec
NeoBundle 'thoughtbot/vim-rspec'

" Formatter
NeoBundle 'Chiel92/vim-autoformat'

" Vim ident guides
NeoBundle 'nathanaelkane/vim-indent-guides'

" Xkb switch
"NeoBundle 'lyokha/vim-xkbswitch'

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
"NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'mileszs/ack.vim'
"
"" NERDTree file browser
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'jistr/vim-nerdtree-tabs'
"
"" NERDCommenter
NeoBundle 'scrooloose/nerdcommenter'
"
"" Editorconfig
NeoBundle 'editorconfig/editorconfig-vim'
"
"" Syntax analyze ( so slow )
" NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-syntastic/syntastic'
"
"" HTML
NeoBundle 'rstacruz/sparkup'
NeoBundle 'mattn/emmet-vim'
"
"" Languages support
"
"" Ruby
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'ervandew/supertab'
NeoBundle 'ngmy/vim-rubocop'

"" Go
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

NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'tpope/vim-surround'
NeoBundle 'chase/vim-ansible-yaml'

NeoBundle 'sukima/xmledit'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
