-- entry point for packer.nvim
return require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- lsp config: provide easy interface to vim core implementation
	-- language server and functions such as auto completion need to be provided seperately
	-- this module is used by thes modules
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin

	-- color scheme
	use 'folke/tokyonight.nvim'
	use "rebelot/kanagawa.nvim"


	-- comment
	use 'numToStr/Comment.nvim'

	-- icons can only be displayed correctly if nerd fonts are installed: https://www.nerdfonts.com/
	-- only one patched(icons included) font is needed, such as Hack
	-- to correctly display the font, the terminal also needs to be configured to use the nerd fond, in the Preference settings
	use {'kyazdani42/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}

	-- bufferline tab
	use {'akinsho/bufferline.nvim',tag = "*",requires = 'nvim-tree/nvim-web-devicons'}


	-- status bar
	use {'nvim-lualine/lualine.nvim',requires = { 'nvim-tree/nvim-web-devicons', opt = true }}

	-- autopair
	use {"windwp/nvim-autopairs"}

	-- blankline
	use {"lukas-reineke/indent-blankline.nvim"}

	-- treesitter
	use {"nvim-treesitter/nvim-treesitter"}
	use 'nvim-treesitter/playground'

	-- telescope
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0',	requires = { { 'nvim-lua/plenary.nvim' } }}

	-- formatter
	use {"sbdchd/neoformat"}

	-- symbols-outline view
	use {'simrat39/symbols-outline.nvim'}


	-- gitsigns
	-- currently disable gitsings since we use gitgutter instead
	-- use {'lewis6991/gitsigns.nvim'}

	-- toggleterm
	use { "akinsho/toggleterm.nvim", tag = '*' }

	-- debugger
	use "mfussenegger/nvim-dap"
	use "mfussenegger/nvim-dap-python"
	use "rcarriga/nvim-dap-ui"
	use{"iamcco/markdown-preview.nvim",	run = function() vim.fn["mkdp#util#install"]() end,}
		
	-- git
	use "tpope/vim-fugitive"
	use 'rbong/vim-flog'
	use 'airblade/vim-gitgutter'
	-- multi launguage syntax 
	use 'sheerun/vim-polyglot'
	-- rainbow parenthensis
	use 'HiPhish/nvim-ts-rainbow2'
	-- fold and unfold
	-- use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
end)
