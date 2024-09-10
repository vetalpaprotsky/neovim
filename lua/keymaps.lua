local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Remap space as leader key.
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

-- Better window navigation.
-- vim-tmux-navigator plugin adds these remaps, that's why they're commented.
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize windows.
keymap("n", "∆", ":resize -2<CR>", opts) -- ALT + j on Mac.
keymap("n", "˚", ":resize +2<CR>", opts) -- ALT + k on Mac.
keymap("n", "¬", ":vertical resize -2<CR>", opts) -- ALT + l on Mac.
keymap("n", "˙", ":vertical resize +2<CR>", opts) -- ALT + h on Mac.

-- Press jk fast to exit insert mode.
keymap("i", "jk", "<ESC>", opts)

-- Stay in indent mode.
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Dark magic which makes copy-paste experience better.
keymap("v", "p", '"_dP', opts)

-- Go to normal mode from terminal mode.
keymap("t", "<C-n>", "<C-\\><C-n>", opts)

-- Open terminal in terminal mode right away.
keymap("n", "<leader>to", ":term<CR> :startinsert<CR>", opts)

-- Delete current buffer.
keymap("n", "<leader>bb", ":bd<CR>", opts)
-- Delete current buffer even if it's not safed.
keymap("n", "<leader>bd", ":bd!<CR>", opts)
-- Delete all buffers.
keymap("n", "<leader>bad", ":%bd<CR>", opts)

-- Turn off search highlighting.
keymap("n", "<leader>h", ":noh<CR>", opts)

-- Complete Copilot suggestion.
keymap(
  "i",
  "<Right>",
  'copilot#Accept("\\<CR>")',
  { expr = true, replace_keycodes = false }
)
vim.g.copilot_no_tab_map = true
