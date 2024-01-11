-- remap.lua
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- FloaTerm configuration
vim.keymap.set('n', "<leader>ft", ":FloatermNew  --autoclose=2 <CR> ")
vim.keymap.set('n', "t", ":FloatermToggle myfloat<CR>")
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")


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

