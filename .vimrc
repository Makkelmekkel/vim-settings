set nocompatible
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h12
set clipboard=unnamed
set number
set hlsearch
set backspace=2
set cindent
set smartindent
set autoindent
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set nowrap
syntax on
" let g:airline_powerline_fonts = 1
set incsearch
"set rnu
set showcmd
set lazyredraw

let php_html_load=1
let php_html_in_heredoc=0
let php_html_in_nowdoc=0

let php_sql_query=0
let php_sql_heredoc=0
let php_sql_nowdoc=0

"set lines=106
"set columns=190
set ignorecase
set smartcase

" no backup files
set nobackup
" only in case you don't want a backup file while editing
set nowritebackup
" no swap files
set noswapfile
set noundofile
set ff=unix
set relativenumber

let g:ctrlp_working_path_mode = 0

call plug#begin('~/vimfiles/bundle')
" Plug 'junegunn/vim-easy-align'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
Plug 'airblade/vim-gitgutter'
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'lsdr/monokai'
Plug 'flazz/vim-colorschemes'
Plug 'dense-analysis/ale'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
    " Plug 'MarcWeber/vim-addon-mw-utils'
    " Plug 'tomtom/tlib_vim'
    " Plug 'garbas/vim-snipmate'
    " Plug 'SirVer/ultisnips'
    " Plug 'honza/vim-snippets'
" Plug 'kien/ctrlp.vim'
"Jump to Files
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

    " Plug 'vim-syntastic/syntastic'
Plug 'will133/vim-dirdiff'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'
call plug#end()

" Remap Q WQ en W to normal
:command Q q
:command WQ wq
:command W w

" map <C-f> :NERDTreeToggle<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <c-t> :tabnew<Cr>

" FZF Default Extra Key Bindings
let g:fzf_action={'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit'}
map <c-p> :Files<CR>

tnoremap <Esc> <C-\><C-n>
colorscheme apprentice

