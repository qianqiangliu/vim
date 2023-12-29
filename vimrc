set cindent
set cinoptions=:0,l1,t0,g0,(0
set grepprg=rg\ --vimgrep
set grepformat=%f:%l:%c:%m
set matchpairs+=<:>
set background=dark
set incsearch
syntax on

" jump to last position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' |
  \   exe "normal! g`\"" |
  \ endif

command -nargs=+ -complete=file -bar
  \ Grep silent! grep! <args> | cwindow | redraw!

let g:netrw_banner = 0

" expand '%%' to current path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
