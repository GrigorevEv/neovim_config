local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Remove column numbers and sign column 
-- keymap("n", "<C-x>", ":setlocal signcolumn=no nonumber cc=<CR>", opts)
-- keymap("n", "<C-s>", ":setlocal signcolumn=yes number cc=79<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


keymap("n", "<C-m>", ":silent !/usr/bin/kitty --class floatingKitty lazygit<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Mirror deploy
keymap("n", "1", ":w|MirrorPush en0<CR>", opts)
keymap("n", "2", ":w|MirrorPush en1<CR>", opts)
keymap("n", "3", ":w|MirrorPush en2<CR>", opts)
keymap("n", "4", ":w|MirrorPush en3<CR>", opts)

-- Move to start and end of line
keymap("n", "<C-a>", "^", opts)
keymap("n", "<C-n>", "$", opts)

-- Move to start and previous location
keymap("n", "<C-i>", "<C-o>", opts)
keymap("n", "<C-o>", "<C-i>", opts)

-- Find word
keymap("n", "<C-p>", ":execute 'Telescope egrepify default_text=' . expand('<cword>')<CR>", opts)

-- Insert --
-- Remove column numbers and sign column 
-- keymap("i", "<C-x>", ":setlocal signcolumn=no nonumber<CR>", opts)
-- keymap("i", "<C-X>", ":setlocal signcolumn=yes number<CR>", opts)

-- Press kj or jk fast to exit insert mode 
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)

-- Navigation in insert mode
keymap("i", "<C-l>", "<ESC>la", opts)
keymap("i", "<C-h>", "<ESC>i", opts)
keymap("i", "<C-k>", "<ESC>ka", opts)
keymap("i", "<C-j>", "<ESC>ja", opts)

-- Move to start and end of line
keymap("i", "<C-a>", "<ESC>I", opts)
keymap("i", "<C-n>", "<ESC>A", opts)



-- Run file in python interpreter
keymap("i", "<C-p>", "<ESC>:w|!f %<CR>", opts)
-- keymap("i", "<C-p>", "<ESC>:w|!python3 %<CR>", opts)
-- keymap("i", "<C-o>", "<ESC>:w|!poetry run python %<CR>", opts)


-- Visual --
-- Remove column numbers and sign column 
-- keymap("v", "<C-x>", ":setlocal signcolumn=no nonumber norelativenumber<CR>", opts)

-- Stay in indent mode
keymap("v", "H", "<gv", opts)
keymap("v", "L", ">gv", opts)

-- Press kj fast to exit visual mode 
keymap("v", "kj", "<ESC>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Move to start and end of line
keymap("v", "<C-a>", "^", opts)
keymap("v", "<C-n>", "$", opts)

-- Run file in python interpreter
keymap("v", "<C-p>", "<C-[>:w|!python3 %<CR>", opts)
keymap("v", "<C-o>", "<C-[>:w|!poetry run python %<CR>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
