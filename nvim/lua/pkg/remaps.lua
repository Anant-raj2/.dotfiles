vim.g.mapleader = " "
local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<leader>f", vim.lsp.buf.format)
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<CR>", "o<C-c>")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "<leader>cn", ":set colorcolumn=80<CR>")
map("n", "<leader>cm", ":set colorcolumn=<CR>")
map("n", "<leader>vs", vim.cmd.vs)
map("n", "<leader>bn", "<cmd>bprevious<CR>")
map("n", "<leader>bm", "<cmd>bnext<CR>")

map("v", "<leader>y", '\"+y')
map("n", "<leader>y", '\"+y')

map("v", "<leader>yap", '\"+yap')
map("n", "<leader>yap", '\"+yap')

map("n", "<leader>dd", '\"_dd')
map("v", "<leader>d", '\"_d')
