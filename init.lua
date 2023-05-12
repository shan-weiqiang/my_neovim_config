-- neovim version= 0.8.0

vim.o.number = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.timeoutlen = 1000
vim.opt.termguicolors = true
vim.wo.relativenumber=true
-- show parenthensis match
vim.opt.showmatch = true
vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]


require('Comment').setup()

require('nvim-tree-setup')

-- keybindings
require('user.keybindings')


-- [[use packer.nvim to manage all plugins,https://github.com/wbthomason/packer.nvim
-- all plugins are installed at default search path: ~/.local/share/nvim/site/pack/...
-- use :h packages to find more information about neovim packages.
-- packer.nvim must be first installed manully. Other plugins are installed automatically by packer.nvim
-- following line is the initialization of packer.nvim, which automatically loads all other plugins.]]
require('packer-plugins')

-- lsp-config
require('user.lsp')

-- treesitter
require('treesitter-setup')

-- toggleterm
require('toggleterm-setup')

-- debugging
require('user.dap')
require 'autopairs-setup'
require 'blankline-setup'
require 'gitsigns-setup'
require 'lualine-setup'
require 'symbols-outline-setup'
require 'bufferline-setup'

vim.cmd[[colorscheme kanagawa]]

-- set back ground color
vim.cmd([[
  set background=dark
  highlight Normal ctermbg=black guibg=#1F1F1F
  highlight LineNr guibg=#1F1F1F
  highlight SignColumn guibg=#1F1F1F 
  highlight DiagnosticSignError guibg=#1F1F1F
  highlight DiagnosticSignWarn guibg=#1F1F1F
  highlight DiagnosticSignHint guibg=#1F1F1F
  highlight DiagnosticSignInfo guibg=#1F1F1F
  highlight GitSignsAdd guibg=NONE
  highlight GitSignsDelete guibg=NONE
  highlight GitSignsChange guibg=NONE
  highlight Directory guifg=NONE
  ]])
