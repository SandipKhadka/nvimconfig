local builtin = require "telescope.builtin"
vim.g.mapleader = " "
local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<Esc>", "<cmd>noh<CR>")
map("n","+","<C-a>")

map("i", "<C-b>", "<ESC>^i")
map("i", "<C-e>", "<End>")
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

map("n", "<Esc>", "<cmd>noh<CR>")

map("n", "<C-s>", "<cmd>w<CR>", { silent = true })

map("n", "<leader>n", "<cmd>set nu!<CR>")
map("n", "<leader>rl", "<cmd>set rnu!<CR>")
map("n", "<leader>pv", vim.cmd.Ex)

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<A-h>", ":split<CR>")
map("n", "<A-v>", ":vsplit<CR>")

map("n", "<tab>", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "<S-tab>", ":BufferLineCyclePrev<CR>", { silent = true })

map("n", "<leader>ds", vim.diagnostic.setloclist)
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>fg", builtin.live_grep, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fh", builtin.help_tags, {})
map("n", "<C-p>", builtin.git_files, {})


map("n", "<leader>fm", function()
    require("conform").format { lsp_fallback = true }
end)

-- window size
map("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
map("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

