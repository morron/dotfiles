if &compatible
  set nocompatible               " Be iMproved
endif

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/style.vim

"" Ack.vim
let g:ackprg = 'rg --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

nnoremap <leader>8 Orequire'debugger';debugger<esc>
nnoremap <leader>9 Orequire'pry';binding.pry<esc>

"*****************************************************************************
"" Airline
"*****************************************************************************
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_theme = 'base16_nord'
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

let g:neosnippet#snippets_directory='~/.config/nvim/bundle/vim-snippets/snippets'
" let g:snipMate = {}
" let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'

let vim_markdown_preview_hotkey='<C-m>'

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
highlight SignColumn ctermbg=1
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

if executable('zsh')
  set shell=zsh
endif

" Whitespace removals
autocmd BufWritePre * StripWhitespace

"" GitGutter
"
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

let g:NERDTreeShowIgnoredStatus = 1  "enables ignored highlighting
let g:NERDTreeGitStatusNodeColorization = 1  "enables colorization
let g:NERDTreeGitStatusWithFlags = 1  "enables flags, (may be default), required for colorization

highlight link NERDTreeDir Question  "custom color
highlight link NERDTreeGitStatusIgnored Comment  "custom color

"" NERDTree
"
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
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint', 'flow']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_typescript_checkers = ['tsc', 'tslint']

let g:dasht_context = { 'ruby': ['Ruby_2', 'Ruby_on_Rails_4'] }

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
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#212121 ctermbg=235
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=237
" autocmd VimEnter * :IndentGuidesToggle
"
" Ruby settings
let g:ruby_path = system('rvm current')
let g:ruby_indent_access_modifier_style = 'normal'
let ruby_operators = 1
let ruby_foldable_groups = 'ALL'
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
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
let g:deoplete#enable_at_startup = 1

let g:gitgutter_override_sign_column_highlight = 0

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

map f/  <Plug>(incsearch-fuzzy-/)
map f?  <Plug>(incsearch-fuzzy-?)
map fg/ <Plug>(incsearch-fuzzy-stay)
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
autocmd Filetype vue          syntax sync fromstart
autocmd Filetype go           setlocal ts=4 sw=4 expandtab
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

nmap <Leader>f :Files<CR>
nmap <Leader>b :Buffers<CR>

nmap <Leader>s :SyntasticCheck<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>d :Gdiff<CR>

" map <Leader>gb :GoBuild<CR>
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Lead" er>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

" switch tabs using Ctrl+[Left/Right]
nmap <Leader>h :tabprevious<CR>
nmap <Leader>l :tabnext<CR>

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

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" set pastetoggle=<leader>z

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
  " let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  tnoremap <Esc> <c-\><c-n>
  tnoremap <C-[> <c-\><c-n>

  highlight TermCursor ctermfg=red guifg=red
endif

 " Change cursor shape between insert and normal mode in iTerm2.app
 " if $TERM_PROGRAM =~ "iTerm"
 "   let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
 "   let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
 "   let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=4\x7\<Esc>\\"
 "   let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
 "   let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
 " endif

 source ~/.config/nvim/deoplete.vim
