 if &compatible
   set nocompatible               " Be iMproved
 endif

 source ~/.config/nvim/plugins.vim

 set termguicolors

 set background=dark
 "colorscheme nova
 "colorscheme plain
 "let g:base16_shell_path=base16-builder/output/shell/
 colorscheme base16-monokai
 "colorscheme hybrid_reverse
 "colorscheme Tomorrow-Night
 "colors dues
 syntax on

 " Use relative line numbers
 if exists("&relativenumber")
   set relativenumber
   au BufReadPost * set relativenumber
 endif

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
 set noshowmode
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

 set showmatch
 set hlsearch
 set hidden
 set cursorline
 set smartcase
 set ignorecase
 set incsearch
 set ttimeoutlen=100
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

 set colorcolumn=110
 highlight ColorColumn ctermbg=darkgray

 " show tabs as >---
 set listchars=tab:>-
 set list

 " display title of current file in terminal title bar
 set title

 set expandtab

 let g:neosnippet#snippets_directory='~/.config/nvim/bundle/vim-snippets/snippets'
" let g:snipMate = {}
" let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'

 "*****************************************************************************
 "" Airline
 "*****************************************************************************
 let g:airline_left_sep = ''
 let g:airline_right_sep = ''

 let g:airline_theme = 'base16_monokai'
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#branch#enabled = 1
 let g:airline#extensions#branch#empty_message = ''
 let g:airline#extensions#syntastic#enabled = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#show_close_button = 0
 let g:airline#extensions#tabline#left_alt_sep = ''
 let g:airline#extensions#tabline#left_sep = ''
 let g:airline#extensions#tabline#formatter = 'jsformatter'
 let g:airline#extensions#tabline#show_buffers = 0
 let g:airline#extensions#tagbar#enabled = 0

 "let g:airline#extensions#xkblayout#enabled = 1

 " highlight the status bar when in insert mode
" if version >= 700
"   au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
"   au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
" endif
 "
 let vim_markdown_preview_hotkey='<C-m>'

 " highlight trailing spaces in annoying red
 highlight ExtraWhitespace ctermbg=1 guibg=red
 highlight SignColumn ctermbg=1
 match ExtraWhitespace /\s\+$/
 autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
 autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
 autocmd InsertLeave * match ExtraWhitespace /\s\+$/
 autocmd BufWinLeave * call clearmatches()

 " Disable tmp files
 set nobackup
 set nowb
 set noswapfile

 " fix delete
 set backspace=indent,eol,start

 if executable('zsh')
   set shell=zsh
 endif

 " Whitespace removals
 autocmd BufWritePre * StripWhitespace

 " NERDTree
 " let g:nerdtree_tabs_open_on_console_startup = 1
 " let g:nerdtree_tabs_focus_on_files = 1

 let g:NERDTreeUseGitToMove=1
 let g:NERDTreeChDirMode=2
 let g:nerdtree_tabs_focus_on_files=1
 " Hide usls files
 let NERDTreeIgnore = ['\.pyc$', '\.tags$', 'tags$', 'tags.lock$', '\.jar$', '^\.bzr$', '^\.hg$', '^\.git$', '\.swp$', '^\.svn', '^\.DS_Store$']

 " Show hidden items
 let NERDTreeShowHidden = 1

 " if NERDTreeTab is open --> NERDTreeToggle, else NERDTreeFind
 function! OpenNERDTree()
   if exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
     NERDTreeToggle
   else
     " finds currently open file in NERDTree
     NERDTreeFind
   endif
 endfunction

 " NERDTree Git
let g:NERDTreeShowIgnoredStatus = 1  "enables ignored highlighting
let g:NERDTreeGitStatusNodeColorization = 1  "enables colorization
let g:NERDTreeGitStatusWithFlags = 1  "enables flags, (may be default), required for colorization

highlight link NERDTreeDir Question  "custom color
highlight link NERDTreeGitStatusIgnored Comment  "custom color

" NERDTree
set hidden
let g:NERDTreeDirArrowExpandable = nr2char(8200)  "sets expandable character
let g:NERDTreeDirArrowCollapsible = nr2char(8200)  "sets collapsible character
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''  "removes padding after devicon glyph
let g:WebDevIconsUnicodeDecorateFolderNodes = 1  "enables decorating folder nodes

