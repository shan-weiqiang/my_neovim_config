local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- leader key is space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- nvimtree, space + e = open & close nvim tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右切换
map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)

-- telescope: space + f open find_files; space + g open live_grep
-- for live_grep to work, sudo apt install ripgrep
map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":Telescope live_grep<CR>", opt)
map("n", "<leader>s", ":Telescope lsp_document_symbols<CR>", opt)


-- alt + hjkl to jump between windows instead of ctrl+w
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-;>", "<C-w>l", opt)

-- space + c: open command input
map("n", "<leader>c", ":", opt)

-- sapce + w: save
map("n", "<leader>w", ":w<CR>", opt)

-- space + q: save & quit
map("n", "<leader>wq", ":wq<CR>", opt)

-- space + q: quit
map("n", "<leader>q", ":q!<CR>", opt)

-- outline
keymap("n", "<leader>o", ":SymbolsOutline<cr>", opts)

-- formatt: this can only be used for cpp, for python, use Neoformat
keymap("n", "<A-f>", "<cmd>lua vim.lsp.buf.format{async = true}<cr>", opts)
