set number
set numberwidth=1
set relativenumber
set tabstop=4
set shiftwidth=4
set incsearch
set tags=./.tags;,.tags
set expandtab
syntax on

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/tagbar'
Plug 'mileszs/ack.vim'
call plug#end()

" tagbar
let g:tagbar_compact=1
nmap <F8> : TagbarToggle<CR>

nmap <F3> : Files<CR>
nmap <F6> : !ctags -R -f .tags<CR>