autocmd FileType nerdtree setlocal nolist  "if you show hidden characters, this hides them in NERDTreeighlight link NERDTreeGitStatusModified cssURL  "custom color

 noremap <Leader>0 :NERDTreeFocus<CR>

 " Ctags
 let g:vim_tags_directories = [".git", ".hg", ".svn", ".bzr"]
 let g:vim_tags_gems_tags_command = "{CTAGS} -R {OPTIONS} `bundle show  --paths` 2>/dev/null"
 let g:vim_tags_auto_generate = 1

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 0
 let g:syntastic_check_on_wq = 0
" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'
" let g:syntastic_style_error_symbol = '✗'
" let g:syntastic_style_warning_symbol = '⚠'
 let g:syntastic_aggregate_errors = 1
 let g:syntastic_javascript_checkers = ['eslint', 'flow']
 let g:syntastic_javascript_eslint_exe = 'npm run lint --'
 let g:syntastic_typescript_checkers = ['tsc', 'tslint']

 let g:dasht_context = { 'ruby': ['Ruby_2', 'Ruby_on_Rails_4'] }

" ctrlp.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
"let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|tox|ico|git|hg|svn))$'
"let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
"let g:ctrlp_use_caching = 1
" CtrlP auto cache clearing.
" ----------------------------------------------------------------------------
"function! SetupCtrlP()
"  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
"    augroup CtrlPExtension
"      autocmd!
"      autocmd FocusGained  * CtrlPClearCache
"      autocmd BufWritePost * CtrlPClearCache
"    augroup END
"  endif
"endfunction
"if has("autocmd")
"  autocmd VimEnter * :call SetupCtrlP()
"endif
"
" FZF

"let g:fzf_buffers_jump = 1

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

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

" Golang support
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
"let g:neocomplete#enable_at_startup = 1

let g:gitgutter_override_sign_column_highlight = 0
" Xkb switch settings
let g:XkbSwitchEnabled = 0
"let g:XkbSwitchIMappings = ['us']
"let g:XkbSwitchILayout = 'us'
"let g:XkbSwitchNLayout = 'us'
""let g:XkbSwitchSkipFt = [ 'nerdtree' ]
"let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.dylib'
"let g:XkbSwitchAssistNKeymap = 1    " for commands r and f
"let g:XkbSwitchAssistSKeymap = 1    " for search lines
"let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'

" incsearch.vim x fuzzy x vim-easymotion

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
noremap <silent><expr> z/ incsearch#go(<SID>config_easyfuzzymotion())

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
autocmd FileType vue          syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

let mapleader=","
nmap <Leader>k :DashtContext <C-R><C-W><CR>
nmap <Leader>af :Autoformat<CR>
nmap <Leader>n :call OpenNERDTree()<CR>
nmap <Leader>m :NERDTreeFind<CR>
nmap <Leader>tn :tabnew<CR>
nmap <Leader>th :tabp<CR>
nmap <Leader>tl :tabn<CR>

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
"noremap <leader>b :CtrlPBuffer<CR>
"let g:ctrlp_map = '<leader>f'
"let g:ctrlp_open_new_file = 'r'
"let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

nmap <Leader>f :FZF<CR>
" nmap <Leader>fb :Buffers<CR>
" nmap <Leader>fc :Commits<CR>
nmap <Leader>s :SyntasticCheck<CR>
nmap <Leader>b :Gblame<CR>
nmap <Leader>d :Gdiff<CR>

map <Leader>gb :GoBuild<CR>
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

" switch tabs using Ctrl+[Left/Right]
nmap <Leader><Left> :tabprevious<CR>
nmap <Leader><Right> :tabnext<CR>

" map resizing buffers
nmap <A-Right> :vertical resize+5<CR>
nmap <A-Left> :vertical resize-5<CR>
nmap <A-Up> :resize+5<CR>
nmap <A-Down> :resize-5<CR>
nmap <leader>\| <C-W>=

" map turning off highlighting after search
nmap <Esc><Esc> :noh<CR>" NERDTress File highlighting

nmap <leader>a =ip

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"neosnippet
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

set pastetoggle=<leader>z

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
call NERDTreeHighlightFile('ts', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('tsx', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('rb', 'Magenta', 'none', '#ff00ff', '#151515')
"
" Indentation rules
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType vue set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType jsx set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType less set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType scss set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
augroup END

" Cursor
if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  tnoremap <Esc> <c-\><c-n>
  tnoremap <C-[> <c-\><c-n>

  highlight TermCursor ctermfg=red guifg=red
endif
