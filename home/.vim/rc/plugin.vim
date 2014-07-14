"===============================================================================
" Unite
"===============================================================================
" start unite in insert mode
let g:unite_enable_start_insert = 1
" unite call keys
" -- current directory
nnoremap <silent> <C-u>f :<C-u>Unite -vertical -winwidth=35 file<CR>
inoremap <silent> <C-u>f <ESC>:<C-u>Unite -vertical -winwidth=35 file<CR>
" -- recent files
nnoremap <silent> <C-u>l :<C-u>Unite -vertical -winwidth=35 file_mru<CR>
inoremap <silent> <C-u>l <ESC>:<C-u>Unite -vertical -winwidth=35 file_mru<CR>
" -- buffer
nnoremap <silent> <C-u>b :<C-u>Unite -vertical -winwidth=35 buffer<CR>
inoremap <silent> <C-u>b <ESC>:<C-u>Unite -vertical -winwidth=35 buffer<CR>
" -- bookmark
nnoremap <silent> <C-u>s <C-u>Unite -vertical -winwidth=35 bookmark<CR>
inoremap <silent> <C-u>s <ESC>:<C-u>Unite -vertical -winwidth=35 bookmark<CR>
" -- add in bookmark
nnoremap <silent> <C-u>a :<C-u>UniteBookmarkAdd<CR>
inoremap <silent> <C-u>a <ESC>:<C-u>UniteBookmarkAdd<CR>
" -- resister
nnoremap <silent> <C-u>r :<C-u>Unite -vertical -winwidth=35 register<CR>
inoremap <silent> <C-u>r <ESC>:<C-u>Unite -vertical -winwidth=35 register<CR>
" keymap in unite.vim
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " @ xr + w : up dictionary
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  " @ ESC + ESC : quit
  nmap <silent><buffer> <ESC><ESC> q
  imap <silent><buffer> <ESC><ESC><ESC>q
endfunction
" unite grep
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
" unite grep search
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" grep search of cursor word
nnoremap <silent> ,c :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
" recall grep result
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>
" unite grep with ag(The Silver Searcher)
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

"===============================================================================
" Neocomplcache
"===============================================================================
hi Pmenu guibg=#666666
hi PmenuSel guibg=#8cd0d3 guifg=#666666
hi PmenuSbar guibg=#333333
let g:neocomplcache_enable_at_startup = 1
set completeopt=menuone
let g:neocomplcache_max_list = 20
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_manual_completion_start_length = 2
let g:neocomplcache_min_keyword_length = 4
let g:neocomplcache_min_syntax_length = 4
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 0
let g:neocomplcache_enable_underbar_completion = 0
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'php' : $HOME . '/.vim/dict/php.dict',
  \ 'js' :  $HOME . '/.vim/dict/javascript.dict',
  \ }
inoremap <expr><Up> neocomplcache#smart_close_popup() ."\<Up>"
inoremap <expr><Down> neocomplcache#smart_close_popup()."\<Down>"
inoremap <expr><Tab> pumvisible() ? "\<Down>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<Up>" : "\<S-Tab>"
inoremap <expr><C-n> neocomplcache#manual_keyword_complete()

"===============================================================================
" VimShell
" 'sh' -> launch shell
"===============================================================================
nnoremap sh :VimShell<CR>

"===============================================================================
" Buftabs
"===============================================================================
" display filename only
let g:buftabs_only_basename=1
" list in statusline
let g:buftabs_in_statusline=1
" highlight current buffer
let g:buftabs_active_highlight_group="Visual"

"===============================================================================
" Openbrowser
" 'fu' -> open url under the cursor
" 'fg' -> searcher keywords
"===============================================================================
nmap fu <Plug>(openbrowser-open)
nnoremap fg :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>

"===============================================================================
" Gundo ##NOT USING
" 'ft' -> GundoToggle
"===============================================================================
"nmap ft :<C-u>GundoToggle<CR>

"===============================================================================
" Quickrun ##NOT USING
" 'fr' -> quickrun
"===============================================================================
"nmap fr \r
" display executiton time
"let g:quickrun_config = {'*': {'hook/time/enable': '1'},}

"===============================================================================
" Emmet
" 'xl + e'
"===============================================================================
let g:user_emmet_expandabbr_key = '<c-e>'
" set 'lang=jp' expand 'html'
let g:user_emmet_settings = {
\ 'lang' : 'ja'
\}

"===============================================================================
" Syntastic
"===============================================================================
"let g:syntastic_mode_map = { 'mode': 'active',
"  \ 'active_filetypes': [],
"  \ 'passive_filetypes': ['html'] }
"let g:syntastic_auto_loc_list=1
"let g:syntastic_javascript_checker='jshint'
"let g:syntastic_javascript_checkers = ['jshint']

"===============================================================================
" EnhCommentify.vim
" 'fc' -> toggle CommentOut
"===============================================================================
nmap fc \x
vmap fc \x

"===============================================================================
" BrowseReload
"===============================================================================
let g:returnApp = "iTerm"
nmap <Space>bc :ChromeReloadStart<CR>
nmap <Space>bC :ChromeReloadStop<CR>
nmap <Space>bf :FirefoxReloadStart<CR>
nmap <Space>bF :FirefoxReloadStop<CR>
nmap <Space>bs :SafariReloadStart<CR>
nmap <Space>bS :SafariReloadStop<CR>
nmap <Space>bo :OperaReloadStart<CR>
nmap <Space>bO :OperaReloadStop<CR>
nmap <Space>ba :AllBrowserReloadStart<CR>
nmap <Space>bA :AllBrowserReloadStop<CR>

"===============================================================================
" YankRing ##NOT USING
" ',y' -> show yank history
"===============================================================================
"nmap ,y :YRShow<CR>
"let g:yankring_history_dir = '~/.vim/tmp/'

"===============================================================================
" NerdTree
" 'fn' -> NERDTree
"===============================================================================
nmap fn :NERDTree<CR>

"===============================================================================
" Color Hybrid
"===============================================================================
colorscheme hybrid

"===============================================================================
" Utilities (without plugins)
"===============================================================================
" Ctags
if has('path_extra')
    set tags+=tags;/Users/AkihiroFukuchi
endif
" trim white space when the file saved
autocmd BufWritePre * :%s/\s\+$//ge
" non stop cursor
set whichwrap=b,s,h,l,<,>,[,]
" display zenkakuspace
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

