 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 set runtimepath+=~/.vim/bundle/neobundle.vim/

 call neobundle#begin(expand('~/.vim/bundle/'))

  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'scrooloose/syntastic'

  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'airblade/vim-gitgutter'
  NeoBundle 'JamshedVesuna/vim-markdown-preview'
  NeoBundle 'kopischke/vim-stay'

  " RSpec
  NeoBundle 'thoughtbot/vim-rspec'

  " Formatter
  NeoBundle 'Chiel92/vim-autoformat'

  " Vim ident guides
  NeoBundle 'nathanaelkane/vim-indent-guides'

  " Xkb switch
  NeoBundle 'lyokha/vim-xkbswitch'

  " Hybrid theme
  " NeoBundle 'w0ng/vim-hybrid'
  " NeoBundle 'kristijanhusak/vim-hybrid-material'

  " Whitespaces
  NeoBundle 'ntpeters/vim-better-whitespace'

  " VIM lightline
  NeoBundle 'itchyny/lightline.vim'

  " Ctags
  NeoBundle 'szw/vim-tags'

  " TMUX support
  NeoBundle 'jpalardy/vim-slime'
  NeoBundle 'jgdavey/tslime.vim'
  NeoBundle 'edkolev/tmuxline.vim'

  " Search
  NeoBundle 'junegunn/fzf'
  NeoBundle 'junegunn/fzf.vim'

  " NERDTree file browser
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'Xuyuanp/nerdtree-git-plugin'
  NeoBundle 'jistr/vim-nerdtree-tabs'

  " NERDCommenter
  NeoBundle 'scrooloose/nerdcommenter'

  " Editorconfig
  NeoBundle 'editorconfig/editorconfig-vim'

  " Syntax analyze ( so slow )
  NeoBundle 'scrooloose/syntastic'

  " Languages support
  " Scala
  NeoBundle 'derekwyatt/vim-scala'

  " HOCON
  NeoBundle 'GEverding/vim-hocon'

  " Ruby
  NeoBundle 'vim-ruby/vim-ruby'
  NeoBundle 'tpope/vim-rails'

  " Crystal
  NeoBundle 'rhysd/vim-crystal'

  " Go
  NeoBundle 'fatih/vim-go'

  " js
  NeoBundle 'pangloss/vim-javascript'
  NeoBundle 'isRuslan/vim-es6'

  " Coffee
  NeoBundle 'kchmck/vim-coffee-script'

  " Babel
  NeoBundle 'jbgutierrez/vim-babel'
  NeoBundle 'mattn/webapi-vim'

  " Mustache, handlebars
  NeoBundle 'mustache/vim-mustache-handlebars'

  " SLIM
  NeoBundle 'onemanstartup/vim-slim'

  " Elixir
  NeoBundle 'elixir-lang/vim-elixir'
  NeoBundle 'awetzel/neovim-elixir'

  " Jade
  NeoBundle 'digitaltoad/vim-jade'

  " Haskell
  NeoBundle 'neovimhaskell/haskell-vim'

  " Stylus
  NeoBundle 'wavded/vim-stylus'

  " Fun
  NeoBundle 'wakatime/vim-wakatime'

  NeoBundle 'easymotion/vim-easymotion'
  NeoBundle 'Bugagazavr/dasht.vim'
  NeoBundle 'anyakichi/vim-surround'

 call neobundle#end()

 filetype plugin indent on

 NeoBundleCheck

 set term=screen-256color

 set background=dark
 colorscheme Tomorrow-Night
 syntax on

 " set up some custom colors
 highlight clear SignColumn
 highlight VertSplit    ctermbg=236
 highlight ColorColumn  ctermbg=237
 highlight LineNr       ctermbg=236 ctermfg=240
 highlight CursorLineNr ctermbg=236 ctermfg=240
 highlight CursorLine   ctermbg=236
 highlight StatusLineNC ctermbg=238 ctermfg=0
 highlight StatusLine   ctermbg=240 ctermfg=12
 highlight IncSearch    ctermbg=3   ctermfg=1
 highlight Search       ctermbg=1   ctermfg=3
 highlight Visual       ctermbg=3   ctermfg=0
 highlight Pmenu        ctermbg=240 ctermfg=12
 highlight PmenuSel     ctermbg=3   ctermfg=1
 highlight SpellBad     ctermbg=0   ctermfg=1

 set tags=.git/tags
 set dictionary=/usr/share/dict/words
 set langmenu=en_US.UTF-8
 set encoding=utf-8
 set fileencoding=utf-8
 set number

 set clipboard=unnamed

 set showmatch
 set hlsearch
 set cursorline
 set smartcase
 set incsearch
 set ttimeoutlen=100
 set vb
 set ruler
 set scrolloff=2
 set laststatus=2
 " set list listchars=tab:»·,trail:·
 set viewoptions=cursor,folds,slash,unix
 set tw=80
 set wildmode=longest,full
 set wildmenu

 " put git status, column/row number, total lines, and percentage in status
 set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]
 " set statusline=%{fugitive#statusline()}

 " highlight the status bar when in insert mode
 if version >= 700
   au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
   au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
 endif

 " highlight trailing spaces in annoying red
 highlight ExtraWhitespace ctermbg=1 guibg=red
 match ExtraWhitespace /\s\+$/
 autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
 autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
 autocmd InsertLeave * match ExtraWhitespace /\s\+$/
 autocmd BufWinLeave * call clearmatches()

 " Disable tmp files
 set nobackup
 set nowb
 set noswapfile

 if executable('zsh')
   set shell=zsh
 endif

 " Whitespace removals
 autocmd BufWritePre * StripWhitespace

 " NERDTree
 " let g:nerdtree_tabs_open_on_console_startup = 1
 let g:nerdtree_tabs_focus_on_files = 1

 " Hide usls files
 let NERDTreeIgnore = ['\.pyc$', '\.tags$', 'tags$', 'tags.lock$', '\.jar$', '^\.bzr$', '^\.hg$', '^\.git$', '\.swp$', '^\.svn', '^\.DS_Store$']

 " Show hidden items
 let NERDTreeShowHidden = 1

 " Ctags
 let g:vim_tags_directories = [".git", ".hg", ".svn", ".bzr"]
 let g:vim_tags_gems_tags_command = "{CTAGS} -R {OPTIONS} `bundle show  --paths` 2>/dev/null"
 let g:vim_tags_auto_generate = 1

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1

 let g:dasht_context = { 'ruby': ['Ruby_2', 'Ruby_on_Rails_4'] }


  imap <c-x><c-k> <plug>(fzf-complete-word)
  imap <c-x><c-f> <plug>(fzf-complete-path)
  imap <c-x><c-j> <plug>(fzf-complete-file-ag)
  imap <c-x><c-l> <plug>(fzf-complete-line)
  imap <expr> <c-x><c-f> fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')

  function! s:fzf_root()
    let path = finddir(".git", expand("%:p:h").";")
    return fnamemodify(substitute(path, ".git", "", ""), ":p:h")
  endfunction

