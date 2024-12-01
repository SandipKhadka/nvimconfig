local o = vim.o
local g = vim.g
local opt = vim.opt

-- General Settings
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.smartindent = true
o.numberwidth = 5
o.ruler = false

-- Line Numbers
o.nu = true
o.rnu = true

-- Colors
o.termguicolors = true

-- Undo Settings
local undodir = os.getenv("HOME") .. "/.nvim/undodir"  -- Change to USERPROFILE for Windows
os.execute("mkdir -p " .. undodir)  -- Ensure the directory exists
o.undodir = undodir
o.undofile = true
o.backup = false
o.swapfile = false

-- Short messages
opt.shortmess:append("sI")

-- Disable some default providers
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

-- Smart Indentation
opt.smartindent = true

