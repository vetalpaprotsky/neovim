return {
  { "tpope/vim-rails" },
  { "tpope/vim-surround" },
  {
    "vim-test/vim-test",
    config = function()
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>", opts)
      vim.keymap.set("n", "<leader>tf", ":TestFile<CR>", opts)
      vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", opts)
      vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>", opts)
      vim.keymap.set("n", "<leader>tt", ":A<CR>", opts) -- From vim-rails plugin.
    end,
  },
}
