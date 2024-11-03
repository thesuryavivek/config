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

o.clipboard = "unnamedplus"

o.splitright = true
o.splitbelow = true

o.iskeyword:append("-")

o.termguicolors = true
o.completeopt = "menu,menuone,noselect"
o.guicursor = ""

--fold
o.foldmethod = "indent"
o.foldenable = false

vim.cmd.colorscheme("catppuccin")

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#181825", fg = "#cdd6f4" })

vim.notify = require("notify")

-- Disable folding in Telescope's result window.
vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })

-- Makes vim to interpret files with mdx extension to be markdown files.
vim.filetype.add({
  extension = {
    mdx = "markdown",
  },
})
