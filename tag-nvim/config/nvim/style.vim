"" Style

 set termguicolors
 set background=dark

 colorscheme yin

 " colorscheme gruvbox
 " colorscheme nova
 " colorscheme base16-ocean
 " colorscheme plain
 " colorscheme base16-monokai
 " colorscheme hybrid_reverse
 " colorscheme Tomorrow-Night
 "
 "" set up some custom colors
 "highlight clear SignColumn
 "highlight VertSplit    ctermbg=236
 ""highlight ColorColumn  ctermbg=237
 "highlight LineNr       ctermbg=236 ctermfg=240
 "highlight CursorLineNr ctermbg=236 ctermfg=240
 "highlight CursorLine   ctermbg=236
 "highlight StatusLineNC ctermbg=238 ctermfg=0
 "highlight StatusLine   ctermbg=240 ctermfg=12
 "highlight IncSearch    ctermbg=3   ctermfg=1
 "highlight Search       ctermbg=1   ctermfg=3
 "highlight Visual       ctermbg=3   ctermfg=0
 "highlight Pmenu        ctermbg=240 ctermfg=12
 "highlight PmenuSel     ctermbg=3   ctermfg=1
 "highlight SpellBad     ctermbg=0   ctermfg=1

 " highlight Cursor gui=reverse guifg=NONE guibg=NONE
 " highlight Cursor gui=NONE guifg=bg guibg=fg

 hi Whitespace cterm=italic ctermfg=239 gui=italic guifg=#4e4e4e
 "
 let g:rbpt_loadcmd_toogle = 0
 "
 "" Rainbow Parenthesis
 "
 " au VimEnter * RainbowParenthesesToggle
 " au Syntax * RainbowParenthesesLoadRound
 " au Syntax * RainbowParenthesesLoadSquare
 " au Syntax * RainbowParenthesesLoadBraces

 " Use relative line numbers
 if exists("&relativenumber")
   set relativenumber
   au BufReadPost * set relativenumber
 endif

