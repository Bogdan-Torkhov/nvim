call plug#begin()
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'Raimondi/delimitMate' 
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'mfussenegger/nvim-lint'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'ap/vim-css-color'
Plug 'tc50cal/vim-terminal'
Plug 'ekalinin/Dockerfile.vim'
Plug 'hashivim/vim-terraform'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
call plug#end()
colorscheme dracula
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
autocmd BufEnter NERD_tree_* | execute 'normal R'
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect 
set cursorline
filetype plugin indent on
syntax on
syntax enable
set autoindent
set smarttab
set t_Co=256
set tabstop=4
set shiftwidth=4
set wildmenu
set number
set mouse=a
set title
set softtabstop=4  
set noswapfile
set termguicolors
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
nmap <C-f> :NERDTree<CR>
nnoremap <C-Left> <C-w>h
nnoremap <C-Right> <C-w>l
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
set encoding=UTF-8
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:coc_global_extensions = ['coc-python', 'coc-go', 'coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-eslint', 'coc-tslint-plugin', 'coc-styled-components', 'coc-react-refactor', 'coc-yaml', 'coc-sh']
nmap <S-Left> :bprevious<CR>
nmap <S-Right> :bnext<CR> 
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
autocmd VimEnter * NERDTree | wincmd p
inoremap jk <esc>
inoremap < <><Left>
set colorcolumn=120
nmap <C-r> <Plug>(coc-codeaction-selected)
let g:terraform_fmt_on_save = 1
let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 1
let g:mkdp_open_to_the_world = 1
nmap <C-p> <Plug>MarkdownPreview
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
