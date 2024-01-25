return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()

    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>gv", ":Gitsigns preview_hunk<CR>", opts)
    vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<CR>", opts)
    vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", opts)
    vim.keymap.set("n", "<leader>gp", ":Gitsigns prev_hunk<CR>", opts)
    vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", opts)
    vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", opts)
    vim.keymap.set("n", "<leader>ga", ":Gitsigns stage_hunk<CR>", opts)
  end,
}
