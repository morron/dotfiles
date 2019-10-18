let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 1
let g:deoplete#auto_refresh_delay = 30

call deoplete#custom#option('refresh_always', v:true)
call deoplete#custom#option('camel_case', v:false)
call deoplete#custom#option('ignore_case', v:true)
call deoplete#custom#option('smart_case', v:true)
call deoplete#custom#option('on_insert_enter', v:true)
call deoplete#custom#option('on_text_changed_i', v:true)
call deoplete#custom#option('min_pattern_length', 3)
call deoplete#custom#option('num_processes', 10)
call deoplete#custom#option('max_list', 10)
call deoplete#custom#option('skip_chars', ['(', ')', '<', '>'])

let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

let g:deoplete#omni_patterns = {}
call deoplete#custom#option('omni_patterns', {
      \ 'complete_method': 'omnifunc',
      \ 'terraform': '[^ *\t"{=$]\w*',
      \})

call deoplete#initialize()

