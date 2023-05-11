Neovim configuration fo neovim in macbook/wsl2
[TOC]
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
- Default key mappings, the leader key is space
	- ctrl+]: go to definition/in nvim tree, enter folder
	- ctrl+o: go back to before cursor
    - ctrl+u/n: nivagate between tab
    - ctrl+h/l: navigate between window
    - ctrl+j/k: scroll per 5 lines instead of 1 line
    - ctrl+\: toggle terminal
    - ctr+u/i:adjust window vertically
    - ctrl+o/p: adjust window horizontally
    - leader+e: open file explorer
    - leader+f: open find file
    - leader+g: open live grep
    - leader+c: opend command line input
    - leader+dt: open Git difftool
    - leader+gs: open Git
    - leader+df: open Gitvsplit
    - others see `keybindings.lua`

# Environment

## Windows WSL2

- Terminal: Windows Terminal
    - Font: IosevkaNerdFontMono
    - Color Schemes: One Half Dark
    - Mode: Focus Mode

## Tips

- In vim tree window, `I` to toggle to respect `.gitignore` or not
