"
" Map
"
" insert new line to eol, even if mode is normal
noremap <CR> o<ESC>
"bb, sn,
" move split views
nmap fe <C-w>k
nmap fd <C-w>j
nmap fs <C-w>h
nmap ff <C-w>l
nmap fa <C-w><C-w>
nmap fj <C-w>>

nnoremap s <Nop>
"nnoremap sn gt
"nnoremap sp gT
"nnoremap sr <C-w>r
"nnoremap s= <C-w>=
"nnoremap sw <C-w>w
"nnoremap so <C-w>_<C-w>
"nnoremap sO <C-w>=
"nnoremap sN :<C-u>bn<CR>
"nnoremap sP :<C-u>bp<CR>
"nnoremap st :<C-u>tabnew<CR>
"nnoremap sT :<C-u>Unite tab<CR>
nnoremap sp :<C-u>sp<Space>
nnoremap sv :<C-u>vs<Space>
"nnoremap sq :<C-u>q<CR>
"nnoremap sQ :<C-u>bd<CR>
"nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
"nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
"close buffer
nmap qq  :bd<CR>
" move buffer
noremap <Tab> :bnext<CR>
noremap <S-Tab> :bprev<CR>
