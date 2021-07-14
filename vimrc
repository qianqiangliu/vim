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
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdtree'
call plug#end()

" floaterm
let g:floaterm_autoclose = 1
let g:floaterm_keymap_toggle = '<F2>'

" tagbar
let g:tagbar_compact=1
let g:tagbar_iconchars=['▸', '▾']
let g:tagbar_sort=0
let g:tagbar_indent=0
let g:tagbar_autofocus=1
nmap <F8> : TagbarToggle<CR>

" nerdtree
let NERDChristmasTree=1
let NERDTreeHightCursorline=0
let NERDTreeMinimalUI=1
let NERDTreeHighlightCursorline=0
nmap <F7> : NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <F3> : Files<CR>
nmap <F6> : !ctags -R -f .tags<CR>
