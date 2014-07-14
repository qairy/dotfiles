"
" Indents
"
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
if has("autocmd")
    filetype plugin on
    filetype indent on
    autocmd FileType html  setlocal sw=2 sts=2 ts=2 et
    autocmd FileType xhtml setlocal sw=2 sts=2 ts=2 et
    autocmd FileType scala setlocal sw=2 sts=2 ts=2 et
endif
