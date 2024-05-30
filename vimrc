set cindent
set incsearch
set tags=./tags;,tags
set path+=**
set background=dark
set wildmenu
set cursorline
syntax on

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme gruvbox8

let g:netrw_banner = 0

" jump to last position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' |
  \   exe "normal! g`\"" |
  \ endif

" list buffers
nnoremap <Leader>b :ls<CR>:b<Space>
" expand '%%' to current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
