call plug#begin()
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'
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
let g:coc_global_extensions = ['coc-python', 'coc-go', 'coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-eslint', 'coc-tslint-plugin', 'coc-styled-components', 'coc-react-refactor', 'coc-yaml', 'coc-sh', 'coc-sql']
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
lua << END
require('lualine').setup{
    options = { 
        section_separators = '', 
        component_separators = '',
},
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'fileformat', 'encoding' 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
},
}
END
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:true
let bufferline.closable = v:false
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'
