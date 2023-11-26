local o = vim.opt

o.number = true
o.relativenumber = true

o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true

o.wrap = false

o.ignorecase = true
o.smartcase = true

o.cursorline = true

o.background = "dark"
o.signcolumn = "yes"

o.backspace = "indent,eol,start"

o.clipboard:append("unnamedplus")

o.splitright = true
o.splitbelow = true

o.iskeyword:append("-")

o.termguicolors = true
o.completeopt = "menu,menuone,noselect"
o.guicursor = ""

vim.cmd.colorscheme("catppuccin")

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#181825", fg = "#cdd6f4" })
