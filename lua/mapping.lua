local builtin = require "telescope.builtin"
vim.g.mapleader = " "
local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<leader>ff", builtin.find_files, {})
map("n", "<leader>fg", builtin.live_grep, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fh", builtin.help_tags, {})
map("n", "<C-p>", builtin.git_files, {})
map("n", "<leader>ds", vim.diagnostic.setloclist)

map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-m>", "<C-w>x")
map("n", "<C-w>", "<C-w>o")

map("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
map("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

map("n", "<tab>", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "<S-tab>", ":BufferLineCyclePrev<CR>", { silent = true })

map("n", "<leader>gs", "<cmd>Git<CR>")
map("n", "gl", "<cmd>diffget //3<CR>")
map("n", "gh", "<cmd>diffget //2<CR>")

map("n", "<leader>fm", function()
    require("conform").format { lsp_fallback = true }
end)

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")

map("i", "<C-b>", "<ESC>^i")
map("i", "<C-e>", "<End>")
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")

map("n", "<leader>n", "<cmd>set nu!<CR>")
map("n", "<leader>rl", "<cmd>set rnu!<CR>")

map("n", "<Esc>", "<cmd>noh<CR>")

map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

map("n", "<A-h>", ":split<CR>")
map("n", "<A-v>", ":vsplit<CR>")
