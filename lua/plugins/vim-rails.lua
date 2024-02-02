return {
  "tpope/vim-rails",
  config = function()
    local opts = { noremap = true, silent = true }

    vim.keymap.set("n", "<leader>tt", ":A<CR>", opts)
  end,
}
