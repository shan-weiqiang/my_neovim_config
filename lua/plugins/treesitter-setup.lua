require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
	indent = {
		enable = true,
	},
	ensure_installed = {
		"c",
		"lua",
		"cpp",
		"python",
		"json",
		"yaml",
	},

	auto_install = true,
	rainbow = {
		enable = true,
		-- list of languages you want to disable the plugin for
		disable = {},
		-- Which query to use for finding delimiters
		query = "rainbow-parens",
		-- Highlight the entire buffer all at once
		strategy = require("ts-rainbow").strategy.global,
		hlgroups = {
			"TSRainbowYellow",
			"TSRainbowViolet",
			"TSRainbowCyan",
			"TSRainbowOrange",
			"TSRainbowBlue",
			"TSRainbowGreen",
		},
	},
	playground = {
		enable = true,
		disable = {},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
	},
})
