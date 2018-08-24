call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'farmergreg/vim-lastplace'
Plug 'nlknguyen/papercolor-theme'
Plug 'neovimhaskell/haskell-vim'
call plug#end()

colorscheme nord
set background=dark

set mouse=a
set number
set smartindent
set expandtab
set cursorline
set clipboard=unnamedplus

" Show tabs and spaces
set list
set listchars=tab:•\ ,trail:•,extends:»,precedes:«

let g:mapleader=','
map <C-l> :nohl<CR>
map <space> zz

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

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

autocmd Filetype ruby
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

let g:ale_linters = {'haskell': ['stack-ghc'], 'ruby': []}

let g:deoplete#enable_at_startup = 1

" Passthrough empty key if unselected completion menu
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use TAB and S-TAB to select inside completion menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! Light()
    set background=light
    colorscheme PaperColor
endfunc

let light=$LIGHT
if light == '1'
    call Light()
endif

