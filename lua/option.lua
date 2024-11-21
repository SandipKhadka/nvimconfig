local o = vim.o
local g = vim.g
local opt = vim.opt

o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4
o.numberwidth = 5
o.ruler = false

opt.shortmess:append "sI"
opt.smartindent = true

o.nu = true
o.rnu = true

o.termguicolors = true

o.backup = false
o.swapfile = false
o.undodir = os.getenv "HOMEPATH" .. "/.nvim/undodir"
o.undofile = true

-- disable some default providers
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
