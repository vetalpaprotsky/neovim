local opts = { noremap = true, silent = true }

return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gh", ":Gitsigns next_hunk<CR>", opts)
      vim.keymap.set("n", "<leader>gH", ":Gitsigns prev_hunk<CR>", opts)
      vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", opts)
      vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", opts)
      vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", opts)
      vim.keymap.set("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", opts)
    end,
  },
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", opts)
    end,
  },
}
