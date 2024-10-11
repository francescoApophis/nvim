local opt = vim.opt


-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.incsearch = true
opt.ignorecase= true
opt.smartcase = true
opt.hlsearch = true -- highlight search

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"
opt.showmode = false -- don't show mode in default status line (command line)

-- Behaviour
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false  
opt.undodir = vim.fn.expand("~/.vim/expand")
opt.undofile = true
opt.backspace = "indent,eol,start"

opt.splitright = true  -- terminal pos, but I don't know they don't work
opt.splitbelow = true  -- terminal pos, but I don't know they don't work
opt.autochdir = false
opt.iskeyword:append("-") -- treats words with hiphen as a whole, exp. when deleting
opt.mouse:append("a") 
opt.clipboard:append("unnamedplus") -- allow copy/paste in and out of nvim
opt.modifiable = true
opt.encoding = "UTF-8"

