local map = vim.keymap.set
require("neo-tree").setup({
	window = {
		mappings = {
			["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
		},
	},
})

map("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })