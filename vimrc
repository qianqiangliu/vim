set cindent
set cinoptions=:0,l1,t0,g0,(0
set background=dark
set cursorline
set termguicolors

colorscheme gruvbox8

let g:netrw_banner = 0

" jump to last position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' |
  \   exe "normal! g`\"" |
  \ endif

" close quickfix
nnoremap <C-c> :cclose<CR>
" list buffers
nnoremap <Leader>b :ls<CR>:b<Space>
" expand '%%' to current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
