Neovim configuration fo neovim in macbook/wsl2

# Preparations

- Install packer-nvim
The first step is to install `packer-nvim`
    > https://github.com/wbthomason/packer.nvim 
- Install `pyright-language-server` for lsp of Python
- Install `clangd` for C++ language server to work
- Install `ripgrep` for telescop live grep to work
    > sudo apt install ripgrep
- Install `python3-autopep8` for `Neoformat` to format Python code
- Install `clang-format` for `Neoformat` to format C++ code
- Clone this repo into `~/.config`, change the folder name to `nvim`
- Start nvim, run `PackerSync`

# Usage
- Default key mappings
	- ctrl+]: go to definition
	- ctrl+o: go back to before cursor
    - others see `keybindings.lua`
