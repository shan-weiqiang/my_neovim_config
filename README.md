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
- Install `jq` for `Neoformat` to format json file
    > sudo apt install jq
- Install `uctags` at https://github.com/universal-ctags/ctags, for tagbar to work
- `pip install cmake-language-server` for cmake
- Clone this repo into `~/.config`, change the folder name to `nvim`
- Start nvim, run `PackerSync`

# Usage
- Default key mappings, the leader key is space
	- ctrl+]: go to definition/in nvim tree, enter folder
	- ctrl+o: go back to before cursor
    - ctrl+y/n: move cursor 5 lines 
    - ctrl+h/l: navigate between window horizontally
    - ctrl+j/k: navigate between window vertically
    - ctrl+\: toggle terminal
    - alt+j/k:adjust window vertically
    - alt+h/l: adjust window horizontally
    - leader+e: open file explorer
    - leader+f: open find file
    - leader+g: open live grep
    - leader+c: opend command line input
    - leader+dt: open Git difftool
    - leader+ds: open Git
    - leader+dd: open Gitvsplit
    - leader+dc: Git commit
    - leader+dp: Git push
    - leader+dl: Git pull
    - leader+do: Git log 
    - others see `keybindings.lua`

# Environment

## Windows WSL2

- Terminal: Windows Terminal
    - Font: JetBrainsMonoNL Nerd Font. Do not use Nerd Font Mono version, the icon will be too small
        - Nerd Font Mono is not the same as Mono, Nerd Font Mono means icon has the same width as character
    - Color Schemes: One Half Dark
    - Mode: Focus Mode
## MacBook

- Terminal: iTerm2
    - Font: JetBrainsMono Nerd Font
    - Need to change left option key to Esc+ to use the Alt key bindings

## Tips

- In vim tree window, `I` to toggle to respect `.gitignore` or not
