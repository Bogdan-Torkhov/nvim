vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'dracula/vim'
	use 'scrooloose/nerdtree'
	use 'ryanoasis/vim-devicons'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use {'neoclide/coc.nvim', branch: 'master', run: 'yarn install --frozen-lockfile'}
	use 'rust-lang/rust.vim'
	use 'morhetz/gruvbox'
	use 'Raimondi/delimitMate'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use {'nvim-treesitter/nvim-treesitter', run: ':TSUpdate'}
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'
	use 'mfussenegger/nvim-lint'
	use {'numirias/semshi', run: ':UpdateRemotePlugins'}
	use {'fatih/vim-go', run: ':GoUpdateBinaries'}
	use 'yuezk/vim-js'
	use 'maxmellon/vim-jsx-pretty'
	use 'leafgarland/typescript-vim'
	use 'ap/vim-css-color'
	use 'tc50cal/vim-terminal'
	use 'ekalinin/Dockerfile.vim'
	use 'hashivim/vim-terraform'
	use 'xolox/vim-colorscheme-switcher'
	use 'xolox/vim-misc'
	use 'godlygeek/tabular'
	use 'preservim/vim-markdown'
	use {'cespare/vim-toml', branch: 'main' }
	use {'iamcco/markdown-preview.nvim', run: 'cd app && yarn install' }
	use 'turbio/bracey.vim'
	use 'tpope/vim-fugitive'
	use 'nvim-lua/plenary.nvim'
	use {'nvim-treesitter/nvim-treesitter', run: ':TSUpdate'}
	use {'nvim-telescope/telescope.nvim', tag: '0.1.0' }
	use {'nvim-telescope/telescope-fzf-native.nvim', run: 'make' }
	use 'kyazdani42/nvim-web-devicons'
	use 'tpope/vim-fugitive'
	use 'airblade/vim-gitgutter'
	use 'mhinz/vim-signify'
	use 'romgrk/barbar.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'sheerun/vim-polyglot'
	use {'pearofducks/ansible-vim', run: './UltiSnips/generate.sh' }
	use 'cljoly/telescope-repo.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
	use '/nvim-telescope/telescope-project.nvim'
	use 'lambdalisue/nerdfont.vim'
