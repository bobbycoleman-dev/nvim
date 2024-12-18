local opts = { noremap = true, silent = true }
vim.cmd("set expandtab")
-- vim.cmd("set tabstop=2")
-- vim.cmd("set softtabstop=2")
-- vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>n", ":bn<CR>")

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)
vim.keymap.set("n", "<leader>Q", ":qa<CR>", opts)

-- Split window
vim.keymap.set("n", "ss", ":split<CR>", opts)
vim.keymap.set("n", "sv", ":vsplit<CR>", opts)

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = true
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"
