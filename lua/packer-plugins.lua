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
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	-- comment
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			-- icons can only be displayed correctly if nerd fonts are installed: https://www.nerdfonts.com/
			-- only one patched(icons included) font is needed, such as Hack
			-- to correctly display the font, the terminal also needs to be configured to use the nerd fond, in the Preference settings
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly', -- optional, updated every week. (see issue #1193)
		config = function()
			require('nvim-tree').setup()
		end
	}

	-- using packer.nvim
	use {
		'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require 'bufferline'.setup {}
		end
	}

	-- status bar
	-- use {
	--  'windwp/windline.nvim',
	--  config = function()
	--   require('wlsample.vscode').setup()
	--  end
	-- }
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true };
		config = function()
			require('lualine').setup()
		end
	}

	-- autopair
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	-- blankline
	use {
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require('indent_blankline').setup {
				show_current_context = true,
				show_current_context_start = true,
			}
		end
	}

	-- treesitter
	use {
		"nvim-treesitter/nvim-treesitter"
	}

	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- formatter
	use {
		"sbdchd/neoformat"
	}

	-- symbols-outline view
	use {
		'simrat39/symbols-outline.nvim',
		config = function()
			require('symbols-outline').setup()
		end
	}


	-- gitsigns
	use {
		'lewis6991/gitsigns.nvim',
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
		config = function()
			require('gitsigns').setup()
		end
	}

	-- toggleterm
	use { "akinsho/toggleterm.nvim", tag = '*' }



	-- debugger
	use "mfussenegger/nvim-dap"
	use "mfussenegger/nvim-dap-python"
	use "rcarriga/nvim-dap-ui"
end)
