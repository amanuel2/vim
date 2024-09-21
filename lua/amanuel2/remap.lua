-- remap.lua
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- FloaTerm configuration
vim.keymap.set('n', "<leader>ft", ":FloatermNew  --autoclose=2 <CR> ")
vim.keymap.set('n', "t", ":FloatermToggle myfloat<CR>")
-- vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")


-- formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)


-- Swap multiple lines
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- Jump pages
vim.keymap.set("n", "<D-S-[>", "<C-u>")
vim.keymap.set("n", "<D-S-]>", "<C-d>")

-- remap redo
vim.keymap.set("n", "<S-U>", "<C-r>")

-- nvim tree
vim.keymap.set('n', '<S-Left>', '<cmd>NvimTreeClose<CR>')
vim.keymap.set('n', '<S-Right>', '<cmd>NvimTreeOpen<CR>')

-- remaps for going forward and backwards in defintions
vim.keymap.set('n', '<C-[>', '<C-O>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-]>', '<C-I>', {noremap = true, silent = true})

-- gd => go to def, dg => go back
vim.keymap.set('n', 'dg', '<C-O>', {noremap = true, silent = true})


-- vim.keymap.set('n', '<D-/>', '<cmd>CommentToggle<CR>')
vim.keymap.set('n', '<C-/>', '<cmd>CommentToggle<CR>')


vim.keymap.set('n', '<C-Left>', '<cmd>AerialOpen<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-Right>', '<cmd>AerialClose<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-Up>', '<cmd>AerialNavToggle<CR>', {noremap = true, silent = true})
-- vim.keymap.set("n", "<S-[>", "<cmd>AerialPrev<CR>", { buffer = bufnr })
-- vim.keymap.set("n", "<D-}>", "<cmd>AerialNext<CR>", { buffer = bufnr })
