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
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'pearofducks/ansible-vim'
Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'}
Plug 'cljoly/telescope-repo.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug '/nvim-telescope/telescope-project.nvim'
call plug#end()
colorscheme dracula
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
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
set relativenumber
set nowrap
set scrolloff=10
set nobackup
set nowb
set termguicolors
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
nmap <c-q> :bd<cr>
nmap <c-s> :w<cr>
nmap <c-f> :NERDTree<cr>
nnoremap <s-f> <cmd>Telescope find_files<cr>
nnoremap <s-g> <cmd>Telescope live_grep<cr>
nnoremap <s-r> <cmd>Telescope repo list<cr>
nnoremap <c-j> <c-w>h
nnoremap <c-k> <c-w>l 
nnoremap <c-left> <c-w>h
nnoremap <c-right> <c-w>l
nnoremap <c-space> :nohlsearch<cr>
autocmd StdinReadPre * let s:std_in=1
set encoding=UTF-8
let g:coc_global_extensions = ['coc-python', 'coc-go', 'coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-eslint', 'coc-tslint-plugin', 'coc-styled-components', 'coc-react-refactor', 'coc-yaml', 'coc-sh', 'coc-sql', '@yaegassy/coc-ansible']
let g:coc_filetype_map = {
  \ 'yaml.ansible': 'ansible',
  \ }
nmap <s-j> :bprevious<cr>
nmap <s-k> :bnext<cr>
nmap <s-Left> :bprevious<cr>
nmap <s-Right> :bnext<cr> 
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap jk <esc>
inoremap < <><Left>
set colorcolumn=150
nmap <c-r> <Plug>(coc-codeaction-selected)
let g:terraform_fmt_on_save = 1
let g:mkdp_auto_start = 1
let g:mkdp_refresh_slow = 1
let g:mkdp_open_to_the_world = 1
nmap <c-p> <Plug>MarkdownPreview
set termguicolors
lua << EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dracula',
    component_separators = '|',
    section_separators = {left = '|', right = '|'},
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
    sections = {
        lualine_a = {{'mode', separator = {left = ''}}},
        lualine_b = {{'branch', icon = '', separator = {left = ''}, 'diff', 'diagnostics'}},
        lualine_c = {{'filename'}},
        lualine_x = {'fileformat', 'encoding', 'filetype'},
        lualine_y = {{'progress', separator = {right = ''}}},
        lualine_z = {{'location', separator = {right = ''}}}
  },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {'fzf', 'man', 'nerdtree', 'quickfix'}
}
require('telescope').setup{
    extensions = {
        repo = {
            subcommand = {
                argument = {
                    "new",
                    "default",
                    "value",
        },
      },
    },
        fzf = {
            fuzzy = true,                    
            override_generic_sorter = true,  
            override_file_sorter = true,     
            case_mode = "smart_case",        
        },
    },
}
require('telescope').load_extension('fzf', 'repo')
EOF
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:true
let bufferline.closable = v:false
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'
let bufferline.maximum_padding = 0
let bufferline.maximum_length = 100
nnoremap <silent>    <A-1> <cmd>BufferGoto 1<cr>
nnoremap <silent>    <A-2> <cmd>BufferGoto 2<cr>
nnoremap <silent>    <A-3> <cmd>BufferGoto 3<cr>
nnoremap <silent>    <A-4> <cmd>BufferGoto 4<cr>
nnoremap <silent>    <A-5> <cmd>BufferGoto 5<cr>
nnoremap <silent>    <A-6> <cmd>BufferGoto 6<cr>
nnoremap <silent>    <A-7> <cmd>BufferGoto 7<cr>
nnoremap <silent>    <A-8> <cmd>BufferGoto 8<cr>
nnoremap <silent>    <A-9> <cmd>BufferGoto 9<cr>
nnoremap <silent>    <A-0> <cmd>BufferLast<cr>
nnoremap <silent>    <A-q> <cmd>BufferClose<cr>
