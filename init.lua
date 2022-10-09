-- neovim version= 0.8.0

-- general settings
require('user.general')

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
require('treesitter')

-- toggleterm
require('init-toggleterm')

-- debugging
require('user.dap')
