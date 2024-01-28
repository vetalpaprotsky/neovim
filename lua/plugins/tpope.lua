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

      vim.cmd([[let test#strategy = "neovim_sticky"]])
      vim.cmd([[let g:test#neovim_sticky#start_normal = 1]])
    end,
  },
}
