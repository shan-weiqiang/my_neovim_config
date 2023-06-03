-- neovim version= 0.8.0

vim.o.number = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.timeoutlen = 1000
vim.o.foldcolumn = '1'
-- use zsh for terminals
vim.opt.shell = 'zsh'
vim.opt.termguicolors = true
vim.wo.relativenumber=true
-- show parenthensis match
vim.opt.showmatch = true
vim.diagnostic.config({
  virtual_text = false
})

-- always split below current window
vim.api.nvim_set_option('splitbelow', true)


-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
-- autosave when leaving buffer or lose focus
vim.cmd[[autocmd BufLeave,FocusLost * silent! wall]]

-- session content
vim.o.sessionoptions="buffers,curdir,folds,help,tabpages,winsize,winpos,localoptions"


require('Comment').setup()

require('nvim-tree-setup')

-- keybindings
require('keybindings')


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
-- require('toggleterm-setup')

-- debugging
require('user.dap')
require 'autopairs-setup'
require 'blankline-setup'
require 'lualine-setup'
require 'bufferline-setup'

vim.cmd[[colorscheme kanagawa]]

-- set colors
vim.cmd([[
  set background=dark
  highlight Normal ctermbg=black guibg=black
  highlight LineNr guibg=black
  highlight SignColumn guibg=black 
  highlight DiagnosticSignError guibg=black
  highlight DiagnosticSignWarn guibg=black
  highlight DiagnosticSignHint guibg=black
  highlight DiagnosticSignInfo guibg=black
  highlight GitSignsAdd guibg=NONE
  highlight GitSignsDelete guibg=NONE
  highlight GitSignsChange guibg=NONE
  highlight Directory guifg=NONE
  highlight @number guifg=#B5CEA8
  highlight NvimTreeNormal guibg=black
  highlight NvimTreeFolderIcon guifg=white
  highlight fugitiveStagedModifier guifg=green
  highlight fugitiveUnstagedModifier guifg=red
  highlight fugitiveUntrackedModifier guifg=yellow
  highlight FoldColumn guibg=black 
  ]])
-- change tree sitter constructor color the same as Function
vim.api.nvim_set_hl(0, "@constructor", { link = "Function" })
-- change the operator such as new in c++ to the same color as if
vim.api.nvim_set_hl(0, "@keyword.operator", {link = "Conditional"})
-- change builtin type to identifier for cpp type, like vscode
vim.api.nvim_set_hl(0, "@type.builtin.cpp", {link = "Keyword"})
-- change cpp namespace name to color like type
vim.api.nvim_set_hl(0, "@namespace", {link = "Type"})
-- change unncecssary syntax
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {link = "Ignore"})
-- set .xjon file to use json highlight
vim.cmd([[
  au! BufNewFile,BufRead *.xjson setf json
  ]])

