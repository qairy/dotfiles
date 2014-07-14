"
" NeoBundle
"
if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"
" My Bundle Plugins
"
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc', {'build' : {
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ }
\ }
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/vimshell'
NeoBundle 'vim-scripts/buftabs'
NeoBundle 'open-browser.vim'
"NeoBundle 'sjl/gundo.vim'
"NeoBundle 'thinca/vim-quickrun'
NeoBundle 'mattn/emmet-vim'
"NeoBundle 'surround.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/html5.vim'
NeoBundle 'mustardamus/jqapi' "??
NeoBundle 'tokuhirom/jsref' "??
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'yonchu/accelerated-smooth-scroll'
NeoBundle 'vim-scripts/EnhCommentify.vim'
NeoBundle 'tell-k/vim-browsereload-mac'
"NeoBundle 'YankRing.vim'
NeoBundle 'derekwyatt/vim-scala'
"NeoBundle 'Shougo/vimfiler'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'w0ng/vim-hybrid'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

