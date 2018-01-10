call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'reedes/vim-colors-pencil'
call plug#end()

colorscheme nord

set mouse=a
set number
set smartindent
set expandtab
set cursorline
set nowrap
set clipboard=unnamedplus

" Show tabs and spaces
set list
set listchars=tab:•\ ,trail:•,extends:»,precedes:«

let g:mapleader=','
map <C-l> :nohl<CR>
map <space> /

command! Wq wq
command! WQ wq
command! Light :call Light()<CR>

set
  \ tabstop=4
  \ softtabstop=4
  \ shiftwidth=4
  \ expandtab

autocmd Filetype haskell
  \ setlocal
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

" Remove trailing characters on save
autocmd BufWritePre * :%s/\s\+$//e


" CTRL-P lugin re-maping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Keep sign gutter always open for ale
let g:ale_sign_column_always = 1

let g:ale_linters = {'haskell': ['stack-ghc-mod', 'hfmt']}

" Passthrough empty key if unselected completion menu
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use TAB and S-TAB to select inside completion menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! Light()
    set background=light
    colorscheme pencil
endfunc
