"
" Visual Setting
"
" show correspond bracket
" enable mouse support
set mouse=a
" share copies with system clipboard
set guioptions+=a
" enable mouse support
set ttymouse=xterm2
" en message
language C
" display cursor location
set ruler
" show correspond bracket
set showmatch
" set row number
set number
" show cursor line
set cursorline
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END
hi clear CursorLine
hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black
" view of statusline
set statusline=%=\ [%{(&fenc!=''?&fenc:&enc)}/%{&ff}]\[%Y]\[%04l,%04v][%p%%]
" disp. ststusline on
set laststatus=2
