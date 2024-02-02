return {
  "vim-test/vim-test",
  config = function()
    local opts = { noremap = true, silent = true }

    vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>", opts)
    vim.keymap.set("n", "<leader>tf", ":TestFile<CR>", opts)
    vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", opts)
    vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>", opts)

    vim.cmd([[let test#strategy = "neovim"]])
    vim.cmd([[let g:test#neovim#start_normal = 1]])
  end,
}
