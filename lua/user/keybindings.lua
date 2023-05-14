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

-- resize window
map("n", "<C-p>", ":vertical res +5<CR>", opt)
map("n", "<C-[>", ":vertical res -5<CR>", opt)
map("n", "<C-i>", ":res +5<CR>", opt)
map("n", "<C-u>", ":res -5<CR>", opt)

-- Git
map("n", "<leader>dt",":G difftool", opt )
map("n", "<leader>df",":Gvdiffsplit", opt )
map("n", "<leader>gs",":Git<CR>", opt )
map("n", "<leader>cm", ":G commit<CR>", opt)
map("n", "<leader>push", ":G push<CR>", opt)
map("n", "<leader>pull", ":G pull<CR>", opt)
map("n", "<leader>log", ":G log --graph<CR>", opt)

-- nvimtree, space + e = open & close nvim tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右切换
-- map("n", "<C-y>", ":BufferLineCyclePrev<CR>", opt)
-- map("n", "<C-n>", ":BufferLineCycleNext<CR>", opt)

-- telescope: space + f open find_files; space + g open live_grep
-- for live_grep to work, sudo apt install ripgrep
map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":Telescope live_grep<CR>", opt)
map("n", "<leader>s", ":Telescope lsp_document_symbols<CR>", opt)
map("n", "<leader>r", ":Telescope oldfiles<CR>", opt)


-- ctrl+h/j to jump between windows instead of ctrl+w
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-l>", "<C-w>l", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)

-- ctrl+j/k to move 5 lines up and down, for quick scrolling
map("n", "<C-n>", ":+5<CR>", opt)
map("n", "<C-y>", ":-5<CR>", opt)

-- space + c: open command input
map("n", "<leader>c", ":", opt)

-- sapce + w: save
map("n", "<leader>w", ":w<CR>", opt)

-- space + q: save & quit
map("n", "<leader>wq", ":wq<CR>", opt)

-- space + q: quit
map("n", "<leader>q", ":q<CR>", opt)

-- outline
keymap("n", "<leader>o", ":SymbolsOutline<cr>", opts)

-- formatt: this can only be used for cpp, for python, use Neoformat
keymap("n", "<A-f>", "<cmd>lua vim.lsp.buf.format{async = true}<cr>", opts)

-- debugging
keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
keymap("n", "<F10>", ":lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F11>", ":lua require'dap'.stop_into()<CR>", opts)
keymap("n", "<F12>", ":lua require'dap'.stop_out()<CR>", opts)
keymap("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
keymap("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
keymap("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", opts)

