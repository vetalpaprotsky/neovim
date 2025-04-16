return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      disable_netrw = true,
      view = {
        adaptive_size = true,
        side = "right",
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })

    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<leader>ee", ":NvimTreeFindFileToggle<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-;>ee",    ":NvimTreeFindFileToggle<CR>", opts) -- Zed
    vim.api.nvim_set_keymap("n", "<leader>ec", ":NvimTreeCollapse<CR>", opts)
  end,
}
