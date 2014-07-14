"
" Base Setting
"
" vi compatible off
set nocompatible
" auto start new line off
set textwidth=0
" auto backup off
set nobackup
" auto reload file, if the file chenge in other editor
set autoread
" not make swap file
set noswapfile
" able to open other file, ever if a file is not saved
set hidden
" able to delete : indent, eol, forwards
set backspace=indent,eol,start
" beep sound off
set vb t_vb=
" no turn at end
set nowrap
" show command
set showcmd
" show current mode
set showmode
" clipboard set : unnamed, system
set clipboard=unnamed,autoselect

"vmap  y:call system("pbcopy", getreg("\""))<CR>
"nmap <Space><C-v> :call setreg("\"",system("pbpaste"))<CR>p