"  " Indent guides settings
  let g:indent_guides_auto_colors = 0
  let indent_guides_color_change_percent = 10
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#212121 ctermbg=235
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=237
  autocmd VimEnter * :IndentGuidesToggle
"
 " Ruby settings
 let g:ruby_path = system('rvm current')
 let g:ruby_indent_access_modifier_style = 'outdent'
 let ruby_operators = 1
 autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
 autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
 autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

 " Tmux support
  let g:slime_target = 'tmux'
  let g:slime_paste_file = "$HOME/.slime_paste"
  let g:slime_paste_file = tempname()
  let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

 " Git support
 autocmd Filetype gitcommit  setlocal spell textwidth=72

" Indentetion settings
autocmd Filetype html         setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml         setlocal ts=2 sw=2 expandtab
autocmd Filetype scala        setlocal ts=2 sw=2 expandtab
autocmd Filetype java         setlocal ts=2 sw=2 expandtab
autocmd Filetype python       setlocal ts=4 sw=4 expandtab
autocmd Filetype ruby         setlocal ts=2 sw=2 expandtab
autocmd Filetype eruby        setlocal ts=2 sw=2 expandtab
autocmd Filetype stylus       setlocal ts=2 sw=2 expandtab
autocmd Filetype vim          setlocal ts=2 sw=2 expandtab
autocmd Filetype json         setlocal ts=2 sw=2 expandtab
autocmd Filetype slim         setlocal ts=2 sw=2 expandtab
autocmd Filetype jade         setlocal ts=2 sw=2 expandtab
autocmd Filetype sass         setlocal ts=2 sw=2 expandtab
autocmd Filetype css          setlocal ts=2 sw=2 expandtab
autocmd Filetype mustache     setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript   setlocal ts=2 sw=2 expandtab
autocmd Filetype coffeescript setlocal ts=2 sw=2 expandtab
autocmd Filetype crystal      setlocal ts=2 sw=2 expandtab
autocmd Filetype cucumber     setlocal ts=2 sw=2 expandtab

let mapleader=","
nmap <Leader>k :DashtContext <C-R><C-W><CR>
nmap <Leader>af :Autoformat<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>tn :tabnew<CR>
nmap <Leader>th :tabp<CR>
nmap <Leader>tl :tabn<CR>
nmap <Leader>f :FZF<CR>
nmap <Leader>s :SyntasticCheck<CR>
nmap <Leader>b :Gblame<CR>
nmap <Leader>d :Gdiff<CR>

map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg  .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('slim', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('rb', 'Magenta', 'none', '#ff00ff', '#151515')
