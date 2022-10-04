
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- nvimtree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- telescope
map("n", "<A-f>", ":Telescope find_files<CR>", opt)
map("n", "<A-g>", ":Telescope live_grep<CR>", opt)
