local map = vim.keymap.set

map("i", "jk", "<ESC>")

-- half page scroll and center it
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")

map("n", "x", '"_x')

-- inc / dec
map("n", "+", "<C-a>")
map("n", "_", "<C-x>")

-- nvim tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- clear search highlight
map("n", "<leader>ch", "<Cmd>nohlsearch<CR>")

-- Telescope
local builtin = require("telescope.builtin")

-- check if the current working dir is a git repo or not.
local path = vim.loop.cwd() .. "/.git"
local isGitRepo, _ = vim.loop.fs_stat(path)
local searchFiles = nil

if isGitRepo then
  searchFiles = builtin.git_files
else
  searchFiles = builtin.find_files
end

map("n", "<leader>ff", searchFiles, {})
map("n", "<leader>fg", builtin.live_grep, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fh", builtin.help_tags, {})

-- Oil.nvim
map("n", "-", require("oil").open, { desc = "Open parent dir" })

-- buffers
map("n", "<Tab>", "<Cmd>bnext<CR>")
map("n", "<S-Tab>", "<Cmd>bprev<CR>")
map("n", "<leader>db", "<Cmd>bdelete<CR>")

-- tabs
map("n", "<leader>nT", "<Cmd>tabnew<CR>")
map("n", "<leader>pt", "<Cmd>tabprev<CR>")
map("n", "<leader>nt", "<Cmd>tabnext<CR>")
map("n", "<leader>dt", "<Cmd>tabclose<CR>")
